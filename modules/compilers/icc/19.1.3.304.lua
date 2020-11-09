-- -*- lua -*-
help([[
Intel(R) Compilers
Copyright 1985-2020 Intel(R) Corporation All Rights Reserved.

 The source code,  information  and material  ("Material") contained  herein is
 owned by Intel Corporation or its  suppliers or licensors,  and  title to such
 Material remains with Intel  Corporation or its  suppliers or  licensors.  The
 Material  contains  proprietary  information  of  Intel or  its suppliers  and
 licensors.  The Material is protected by  worldwide copyright  laws and treaty
 provisions.  No part  of  the  Material   may  be  used,  copied,  reproduced,
 modified, published,  uploaded, posted, transmitted,  distributed or disclosed
 in any way without Intel's prior express written permission.  No license under
 any patent,  copyright or other  intellectual property rights  in the Material
 is granted to  or  conferred  upon  you,  either   expressly,  by implication,
 inducement,  estoppel  or  otherwise.  Any  license   under such  intellectual
 property rights must be express and approved by Intel in writing.

 Unless otherwise agreed by Intel in writing,  you may not remove or alter this
 notice or  any  other  notice   embedded  in  Materials  by  Intel  or Intel's
 suppliers or licensors in any way.
 ]])

whatis("Name: Intel(R) Compilers")
whatis("Version: 19")
whatis("Category: compilers")
whatis("URL: https://software.intel.com/content/www/us/en/develop/tools/compilers.html")
whatis("Description: Intel(R) C, C++, Fortran compilers")

execute{cmd="source /opt/packages/intel/2020v4/compilers_and_libraries/linux/bin/compilervars.sh intel64",	modeA={"load"}} 

setenv("CC", 	"icc")
setenv("CXX", 	"icpc")
setenv("F77", 	"ifort")
setenv("FC", 	"ifort")
