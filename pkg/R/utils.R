to_list <- function(x) {
  if (!is.list(x)) {
    list(x)
  } else {
    x
  }
}

parseJsonResonse <- function(response) {
  parsed_response <- list()

  if (!is.null(response$result) && !is.null(response$result$data)) {
    parsed_response$data <- tidyr::unnest(response$result$data, cols = c())
  }

  if (!is.null(response$metadata)) {

    if (!is.null(response$metadata$pagination)) {
      parsed_response$pagination <- tidyr::as_tibble(response$metadata$pagination)
    }

    if (!is.null(response$metadata$status)) {
      parsed_response$status <- tidyr::as_tibble(response$metadata$status)
    }
  }



  return (parsed_response)
}

