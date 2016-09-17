yamlclean
=========

[![Build Status](https://travis-ci.org/sminnee/yamlclean.svg?branch=master)](https://travis-ci.org/sminnee/yamlclean)

This simple ruby gem provides a command-line tool for cleaning up yaml files.
It's based on the ya2yaml library.

One notable use-case for this is to make Transifex translation files work with PHP's
yaml parsers. That's why I first wrote it. :-)

Installation
------------

    $> sudo gem install yamlclean

Usage
-----

    $> yamlclean input.yml > output.yml
