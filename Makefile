.PHONY: all
all: following violating

following: odr-following/*
	$(CXX) -o $@ odr-following/*.cpp

violating: odr-violating/*
	$(CXX) -o $@ odr-violating/*.cpp
