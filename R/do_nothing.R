return_one <- function() {
  return(1)
}

infer_fields <- function(datos) {
  nombres <- names(datos)
  n_col <- ncol(datos)
  tipos <- sapply(datos, typeof)
  names(tipos) <- NULL
  fields <- comprehenr::to_list(for (i in 1:n_col) list("name" = nombres[i], "type" = tipos[i], "standard_name" = ""))
  return(fields)
}
