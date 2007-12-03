#!perl -w
# $Id: chkenv.pm,v 1.2 2007/08/16 22:27:17 drhyde Exp $
use strict;

use Test::More;
use LWP::Simple;

unless(
    get("http://search.cpan.org/~dcantrell/") &&
    get("http://www.cpan.org/modules/02packages.details.txt.gz")
) {
    plan skip_all => "Need web access to the CPAN";
    exit;
}

1;
