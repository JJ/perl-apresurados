#!/usr/bin/perl

local $/;
$_ = <>;
s/(\[\d+\])//g;
print;
