use strict;
use warnings;

use Test::Most qw/no_plan/;
use Test::Exception;

use Obj;
use Foo;

my $obj1 = Obj->new();
use Data::Dump qw/dump/;
dump $obj1;

isa_ok $obj1, 'Obj';
$obj1->set_value( perl => 'camel' );

is $obj1->get_value('perl'), 'camel',
  'got the expected result from obj1: camel';

my $foo1 = Foo->new();
isa_ok $foo1, 'Foo';
$foo1->set_value( perl => 'llama' );

is $foo1->get_value('perl'), 'llama',
  'got the expected result from foo1: llama';

my $obj2 = Obj->new();
is $obj2->get_value('perl'), 'camel',
  'got the expected result from obj2: camel';

my $foo2 = Foo->new();
is $foo2->get_value('perl'), 'llama',
  'got the expected result from foo2: llama';

$foo2->set_value( tim => 'toady' );
is $foo1->get_value('tim'), 'toady',
  'got the expected result from foo1: toady';
is $foo2->get_value('tim'), 'toady',
  'got the expected result from foo2: toady';

1;
