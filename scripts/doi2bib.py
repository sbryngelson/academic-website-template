#!/usr/bin/env python3

from __future__ import unicode_literals, print_function, absolute_import
import argparse
import textwrap
from doi2bib.crossref import get_bib_from_doi
import io

def save_output_bibs(bibs, output_file):
    try:
        with io.open(output_file, 'w', encoding="utf-8") as bibfile:
            for bib in bibs:
                bibfile.write("{}\n".format(bib))

    except TypeError:
        print("Can't save in output file\n")
        print(bibs)


def main():
    parser = argparse.ArgumentParser(
        prog="doi2bib",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        description=textwrap.dedent('''\
        Convert a list of DOIs in a bibfile.
        You also can convert a simple DOI, like:
        $ doi2bib  10.1063/1.3149495
        -----------------------------------------------------
            @author: Bruno Messias
            @email: messias.physics@gmail.com
            @telegram: @brunomessias
            @github: https://github.com/bibcure/doi2bib
        ''')
    )

    parser.add_argument(
        "--input", "-i",
        type=argparse.FileType("r"),
        help="input file"
    )
    parser.add_argument(
        "--output", "-o",
        help="bibtex output file")

    args = parser.parse_known_args()
    inlinedoi = len(args[1]) > 0
    if inlinedoi:
        dois = [" ".join(args[1])]
    else:
        dois = args[0].input.read()
        dois = filter(lambda title: title != "", dois.split("\n"))
    bibs = []
    for doi in dois:
        found, bib = get_bib_from_doi(doi)
        if found:
            bibs.append(bib)

    if len(bibs) > 0:
        if inlinedoi:
            print("\n\n")
            print(bibs[0])
        else:
            save_output_bibs(bibs, args[0].output)


if __name__ == "__main__":
    main()
