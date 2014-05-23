--
-- LayerExtend
-- Author: YangHui.Liu
-- Date: 14-5-22
-- @Class: ${PACKAGE_NAME}
--

LayerExtend = class("LayerExtend", NodeExtend)
LayerExtend.__index = LayerExtend

function LayerExtend.extend(target)
    local t = tolua.getpeer(target)
    if not t then
        t = {}
        tolua.setpeer(target, t)
    end
    setmetatable(t, LayerExtend)
    return target
end

