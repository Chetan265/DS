#' Create hist, box plot and numeric summary
#' @export
#' @param x numeric variable
ds <- function(x){
  # 1 row and 2 columns
  par(mfrow = c(1,2))
  # Histogram
  hist(x, col = rainbow(30))
  #Box plot
  boxplot(x, col = "red")
  par(mfrow = c(1,1))
  # numeric summary
  data.frame(mean = mean(x),
             median = median(x),
             max = max(x),
             min = min(x)),
             sd = sd(x),
             variance = var(x)
}
