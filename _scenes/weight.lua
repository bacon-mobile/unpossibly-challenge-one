--
-- Archimedes' Bacon
-- Challenge No. 1 from Unpossib.ly
-- Bodyweight App
--
-- by bacon.mobile@gmail.com
-- Corona SDK + Lua
-- August 17, 2016
--
-- weight.lua
--

local composer = require( "composer" )
local scene = composer.newScene()

local airhornSound = audio.loadStream( "_audio/airhorn.mp3" )
audio.setVolume( 0.12 )
local audioChannel = audio.play( airhornSound, { loops = 0 } )

 local function gotoInstruct()
   composer.removeScene( "_scenes.instruct" )
   composer.gotoScene( "_scenes.instruct", { time=333, effect="crossFade" } )
end
 
-- "scene:create()"
function scene:create( event )
 
   local sceneGroup = self.view

   local textTitle = display.newText( sceneGroup, "Archimedes' Bacon", display.contentCenterX, display.contentWidth / 8, native.systemFont, 21 )
textTitle:setFillColor( 120/255, 80/255, 255/255, 1 )
   local textSubTitle = display.newText( sceneGroup, "Challenge No. 1 from Unpossib.ly  |  Bodyweight", display.contentCenterX, display.contentWidth / 8 + 22, native.systemFont, 12 )
textSubTitle:setFillColor( 160/255, 120/255, 255/255, 1 )

   local textWeight = display.newText( sceneGroup, "Your weight is " .. weight .." pounds. Lookin' good!", display.contentCenterX + 6, display.contentWidth, display.contentWidth, display.contentHeight * 0.7, native.systemFont, 42 )
textWeight:setFillColor( 210/255, 210/255, 210/255, 1 )

   local continueButton = display.newText( sceneGroup, "Again?", display.contentCenterX, display.contentWidth * 1.4, native.systemFont, 21 )
continueButton:setFillColor( 120/255, 80/255, 255/255, 1 )
continueButton:addEventListener( "tap", gotoInstruct )
end
 
-- "scene:show()"
function scene:show( event )
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).
   elseif ( phase == "did" ) then
      -- Called when the scene is now on screen.

   end
end
 
-- "scene:hide()"
function scene:hide( event )
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is on screen (but is about to go off screen).

   elseif ( phase == "did" ) then
      -- Called immediately after scene goes off screen.
   end
end
 
-- "scene:destroy()"
function scene:destroy( event )
 
   local sceneGroup = self.view
 
   -- Called prior to the removal of scene's view ("sceneGroup").

end
 
---------------------------------------------------------------------------------
 
-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
 
---------------------------------------------------------------------------------
 
return scene