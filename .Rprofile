# The .First function is called after everything else in .Rprofile is executed
.First <- function() {
  # Print a welcome message
  message("Welcome back ", Sys.getenv("USER"),"!\n","working directory is:", getwd())
}

options(prompt="~> ", digits=4, show.signif.stars=FALSE)

local({
    r = getOption("repos")
    r["CRAN"] = "https://cran.rstudio.com/"
    options(repos = r)
})
