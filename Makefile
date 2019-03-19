TARGET := app
SOURCES := foo.cpp bar.cpp

OBJECTS := $(SOURCES:%.cpp=%.o)
DEPENDS := $(SOURCES:%.cpp=%.d)

$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $^ -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -rf $(OBJECTS) $(DEPENDS) $(TARGET)

# Use the compiler's -M flag to generate header dependencies.
%.d: %.cpp
	$(CXX) $(CXXFLAGS) -M $^ > $@

# Include the generated dependencies.
include $(DEPENDS)
