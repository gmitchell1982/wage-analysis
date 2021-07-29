# Equal Pay Compliance Analysis
A self-directed exploration of equal pay compliance in the AdventureWorks2019 practice dataset.

## Table of Contents


## Project Description
Imaginary Scenario:
The CEO of AdventureWorks has hired me as an independent contractor to perform a detailed analysis in search of any equal pay regulation violations so that the company might rectify them before they become a legal problem.

Imaginary Bonus Goal:
In the event of a satisfactory outome of the initial scenario, the client is willing to pay a large one-time development fee if the provided code can be easily run by their internal team every year without the need for extensive training of staff (code would need to be able to handle new data and still maintain precision of output validity; would also benefit heavily from end-user requiring as little knowledge as possible).

### Motivation
Most of my work has been in private repositories dealing with potentially sensitive materials and/or proprietary information. Even in instances where the work is encoded and removed from identification or trade-secrets, I consider it a violation of trust to publicly share the work without express written permission from the client organizations.

Furthermore, my involvement in the field of research psychology is now far enough in my past that I can not rely on those projects to accurately display my skill set to cooperators and potential employers.

This particular project was devised as a way for me to show off some data manipulation as well as offering a glimpse into my analysis and reporting capabilities.

The vast majority of this project is being completed in my spare time between real projects.

### Why This Project?


### What Problem Does It Solve?

### What Did I Learn? (and what problems did I encounter?)
1) Converting SQL Server's hierarchyid type to its string equivalent was much easier (and quicker to run) than anticipated. This string is parsable by R for analysis purposes later.
2) Finding a reliable source for actually learning how to extract XML code into an SQL table was quite difficult, I will need more practice at this if I am to fully integrate it into my repertoire; however, I think I can now at least manage basic "scraping" with a reference.

### What Technologies I Used & Why?
* MS SQL Server (Transact-SQL, no point & click allowed)
* MS SQL Server Management Studio 18

SQL Server was chosen for its combination of breadth of use in the industry and that the developer version for projects like this is free to use.

### Ideas for Future Implementation
- [ ] change NumRates to RateRaises & RateCuts
- [ ] add ShiftID to allow for confound control in potential shift bonuses
- [ ] add second table for sales info (prefer profit info) per region to allow for confound control of lower achieveing areas also giving lower pay to everyone
- [ ] attempt to find external cost of living information to allow control of geographical confound (may be difficult since data spans multiple countries and multiple currency, unless assumption is made of all reportings in DB as USD)
- [ ] decide if OOIS for job titles would provide any benefit to the analysis (but probably not)


## Installation (how to get it to work)


## Instructions (how to use it)


## How to Contribute
Given that this is a portfolio project that is only meant for demostrational purposes, there is no need for contribution.

## Test Cases & Quality Control


## Credits
* [Link to Gerald L. Mitchell's GitHub Profile](https://github.com/gmitchell1982)
* [Link To AdventureWorks2019 Download Page](https://docs.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms)


## License


