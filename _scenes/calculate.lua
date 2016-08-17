--
-- Archimedes' Bacon
-- Challenge No. 1 from Unpossib.ly
-- Bodyweight App
--
-- by bacon.mobile@gmail.com
-- Corona SDK + Lua
-- August 17, 2016
--
-- calculate.lua
--

local composer = require( "composer" )
local scene = composer.newScene()

local function gotoWeight()
   -- Tub area is length times width. Tub volume is displaced distance.
   -- Volume to Grams straight over. 453.592 grams is 1 pound (or each gram is 0.0022046 lbs)
   weight = (tubLength * tubWidth * tubDisplaced) * 0.0022046
   native.setKeyboardFocus(nil)
   composer.removeScene( "_scenes.weight" )
   composer.gotoScene( "_scenes.weight", { time=333, effect="crossFade", } )
end

local numericFieldLength
local numericFieldWidth
local numericFieldDisplaced
tubLength = 0
tubWidth = 0
tubDisplaced = 0

local function numericListenerLength( event )
    if ( event.phase == "began" ) then

    elseif ( event.phase == "ended" or event.phase == "submitted" ) then
      native.setKeyboardFocus( nil )
      tubLength = event.target.text

    elseif ( event.phase == "editing" ) then
    end
end

local function numericListenerWidth( event )
    if ( event.phase == "began" ) then

    elseif ( event.phase == "ended" or event.phase == "submitted" ) then
      native.setKeyboardFocus( nil )
      tubWidth = event.target.text

    elseif ( event.phase == "editing" ) then
    end
end

local function numericListenerDisplaced( event )
    if ( event.phase == "began" ) then

    elseif ( event.phase == "ended" or event.phase == "submitted" ) then
      native.setKeyboardFocus( nil )
      tubDisplaced = event.target.text

    elseif ( event.phase == "editing" ) then
    end
end


-- "scene:create()"
function scene:create( event )
 
   local sceneGroup = self.view
 
   local textTitle = display.newText( sceneGroup, "Archimedes' Bacon", display.contentCenterX, display.contentWidth / 8, native.systemFont, 21 )
textTitle:setFillColor( 120/255, 80/255, 255/255, 1 )
   local textSubTitle = display.newText( sceneGroup, "Challenge No. 1 from Unpossib.ly  |  Bodyweight", display.contentCenterX, display.contentWidth / 8 + 22, native.systemFont, 12 )
textSubTitle:setFillColor( 160/255, 120/255, 255/255, 1 )

   local textInstruction = display.newText( sceneGroup, "Enter the inner bathtub Length (cm):", display.contentCenterX, display.contentWidth / 8 + 75, native.systemFont, 16 )
textInstruction:setFillColor( 170/255, 170/255, 170/255, 1 )

numericFieldLength = native.newTextField( display.contentCenterX, 150, 80, 28 )
numericFieldLength.inputType = "number"
numericFieldLength:addEventListener( "userInput", numericListenerLength )

   local textInstruction = display.newText( sceneGroup, "Enter the inner bathtub Width (cm):", display.contentCenterX, display.contentWidth / 8 + 175, native.systemFont, 16 )
textInstruction:setFillColor( 170/255, 170/255, 170/255, 1 )

numericFieldWidth = native.newTextField( display.contentCenterX, 250, 80, 28 )
numericFieldWidth.inputType = "number"
numericFieldWidth:addEventListener( "userInput", numericListenerWidth )

   local textInstruction = display.newText( sceneGroup, "Enter the displaced water-line number (cm):", display.contentCenterX, display.contentWidth / 8 + 275, native.systemFont, 16 )
textInstruction:setFillColor( 170/255, 170/255, 170/255, 1 )

numericFieldDisplaced = native.newTextField( display.contentCenterX, 350, 80, 28 )
numericFieldDisplaced.inputType = "number"
numericFieldDisplaced:addEventListener( "userInput", numericListenerDisplaced )

   local continueButton = display.newText( sceneGroup, "Go!", display.contentCenterX, display.contentWidth * 1.4, native.systemFont, 21 )
continueButton:setFillColor( 120/255, 80/255, 255/255, 1 )
continueButton:addEventListener( "tap", gotoWeight )
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
   
   -- cleanup fields
   if numericFieldLength then
    numericFieldLength :removeSelf()
    numericFieldLength = nil
   end
   if numericFieldWidth then
    numericFieldWidth :removeSelf()
    numericFieldWidth = nil
   end
   if numericFieldDisplaced then
    numericFieldDisplaced :removeSelf()
    numericFieldDisplaced = nil
   end

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