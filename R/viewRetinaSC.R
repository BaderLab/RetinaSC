#' View HumanLiver data in the scClustViz Shiny app
#'
#' A wrapper function to view the \code{HumanLiver} dataset in the
#' \code{scClustViz} Shiny app.
#'
#' @param outPath Default = "./" (the working directory). Specify the directory
#'   used to save/load any analysis files you generate while exploring the
#'   \code{HumanLiver} data.
#'
#' @return The function causes the scClustViz Shiny GUI app to open in a
#'   seperate window.
#'
#' @examples
#'   viewRetinaSC()
#'
#' @seealso \url{https://baderlab.github.io/scClustViz} for information on
#'   \code{scClustViz}.
#'
#' @export

viewRetinaSC <- function(dataSet,outPath="./") {
  if (!dataSet %in% c("All","RSCsOnly")) {
    stop("dataSet must be one of: 'All' or 'RSCsOnly'")
  }
  filePath <- switch(dataSet,
                     All=system.file("RSCs/MouseRetinaSCs.RData",package="RetinaSC"),
                     RSCsOnly=system.file("RSCsOnly/MouseRetinaRSCsOnly.RData",package="RetinaSC"))
  cellMarkers <- list()

  if (require("org.Mm.eg.db",quietly=T)) {
    annotationDB <- org.Mm.eg.db
    scClustViz::runShiny(filePath=filePath,
                         outPath=outPath,
                         cellMarkers=cellMarkers,
                         annotationDB=annotationDB)

  } else {
    scClustViz::runShiny(filePath=filePath,
                         outPath=outPath,
                         cellMarkers=cellMarkers)
  }
}
