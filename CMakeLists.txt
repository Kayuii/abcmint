cmake_minimum_required(VERSION 3.5)

include(cmake/cable/bootstrap.cmake)

include(CableBuildInfo)
include(CableBuildType)
include(CableToolchains)
include(HunterGate)

include(defaults/HunterCacheServers)

cable_configure_toolchain(DEFAULT cxx11)

set(HUNTER_CONFIGURATION_TYPES Release CACHE STRING "Build type of Hunter packages")
set(HUNTER_JOBS_NUMBER 6 CACHE STRING "Number of parallel builds used by Hunter")
HunterGate(
    URL "https://github.com/cpp-pm/hunter/archive/v0.23.316.tar.gz"
    SHA1 "167a33c4cc398504826a1a3014ef66f9ccc35db3"
    LOCAL
)


cable_set_build_type(DEFAULT Release CONFIGURATION_TYPES Release RelWithDebInfo)

project(ethminer)
set(PROJECT_VERSION 0.19.0)


hunter_add_package(Boost COMPONENTS system filesystem thread)
find_package(Boost CONFIG REQUIRED COMPONENTS system filesystem thread)

hunter_add_package(OpenSSL)
find_package(OpenSSL REQUIRED)

# hunter_add_package(crc32c)
# find_package(Crc32c REQUIRED)

# hunter_add_package(leveldb)
# find_package(leveldb REQUIRED)
