# Rob Wiederstein's Curriculum Vitae

The CV is built using R.  The repository is organized by (1) structure, (2) tools and a "to-do" list. Its origin is the [repository](https://github.com/seabbs/cv) authored by Sam Abbot.

## Structure

- `cv/cv.Rmd`: CV structure implemented as an [`{rmarkdown}`](https://rmarkdown.rstudio.com) document.
- `data/*.csv`: Data on each CV subcategory.
- `scripts/install.R`: Installs/loads all `R` dependencies using the [`{pacman}`](https://github.com/trinker/pacman) :package:.
- `tic.R`: Uses [`{tic}`](https://github.com/ropenscilabs/tic.website) to define the [Travis CI](https://travis-ci.org) build and deployment steps.
- `Dockerfile`: Specifies the [docker](https://www.docker.com) environment.
- `.travis.yml`: Specifies the remote building of the CV on [Travis CI](https://travis-ci.org). Automated using [`{tic}`](https://github.com/ropenscilabs/tic.website).

## Tools

- The [`{vitae}`](https://docs.ropensci.org/vitae/) :package: is used to provide a CV template.
- [`{tidyverse}`](https://www.tidyverse.org) :tool: are used for data read in and manipulation.
- [`{here}`](https://here.r-lib.org) :package: for path management.
- [`{tinytex}`](https://github.com/yihui/tinytex) :package: to manage LaTex installation and additional packages.
- [Docker](https://www.docker.com) and [Docker Hub](https://hub.docker.com) is used to ensure a reproducible environment.

## Acknowledgements

- 
