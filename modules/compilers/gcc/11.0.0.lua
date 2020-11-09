-- -*- lua -*-
help([[
GNU Compilers
 The GNU Compiler Collection is free software.  See the files whose
 names start with COPYING for copying permission.  The manuals, and
 some of the runtime libraries, are under different terms; see the
 individual source files for details.
 
 The directory INSTALL contains copies of the installation information
 as HTML and plain text.  The source of this information is
 gcc/doc/install.texi.  The installation information includes details
 of what is included in the GCC sources and what files GCC installs.
 
 See the file gcc/doc/gcc.texi (together with other files that it
 includes) for usage and porting information.  An online readable
 version of the manual is in the files gcc/doc/gcc.info*.
 
 See http://gcc.gnu.org/bugs/ for how to report bugs usefully.

 Copyright years on GCC source files may be listed using range
 notation, e.g., 1987-2012, indicating that every year in the range,
 inclusive, is a copyrightable year that could otherwise be listed
 individually.
 ]])

whatis("Name: GNU Compilers")
whatis("Version: 11.0")
whatis("Category: compilers")
whatis("URL: http://gcc.gnu.org")
whatis("Description: GNU C, C++, Fortran compilers")

local topdir="/opt/packages/gnu/10.2"

prepend_path("PATH",            pathJoin(topdir,"bin"))
prepend_path("LD_LIBRARY_PATH", pathJoin(topdir,"lib"))
prepend_path("C_INCLUDE_PATH", pathJoin(topdir,"include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(topdir,"include"))
prepend_path("MANPATH",         pathJoin(topdir,"info"))

setenv("CC", 	"gcc10.2")
setenv("CXX", 	"g++10.2")
setenv("F77", 	"gfortran10.2")
setenv("FC", 	"gfortran10.2")
