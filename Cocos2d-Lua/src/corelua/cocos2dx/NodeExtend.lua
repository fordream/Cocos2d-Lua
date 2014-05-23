--
-- NodeExtend
-- Author: YangHui.Liu
-- Date: 14-5-22
-- @Class: ${PACKAGE_NAME}
--

NodeExtend = class("NodeExtend")
NodeExtend.__index = NodeExtend

function NodeExtend.extend(target)
    local t = tolua.getpeer(target)
    if not t then
        t = {}
        tolua.setpeer(target, t)
    end
    setmetatable(t, NodeExtend)
    return target
end

function NodeExtend:onEnter()
end

function NodeExtend:onExit()
end

function NodeExtend:onEnterTransitionFinish()
end

function NodeExtend:onExitTransitionStart()
end

function NodeExtend:onCleanup()
end

function NodeExtend:setNodeEventEnabled(enabled, handler)
    if enabled then
        if not handler then
            handler = function(event)
                if event == "enter" then
                    self:onEnter()
                elseif event == "exit" then
                    self:onExit()
                elseif event == "enterTransitionFinish" then
                    self:onEnterTransitionFinish()
                elseif event == "exitTransitionStart" then
                    self:onExitTransitionStart()
                elseif event == "cleanup" then
                    self:onCleanup()
                end
            end
        end
        self:registerScriptHandler(handler)
    else
        self:unregisterScriptHandler()
    end
    return self
end

