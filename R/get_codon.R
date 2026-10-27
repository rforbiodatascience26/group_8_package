#' get_codon
#'
#' @param x Vector of indices or names to look for.
#' @param table The codon lookup table (vector or data frame).
#'
#' @returns collapsed codons from the data table
#' @export
get_codon <- function(x, table = codon_table) {
  fetch_codon <- paste0(table[x], collapse = "")
  return(fetch_codon)
}

