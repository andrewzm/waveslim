waveslim
========

This package is version 1.7.3 obtained from the CRAN site http://cran.r-project.org/web/packages/waveslim/index.html. The function `dwt.2d` in  Version 1.7.3  does not work on non-square images. A correction has been made here which remedies this. This repo will be deleted once the correction is included in the CRAN version.

Installation
-------------

Please use `devtools` to install this package. Load `devtools` using `library(devtools)` and then install using `install_github('andrewzm/waveslim')`.

Details
---------

The incorrect code was in `src/dwt2.c`. The following changes have been made

    LL[i+k*(*N/2)] = Vout[k]; // Right ones
    HL[i+k*(*N/2)] = Wout[k]; // Right ones

has been changed to

    LL[i+k*(*M/2)] = Vout[k]; 
    HL[i+k*(*M/2)] = Wout[k]; 

Further, 

    LH[i+k*(*N/2)] = Vout[k]; 
    HH[i+k*(*N/2)] = Wout[k]; 

has been changed to

    LH[i+k*(*M/2)] = Vout[k]; 
    HH[i+k*(*M/2)] = Wout[k];

