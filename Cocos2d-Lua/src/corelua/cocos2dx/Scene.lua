--
-- Scene
-- Author: YangHui.Liu
-- Date: 14-5-22
-- @Class: ${PACKAGE_NAME}
--

Scene = class("Scene", function()
    local scene = SceneExtend.extend(cc.Scene:create())
    scene.name = scene.name or "<unknown-scene>"
    return scene
end)

--- ctor
--
function Scene:ctor()

end

--- static create function
--
function Scene:create()
    local scene = Scene.new()
    scene:init()
    return scene
end

--- init
--
function Scene:init()
    -- add code here

end

function Scene:onEnter()

end

function Scene:onExit()

end


return Scene