
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
		composer.removeScene ("cena.fase1") 
		audio.play(click, { channel=2 })
        audio.setVolume( 2.0, { channel=2 } )
		composer.gotoScene("cena.menu" , {effect= "crossFade", time= 500})
		menus = audio.loadSound( "music/menus.mp3" )
		audio.play( menus, { channel=1, loops=-1 })
	end

	local function CenaFinal()
	    composer.gotoScene("cena.cenafinal" , {effect= "crossFade", time= 500})
   end
	
	-- -----------------------------------------------------------------------------------
	-- Scene event functions
	-- -----------------------------------------------------------------------------------

	-- create()
	function scene:create( event )
	
	   local sceneGroup = self.view

	
		
		----------------------------------------------------------------------
		
		local fundo4 = display.newImage(backGroup,"Imagens/fundo4.png")
		fundo4.x = display.contentCenterX
		fundo4.y = display.contentCenterY

		------------
	

		local lab4 = display.newImage(backGroup,"Imagens/lab4.png")
		lab4.x = display.contentCenterX
		lab4.y = display.contentCenterY

	-- add o mob
		local mob = display.newImage(mainGroup,"Imagens/mob.png")
		mob.x= 700
		mob.y= 500
		mob.name = "mob"
---------------------------------------------------------------------------
        local forma= display.newImageRect(backGroup,"formas/forma.png",15,96)
		forma.x = 269
		forma.y = 440

		local forma2= display.newImageRect(backGroup,"formas/forma.png",15,45)
		forma2.x = 291
		forma2.y = 380

		local forma3= display.newImageRect(backGroup,"formas/forma.png",15,96)
		forma3.x = 230
		forma3.y = 399

		local forma4= display.newImageRect(backGroup,"formas/forma.png",15,145)
		forma4.x = 190
		forma4.y = 330

		
		local forma5= display.newImageRect(backGroup,"formas/forma.png",15,200)
		forma5.x = 45
		forma5.y = 390

		local forma6= display.newImageRect(backGroup,"formas/forma.png",15,50)
		forma6.x = 120
		forma6.y = 160

		local forma7= display.newImageRect(backGroup,"formas/forma.png",15,112)
		forma7.x = 133
		forma7.y = 50

		local forma8= display.newImageRect(backGroup,"formas/forma.png",15,103)
		forma8.x = 93
		forma8.y = 85

		local forma9= display.newImageRect(backGroup,"formas/forma.png",15,60)
		forma9.x = 180
		forma9.y = 25

		local forma10= display.newImageRect(backGroup,"formas/forma.png",15,35)
		forma10.x = 172
		forma10.y = 100

		local forma11= display.newImageRect(backGroup,"formas/forma.png",15,35)
		forma11.x = 220
		forma11.y = 70

		local forma12= display.newImageRect(backGroup,"formas/forma.png",15,60)
		forma12.x = 300
		forma12.y = 25

		local forma13= display.newImageRect(backGroup,"formas/forma.png",15,60)
		forma13.x = 257
		forma13.y = 23

		local forma14= display.newImageRect(backGroup,"formas/forma.png",15,47)
		forma14.x = 47
		forma14.y = 55

		local forma15= display.newImageRect(backGroup,"formas/forma.png",15,100)
		forma15.x = 70
		forma15.y = 240

		local forma16= display.newImageRect(backGroup,"formas/forma.png",15,100)
		forma16.x = 150
		forma16.y = 270

		local forma16= display.newImageRect(backGroup,"formas/forma.png",15,100)
		forma16.x = 214
		forma16.y = 180

		local forma16= display.newImageRect(backGroup,"formas/forma.png",15,40)
		forma16.x = 167
		forma16.y = 200

		local forma17= display.newImageRect(backGroup,"formas/forma.png",15,40)
		forma17.x = 251
		forma17.y = 153

		local forma18= display.newImageRect(backGroup,"formas/forma.png",15,40)
		forma18.x = 253
		forma18.y = 250

		




		


	


	
	--criação dos botões de movimentação

		--- cria um vetor
		local buttons = {}

		--add o botão para cima
		buttons[1] = display.newImageRect(uiGroup,"Imagens/buttonM.png",82,62)
		buttons[1].x = 285
		buttons[1].y = 490
		buttons[1].myName = "up"
		buttons[1].rotation = -90

		--add o botão para baixo
		buttons[2] = display.newImageRect(uiGroup,"Imagens/buttonM.png",82,62)
		buttons[2].x = 250
		buttons[2].y = 499
		buttons[2].myName = "down"
		buttons[2].rotation = 90

		---add o botão esquerda
		buttons[3] = display.newImageRect(uiGroup,"Imagens/buttonM.png",82,62)
		buttons[3].x = 25
		buttons[3].y = 500
		buttons[3].myName = "left"
		buttons[3].rotation = 180

		--add o botão direita
		buttons[4] = display.newImageRect(uiGroup,"Imagens/buttonM.png",82,62)
		buttons[4].x = 85
		buttons[4].y = 486
		buttons[4].myName = "right"

		local yAxis = 0
		local xAxis = 0



		---funçao que indica os movimento dos botões ao serem tocados
		local touchFunction = function(e)
			local eventName = e.phase
			local direction = e.target.myName
			
			if eventName == "began" or eventName == "moved" then-- quando ocorre o toque executa a ação
				if direction == "up" then 
					yAxis = -1
					xAxis = 0
				elseif direction == "down" then 
					yAxis = 1
					xAxis = 0
				elseif direction == "right" then
					xAxis = 1
					yAxis = 0
				elseif direction == "left" then
					xAxis = -1
					yAxis = 0
				end
			else 
				yAxis = 0 -- para o mob se nem um botão for tocado
				xAxis = 0 -- para o mob se nem um botão for tocado 
			end
		end

		local j=1

		--esse evento é disparado pelos os botões
		for j=1, #buttons do  
			buttons[j]:addEventListener("touch", touchFunction)-- toda vez que entrar add um evento para cada um dos botões
		end

		local update = function() -- essa função atualiza o jogo 
			mob.x = mob.x + xAxis  -- atualiza o posição do mob
			mob.y = mob.y + yAxis

			if mob.x <= mob.width * .5 then 
				mob.x = mob.width * .5
			elseif mob.x >= w - mob.width * .5 then 
				mob.x = w - mob.width * .5
			end

			if mob.y <= mob.height * .5 then
				mob.y = mob.height * .5
			elseif mob.y >= h - mob.height * .5 then 
				mob.y = h - mob.height * .5
			end 
		end

		Runtime:addEventListener("enterFrame", update)-- dispara a função update

		
		physics.addBody( mob, "dynamic" )
		mob.isFixedRotation = true

		
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