from __future__ import unicode_literals, print_function, absolute_import
from builtins import str
import requests

bare_url = "http://api.crossref.org/"


def get_bib(doi):
    url = "{}works/{}/transform/application/x-bibtex"
    url = url.format(bare_url, doi)
    r = requests.get(url)
    found = False if r.status_code != 200 else True
    bib = r.content
    return found, str(bib, "utf-8")


def get_json(doi):
    url = "{}works/{}"
    url = url.format(bare_url, doi)
    r = requests.get(url)
    found = False if r.status_code != 200 else True
    item = r.json()
    return found, item


def get_bib_from_doi(doi, abbrev_journal=False):

    found, bib = get_bib(doi)
    if found and abbrev_journal:

        found, item = get_json(doi)#json vindo errado
        if found:
            abbreviated_journal = item["message"]["short-container-title"][0]
        #pegar journal contraido e contrair autores
        # depois fazer um replace no bib com  o nome do journal e o
        #contraido, ou usar o bibtexparser(ultima melhor)

    return found, bib
