package Singleton;

use strict;
use warnings;
no strict 'refs';

sub new {
    my $class = shift;
    return $class if ( ref $class );

    my $singleton = \${"$class\::_singleton"};
    $$singleton = bless {}, $class unless ( defined $$singleton );
    return $$singleton;
}
1;
