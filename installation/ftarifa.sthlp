{smcl}
{* 11Jun2024}{...}
{hi:help ftarifa}{...}
{right:{browse "https://github.com/AlejandroPerezPortocarrero/ftarifa":ftarifa v0.1 (GitHub)}}

{hline}

{title:ftarifa}: A Stata package for calculating tariffs in the drinking water and sanitation sector.

{marker syntax}{title:Syntax}
{p 8 15 2}
{cmd:ftarifa} {varname} {cmd:[}{it:options}{cmd:]}

{p 4 4 2}
The options are described as follows:

{synoptset 36 tabbed}{...}
{synopthdr}
{synoptline}

{p2coldent : {opt name(mpiname)}       name of the multidimensional poverty index (MPI).}
{p2coldent : {opt d1(varlist[, subopt])} specification of dimension 1.}
{p2coldent : ...                        ...}
{p2coldent : {opt d10(varlist[, subopt])} specification of dimension 10.}
{p2coldent : {opt description(text)}   short description of the MPI specified.}
{p2coldent : {opt clear}               clear all specifications.}
{p2coldent : {opt replace}             replace specification if it exists.}

{synoptline}
{p2colreset}{...}

{title:Dependencies}

The {browse "http://repec.sowi.unibe.ch/stata/palettes/index.html":palette} package (Jann 2018, 2022) is required:

{stata ssc install palettes, replace}
{stata ssc install colrspace, replace}

Even if you have these installed, it is highly recommended to check for updates: {stata ado update, update}

{title:Examples}



See {browse "https://github.com/AlejandroPerezPortocarrero/ftarifa":GitHub}.




{hline}


{title:Package details}

Version      : {bf:ftarifa} v1.21
This release : 11 Jun 2024
First release: 10 Apr 2023
Repository   : {browse "https://github.com/AlejandroPerezPortocarrero/ftarifa":GitHub}
Keywords     : Stata, graph, bump chart, rank plot
License      : {browse "https://opensource.org/licenses/MIT":MIT}

Author       : {browse "https://github.com/AlejandroPerezPortocarrero":Asjad Naqvi}
E-mail       : asjadnaqvi@gmail.com
Twitter      : {browse "https://twitter.com/AsjadNaqvi":@AsjadNaqvi}


{title:Feedback}

Please submit bugs, errors, feature requests on {browse "https://github.com/AlejandroPerezPortocarrero/ftarifa/issues":GitHub} by opening a new issue.

{title:Citation guidelines}

Suggested citation guidlines for this package:

Naqvi, A. (2024). Stata package "ftarifa" version 1.21. Release date 11 June 2024. https://github.com/AlejandroPerezPortocarrero/stata-ftarifa.

@software{ftarifa,
   author = {Naqvi, Asjad},
   title = {Stata package ``ftarifa''},
   url = {https://github.com/AlejandroPerezPortocarrero/ftarifa},
   version = {1.21},
   date = {2024-06-11}
}



{title:References}

{p 4 8 2}Jann, B. (2018). {browse "https://www.stata-journal.com/article.html?article=gr0075":Color palettes for Stata graphics}. The Stata Journal 18(4): 765-785.

{p 4 8 2}Jann, B. (2022). {browse "https://ideas.repec.org/p/bss/wpaper/43.html":Color palettes for Stata graphics: An update}. University of Bern Social Sciences Working Papers No. 43. 


{title:Other visualization packages}

{psee}
    {helpb arcplot}, {helpb alluvial}, {helpb bimap}, {helpb bumparea}, {helpb ftarifa}, {helpb circlebar}, {helpb circlepack}, {helpb clipgeo}, {helpb delaunay}, {helpb joyplot}, 
	{helpb marimekko}, {helpb polarspike}, {helpb sankey}, {helpb schemepack}, {helpb spider}, {helpb streamplot}, {helpb sunburst}, {helpb treecluster}, {helpb treemap}, {helpb waffle}
	
or visit {browse "https://github.com/asjadnaqvi":GitHub} for detailed documentation and examples.		
