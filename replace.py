#! /Library/Frameworks/Python.framework/Versions/3.4/bin/python3
#input file
import glob

pages=glob.glob("_pages/*.md")
pages2=glob.glob("_site/*.html")
pages = pages + pages2

toreplace=[ 'Leiden University', 'Allan Lab', 'Allan' ]
withreplace=[ 'Georgia Tech', 'Bryngelson Group', 'Bryngelson' ]

for page in pages:
    for i in range(len(toreplace)):
        print(page)
        fin = open(page, "rt")
        #read file Icontents to string
        data = fin.read()
        #replace all occurrences of the required string
        data = data.replace(toreplace[i],withreplace[i])
        #close the input file
        fin.close()
        #open the input file in write mode
        fin = open(page, "wt")
        #overrite the input file with the resulting data
        fin.write(data)
        #close the file
        fin.close()
