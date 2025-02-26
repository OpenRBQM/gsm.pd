#' PD Plugin Definition
#'
#' Plugins for gsm.app are defined by a named `list` with information about the
#' plugin. These can be loaded from a yaml file with [gsm.app::plugin_Read()].
#' We provide a ready-to-use plugin definition for this PD plugin.
#'
#' @returns A plugin definition for use in gsm.app.
#' @export
#'
#' @examples
#' pluginPD()
pluginPD <- function() {
  gsm.app::plugin_Define(
    strName = "Protocol Deviations",
    chrDomains = c("PD", "SUBJ"),
    fnShinyUI = "mod_PD_UI",
    fnShinyServer = "mod_PD_Server"
  )
}
