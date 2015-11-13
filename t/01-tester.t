#!perl

use utf8;
use FindBin;
require "$FindBin::Bin/Test/MyApp.pm";

use Test::More;
use Test::Mojo::WithRoles 'Debug';
my $t = Test::Mojo::WithRoles->new;

$t->get_ok('/')->status_is(200)
    ->d('42')
    ->d('title')
    ->d;

diag <<'END';
I gave up trying to write proper tests for ->d, but patches are welcome!

The above output should look something like this:
DEBUG DUMPER: the selector (42) you provided did not match any elements


DEBUG DUMPER:
<title>42</title>


DEBUG DUMPER:
<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<title>42</title>
</html>
END

done_testing();

__END__

