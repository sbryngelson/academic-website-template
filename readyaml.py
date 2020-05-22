#!/usr/bin/env python3

import yaml
import os

def is_tool(name):
    from shutil import which
    return which(name) is not None

if is_tool('arxiv2bib'):
    with open(r'_data/publist.yml') as file:
        pubs = yaml.load(file, Loader=yaml.FullLoader)

        for pub in pubs:
            for k,v in pub.items():
                if (k=='url'):
                    url=v
                if (k=='arxiv'):
                    print('working on ArXiv file ' + url)
                    os.system("arxiv2bib " + str(v) + " > papers/" + url +".bib")
                    if is_tool('bibtex2html'):
                        os.system("export TMPDIR=.; bibtex2html -q -o papers/" + url + " papers/" + url + ".bib")
                        os.system("mv papers/" + url + "_bib.html  papers/" + url + ".html")
                    else: 
                        os.system("mv papers/" + url + ".bib" "papers/" + url + ".html")
else:
    print('Command line tool arxiv2bib not found. Arxiv files not converted to bibliographic files .bib. \
            I believe this requires python3 (like this script). \
            Consider installing this tool via pip3 install arxiv2bib')

if is_tool('doi2bib'):
    if not is_tool('bibtex2html'):
        print('Command line tool bibtex2html not found. Will progress, but nicer bib files will be generated if this tool is installed')
        print('This tool can be downloaded from: https://www.lri.fr/~filliatr/bibtex2html')

    with open(r'_data/publist.yml') as file:
        pubs = yaml.load(file, Loader=yaml.FullLoader)
        for pub in pubs:
            for k,v in pub.items():
                if (k=='url'):
                    url=v
                if (k=='doi'):
                    print('working on DOI file ' + url)
                    os.system("doi2bib " + str(v) + " > papers/" + url +".bib")
                    #remove empty lines that doi2bib gives
                    open("papers/tmp.bib",'w').write(
                        ''.join(
                            l for l in open("papers/" + url + ".bib") if l.strip()))
                    os.system("mv papers/tmp.bib papers/" + url + ".bib")
                    if is_tool('bibtex2html'):
                        os.system("export TMPDIR=.; bibtex2html -q -o papers/" + url + " papers/" + url + ".bib")
                        os.system("mv papers/" + url + "_bib.html  papers/" + url + ".html")
                    else: 
                        os.system("mv papers/" + url + ".bib" "papers/" + url + ".html")

else:
    print('Command line tool doi2bib not found. DOI not converted to bibliographic files .bib. \
            I believe this requires python3 (like this script). \
            Consider installing this tool via pip install doi2bib or pip3 install doi2bib')

