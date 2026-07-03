compute_cog_metrics <- function (df_raw_data) {

  # COMPUTING METRICS OF INTEREST, PART 1: PRE-PROCESSING STEPS
  # trimming CoG coordinates
  
  si <- diff(df_raw_data$time)          # all sampling intervals
  sf <- round(1/mean(si))      # mean sampling frequency (100 Hz)
  y_cog <- head(df_raw_data$y_cog[df$time>5], dur * sf) # 30 s of pitch sample
  x_cog <- head(df_raw_data$x_cog[df$time>5], dur * sf) # 30 s of yaw sample
  
  # demeaning CoG coordinates
  y_cog <- y_cog - mean(y_cog, na.rm = TRUE) # demeaned pitch
  x_cog <- x_cog - mean(x_cog, na.rm = TRUE) # demeaned yaw
  
  
  # COMPUTING METRICS OF INTEREST, PART 2: PROCESSING STEPS
  
  # computing the elliptic area and updating df_cog
  xy = cbind(x_cog, y_cog) # matrix with N rows (sf * dur) and 2 cols
  head(xy, 5)              # shows the first 5 rows of the xy matrix
  Sigma <- cov(xy)              # covariance matrix
  xy_prime <- eigen(Sigma)  # computing eigenvalues and eigenvectors
  lambda <- sqrt(xy_prime$values) # square root of eigen values
  eigvec <- xy_prime$vectors      # eigen vectors
  a_cog <- pi * 1.96^2 * prod(lambda) # elliptic area
  
  # updating df_cog with mean speed values
  v_x <- sf * mean(abs(diff(x_cog))) # x
  v_y <- sf * mean(abs(diff(y_cog))) # y
  
  # updating df_cog with standard deviation values
  sigma_x <- sqrt((t(x_cog) %*% x_cog) / (dur*sf-1) ) # x
  sigma_y <- sqrt((t(y_cog) %*% y_cog) / (dur*sf-1) ) # y  
  
  return(a_cog)
}

update_data_frame_with_cog_metrics <- function (df_raw_data, df_cog, count) {

  # COMPUTING METRICS OF INTEREST, PART 1: PRE-PROCESSING STEPS
  # trimming CoG coordinates

  si <- diff(df_raw_data$time)          # all sampling intervals
  sf <- round(1/mean(si))      # mean sampling frequency (100 Hz)
  y_cog <- head(df_raw_data$y_cog[df$time>5], dur * sf) # 30 s of pitch sample
  x_cog <- head(df_raw_data$x_cog[df$time>5], dur * sf) # 30 s of yaw sample

  # demeaning CoG coordinates
  y_cog <- y_cog - mean(y_cog, na.rm = TRUE) # demeaned pitch
  x_cog <- x_cog - mean(x_cog, na.rm = TRUE) # demeaned yaw


  # COMPUTING METRICS OF INTEREST, PART 2: PROCESSING STEPS

  # computing the elliptic area and updating df_cog
  xy = cbind(x_cog, y_cog) # matrix with N rows (sf * dur) and 2 cols
  Sigma <- cov(xy)              # covariance matrix
  xy_prime <- eigen(Sigma)  # computing eigenvalues and eigenvectors
  lambda <- sqrt(xy_prime$values) # square root of eigen values
  eigvec <- xy_prime$vectors      # eigen vectors
  df_cog$a_cog[count] <<- pi * 1.96^2 * prod(lambda) # elliptic area

  # updating df_cog with mean speed values
  df_cog$v_x[count] <<- sf * mean(abs(diff(x_cog))) # x
  df_cog$v_y[count] <<- sf * mean(abs(diff(y_cog))) # y

  # updating df_cog with standard deviation values
  df_cog$sigma_x[count] <<- sqrt((t(x_cog) %*% x_cog) / (dur*sf-1) ) # x
  df_cog$sigma_y[count] <<- sqrt((t(y_cog) %*% y_cog) / (dur*sf-1) ) # y
}