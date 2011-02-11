#!/usr/bin/env perl

use inc::Module::Install;

name 'Singleton';
all_from 'lib/Singleton.pm';

test_requires 'Test::More';

auto_install;
WriteAll;
