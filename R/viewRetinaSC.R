#' View HumanLiver data in the scClustViz Shiny app
#'
#' A wrapper function to view the \code{HumanLiver} dataset in the
#' \code{scClustViz} Shiny app.
#'
#' @param dataSet One of \code{"All"} or \code{"RSCsOnly"} for the full dataset
#'   or the subset of predicted retinal stem cell clusters respectively.
#' @param outPath Default = "./" (the working directory). Specify the directory
#'   used to save/load any analysis files you generate while exploring the
#'   \code{HumanLiver} data.
#' @param imageFileType Default="pdf". The file format for saved figures. One of
#'   \code{"pdf"} (generated with \code{\link[grDevices]{cairo_pdf}}),
#'   \code{"eps"} (generated with \code{\link[grDevices]{cairo_ps}}),
#'   \code{"tiff"} (generated with \code{\link[grDevices]{tiff}}), or
#'   \code{"png"} (generated with \code{\link[grDevices]{png}}).
#' @param ... Named options that should be passed to the
#'   \code{\link[shiny]{runApp}} call (these can be any of the following:
#'   "port", "launch.browser", "host", "quiet", "display.mode" and "test.mode").
#'
#' @return The function causes the scClustViz Shiny GUI app to open in a
#'   seperate window.
#'
#' @examples
#' \dontrun{
#'   viewRetinaSC("All")
#' }
#'
#' @seealso \url{https://baderlab.github.io/scClustViz} for information on
#'   \code{scClustViz}.
#'
#' @export

viewRetinaSC <- function(dataSet,outPath="./",imageFileType="pdf",...) {
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
                         annotationDB=annotationDB,
                         imageFileType=imageFileType,
                         ...)

  } else {
    scClustViz::runShiny(filePath=filePath,
                         outPath=outPath,
                         cellMarkers=cellMarkers,
                         imageFileType=imageFileType,
                         ...)
  }
}
