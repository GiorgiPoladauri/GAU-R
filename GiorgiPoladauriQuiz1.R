PirveliDavaleba <- matrix(c(3, -2, 1, 6, 4, -5, 8, 2, -3, 7, 9, 0, -4, 10, -1, 6, -7, 3, 5, 2), 
                  nrow = 4, ncol = 5, byrow = TRUE)
result <- PirveliDavaleba[3:4, 1:4]
result

###
MeoreDavaleba <- matrix(c(3, -2, 1, 6, 4, -5, 8, 2, -3, 7, 9, 0, -4, 10, -1, 6, -7, 3, 5, 2), 
                          nrow = 4, ncol = 5, byrow = TRUE)
result <- MeoreDavaleba[1:3, 2:5]
result

###
MesameDavaleba <- matrix(c(2, 3, 1, 5, 7, 8, 6, 4, 2, 9, 10, 1, 3, 7, 4, 5, 11, 6, 8, 3), 
                        nrow = 4, ncol = 5, byrow = TRUE)
result <- MesameDavaleba[1:4, 3:3]
result

###
MeoreDavaleba[1, ] <- MesameDavaleba[3,]
MeotxeDavaleba <- MeoreDavaleba
MeotxeDavaleba

###
MexuteDavaleba <- matrix(c(1, 4, 7, 10, 13, 2, 5, 8, 11, 14, 3, 6, 9, 12, 15),nrow=3,ncol = 5,byrow=TRUE)
MexuteDavaleba[c(1,3),c(1,3)] <- c(4,5,2,1)
MexuteDavaleba
