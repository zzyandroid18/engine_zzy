#include "lua_reg_auto.hpp"
#include "pbc-lua.h"



TOLUA_API int register_all(lua_State* tolua_S)
{
	// ע��lua��
	luaopen_protobufc(tolua_S);

	// ע���Զ�����
	tolua_open(tolua_S);
	tolua_module(tolua_S,nullptr,0);
	tolua_beginmodule(tolua_S,nullptr);


	tolua_endmodule(tolua_S);
	return 1;
}

