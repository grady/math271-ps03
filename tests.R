test_that("<5>Solution file exists and knits",{
  expect_true(file.exists("solution.Rmd"))
  suppressWarnings(expect_error(knitr::knit("solution.Rmd", quiet = TRUE, envir=globalenv()), NA))
})

test_that("<4> Dallas subset",{
  expect_error(expect_equal(nrow(dallas_sub), 24),NA)
  expect_error(expect_vector(dallas_sub$prct_sold, numeric()), NA)
  expect_error(expect_equal(dim(dallas_summary), c(12,2)), NA)
})