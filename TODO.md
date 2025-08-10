# TODOs

-   Add support for [config files](https://github.com/rstudio/renv/issues/1865#issuecomment-2250406951) (text files with structured data in YAML, TOML, JSON) as
    (4th) pkg config val src.

    -   use the [config](https://rstudio.github.io/config/) pkg under the hood
    -   add support for TOML to the config pkg

-   Add support for system keyrings as (5th) pkg config val src via [`keyring::key_get()`](https://keyring.r-lib.org/reference/key_get.html), which is more
    secure to store secrets than the existing srcs.

-   Add support for secrets management servers/protocols like [OpenBao](https://openbao.org/) / [HashiCorp Vault](https://www.hashicorp.com/products/vault) as
    (6th) pkg config val src
    
    Open question: Are there other open protocols/standards to support? E.g. Bitwarden's [Secrets Manager](https://bitwarden.com/help/secrets-manager-overview/)
    is [not open-source](https://github.com/dani-garcia/vaultwarden/discussions/3368), i.e. not supported by [Vaultwarden](https://github.com/dani-garcia/vaultwarden/blob/e35c6f87054563af6ecfec9f100779523b62c473/src/db/models/organization.rs#L201).
    
    General notes on Bitwarden (password manager) vs. Vault:
    - https://discuss.hashicorp.com/t/frontend-password-manager-using-vault-as-the-backend/44327/2
    - https://discuss.hashicorp.com/t/managing-secrets-in-bitwarden-vs-hashicorp-vault-best-practices-for-isolation-and-naming-conflicts/71822/2

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
