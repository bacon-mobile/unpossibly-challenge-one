--
-- Archimedes' Bacon
-- Challenge No. 1 from Unpossib.ly
-- Bodyweight App
--
-- by bacon.mobile@gmail.com
-- Corona SDK + Lua
-- August 17, 2016
--
-- instruct.lua
--

local composer = require( "composer" )
local scene = composer.newScene()

local function gotoCalculate()
   composer.removeScene( "_scenes.calculate" )
   composer.gotoScene( "_scenes.calculate", { time=333, effect="crossFade" } )
end
 
-- "scene:create()"
function scene:create( event )
 
   local sceneGroup = self.view
   
   local textTitle = display.newText( sceneGroup, "Archimedes' Bacon", display.contentCenterX, display.contentWidth / 8, native.systemFont, 21 )
textTitle:setFillColor( 120/255, 80/255, 255/255, 1 )
   local textSubTitle = display.newText( sceneGroup, "Challenge No. 1 from Unpossib.ly  |  Bodyweight", display.contentCenterX, display.contentWidth / 8 + 22, native.systemFont, 12 )
textSubTitle:setFillColor( 160/255, 120/255, 255/255, 1 )
   local textInstruction = display.newText( sceneGroup, "INSTRUCTIONS", display.contentCenterX, display.contentWidth / 8 + 75, native.systemFont, 16 )
textInstruction:setFillColor( 170/255, 170/255, 170/255, 1 )
   local textInstruction1 = display.newText( sceneGroup, "1. Find a bathtub, tape measure (or ruler), a marker and a towel.", display.contentWidth / 2 + 6, 260, display.contentWidth, display.contentHeight * 0.5, native.systemFont, 16 )
textInstruction1:setFillColor( 210/255, 210/255, 210/255, 1 )
   local textInstruction2 = display.newText( sceneGroup, "2. Measure the length and width of the bathtub (in centimeters) and remember the numbers.", display.contentWidth / 2 + 6, 300, display.contentWidth, display.contentHeight * 0.5, native.systemFont, 16 )
textInstruction2:setFillColor( 170/255, 170/255, 170/255, 1 )
   local textInstruction3 = display.newText( sceneGroup, "3. Fill the bathtub with enough water to submerge yourself and mark the water-line.", display.contentWidth / 2 + 6, 360, display.contentWidth, display.contentHeight * 0.5, native.systemFont, 16 )
textInstruction3:setFillColor( 210/255, 210/255, 210/255, 1 )
   local textInstruction4 = display.newText( sceneGroup, "4. Submerge yourself in the bathtub and mark this newly displaced water-line.", display.contentWidth / 2 + 6, 400, display.contentWidth, display.contentHeight * 0.5, native.systemFont, 16 )
textInstruction4:setFillColor( 170/255, 170/255, 170/255, 1 )
   local textInstruction5 = display.newText( sceneGroup, "5. Step out of the bathtub and towel off.", display.contentWidth / 2 + 6, 440, display.contentWidth, display.contentHeight * 0.5, native.systemFont, 16 )
textInstruction5:setFillColor( 210/255, 210/255, 210/255, 1 )
   local textInstruction6 = display.newText( sceneGroup, "6. Measure the distance between both water-lines (in centimeters) and remember this number.", display.contentWidth / 2 + 6, 460, display.contentWidth, display.contentHeight * 0.5, native.systemFont, 16 )
textInstruction6:setFillColor( 170/255, 170/255, 170/255, 1 )

   local continueButton = display.newText( sceneGroup, "Continue", display.contentCenterX, display.contentWidth * 1.4, native.systemFont, 21 )
continueButton:setFillColor( 120/255, 80/255, 255/255, 1 )
continueButton:addEventListener( "tap", gotoCalculate )
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