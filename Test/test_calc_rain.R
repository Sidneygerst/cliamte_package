test_that("calc_rain_works Min Year < Max Year", {


  expect_true(calc_rain(rain_data)[1,1] < calc_rain(rain_data)[2,1])


})


test_that("calc_rain min average is less than max average rain fall", {

  expect_true(calc_rain(rain_data)[1,2] < calc_rain(rain_data)[2,2])


})

test_that("calc_rain year does not equal rainfall",{

  expect_true(calc_rain(rain_data)[1,1] != calc_rain(rain_data)[2,2])

})
