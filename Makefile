#############################
###   Makefile skeleton   ###
#############################

INC_FOLDER = ./includes
SRC_FOLDER = ./sources
OBJ_FOLDER = ./objects

CXX = g++
AR = ar

# Debug
CXXFLAGS = -g3 -O0 -Wall 

ARFLAGS = rcs
INC = -I$(INC_FOLDER)

LDFLAGS = -pthread
LDLIBS = 

RM = rm -f

SOURCES = main.cpp foo.cpp bar.cpp

OBJECTS = $(patsubst %.cpp, $(OBJ_FOLDER)/%.o, $(SOURCES)) 

LIBRARY = libfoobar.a
EXECUTABLE = foobar

all: $(LIBRARY) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(LDFLAGS) $(OBJECTS) -o $@ $(LDLIBS)

$(LIBRARY): $(OBJECTS)
	$(AR) $(ARFLAGS) $(LIBRARY) $(OBJECTS)

$(OBJ_FOLDER)/%.o: $(SRC_FOLDER)/%.cpp | $(OBJ_FOLDER)
	$(CXX) $(CXXFLAGS) $(INC) -o $@ -c $< 

$(OBJ_FOLDER): 
	mkdir -p $(OBJ_FOLDER)

clean:
	$(RM) $(OBJ_FOLDER)/*.o $(LIBRARY) $(EXECUTABLE)
