Feature: Decode LaTeX whitespace directives
  As a hacker who works with LaTeX
  I want to be able to decode LaTeX whitespace

  Scenario Outline: LaTeX to Unicode transformation
    When I decode the string '<latex>'
    Then I should get <pre> + U+<code> + <post>

  Scenarios: Whitespace
    | latex | pre | code | post | description                |
    | x~x   | 'x' | 00A0 | 'x'  | non-breaking space         |
    | ~y    | ''  | 00A0 | 'y'  | leading non-breaking space |
    | z\\,z | 'z' | 202F | 'z'  | narrow no-break space      |

    # In LaTeX, `\,` produces a kern that is ⅙ em wide. A kern is a
    # non-breaking space that is not subject to compression or expansion when
    # determining optimal line breaks. The ideal representation might be a
    # non-breaking variant of U+2006 Six-Per-Em Space, but the best option
    # that exists seems to be U+202F Narrow No-Break Space. While U+202F
    # doesn't have an explicit width, Unicode Standard Annex #14, “Unicode
    # Line Breaking Algorithm,” revision 47, says:
    #
    # > When expanding or compressing interword space according to common
    # > typographical practice, only the spaces marked by U+0020 SPACE and
    # > U+00A0 NO-BREAK SPACE are subject to compression, and only spaces
    # > marked by U+0020 SPACE, U+00A0 NO-BREAK SPACE, and occasionally spaces
    # > marked by U+2009 THIN SPACE are subject to expansion. All other space
    # > characters normally have fixed width.
