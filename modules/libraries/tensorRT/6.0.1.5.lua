-- -*- lua -*-
help([[
NVIDA(R) TensorRT
 The core of NVIDIA(R) TensorRT is a C++ library that facilitates high-
 performance inference on NVIDIA graphics processing units (GPUs). 
 TensorRT takes a trained network, which consists of a network definition
 and a set of trained parameters, and produces a highly optimized runtime
 engine that performs inference for that network.
 
 TensorRT provides API's via C++ and Python that help to express deep 
 learning models via the Network Definition API or load a pre-defined model
 via the parsers that allow TensorRT to optimize and run them on an NVIDIA GPU. 
 TensorRT applies graph optimizations, layer fusion, among other optimizations, 
 while also finding the fastest implementation of that model leveraging a 
 diverse collection of highly optimized kernels. 
 TensorRT also supplies a runtime that you can use to execute this network on
 all of NVIDIA’s GPU’s from the Kepler generation onwards.

 TensorRT also includes optional high speed mixed precision capabilities 
 introduced in the Tegra X1, and extended with the Pascal, Volta, Turing, and 
 NVIDIA(R) Ampere GPU architectures.
 ]])

whatis("Name: NVIDA(R) TensorRT")
whatis("Version: 6.0")
whatis("Category: libraies")
whatis("URL: https://docs.nvidia.com/deeplearning/tensorrt/install-guide/index.html")
whatis("Description: NVIDA (R) TensorRT 6.0.1.5")

local topdir="/opt/packages/nvidia/TensorRT/TensorRT-6.0.1.5"

if (mode() == "load") then
   try_load("cuda/10.1")
end
prereq("cuda/10.1")

setenv("TENSORRT_ROOT", topdir)
prepend_path("LD_LIBRARY_PATH", pathJoin(topdir,"/lib"))

execute{cmd=[[echo -e   "\\e[33m============================== \\e[5mWARNING! \\e[25m=============================\e[39m\\n
The TensorRT 6.0 to be used has to by installed in python(<3.6),     \\n
if you are using the pre-installed python (/usr/bin/python3) ignore  \\n
this message, it is all already set for you ;)!                      \\n
\\n
In case you are using a differen python (e.g. in a virtual env.)     \\n
you have to install the following modules.			     \\n
(You can check if they already exist with the comand                 \\n
\\e[96m  pip3 list | grep tensorrt\\e[39m ) 		             \\n
\\n
1. Install the Python TensorRT wheel file.			     \\n
\\e[96m  pip3 install $TENSORRT_ROOT/python/tensorrt-6.0.1.5-cp3*-none-linux_x86_64.whl \\e[39m\\n
\\n
2. Install the Python UFF wheel file. This is only required if you   \\n
   plan to use TensorRT with TensorFlow.                             \\n
\\e[96m  pip3 install $TENSORRT_ROOT/uff/uff-*.whl \\e[39m \\n
   check:                                                            \\n
\\e[96m  which convert-to-uff\\e[39m \\n
\\e[34m  /usr/local/bin/convert-to-uff\\e[39m \\n
\\n
3. Install the Python graphsurgeon wheel file.                       \\n
\\e[96m  pip3 install g$TENSORRT_ROOT/graphsurgeon/graphsurgeon-*.whl \\e[39m \\n
\\n
ENJOY!\\n
\\n
In case of errors contact: \e[36mpaolo.deangelis@polito.it \e[39m   \\n
\\e[33m============================== \\e[5mWARNING! \\e[25m=============================\e[39m\\n
\\e[39m"]],modeA={"load"}}

