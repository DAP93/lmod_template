-- -*- lua -*-
help([[
Bazel
Copyright 2004-2020 Google Inc.
 Bazel is an open-source build and test tool similar to Make, Maven, and Gradle.
 It uses a human-readable, high-level build language. Bazel supports projects 
 in multiple languages and builds outputs for multiple platforms. Bazel supports 
 large codebases across multiple repositories, and large numbers of users.
 ]])

whatis("Name: Bazel")
whatis("Version: 3.7")
whatis("Category: apps")
whatis("URL: https://www.bazel.build/")
whatis("Description: Bazel builder and tester")

prepend_path("PATH", 	"/opt/packages/google/bazel/3.7/bin")
