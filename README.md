# BrainfartScraper
Scrapes the publicly available "wiki" (probably everyone's search history) from [ahaonline.cz](https://wiki.ahaonline.cz/index,1,alp.html), [blesk.cz](https://wiki.blesk.cz/index,1,alp.html) and [e15.cz](https://wiki.e15.cz/index,1,alp.html)

## Run
Download the BrainfartScraper.sh file, edit maximum values based on what the [highest](https://wiki.ahaonline.cz/index,1617,alp.html) [page](https://wiki.blesk.cz/index,1048,alp.html) [number](https://wiki.e15.cz/index,300,alp.html) on the target site(s) are. Delete code for any page you do not want to scrape. Resulting .txt files will be created in the local directory containing all search queries, one per line (LF). 

**Note:** Recommended using an HDD to prevent excessive write operations because the script writes to the output file once for every page, meaning 300-1617 writes per wiki!

Give the file execute permissions:

    chmod +x ./BrainfartScraper.sh
    
Execute:

    bash ./BrainfartScraper.sh

The command will finish depending on your internet connection, in about 2 hours if scraping all wikis.

## Get results
The script's output as of 2023-04-30 is available in the attached text files. 
