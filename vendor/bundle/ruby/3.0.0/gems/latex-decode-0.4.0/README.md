LaTeX::Decode
=============
[![ci](https://github.com/inukshuk/latex-decode/actions/workflows/ci.yml/badge.svg)](https://github.com/inukshuk/latex-decode/actions/workflows/ci.yml)
[![coverage](https://coveralls.io/repos/github/inukshuk/latex-decode/badge.svg?branch=main)](https://coveralls.io/github/inukshuk/latex-decode?branch=main)

LaTeX::Decode is a Ruby gem to convert LaTeX input to Unicode.
Its original use was as an input filter for [BibTeX-Ruby][]
but it can be used independently to decode LaTeX.
Many of the patterns used by this Ruby gem
are based on François Charette's equivalent Perl module [LaTeX::Decode][].

Quickstart
----------
    $ [sudo] gem install latex-decode
    $ irb
    >> require 'latex/decode'
    >> LaTeX.decode "dipl\\^{o}me d'\\'{e}tudes sup\\'erieures"
    => "diplôme d'études supérieures"


Issues
------
Please use the tracker of the project's [repository][] to report any issues.
When describing intended behaviour,
please use the syntax of the Cucumber features used by LaTeX::Decode.
For instance, you could describe the example above as:
```Gherkin
    Feature: Decode LaTeX accents
      As a hacker who works with LaTeX
      I want to be able to decode LaTeX accents

      Scenario: A French sentence
        When I decode the string "dipl\\^{o}me d'\\'{e}tudes sup\\'erieures"
        Then the result should be "diplôme d'études supérieures"
```

Credits
-------
Kudos and thanks to all [contributors][] who have made LaTeX::Decode possible!

Copyright (C) 2011-2022 Sylvester Keil
Copyright (C) 2010 François Charette


[BibTeXRuby]: http://rubygems.org/gems/bibtex-ruby
[LaTeX::Decode]: https://github.com/fc7/LaTeX-Decode

[repository]: https://github.com/inukshuk/latex-decode 
[contributors]: https://github.com/inukshuk/latex-decode/contributors
[LICENSE]: https://github.com/inukshuk/latex-decode/blob/main/LICENSE
