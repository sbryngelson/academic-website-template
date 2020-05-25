#!/usr/bin/env python3

import yaml
import os

#get .bib for files with arXiv identifier
with open(r'_data/publist.yml') as file:
    pubs = yaml.load(file, Loader=yaml.FullLoader)

    for pub in pubs:
        for k,v in pub.items():
            if (k=='url'):
                url=v
            if (k=='arxiv'):
                print('working on ArXiv file ' + url)
                os.system("./scripts/arxiv2bib.py " + str(v) + " > papers/" + url +".txt")

#get .bib for files with DOI 
with open(r'_data/publist.yml') as file:
    pubs = yaml.load(file, Loader=yaml.FullLoader)
    for pub in pubs:
        for k,v in pub.items():
            if (k=='url'):
                url=v
            if (k=='doi'):
                print('working on DOI file ' + url)
                os.system("./scripts/doi2bib.py " + str(v) + " > papers/" + url +".txt")
                #remove empty lines that doi2bib gives
                open("papers/tmp.bib",'w').write(
                    ''.join(
                        l for l in open("papers/" + url + ".txt") if l.strip()))
                os.system("mv papers/tmp.bib papers/" + url + ".txt")
