#!perl

use FindBin;
require "$FindBin::Bin/Test/MyApp.pm";

use Test::More;
use Test::Mojo::WithRoles 'Debug';
my $t = Test::Mojo::WithRoles->new;


done_testing();

__END__

