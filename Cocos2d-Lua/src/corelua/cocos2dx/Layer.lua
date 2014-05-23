--
-- Layer
-- Author: YangHui.Liu
-- Date: 14-5-22
-- @Class: ${PACKAGE_NAME}
--

Layer = class("Layer", function()
    local layer = LayerExtend.extend(cc.Layer:create())
    layer.name = layer.name or "<unknown-layer>"
    return layer
end)

--- ctor
--
function Layer:ctor()

end

--- static create function
--
function Layer:create()
    local layer = Layer.new()
    layer:init()
    return layer
end

--- init
--
function Layer:init()
    -- add code here

end



