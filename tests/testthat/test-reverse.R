test_that("characters", {
  expect_equal(reverse(letters), rev(letters))
})

test_that("numbers", {
  expect_equal(reverse(1:10), 10:1)
})

test_that("data frames", {
  df <- data.frame(a = 1:10, b = 11:20)
  expect_equal(reverse(df), df[c("b", "a")])
})

test_that("lists", {
  l <- list(1:10)
  expect_error(reverse(l))
})
