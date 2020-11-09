-- -*- lua -*-
help([[
Intel(R) Math Kernel Library
Copyright 2003-2019 Intel Corporation.

 This software and the related documents are Intel copyrighted  materials,  and
 your use of  them is  governed by the  express license  under which  they were
 provided to you (License).  Unless the License provides otherwise, you may not
 use, modify, copy, publish, distribute,  disclose or transmit this software or
 the related documents without Intel's prior written permission.

 This software and the related documents  are provided as  is,  with no express
 or implied  warranties,  other  than those  that are  expressly stated  in the
 License.
 ]])

whatis("Name: Intel(R) Math Kernel Library")
whatis("Version: 2020")
whatis("Category: libraries")
whatis("URL: https://software.intel.com/content/www/us/en/develop/tools/math-kernel-library.html")
whatis("Description: Intel(R) C, C++, Fortran compilers")

execute{cmd="source /opt/packages/intel/2020v4/mkl/bin/mklvars.sh intel64",	modeA={"load"}} 
