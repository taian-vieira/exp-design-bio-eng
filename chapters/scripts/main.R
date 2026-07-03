library(readxl) # for reading xls files
source(file.path("scripts","functions","cog_functions.R"))

dur = 30  # duration of the
sub_folders = list.dirs("data", recursive = FALSE, full.names = FALSE) # directories inside the project folder
n = length(sub_folders) * 5 # number of expected observations

# initializing data frame with all columns from Table 5.1
df_cog = data.frame(
  subject = character(n), 
  eyes = factor(character(n), levels = c("open", "closed")), 
  standing_on = factor(character(n), levels = c("single leg", "both legs")),
  a_cog = double(n),    # elliptic area
  v_x = double(n),      # mean speed in x direction
  v_y = double(n),      # mean speed in y direction
  sigma_x = double(n),  # st. deviation in x direction
  sigma_y = double(n)   # st. deviation in y direction
)

count = 0 # used to index df_cog

for (i in sub_folders){ # outer loop (over subjects' folders)
  xls_files = list.files(file.path("data", i)) # retrieving xls files

  for (k in xls_files){ # inner loop (over xls files)
    count = count + 1 # update count
    
    # SUBJECT AND TEST CONDITIONS - updating df_cog with metadata
    df_cog$subject[count] = sub(".*_","",i) # subject code (character after last underscore)
    df_cog$eyes[count] = c("closed", "open")[grepl("open", k)+1] # eyes open OR eyes closed
    df_cog$standing_on[count] = c("both legs", "single leg")[grepl("single", k)+1] # single or both legs
    
    # loading raw data
    df = read_xls(file.path("data", i, k)) # data frame with smartphone orientation data

    # df_cog[count, 4:8] = compute_cog_metrics(df)
    update_data_frame_with_cog_metrics(df, df_cof, count)
    
    # # COMPUTING METRICS OF INTEREST, PART 1: PRE-PROCESSING STEPS
    # 
    # # trimming CoG coordinates
    # si = diff(df$time)          # all sampling intervals
    # sf = round(1/mean(si))      # mean sampling frequency (100 Hz)
    # y_cog = head(df$y_cog[df$time>5], dur * sf) # 30 s of pitch sample
    # x_cog = head(df$x_cog[df$time>5], dur * sf) # 30 s of yaw sample
    # 
    # # demeaning CoG coordinates
    # y_cog = y_cog - mean(y_cog, na.rm = TRUE) # demeaned pitch
    # x_cog = x_cog - mean(x_cog, na.rm = TRUE) # demeaned yaw
    # 
    # 
    # # COMPUTING METRICS OF INTEREST, PART 2: PROCESSING STEPS
    # 
    # # computing the elliptic area and updating df_cog
    # xy = cbind(x_cog, y_cog) # matrix with N rows (sf * dur) and 2 cols
    # Sigma = cov(xy)              # covariance matrix
    # xy_prime = eigen(Sigma)  # computing eigenvalues and eigenvectors
    # lambda = sqrt(xy_prime$values) # square root of eigen values
    # eigvec = xy_prime$vectors      # eigen vectors
    # df_cog$a_cog[count] = pi * 1.96^2 * prod(lambda) # elliptic area
    # 
    # # updating df_cog with mean speed values
    # df_cog$v_x[count] = sf * mean(abs(diff(x_cog))) # x
    # df_cog$v_y[count] = sf * mean(abs(diff(y_cog))) # y
    # 
    # # updating df_cog with standard deviation values
    # df_cog$sigma_x[count] = sqrt((t(x_cog) %*% x_cog) / (dur*sf-1) ) # x
    # df_cog$sigma_y[count] = sqrt((t(y_cog) %*% y_cog) / (dur*sf-1) ) # y
  }
}

df_cog = df_cog[1:count, ] # keeping only count observations

# write.csv(df_cog, file = "cog_metrics.csv", row.names = FALSE, quote = FALSE)