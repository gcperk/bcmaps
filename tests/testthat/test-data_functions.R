context("test layer download from bcmaps.rdata")

test_that("test that all sf layer function work without error and returns an sf object as default", {
  fn_names <- available_layers()$Item
  for (i in seq_along(fn_names)) {
    #cat("\n", fn_names[i]) #for debugging
    expect_error(layer <- match.fun(fn_names[i])(), NA)
    expect_is(layer, "sf")
  }
})


test_that("test that all sp layer function work without error and return a Spatial* object ", {
  fn_names_sp <- available_layers()$Item
  for (i in seq_along(fn_names_sp)) {
    #cat("\n", fn_names_sp[i]) #for debugging
    expect_error(layer <- match.fun(fn_names_sp[i])(class="sp"), NA)

    ## watercourses_* are Lines - different object
    if(fn_names_sp[i] %in% c("watercourses_15M","watercourses_5M")){
      expect_is(layer, "SpatialLinesDataFrame")
    }

    ## All the rest of the objects
    if(!fn_names_sp[i] %in% c("watercourses_15M","watercourses_5M")){
      expect_is(layer, "SpatialPolygonsDataFrame")
    }
  }
})



