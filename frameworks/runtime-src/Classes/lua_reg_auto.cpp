#include "lua_reg_auto.hpp"
#include "pbc-lua.h"



TOLUA_API int register_all(lua_State* tolua_S)
{
	// 注册lua库
	luaopen_protobufc(tolua_S);

	// 注册自定义类
	tolua_open(tolua_S);
	tolua_module(tolua_S,nullptr,0);
	tolua_beginmodule(tolua_S,nullptr);


	tolua_endmodule(tolua_S);
	return 1;
}

