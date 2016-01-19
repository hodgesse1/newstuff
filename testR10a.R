buzza <- function(nc,nb=4) {
w <- matrix(0,nrow=nc,ncol=2)

      for(kk in 1:nc) {
      	     xplanet <- .Fortran("integcR",np=as.integer(nb),
	    integral=as.double(0.0),numres=as.double(0.0))
	    zz <-proc.time()

      	     w[kk,] <- c(zz[3],unlist(xplanet$numres))
	     cat(kk,w[kk,1:2],"\n")
	     }
	     return(ww)
}
	     



