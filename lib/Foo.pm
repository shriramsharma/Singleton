package Foo;
use base qw(Singleton);
use strict;

sub set_value {
    my ( $self, $key, $value ) = @_;
    $self->{$key} = $value;
}

sub get_value {
    my ( $self, $key ) = @_;
    return $self->{$key};
}

1;
