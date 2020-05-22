# Spencer Bryngelson website

## Acknowledgement

Credit the Allen Lab for creating the webpage that this one is adapted from.

## Publication database

File `_data/publist.yml` contains the publication database loaded on the 'Publications' page.
Items in that database can be used as examples for your entries.
If a DOI is present, the publication will be listed under 'Journal Papers'. 
Otherwise, it will be listed as 'In the Pipeline'.
If the `arXiv` category is present, then an additional button will be placed next to the entry on the publications page.
For each paper a corresponding PDF can be placed in the `papers/` directory.
The name of this file (with no .pdf extension!) should be placed in the `url` category of its entry in `publist.yml`.


Optional: Running `readyaml.py`, which is located in the home directory, will create `.bib` files for all publications that have DOIs.
If this is done, an additional button for the `.bib` file will be placed next to its entry on the publications page.
