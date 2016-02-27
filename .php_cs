<?php

$finder = Symfony\CS\Finder\DefaultFinder::create()
    ->exclude('vendor')
    ->exclude('Tests/resources')
    ->in(__DIR__);

return Symfony\CS\Config\Config::create()
    ->level(Symfony\CS\FixerInterface::PSR2_LEVEL)
    ->fixers(array(
    'linefeed',
    'indentation',
    'long_array_syntax',
    'header_comment',
    'align_equals',
    'align_double_arrow',
    'single_quote',
    ))
    ->finder($finder);
