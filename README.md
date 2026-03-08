<p align="center">
  <img src="docs/images/banner.svg" alt="search-by-surname banner" width="900"/>
</p>

<p align="center">
  <a href="https://www.r-project.org/"><img src="https://img.shields.io/badge/R-%3E%3D%203.6-276DC3?logo=r&logoColor=white" alt="R >= 3.6"/></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-GPL--3.0-blue.svg" alt="License: GPL-3.0"/></a>
  <img src="https://img.shields.io/badge/Platform-Windows%20%7C%20macOS%20%7C%20Linux-lightgrey" alt="Platform"/>
  <img src="https://img.shields.io/badge/Status-Archived-orange" alt="Status: Archived"/>
</p>

---

An R-based tool for batch searching Spanish public telephone directories by surname. It scrapes surname lists, generates gender-aware variants, constructs search URLs for multiple directory services, and writes them to batch files for systematic querying.

Originally written during the early days of COVID-19 (2020) and released publicly in 2025.

## Features

- **Multi-service support** -- queries both Guiatel/Infobel and ABCtelefonos directory services.
- **Gender-aware surname variants** -- automatically generates feminine forms for surnames following Slavic naming conventions (e.g., appending `-a` to surnames ending in `-v`).
- **Batch file generation** -- splits search URLs into numbered batch files to facilitate manual querying and avoid rate limiting.
- **Multi-region coverage** -- targets six Spanish provinces/regions in a single run.
- **Web scraping pipeline** -- extracts surname lists and directory indexes directly from web sources using `rvest`.

## Requirements

| Dependency | Version | Purpose |
|---|---|---|
| [R](https://www.r-project.org/) | >= 3.6 | Runtime |
| [tidyverse](https://www.tidyverse.org/) | latest | Data manipulation and functional utilities |
| [rvest](https://rvest.tidyverse.org/) | latest | HTML parsing and web scraping |
| [stringi](https://stringi.gagolewski.com/) | latest | String processing and substring operations |

Install all dependencies in R:

```r
install.packages(c("tidyverse", "rvest", "stringi"))
```

## Usage

1. Clone the repository:

```bash
git clone https://github.com/GeiserX/search-by-surname.git
cd search-by-surname
```

2. Open `search.R` and adjust the output paths in `write_lines()` calls to match your local directory structure. By default, the script writes to a Windows path under Google Drive.

3. Run the script in R or RStudio:

```r
source("search.R")
```

The script will:
- Scrape surname lists from the configured web source.
- Generate gender-aware surname variants.
- Build search URLs for each surname and region.
- Write numbered batch files to the specified output directories.

## Regions Covered

| Region | Guiatel/Infobel | ABCtelefonos |
|---|---|---|
| Zaragoza | Yes | Yes |
| Murcia | Yes | Yes |
| Granada | Yes | Yes |
| Asturias | Yes | Yes |
| Almeria | Yes | Yes |
| Albacete | Yes | Yes |

## Data Sources

- **Surname lists** -- scraped from publicly available wiki pages with surname databases.
- **Guiatel / Infobel** -- Spanish white pages telephone directory (`blancas.paginasamarillas.es`).
- **ABCtelefonos** -- independent Spanish telephone directory (`abctelefonos.com`).

## Limitations

- Output paths are hardcoded and must be manually adjusted before running.
- The Guiatel/Infobel URL construction is commented out in the source; it requires uncommenting and may need updating if the service has changed its URL structure since 2020.
- No built-in rate limiting or request throttling -- batch files are intended for manual use.
- Surname source is specific to Bulgarian surnames; adapting to other origins requires changing the scraping source.
- The targeted directory services may have changed their structure, imposed CAPTCHAs, or shut down since the script was originally written.

## Legal and Ethical Notice

This tool queries **publicly available** telephone directory services. It is provided strictly for educational and research purposes. Users are responsible for complying with all applicable laws and the terms of service of the queried platforms. The author assumes no liability for misuse.

Automated scraping of directory services may violate their terms of service. Use responsibly and at your own risk.

## License

This project is licensed under the [GNU General Public License v3.0](LICENSE).
