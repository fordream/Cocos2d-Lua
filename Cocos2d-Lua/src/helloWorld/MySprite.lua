--
-- MySprite
-- Author: YangHui.Liu
-- Date: 14-5-23
-- @Class: ${PACKAGE_NAME}
--

MySprite = class("MySprite", Sprite)

--- ctor
--
function MySprite:ctor()

end

--- static create function
--
function MySprite:create(fileName)
    local spt = MySprite.new()
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
function MySprite:init()
    -- add code here

end


