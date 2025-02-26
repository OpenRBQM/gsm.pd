# Launch the ShinyApp (Do not remove this comment)
if (grepl("gsm\\.pd", getwd()) ||
    !("gsm.pd" %in% list.files(.libPaths()))) {
  pkgload::load_all(".", export_all = FALSE, attach_testthat = FALSE)
} else {
  library(gsm.pd)
}
library(gsm.app)

gsm.app::run_gsm_app(
  dfAnalyticsInput = gsm.app::sample_dfAnalyticsInput,
  dfBounds = gsm.app::sample_dfBounds,
  dfGroups = gsm.app::sample_dfGroups,
  dfMetrics = gsm.app::sample_dfMetrics,
  dfResults = gsm.app::sample_dfResults,
  fnFetchData = gsm.app::sample_fnFetchData,
  # lPlugins = list(pluginPD()),
  strTitle = "gsm.pd demo",
  strFavicon = Sys.getenv("GSMAPP_FAVICON", "diamond-turn-right"),
  strFaviconColor = Sys.getenv("GSMAPP_FAVICONCOLOR", gsm.app::ColorScheme("red"))
)
