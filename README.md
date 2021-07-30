# NCANDA Reports Dashboard
Creating dashboard pages for NCANDA. Used for internal monitoring for SRI International.

Created by: Christopher Pondoc

## SVN Upload/Download Dashboard
File: `SVN Reports.ipynb'
* Last upload obtained via direct query/svn info to ncanda.sri.com/svn, highlighted if longer ago than SLA says​
* Last download obtained via svn info on /fs/storage/laptops/ncanda, highlighted if different from last upload (implying that harvester is failing somehow / has yet to run)​
* We can start with just one of last-upload/last-download if that’s easier​
* All figures can be in days if that’s easier​
* Dead laptops greyed out or removed entirely – the “deadness” and “SLA” metadata will need to be in a separate data/config file

## Redcap Form Status Table – One Row/Form​
File: `Redcap Status One Line Per Form.ipynb'
* Symbols can be replaced with 0s and 1s​
* Pro: Very straightforward to make from the inventories/filters​
* Useful for RAs looking for overall status of Data Entry data