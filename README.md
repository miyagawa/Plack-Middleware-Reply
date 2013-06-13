# NAME

Plack::Middleware::Reply - REPL when your app throwse exceptions

# SYNOPSIS

    plackup -e 'enable "Reply"' myapp.psgi

# DESCRIPTION

Plack::Middleware::Reply is a simple piece of middleware that enables
[Reply](http://search.cpan.org/perldoc?Reply) REPL shell once your application raises errors. You can also
manually trigger REPL via `Carp::Reply::repl()`.

Using this middleware is almost identical to using [Carp::Reply](http://search.cpan.org/perldoc?Carp::Reply)
directly, except by default the effective scope is only request
runtime. It's also useful when you use the default middleware stack
where StackTrace middleware sets `$SIG{__DIE__}` handler and
Carp::Reply doesn't work.

# AUTHOR

Tatsuhiko Miyagawa <miyagawa@bulknews.net>

# COPYRIGHT

Copyright 2013- Tatsuhiko Miyagawa

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

[Plack::Middleware::REPL](http://search.cpan.org/perldoc?Plack::Middleware::REPL) [Reply](http://search.cpan.org/perldoc?Reply) [Carp::Reply](http://search.cpan.org/perldoc?Carp::Reply)
