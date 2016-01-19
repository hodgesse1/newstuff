testR9a <- function(nb=3) {
dyn.load("integcR.so")
print("loaded fortran")
print(is.loaded("integcR.so"))

      	     xplanet <- .Fortran("integcR",np=as.integer(nb),
	    integral=as.double(0.0),numres=as.double(0.0))
	    print(str(xplanet))
	     return(xplanet$numres)
}


	     



