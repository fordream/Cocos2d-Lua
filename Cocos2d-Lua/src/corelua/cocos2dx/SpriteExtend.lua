--
-- SpriteExtend
-- Author: YangHui.Liu
-- Date: 14-5-22
-- @Class: ${PACKAGE_NAME}
--

SpriteExtend = class("SpriteExtend", NodeExtend)
SpriteExtend.__index = SpriteExtend

function SpriteExtend.extend(target)
    local t = tolua.getpeer(target)
    if not t then
        t = {}
        tolua.setpeer(target, t)
    end
    setmetatable(t, SpriteExtend)
    return target
end