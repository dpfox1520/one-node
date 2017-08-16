cmake_minimum_required(VERSION 3.0)

FILE(GLOB_RECURSE SRC_FILES "*.cpp")

SET(EXECUTABLE_OUTPUT_PATH "../bin")

ADD_EXECUTABLE(game_engine ${SRC_FILES})
