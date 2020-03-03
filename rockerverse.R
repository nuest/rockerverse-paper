## ----setup, include=FALSE-----------------------------------------------------
Sys.setlocale('LC_ALL','C')


## ----clients_table, echo=FALSE, results='asis', warning=FALSE, message=FALSE----
library("tibble")
library("tidyr")
library("dplyr")

functionalities <- tribble(
  ~id, ~Functionality,
  "dockerfile", "Generate a Dockerfile",
  "build", "Build an image",
  "execute", "Execute a container locally or remotely",
  "cloud", "Deploy or manage instances in the cloud",
  "interact", "Interact with an instance (e.g., file transfer)",
  "images", "Manage storage of images",
  "othercontainers", "Supports Docker and Singularity",
  "api", "Direct access to Docker API instead of using the CLI",
  "install", "Installing Docker software"
)

# some functionalities might be missing. please add them if you find that any are missing!
package_functionalities <- tribble(
  ~package, ~id,
  "harbor", c("execute", "cloud", "images"),
  "stevedore", c("api", "execute", "cloud", "images", "interact"), # build?
  "AzureContainers", c("build", "execute", "cloud"),
  "babelwhale", c("execute", "interact", "othercontainers"),
  "dockyard", c("dockerfile", "build", "execute"), # cloud?
  "dockermachine", c("install", "execute", "cloud", "interact")
)

tab <-
  full_join(
  functionalities %>% crossing(package = package_functionalities$package),
  package_functionalities %>% unnest(id) %>% mutate(check = "\\checkmark"),#\u2714 # \\checkmark # ✓
  by = c("id", "package")
) %>%
  mutate(check = ifelse(is.na(check), "", check)) %>%
  spread(package, check) %>%
  slice(match(functionalities$id, id)) %>%
  select(-id)

# insert table, position caption below as described in https://github.com/haozhu233/kableExtra/issues/221#issuecomment-400473530
library("kableExtra")
library("xtable")
#knitr::kable(tab,
#             format = "latex",
#             caption = "R packages with Docker client functionality.",
#             label = "clients",
#             escape = FALSE) %>%
#  kableExtra::row_spec(0, angle = -90)
xtable2kable <- function(x) {
  label(x) <- "tab:clients"
  out <- capture.output(print(x, 
                              table.placement = NULL,
                              booktabs = TRUE,
                              caption.placement = "bottom",
                              include.rownames = FALSE,
                              hline.after = c(-1:nrow(x)),
                              # next analoguosu to kable's "escape = FALSE", see https://stackoverflow.com/a/42355065/261210
                              sanitize.text.function = function (x) x
                              ))[-(1:2)]
  out <- paste(out, collapse = "\n")
  structure(out, format = "latex", class = "knitr_kable")
}

xtable(tab, caption = "R packages with Docker client functionality.") %>%
  xtable2kable() %>%
  kableExtra::row_spec(0, angle = -90)


## ----purl_code, eval=TRUE, include=FALSE--------------------------------------
# generate the reproducible R script every time the R Markdown document is compiled
library("callr")
callr::r_safe(function() { knitr::purl("rockerverse.Rmd") })

