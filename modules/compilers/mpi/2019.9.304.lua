-- -*- lua -*-
help([[
Intel(R) MPI Library
Copyright 2003-2020 Intel Corporation.

 This software and the related documents are Intel copyrighted materials, and
 your use of them is governed by the express license under which they were
 provided to you (License). Unless the License provides otherwise, you may
 not use, modify, copy, publish, distribute, disclose or transmit this
 software or the related documents without Intel's prior written permission.

 This software and the related documents are provided as is, with no express
 or implied warranties, other than those that are expressly stated in the
 License.


 Intel(R) MPI Library modulefile
 ]])

whatis("Name: Intel(R) MPI")
whatis("Version: 2019")
whatis("Category: compilers")
whatis("URL: https://software.intel.com/content/www/us/en/develop/tools/mpi-library.html")
whatis("Description: Intel(R) MPI Library environment")

local topdir="/opt/packages/intel/2020v4/compilers_and_libraries_2020.4.304"

setenv("I_MPI_ROOT", 		pathJoin(topdir,"linux/mpi"))

prepend_path("CLASSPATH", 	pathJoin(topdir,"linux/mpi/intel64/lib/mpi.jar"))
prepend_path("PATH", 		pathJoin(topdir,"linux/mpi/intel64/bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(topdir,"linux/mpi/intel64/lib/release"))
prepend_path("LD_LIBRARY_PATH", pathJoin(topdir,"linux/mpi/intel64/lib"))
prepend_path("MANPATH", 	pathJoin(topdir,"linux/mpi/man"))
