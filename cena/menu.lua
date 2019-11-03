local composer = require( "composer" )
 
local scene = composer.newScene()

local backGroup  = display.newGroup()
local mainGroup  = display.newGroup()
local uiGroup = display.newGroup()

local background
local logo
local button



local function Cenagame()
    audio.stop( 1 )
    audio.play(click, { channel=2 })
    audio.setVolume( 2.0, { channel=2 } )
    composer.gotoScene("cena.fase1" , {effect= "crossFade", time= 500})
end


-- create()
function scene:create( event )

    local sceneGroup = self.view

   audio.reserveChannels( 1 )
   audio.reserveChannels( 2 )

   menus = audio.loadSound( "music/menus.mp3" )
   click = audio.loadSound("music/click.wav")
   audio.play( menus, { channel=1, loops=-1 })
   audio.setVolume(0.6, {channel=1})

    background = display.newImage( backGroup, "Imagens/background.png" )
    background.x = display.contentCenterX
    background.y = display.contentCenterY
   
    logo = display.newImageRect(mainGroup, "Imagens/logo.png",430,170)
    logo.x = 170
    logo.y = 140

    local mobM = display.newImageRect(mainGroup,"Imagens/mobM.png",56,82)
	mobM.x= 155
	mobM.y= 319

    
    button = display.newImageRect(uiGroup, "Imagens/button.png",242,174)
    button.x = display.contentCenterX
    button.y = 400
    button:addEventListener("tap", Cenagame)
    

    sceneGroup:insert(backGroup)
    sceneGroup:insert(mainGroup)
    sceneGroup:insert(uiGroup)
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene