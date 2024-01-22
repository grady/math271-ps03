test_that("<5>Solution file exists and knits",{
  expect_true(file.exists("solution.Rmd"))
  suppressWarnings(expect_error(knitr::knit("solution.Rmd", quiet = TRUE, envir=globalenv()), NA))
})

test_that("<1> Dallas subset", {
  expect_error(expect_equal(nrow(dallas_sub), 24),NA)
})

test_that("<1> Percent sold column", {
  expect_error(expect_vector(dallas_sub$prct_sold, numeric()), NA)
})

test_that("<2> Dallas summary data frame", {
  expect_error(expect_equal(dim(dallas_summary), c(12,2)), NA)
})
