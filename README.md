# NCANDA Reports Dashboard
Creating dashboard pages for NCANDA. Used for internal monitoring for SRI International.

Created by: Christopher Pondoc

## SVN Upload/Download Dashboard

### Description
File: `SVN Reports.ipynb'
* Last upload obtained via direct query/svn info to ncanda.sri.com/svn, highlighted if longer ago than SLA says​
* Last download obtained via svn info on /fs/storage/laptops/ncanda, highlighted if different from last upload (implying that harvester is failing somehow / has yet to run)​
* We can start with just one of last-upload/last-download if that’s easier​
* All figures can be in days if that’s easier​
* Dead laptops greyed out or removed entirely – the “deadness” and “SLA” metadata will need to be in a separate data/config file

### To Run
Just open up the Jupyter Notebook and run!

## Redcap Form Status Table – One Row/Form​

### Description
File: `Redcap Status One Line Per Form.ipynb'
* Symbols can be replaced with 0s and 1s​
* Pro: Very straightforward to make from the inventories/filters​
* Useful for RAs looking for overall status of Data Entry data

### To Run
To run with different paramters, run the command:
``` bash
papermill 'Redcap Status One Line Per Form.ipynb' '[NOTEBOOK NAME].ipynb' -p site '[SITE NAME'
```

To render as an HTML file, you can append the following command at the end of the papermill command, or simply run it after papermill has come to completion:
``` bash
jupyter nbconvert --to html '[NOTEBOOK NAME].ipynb'
```