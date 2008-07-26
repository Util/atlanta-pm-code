#line 1
package Hook::LexWrap;
our $VERSION = '0.20';
use 5.006;
use Carp;

*CORE::GLOBAL::caller = sub {
	my ($height) = ($_[0]||0);
	my $i=1;
	my $name_cache;
	while (1) {
		my @caller = CORE::caller($i++) or return;
		$caller[3] = $name_cache if $name_cache;
		$name_cache = $caller[0] eq 'Hook::LexWrap' ? $caller[3] : '';
		next if $name_cache || $height-- != 0;
		return wantarray ? @_ ? @caller : @caller[0..2] : $caller[0];
	}
};

sub import { *{caller()."::wrap"} = \&wrap }

sub wrap (*@) {
	my ($typeglob, %wrapper) = @_;
	$typeglob = (ref $typeglob || $typeglob =~ /::/)
		? $typeglob
		: caller()."::$typeglob";
	my $original = ref $typeglob eq 'CODE' && $typeglob
		     || *$typeglob{CODE}
		     || croak "Can't wrap non-existent subroutine ", $typeglob;
	croak "'$_' value is not a subroutine reference"
		foreach grep {$wrapper{$_} && ref $wrapper{$_} ne 'CODE'}
			qw(pre post);
	no warnings 'redefine';
	my ($caller, $unwrap) = *CORE::GLOBAL::caller{CODE};
	$imposter = sub {
		if ($unwrap) { goto &$original }
		my ($return, $prereturn);
		if (wantarray) {
			$prereturn = $return = [];
			() = $wrapper{pre}->(@_,$return) if $wrapper{pre};
			if (ref $return eq 'ARRAY' && $return == $prereturn && !@$return) {
				$return = [ &$original ];
				() = $wrapper{post}->(@_, $return)
					if $wrapper{post};
			}
			return ref $return eq 'ARRAY' ? @$return : ($return);
		}
		elsif (defined wantarray) {
			$return = bless sub {$prereturn=1}, 'Hook::LexWrap::Cleanup';
			my $dummy = $wrapper{pre}->(@_, $return) if $wrapper{pre};
			unless ($prereturn) {
				$return = &$original;
				$dummy = scalar $wrapper{post}->(@_, $return)
					if $wrapper{post};
			}
			return $return;
		}
		else {
			$return = bless sub {$prereturn=1}, 'Hook::LexWrap::Cleanup';
			$wrapper{pre}->(@_, $return) if $wrapper{pre};
			unless ($prereturn) {
				&$original;
				$wrapper{post}->(@_, $return)
					if $wrapper{post};
			}
			return;
		}
	};
	ref $typeglob eq 'CODE' and return defined wantarray
		? $imposter
		: carp "Uselessly wrapped subroutine reference in void context";
	*{$typeglob} = $imposter;
	return unless defined wantarray;
	return bless sub{ $unwrap=1 }, 'Hook::LexWrap::Cleanup';
}

package Hook::LexWrap::Cleanup;

sub DESTROY { $_[0]->() }
use overload 
	q{""}   => sub { undef },
	q{0+}   => sub { undef },
	q{bool} => sub { undef };

1;

__END__


