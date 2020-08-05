### tcpl: An R package for processing high-throughput chemical screening data

Edits from original package (tcpl v 2.1.0):

1. I modified the tcplVarMat() function to work with tcplLite - it still kind of breaks but will give you chemical-by-assay matrices of hits and AC50s as well as matrices for whether a chemical is used in a given assay. The burst / cytotox part doesn't really work.
2. I added a 'port' option to tcplConf() in order to connect to a copy of invitrodb hosted elsewhere.

You can install my version with the following command:
    
    devtools::install_github("paulsonak/CompTox-ToxCast-tcpl")


Welcome to the GitHub repository for the tcpl package.

The tcpl pacakge provides a set of tools for processing and modeling high-throughput and high-content chemical screening data. The package was developed for the chemical screening data generated by the US EPA [ToxCast program](https://www.epa.gov/chemical-research/toxicity-forecasting), but can be used for diverse chemical screening efforts.

If you are interested in contributing or want to report a bug, please see [CONTRIBUTING](CONTRIBUTING.md) for more information. 

To install the current development version run the following command: 

    devtools::install_github("USEPA/CompTox-ToxCast-tcpl")
