package Plack::Middleware::Reply;
use strict;
use 5.008_005;
our $VERSION = '0.01';

use Carp::Reply ();
use parent qw(Plack::Middleware);

sub call {
    my($self, $env) = @_;
    local $SIG{__DIE__} = sub { print $_[0]; Carp::Reply::repl() };
    $self->app->($env);
}

1;
__END__

=encoding utf-8

=head1 NAME

Plack::Middleware::Reply - REPL when your app throwse exceptions

=head1 SYNOPSIS

  plackup -e 'enable "Reply"' myapp.psgi

=head1 DESCRIPTION

Plack::Middleware::Reply is a simple piece of middleware that enables
L<Reply> REPL shell once your application raises errors. You can also
manually trigger REPL via C<Carp::Reply::repl()>.

Using this middleware is almost identical to using L<Carp::Reply>
directly, except by default the effective scope is only request
runtime. It's also useful when you use the default middleware stack
where StackTrace middleware sets C<$SIG{__DIE__}> handler and
Carp::Reply doesn't work.

=head1 AUTHOR

Tatsuhiko Miyagawa E<lt>miyagawa@bulknews.netE<gt>

=head1 COPYRIGHT

Copyright 2013- Tatsuhiko Miyagawa

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<Plack::Middleware::REPL> L<Reply> L<Carp::Reply>

=cut
