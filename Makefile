###################################################################
#
#  slicer 
#
# freeman.justin@gmail.com
#
##################################################################

CINDER=	/Users/jfreeman/+AP/cinder_0.9.0_mac

OBJ=	./src/CubeApp.o 

# Include flags
INC=   -D_OS_X_ \
	-I./include \
	-I$(CINDER)/include

# Libraries
LFLAGS= \
	$(CINDER)/lib/libcinder.a \
	-framework Accelerate \
	-framework AudioToolbox \
	-framework AudioUnit \
	-framework CoreAudio \
	-framework ApplicationServices \
	-framework QuickTime \
	-framework QTKit \
	-framework CoreVideo \
	-framework Carbon \
	-framework OpenGl \
	-framework Cocoa \
	-framework AppKit \
	-framework CoreData \
	-framework Foundation \
	-framework CoreServices \
	-framework IOKit \
	-framework CoreData \
	-framework CoreMedia \
	-framework AVFoundation \
	-framework IOSurface

CPPFLAGS=	-O3 -g -Wall -Wno-deprecated-declarations -std=c++11 -stdlib=libc++ $(INC)

CXX=	g++ $(CPPFLAGS) $(INC) 


# Executable

EXEC=	./bin/cube

$(EXEC):$(OBJ)
	$(CXX) -o $(EXEC) $(OBJ) $(LFLAGS)

clean:
	rm $(OBJ)
	rm $(EXEC)
