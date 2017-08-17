#include <iostream>
#include <chrono>
#include <thread>

extern "C" {
	#include <lua.h>
	#include <lauxlib.h>
	#include <lualib.h>
}

int main(int argc, char** argv)
{
	std::cout << "start engine" << std::endl; 

	lua_State* L = luaL_newstate(); 
	luaL_openlibs(L); 
	luaL_dofile(L, "../script/main.lua"); 

	std::chrono::steady_clock::time_point start, end; 
	std::chrono::milliseconds dur; 

	while(true)
	{
		start = std::chrono::steady_clock::now(); 
		lua_getglobal(L, "update");
		lua_pcall(L, 0, 0, 0); 
		end = std::chrono::steady_clock::now(); 
		dur = std::chrono::duration_cast<std::chrono::milliseconds>(end - start); 
		std::this_thread::sleep_for(std::chrono::milliseconds(200 - dur.count() > 0 ? 200 - dur.count() : 0)); 
	}	
	
	lua_close(L); 

	return 0; 
}
