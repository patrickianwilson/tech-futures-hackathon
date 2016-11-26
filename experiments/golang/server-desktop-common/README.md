#Using Golang for Both Services and Applications Simultaneoulsy

## Goals
  - This experiment is intended to pull together a good working example of:
    1. A CPP program with c header bindings,
    2. A Go lang application that invokes the c externals
    3. build wiring to make this all possible

## Issue References

  - [#1](/../../issues/1)
 
## Build Instructions

## Integration Opportunities


## Notes

This work has proved to be more complicated than I initially thought.  Here are some initial observations:

  - Go seems to only link directly with C libraries...  CPP is not (apparently) supported
  - the go and c/cpp tool changes seem to be mutually exclusive.  Careful thought will need to be made regarding what tool chain should build the different parts.
  - Initial Plan:
     - use CMake (or any other build tool for building the .a files that will be statically linked)
     - also can use CMake to build any dylib files for dynamic linking
     - Use Go tool chain to build raw Go as well as the C bindings.
       - TODO: need to figure out how to specify other files to link with...
  - multiple IDEs might be needed...  At this point I think Intellij might need to be used for Go and CLion used for C/CPP projects.
     - means they need to be in different directories so they can be built apart.