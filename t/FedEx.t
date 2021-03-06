#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Goodie;

zci answer_type => 'fedex';
zci is_cached => 1;

ddg_goodie_test(
        [qw( DDG::Goodie::FedEx )],
        'fedex 9241990100130206401644' => test_zci(
        	"9241990100130206401644",
        	heading => 'FedEx Shipment Tracking',
        	html => qq(Track this shipment at <a href="http://fedex.com/Tracking?tracknumbers=9241990100130206401644&action=track">FedEx</a>.)
        ),
        'federal express 9241990100130206401644' => test_zci(
        	"9241990100130206401644",
        	heading => 'FedEx Shipment Tracking',
        	html => qq(Track this shipment at <a href="http://fedex.com/Tracking?tracknumbers=9241990100130206401644&action=track">FedEx</a>.)
        ),
);

done_testing;

