INCLUDE_DIRECTORIES(.)
message(${PROJECT_SOURCE_DIR}/bin-${ENGINE_BUILD_TYPE})

ADD_LIBRARY(lua SHARED lapi.c lauxlib.c lbaselib.c lbitlib.c lcode.c lcorolib.c lctype.c ldblib.c ldebug.c ldo.c ldump.c lfunc.c lgc.c linit.c liolib.c llex.c lmathlib.c lmem.c loadlib.c lobject.c lopcodes.c loslib.c lparser.c lstate.c lstring.c lstrlib.c ltable.c ltablib.c ltm.c lundump.c lutf8lib.c lvm.c lzio.c)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin-${ENGINE_BUILD_TYPE})
 