Skeleton for a C/C++ Makefile project

Useful starting point for creating a C++ Makefile project (to creat an executable
or a statically compiled library).

The "includes" folder should contain header files with a *.hpp extension, 
while the "sources" folder should contain source files with a *.cpp extension. 

The following lines need to be edited:
	SOURCES = foo.cpp bar.cpp 	- List all source files used
	LIBRARY = foobar.a 		- In case you are building a static library
	EXECUTABLE = foobar 		- In case you are creating an application 

To create the folder structure run the following command:
$ mkdir -p sources includes

Created by Gordan Markuš <gordan.markus@gmail.com>
