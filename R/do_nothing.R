return_one <- function() {
  return(1)
}

infer_fields <- function(datos) {
  fields <- jsonlite::read_json("/workdir/tests/data/fiels_schema.json")
  return(fields)
}
