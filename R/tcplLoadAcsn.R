#-------------------------------------------------------------------------------
# tcplLoadAcsn: Load assay component source name by acid
#-------------------------------------------------------------------------------

#' @rdname assay_funcs
#' @import data.table
#' @export

tcplLoadAcsn <- function(fld = NULL, val = NULL, add.fld = NULL) {
  tbl = c("assay_component", "assay_component_map", "assay")
  out <- c("assay_component.acid",
           "assay_component.assay_component_name",
           "assay_component_map.acsn")

  qstring <- .buildAssayQ(out = out,
                          tblo = c(1, 2, 4, 6, 3),
                          fld = fld,
                          val = val,
                          add.fld = add.fld)

  dat <- tcplQuery(query = qstring, db = getOption("TCPL_DB"), tbl=tbl)

  dat[]

}

#-------------------------------------------------------------------------------
