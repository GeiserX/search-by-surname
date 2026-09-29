<p align="center">
  <img src="docs/images/banner.svg" alt="search-by-surname" width="900"/>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/github/license/GeiserX/search-by-surname" alt="License"/></a>
  <a href="https://github.com/GeiserX/awesome-spain#readme"><img src="https://img.shields.io/badge/listed%20on-awesome--spain-c60b1e?style=flat-square&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIxNCIgdmlld0JveD0iMCAwIDIwIDE0Ij48cmVjdCB3aWR0aD0iMjAiIGhlaWdodD0iMTQiIGZpbGw9IiNjNjBiMWUiLz48cmVjdCB5PSIzLjUiIHdpZHRoPSIyMCIgaGVpZ2h0PSI3IiBmaWxsPSIjZmZjNDAwIi8+PC9zdmc+&labelColor=ffc400" alt="listed on awesome-spain"/></a>
</p>

---

An R script that prepares batch lookups in Spanish public telephone directories by surname. It scrapes a list of Bulgarian surnames, adds their feminine forms, scrapes the ABCtelefonos index pages of six regions and writes both to numbered text files that you then search by hand.

Originally written during the early days of COVID-19 (2020) and released publicly in 2025.

## Features

- **Two directory services** -- builds ABCtelefonos index URLs for each region; the Guiatel/Infobel URL builder is present but commented out, so those files hold only surnames.
- **Gender-aware surname variants** -- generates feminine forms for surnames following Slavic naming conventions (appending `-a` to surnames ending in `-v`).
- **Batch file generation** -- splits the lists into numbered batch files for manual querying.
- **Multi-region coverage** -- targets six Spanish provinces/regions in a single run: Zaragoza, Murcia, Granada, Asturias, Almería and Albacete.
- **Web scraping** -- extracts the surname list and the directory indexes with `rvest`.

## Quick start

You need R with tidyverse, rvest and stringi. Clone the repo, edit the `write_lines()` paths in [`search.R`](search.R) (they point at a Windows Google Drive folder), then in R:

```r
install.packages(c("tidyverse", "rvest", "stringi"))
source("search.R")
```

What the script writes and its limits: [Usage](docs/usage.md).

## Documentation

- [Usage](docs/usage.md): dependencies, what the script writes, regions and sources, and its limitations.

## Disclaimer

This tool queries **publicly available** telephone directory services. It is provided strictly for educational and research purposes. Users are responsible for complying with all applicable laws and the terms of service of the queried platforms. The author assumes no liability for misuse.

Automated scraping of directory services may violate their terms of service. Use responsibly and at your own risk.

## License

[GPL-3.0-or-later](LICENSE)
