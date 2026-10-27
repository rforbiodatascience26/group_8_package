#' Plot Amino Acid Counts
#'
#' @param aa_seq amino acid (or other) sequence to be visualized
#'
#' @returns A ggplot bar chart of the counts of all unique characters in the sequence.
#' @export
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
plot_aa_counts <- function(aa_seq){
  # split the input sequence into individual characters and keep only unique ones
  unique_aa <- aa_seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # count how many times each unique character appears in the original sequence,
  # then convert the named vector to a data frame (characters become row names)
  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = aa_seq, pattern =  amino_acid)) |>
    as.data.frame()

  # name the single column of counts
  colnames(counts) <- c("Counts")
  # copy the characters from the row names into their own column so ggplot can use them
  counts[["Amino_acid"]] <- rownames(counts)

  # make a bar chart with one coloured bar per character;
  # hide the legend since the x-axis already labels each bar
  aa_counts_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_acid, y = Counts, fill = Amino_acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aa_counts_plot)
}
