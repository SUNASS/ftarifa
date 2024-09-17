[Installation](#Installation) | [Syntax](#Syntax) | [Citation guidelines](#Citation-guidelines) | [Examples](#Examples) | [Feedback](#Feedback) | [Change log](#Change-log)

---


# ftarifa v0.1

17/09/2024

**ftarifa** is a Stata package developed by the [National Superintendence of Sanitation Services (SUNASS)](https://www.gob.pe/sunass) from Peru for tariff calculation in the water and sanitation sector. The package includes subcommands that allow for tariff calculation based on different user categories and consumption levels, facilitating tariff determination for both regulators and service providers more efficiently and in compliance with regulatory frameworks. **ftarifa** offers significant advantages to academics, analysts, and professionals in the sector, such as reducing time spent on data management and programming while ensuring a more detailed and transparent tariff analysis.

## Installation

**ftarifa** is installed via GitHub, so any Stata user can make use of this package. The code below details the commands to run in Stata to obtain the latest version of **ftarifa**.

```
net install ftarifa, from("https://raw.githubusercontent.com/AlejandroPerezPortocarrero/ftarifa/main/installation/") replace
```

## Syntax for Stata versions 17 or newer

The syntax for the latest version is as follows:

```stata
ftarifa volfac [, tarifa1(numlist) quiebre1(numlist) ... tarifa10(numlist) quiebre10(numlist) g(imagua) cat(categoria)]
```


## Citation guidelines
Software packages take countless hours of programming, testing, and bug fixing. If you use this package, then a citation would be highly appreciated. Suggested citations:

*in BibTeX*

```
@software{bimap,
   author = {Naqvi, Asjad},
   title = {Stata package ``bimap''},
   url = {https://github.com/asjadnaqvi/stata-bimap},
   version = {2.0},
   date = {2024-08-22}
}
```

*or simple text*

```
Naqvi, A. (2024). Stata package "bimap" version 2.0. Release date 22 August 2024. https://github.com/asjadnaqvi/stata-bimap.
```


*or see [SSC citation](https://ideas.repec.org/c/boc/bocode/s459196.html) (updated once a new version is submitted)*




## Examples

The examples showcase both the syntax for the use with `geoplot` (first syntax) and `spmap` (second syntax). The map outputs have been aligned to the extent possible but very minor differences in outputs might remain. Additionally, as `geoplot` is still in active development, output might break with latest updates or syntax might change. Please report these as soon as possible.

Since I am using Stata 18+, I have to specify `old` option to pass the syntax to use `spmap`. This might be uncessary if you have older Stata versions.

Users can either download the files from [GIS](./GIS/) and dump them in a folder or directly get them from Stata:

Set up the data:

```stata
cd <change path to the working directory>

foreach x in county county_shp2 state state_shp2 usa_county2 {
	copy "https://github.com/asjadnaqvi/stata-bimap/raw/main/GIS/`x'.dta" "`x'.dta", replace
}
```

## Feedback

Please open an [issue](https://github.com/asjadnaqvi/stata-bimap/issues) to report errors, feature enhancements, and/or other requests. 


