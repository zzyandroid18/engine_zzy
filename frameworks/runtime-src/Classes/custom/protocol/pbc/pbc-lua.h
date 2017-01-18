#ifndef __PBC_LUA_H__
#define __PBC_LUA_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "lauxlib.h"

	void  luaopen_protobufc(lua_State *L);

#ifdef __cplusplus
}
#endif

#endif /* __PBC_LUA_H__ */