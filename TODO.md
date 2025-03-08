# TODOs

-   Add support for [config files](https://github.com/rstudio/renv/issues/1865#issuecomment-2250406951) (text files with structured data in YAML, TOML, JSON) as
    (4th) pkg config val src.

    -   use the [config](https://rstudio.github.io/config/) pkg under the hood
    -   add support for TOML to the config pkg

-   Add support for system keyrings as (5th) pkg config val src via [`keyring::key_get()`](https://keyring.r-lib.org/reference/key_get.html), which is more
    secure to store secrets than the existing srcs.

-   Add support for secrets management servers/protocols like [OpenBao](https://openbao.org/) and [HashiCorp Vault](https://www.hashicorp.com/products/vault) as
    (6th) pkg config val src

-   Document how to add pkg config info to `R/<pkg>-package.R`:

    ``` r
    #' @section Package configuration:
    #'
    #' `r pkgsnip::md_snip("funky_config")`
    #'
    #' ```{r, echo = FALSE}
    #' funky::print_config()
    #' ```
    #'
    ```

    and figure out best way to show same info on pkgdown site (pkgdown builds the `R/<pkg>-package.R` to `/reference/<pkg>-package.html` but doesn't link it
    anywhere it seems).
