#' @title BMI
#' @description Lorem ipsum dolor sit meat, et mei falli pungent, e
#' am at audire vivendo. No tollit postulant dissentiunt quo,
#' mea tractatos salutandi u
#'
#' @param weight number
#' @param height number
#' @param name your name
#'
#' @return bmi
#' @importFrom dplyr filter summarise n
#' @importFrom stats qnorm
#'
#' @examples
#' library(health)
#' bmi(70, 173, "John")
#'
#' @export

bmi <- function(weight, height, name) {
  bmi <- round(getBMI(weight, height / 100), 2)
  result <- paste0("Hi ", name, ". BMI:", bmi)
  print(result)
}

getBMI <- function(w, h) {
  bmi <- w / (h * h)
  return(bmi)
}
