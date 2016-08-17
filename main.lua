--
-- Archimedes' Bacon
-- Challenge No. 1 from Unpossib.ly
-- Bodyweight App
--
-- by bacon.mobile@gmail.com
-- Corona SDK + Lua
-- August 17, 2016
--
-- main.lua
--

-- hide device status bar
-- display.setStatusBar( display.HiddenStatusBar )

-- set all scenes to black
display.setDefault( 'background', 0, 0, 0 );

local composer = require( "composer" )

-- load instructions
composer.gotoScene( "_scenes.instruct", "fade", 333 )
