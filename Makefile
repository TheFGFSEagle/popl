# This file is part of popl (program options parser lib)
# Copyright (C) 2015-2017 Johannes Pohl

# This software may be modified and distributed under the terms
# of the MIT license.  See the LICENSE file for details.

TARGET  = popl
SHELL = /bin/bash

CXX      = /usr/bin/g++
CXXFLAGS = -Wall -O3 -Iinclude

OBJ = popl_test.o
BIN = popl_test

all:	$(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $(BIN) $(OBJ) $(LDFLAGS)
	strip $(BIN)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf $(BIN) $(OBJ) *~

