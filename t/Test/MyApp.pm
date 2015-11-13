
use utf8;
use Mojolicious::Lite;
get '/' => 'index';

app->start;

1;

__DATA__

@@index.html.ep

<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<title>42</title>

