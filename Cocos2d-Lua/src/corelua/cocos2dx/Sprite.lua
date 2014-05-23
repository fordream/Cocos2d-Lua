--
-- Sprite
-- Author: YangHui.Liu
-- Date: 14-5-22
-- @Class: ${PACKAGE_NAME}
--

Sprite = class("Sprite", function()
    local sprite = SpriteExtend.extend(cc.Sprite:create())
    sprite.name = name or "<unknown-sprite>"
    return sprite
end)

--- ctor
--
function Sprite:ctor()

end

--- static create function
--
function Sprite:create(fileName)
    local spt = Sprite.new()
    if fileName then
        if string.byte(fileName) == 35 then
            -- first char is #
            spt:setSpriteFrame(string.sub(fileName, 2))
        else
            spt:setTexture(fileName)
        end
    end
    spt:init()
    return spt
end

--- init
--
function Sprite:init()
    -- add code here

end

