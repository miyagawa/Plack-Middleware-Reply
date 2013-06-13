requires 'perl', '5.008005';

requires 'Plack', '1.000';
requires 'Carp::Reply';

on test => sub {
    requires 'Test::More', '0.88';
};
