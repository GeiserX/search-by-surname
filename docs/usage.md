# Usage

## Dependencies

| Dependency | Purpose |
|---|---|
| [R](https://www.r-project.org/) | Runtime |
| [tidyverse](https://www.tidyverse.org/) | Data manipulation and functional utilities |
| [rvest](https://rvest.tidyverse.org/) | HTML parsing and web scraping |
| [stringi](https://stringi.gagolewski.com/) | String processing and substring operations |

## What the script does

Running `source("search.R")`:

- Scrapes the surname list from the configured web source.
- Generates the feminine surname variants.
- Scrapes the ABCtelefonos index page of each region.
- Writes numbered batch files to the output directories set in the `write_lines()` calls.

## Regions and sources

| Region | Guiatel/Infobel batch files | ABCtelefonos batch files |
|---|---|---|
| Zaragoza | Yes | Yes |
| Murcia | Yes | Yes |
| Granada | Yes | Yes |
| Asturias | Yes | Yes |
| Almería | Yes | Yes |
| Albacete | Yes | Yes |

Sources: the surname list comes from a public wiki page of Bulgarian surnames; Guiatel/Infobel is the Spanish white pages (`blancas.paginasamarillas.es`); ABCtelefonos is an independent directory (`abctelefonos.com`).

## Limitations

- Output paths are hardcoded and must be adjusted by hand before running.
- The Guiatel/Infobel URL construction is commented out in the source, so the Guiatel/Infobel files hold only surnames. It needs uncommenting and may need updating if the service has changed its URL structure since 2020.
- No built-in rate limiting or request throttling; the batch files are meant for manual use.
- The surname source is specific to Bulgarian surnames; other origins need a different scraping source.
- The directory services may have changed their structure, added CAPTCHAs or shut down since the script was written.
