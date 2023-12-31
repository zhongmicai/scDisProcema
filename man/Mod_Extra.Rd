% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Mod_Extra.R
\name{Mod_Extra}
\alias{Mod_Extra}
\title{Extract the information of inferred modules}
\usage{
Mod_Extra(data_Expr, net, modules = NULL, Cyt = TRUE, sftpower = NULL)
}
\arguments{
\item{data_Expr}{A data.frame generated from Mean_Expre}

\item{net}{A list obtained in Mod_Infer}

\item{modules}{The modules users want to extract. Default is NULL, which indicates all of the modules}

\item{Cyt}{Logical. If TRUE, list files suitable for Cytoscape will be generated in the default path}

\item{sftpower}{The soft-threshold inferred from Mod_Infer}
}
\value{
a list contains the following components:

modProbes A list of members of each module

MEs_table A dataframe of ME values of each module

CytoscapeInput-edges-module_all.csv A dataframe of gene network of each module, suitable for Cytoscape. Nodes of the network can be seen in "fromNode" And "toNode"; "weight" represents the edge weight; "fromAltName" and "fromAltName" are the optional alternate names for the nodes; kWithin represents the intermodule connectiviey degree of each genes
}
\description{
This function is able to extract the eigengene values and the members of the inferred gene modules. Besides, network list containing nodes, edges and degrees in a format suitable for importing to Cytoscape would also be exported if users want to
}
\details{
The edge weight threshold was set to 0.5^sftpower
}
