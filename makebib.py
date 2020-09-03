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
                infile = open("papers/" + url +".txt",'r')
                newopen = open("papers/tmp.bib",'w')
                for line in infile:
                    if 'File' not in line and 'Eprint' not in line and 'PrimaryClass' not in line:
                        newopen.write(line)
                newopen.close()
                os.system("mv papers/tmp.bib papers/" + url + ".txt")

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
                # os.system("mv papers/tmp.bib papers/" + url + ".txt")
                infile = open("papers/tmp.bib",'r')
                newopen = open("papers/tmp2.bib",'w')
                for line in infile:
                    if 'url' not in line and 'publisher' not in line:
                        newopen.write(line)
                newopen.close()
                os.system("mv papers/tmp2.bib papers/" + url + ".txt")
                os.system("rm -f papers/tmp*.bib")
