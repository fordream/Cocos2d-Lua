Cocos2d-Lua
===========

Cocos2d-Lua use cocos2d-x 3.0

===========
说明：
代码基本是Quick-Lua里面的，我只是稍微改了下，支持cocos2dx3.0.

===========
主要功能：
将c++的userData修改为可以添加lua表以及lua的继承关系。不封装任何自定义代码，所有功能直接使用cocos2dx 3.0 lua接口。

===========
Xcode下lua代码修改后没有马上更新到设备的解决方法：
请在选中工程TARGETS -> Build Phases -> 添加Run Script。 
添加下面内容：

find ${SRCROOT}/../../../res -exec touch {} \;
find ${SRCROOT}/../../../src -exec touch {} \;