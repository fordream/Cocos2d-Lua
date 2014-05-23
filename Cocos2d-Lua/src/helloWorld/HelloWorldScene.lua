--
-- HelloWorldScene
-- Author: YangHui.Liu
-- Date: 14-5-22
-- @Class: ${PACKAGE_NAME}
--

require "src.helloWorld.MySprite"

HelloWorldScene = class("HelloWorldScene", Scene)

function HelloWorldScene:ctor()

end

function HelloWorldScene:create()
    local scene = HelloWorldScene.new()
    scene:init()
    return scene
end

function HelloWorldScene:init()
    local visibleSize = cc.Director:getInstance():getVisibleSize()

    -- test Sprite
    local backBg = Sprite:create("HelloWorld.png")
    backBg:setPosition(visibleSize.width * .5, visibleSize.height * .5)
    self:addChild(backBg)

    -- test custom Sprite
    local mySprite = MySprite:create("Head.png")
    mySprite:setPosition(visibleSize.width * .3, visibleSize.height * .5)
    self:addChild(mySprite)

    -- test lua table with Object
    mySprite.myName = "hello, i am mySprite."

    -- test MenuItem
    local btnItem = cc.MenuItemImage:create("CloseNormal.png", "CloseSelected.png")
    btnItem:setPosition(visibleSize.width * .8, visibleSize.height * .2)
    btnItem:registerScriptTapHandler(function()
        cclog("click btn--->%s", mySprite.myName)
    end)
    local btn = cc.Menu:create(btnItem)
    btn:setPosition(0, 0)
    self:addChild(btn)
end

function HelloWorldScene:onEnter()

end

function HelloWorldScene:onExit()

end


