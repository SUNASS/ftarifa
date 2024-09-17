{smcl}
{* 11Jun2024}{...}
{hi:help ftarifa}{...}
{right:{browse "https://github.com/SUNASS/ftarifa":ftarifa v0.1 (GitHub)}}

{hline}

{title:ftarifa}: A Stata package for calculating tariffs in the drinking water and sanitation sector. 


{marker syntax}{title:Syntax}
{p 8 15 2}

{cmd:ftarifa} {varname} {cmd:[}{it:, options}{cmd:]}

{p 4 4 2}
The options are described as follows:

{synoptset 36 tabbed}{...}
{synopthdr}
{synoptline}

{p2coldent : {opt tarifa1(numlist)}}specify the tariffs for category {it: 1}.{p_end}
{p2coldent : {opt quiebre1(numlist)}}specify the breaks for category {it: 1}.{p_end}
{p2coldent : {opt ...}}...{p_end}
{p2coldent : {opt tarifa10(numlist)}}specify the tariffs for category {it: 10}.{p_end}
{p2coldent : {opt quiebre10(numlist)}}specify the breaks for category {it: 10}.{p_end}
{p2coldent : {opt g:enerate(stubname)}}create tariff variable for all categories.{p_end}
{p2coldent : {opt cat:egory(stubname)}}identify category.{p_end}

{synoptline}
{p2colreset}{...}

{title:Description}

{cmd:ftarifa} streamlines the calculation of charges in the drinking water and sanitation sector based on predefined tariffs and user categories. 
The package is designed to handle large datasets and varied consumption patterns, allowing users to generate accurate results quickly. 
By automating the calculation process, ftarifa minimizes the need for extensive programming, enabling regulators to focus on decision-making and analysis.

{title:Examples}

See {browse "https://github.com/SUNASS/ftarifa":GitHub}.




{hline}


{title:Package details}

Version      : {bf:ftarifa} v0.1
This release : 11/09/2024
First release: 11/09/2024
Repository   : {browse "https://github.com/SUNAS/ftarifa":GitHub}
Keywords     : Stata, tariffs, drinking water, sanitation
License      : {browse "":}

Author       : {browse "https://github.com/SUNASS":SUNASS}
URL      : {browse "https://www.gob.pe/sunass":https://www.gob.pe/sunass}


{title:Feedback}

Please submit bugs, errors, feature requests on {browse "https://github.com/SUNASS/ftarifa/issues":GitHub} by opening a new issue.

{title:Citation guidelines}

Suggested citation guidlines for this package:

SUNASS. (2024). Stata package "ftarifa" version 0.1. Release date 9 Sep 2024. https://github.com/SUNASS/stata-ftarifa.

@software{ftarifa,
   author = {SUNASS},
   title = {Stata package ``ftarifa''},
   url = {https://github.com/SUNASS/ftarifa},
   version = {0.1},
   date = {2024-09-11}
}



{title:References}

{p 4 8 2}SUNASS (2024). {browse "":ftarifa: Un paquete de Stata para el cálculo de tarifas en el sector agua potable y saneamiento}. Documento de Trabajo N° 2024-003.
