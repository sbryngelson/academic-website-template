#! /Library/Frameworks/Python.framework/Versions/3.8/bin/python3

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
                    os.system("rm -f papers/" + url +".bib")
                    os.system("arxiv2bib " + str(v) + " >> papers/" + url +".bib")
else:
    print('Command line tool arxiv2bib not found. Arxiv files not converted to bibliographic files .bib. \
            I believe this requires python3 (like this script). \
            Consider installing this tool via pip install arxiv2bib or pip3 install arxiv2bib')

if is_tool('doi2bib'):
    with open(r'_data/publist.yml') as file:
        # The FullLoader parameter handles the conversion from YAML
        # scalar values to Python the dictionary format
        pubs = yaml.load(file, Loader=yaml.FullLoader)
        # i = 0
        for pub in pubs:
            # i=i+1
            # print('publication #',i)
            for k,v in pub.items():
                # print(k,v)
                if (k=='url'):
                    # print(k,'->',v)
                    # trim 3 digit extension
                    # url=v[:-4]
                    url=v
                if (k=='doi'):
                    # print(k,'->',v)
                    os.system("rm -f papers/" + url +".bib")
                    os.system("doi2bib " + str(v) + " >> papers/" + url +".bib")
                    #remove empty lines that doi2bib gives
                    open("papers/tmp.bib",'w').write(
                        ''.join(
                            l for l in open("papers/" + url + ".bib") if l.strip()))
                    os.system("mv papers/tmp.bib papers/" + url + ".bib")
else:
    print('Command line tool doi2bib not found. DOI not converted to bibliographic files .bib. \
            I believe this requires python3 (like this script). \
            Consider installing this tool via pip install doi2bib or pip3 install doi2bib')
