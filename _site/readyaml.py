#! /Library/Frameworks/Python.framework/Versions/3.8/bin/python3

import yaml
import os

with open(r'_data/publist.yml') as file:
    # The FullLoader parameter handles the conversion from YAML
    # scalar values to Python the dictionary format
    pubs = yaml.load(file)
    # i = 0
    for pub in pubs:
        # i=i+1
        # print('publication #',i)
        for k,v in pub.items():
            # print(k,v)
            if (k=='url'):
                # print(k,'->',v)
                # url=v[:-4]
                url=v
            if (k=='doi'):
                # print(k,'->',v)
                os.system("doi2bib " + v + " >> papers/" + url +".bib")
