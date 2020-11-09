-- -*- lua -*-
help([[
GOOGLE Inc. TensorFlow 2
 TensorFlow is an end-to-end open source platform for machine learning. 
 It has a comprehensive, flexible ecosystem of tools, libraries, and 
 community resources that lets researchers push the state-of-the-art in ML
 and developers easily build and deploy ML-powered applications.

 TensorFlow was originally developed by researchers and engineers working 
 on the Google Brain team within Google's Machine Intelligence Research 
 organization to conduct machine learning and deep neural networks research. 
 The system is general enough to be applicable in a wide variety of other 
 domains, as well.

 TensorFlow provides stable Python and C++ APIs, as well as non-guaranteed
 backward compatible API for other languages.
 
 BUILD with:
 - CUDA 	10.1.203
 - GCC 		8.4
 - PYTHON 	3.6
 - cuDNN	7.6.5.32
 - TensorRT	6.0.1.5
 ]])

whatis("Name: GOOGLE Inc. TensorFlow 2")
whatis("Version: 2.4")
whatis("Category: libraies")
whatis("URL: https://www.tensorflow.org/")
whatis("Description: GOOGLE Inc. TensorRT 2.4, build with:")
whatis("             CUDA     10.1.243")
whatis("             GCC      8.4")
whatis("             PYTHON   3.6")
whatis("             cuDNN    7.6.5.32")
whatis("             TensorRT 6.0.1.5")

local topdir="/opt/packages/nvidia/TensorRT/TensorRT-6.0.1.5"

if (mode() == "load") then
   try_load("cuda/10.1")
   try_load("tensorRT/6.0.1.5")
end

prereq("cuda/10.1")
prereq("tensorRT/6.0.1.5")

setenv("TENSORFLOW_WHL", "/opt/packages/google/tensorflow/2.4/tensorflow-2.4.0rc0-cp38-cp38-linux_x86_64.whl")
prepend_path("PATH", "/usr/local/cuda-10.1/extras/CUPTI")
prepend_path("LD_LIBRARY_PATH", "/usr/local/cuda-10.1/extras/CUPTI")
prepend_path("LD_LIBRARY_PATH", "/usr/local/cuda-10.1/extras/CUPTI/lib64")

execute{cmd=[[echo -e   "\\e[33m============================== \\e[5mWARNING! \\e[25m=============================\e[39m\\n
Thensorflow 2 was copilaed to increase perfomace in this machine.    \\n
It has to be installed before to use it python (>3.6),               \\n
if you are using the pre-installed python (/usr/bin/python3) ignore  \\n
this message, it is all already set for you ;) !                      \\n
\\n
In case you are using a differen python (e.g. in a virtual env.)     \\n
you have to install the following modules.			     \\n
(You can check if they already exist with the comand                 \\n
\\e[96m  pip3 list | grep tensorflow\\e[39m ) 		             \\n
\\n
1. Install the wheel file  		.			     \\n
\\e[96m  pip3 install $TENSORFLOW_WHL \\e[39m\\n
\\n
ENJOY!\\n
\\n
In case of errors contact: \e[36mpaolo.deangelis@polito.it \e[39m   \\n
\\e[33m============================== \\e[5mWARNING! \\e[25m=============================\e[39m\\n
\\e[39m"]],modeA={"load"}}

