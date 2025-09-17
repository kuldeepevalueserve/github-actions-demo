from conans import ConanFile, CMake

class SumProjectConan(ConanFile):
    name = "sum_project"
    version = "1.0"
    settings = "os", "compiler", "build_type", "arch"
    exports_sources = "sum.cpp", "sum.h"
    generators = "cmake"

    def build(self):
        pass

    def package(self):
        self.copy("*.h", dst="include", src=".")
        self.copy("*.cpp", dst="src", src=".")

    def package_info(self):
        self.cpp_info.libs = ["sum"]
