
display.setStatusBar (display.HiddenStatusBar)	

local composer = require( "composer" )

local scene = composer.newScene()

local backGroup  = display.newGroup()
local mainGroup  = display.newGroup()
local uiGroup = display.newGroup()


local w = display.contentWidth
local h = display.contentHeight

local physics = require( "physics" )
physics.start()
physics.setGravity(0, 0)
--physics.setDrawMode("hybrid")



	-- -----------------------------------------------------------------------------------
	-- Code outside of the scene event functions below will only be executed ONCE unless
	-- the scene is removed entirely (not recycled) via "composer.removeScene()"
	-- -----------------------------------------------------------------------------------
	

	local function CenaVMenu()
		audio.stop( 1 )
		composer.removeScene ("cena.cenafinal") 
		audio.play(click, { channel=2 })
        audio.setVolume( 2.0, { channel=2 } )
		composer.gotoScene("cena.menu" , {effect= "crossFade", time= 500})
		menus = audio.loadSound( "music/menus.mp3" )
		audio.play( menus, { channel=1, loops=-1 })
	end

	
	-- -----------------------------------------------------------------------------------
	-- Scene event functions
	-- -----------------------------------------------------------------------------------

	-- create()
	function scene:create( event )
	
	   local sceneGroup = self.view

	 audio.reserveChannels( 1 )
     audio.reserveChannels( 2 )

     cenafinal = audio.loadSound( "music/cenafinal.mp3" )
     click = audio.loadSound("music/click.wav")
	 audio.play( cenafinal, { channel=1, loops=-1 })
     audio.setVolume(0.6, {channel=1})


	
     local cenaFinal = display.newImage(backGroup,"Imagens/cenaFinal.png")
     cenaFinal.x = display.contentCenterX
     cenaFinal.y = display.contentCenterY
	
     local vmenu = display.newImage(mainGroup,"Imagens/vmenu.png")
	 vmenu.x=display.contentCenterX
	 vmenu.y=450
  	 vmenu:addEventListener("tap", CenaVMenu)

  

		
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
		physics.stop()
	
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