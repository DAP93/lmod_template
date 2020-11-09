-- -*- lua -*-
help([[
NVIDIA CUDA(R) Toolkit
whith cuDNN 7.6.5.32 Library
 CUDA(R) is a parallel computing platform and programming model invented by
 NVIDIA. It enables dramatic increases in computing performance by harnessing
 the power of the graphics processing unit (GPU).
  CUDA was developed with several design goals in mind:
    Provide a small set of extensions to standard programming languages, 
    	like C, that enable a straightforward implementation of parallel 
    	algorithms. With CUDA C/C++, programmers can focus on the task of 
    	parallelization of the algorithms rather than spending time on their 
    	implementation.
    Support heterogeneous computation where applications use both the CPU and
    	GPU. Serial portions of applications are run on the CPU, and parallel
	portions are offloaded to the GPU. As such, CUDA can be incrementally
	applied to existing applications. The CPU and GPU are treated as 
	separate devices that have their own memory spaces. This configuration
	also allows simultaneous computation on the CPU and GPU without
	contention for memory resources.

 CUDA-capable GPUs have hundreds of cores that can collectively run thousands of
 computing threads. These cores have shared resources including a register file
 and a shared memory. The on-chip shared memory allows parallel tasks running on
 these cores to share data without sending it over the system memory bus.
 ]])

whatis("Name: NVIDA CUDA(R) Toolkit")
whatis("Version: 10.1")
whatis("Category: compilers")
whatis("URL: https://developer.nvidia.com/CUDA-TOOLKIT-ARCHIVE")
whatis("Description: NVIDA CUDA(R) Toolkit Compilers & Library, whith cuDNN 7.6.5.32")

prepend_path("PATH",            "/usr/local/cuda-10.1/NsightCompute-2019.1")
prepend_path("PATH", 		"/usr/local/cuda-10.1/bin")
prepend_path("LD_LIBRARY_PATH", "/usr/local/cuda-10.1/lib64")
prepend_path("LD_LIBRARY_PATH", "/usr/local/cuda-10.1/lib")
