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

{p2coldent : {opt ftarifa y x, by(group)}}The command requires a numeric {it:y} variable and a numeric {it:x} variable. The x variable is usually a time variable.
The {opt by()} variable defines the groupings.{p_end}

{p2coldent : {opt top(num)}}The number of rows to show in the graph. The default option is {opt top(50)}. All other values are dropped.{p_end}

{p2coldent : {opt sel:ect(any|last)}}The option {opt sel(any)} selects {opt top()} for all x-axis categories. This is the default and also shows {opt by()} categories moving in and out
of the {opt top()}. The option {opt sel(last)} tracks the path of the {opt top()} for the last x-axis category.{p_end}

{p2coldent : {opt smooth(num)}}The smoothing parameter that ranges from 1-8. The default value is {opt smooth(4)}. A value of 1 shows straight lines,
while a value of 8 shows almost vertical jumps.{p_end}

{p2coldent : {opt palette(str)}}Color name is any named scheme defined in the {stata help colorpalette:colorpalette} package. Default is {stata colorpalette tableau:{it:tableau}}.{p_end}

{p2coldent : {opt offset(num)}}Extends the x-axis range to accommodate labels. The default value is {opt offset(15)} for 15% of {it:xmax-xmin}.{p_end}

{p2coldent : {opt lw:idth(str)}}The line width of the area stroke. The default is {opt lw(0.8)}.{p_end}

{p2coldent : {opt wrap(num)}}Wrap the labels after a number of characters. For example, {opt wrap(50)} will wrap labels every 50 characters.{p_end}

{p2coldent : {opt labs:ize(str)}}Size of the {opt by()} category labels. Default value is {opt labs(2.2)}.{p_end}

{p2coldent : {opt mlabs:ize(str)}}Size of the {opt by()} category labels that end in the middle. Default value is {opt mlabs(1.6)}.{p_end}

{p2coldent : {opt xlabs:ize(str)}}Size of the x-axis labels. Default value is {opt xlabs(2.5)}.{p_end}

{p2coldent : {opt ylabs:ize(str)}}Size of the y-axis labels. Default value is {opt ylabs(2.5)}.{p_end}

{p2coldent : {opt xlaba:ngle(str)}}Angle of the x-axis labels. Default is {opt xlaba(0)} for horizontal.{p_end}

{p2coldent : {opt msym:bol(str)}}Symbol of the markers. Default is {opt msym(2.5)}.{p_end}

{p2coldent : {opt ms:ize(str)}}Size of markers. Default is {opt ms(2)}.{p_end}

{p2coldent : {opt mc:olor(str)}}Color of markers. Default is the line color.{p_end}

{p2coldent : {opt mlwid:th(str)}}Size of marker outline width. Default is {opt mlwid(medium)}.{p_end}

{p2coldent : {opt mlc:olor(str)}}Color of marker outline width. Default is the line color.{p_end}

{p2coldent : {opt *}}All other standard twoway options.{p_end}

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
