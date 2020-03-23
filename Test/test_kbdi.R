


kbdi_data = as.data.frame(cbind(Years = c(2000:2003), Temp = c(40,57,88,100), Rain = c(20,25,30,35), MAP = c(20:23)))

test_that("kbdi_index returns as numeric", {

  expect_equal(class(kbdi_index(kbdi_data$Temp, kbdi_data$Rain, kbdi_data$MAP)), "numeric")

})

test_that("kbdi_index returns kbdi > 200", {

  expect_true(kbdi_index(kbdi_data$Temp, kbdi_data$Rain, kbdi_data$MAP)[1] > 200)
  expect_true(kbdi_index(kbdi_data$Temp, kbdi_data$Rain, kbdi_data$MAP)[2] > 200)
  expect_true(kbdi_index(kbdi_data$Temp, kbdi_data$Rain, kbdi_data$MAP)[3] > 200)
  expect_true(kbdi_index(kbdi_data$Temp, kbdi_data$Rain, kbdi_data$MAP)[4] > 200)
})

test_that("kbdi_index returns kbdi [1] < [2] from kbdi_data",{

  expect_true(kbdi_index(kbdi_data$Temp, kbdi_data$Rain, kbdi_data$MAP)[1] < kbdi_index(kbdi_data$Temp, kbdi_data$Rain, kbdi_data$MAP)[2])


})

