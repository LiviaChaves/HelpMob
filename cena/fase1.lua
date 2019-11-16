display.setStatusBar (display.HiddenStatusBar)	

	local composer = require( "composer" )

	local scene = composer.newScene()
	local physics = require( "physics" )
	physics.start()
	physics.setGravity(0, 0)   
	--physics.setDrawMode("hybrid")


	local backGroup  = display.newGroup()
	local mainGroup  = display.newGroup()
	local uiGroup = display.newGroup()
	local vidasGrupo = display.newGroup()


	local w = display.contentWidth
	local h = display.contentHeight


	local function CenaVMenu()
		audio.stop( 1 )
		composer.removeScene( "cena.fase2" )
	    audio.play(click, { channel=2 })
        audio.setVolume( 2.0, { channel=2 } )
		composer.gotoScene("cena.menu" , {effect= "crossFade", time= 500})
		menus = audio.loadSound( "music/menus.mp3" )
		audio.play( menus, { channel=1, loops=-1 })
	end


	-- create()
function scene:create( event )
	
	local sceneGroup = self.view
	
		audio.reserveChannels( 1 )
		audio.reserveChannels( 2 )

		musi1 = audio.loadSound( "music/musi1.wav" )
		click = audio.loadSound("music/click.wav")
		
		audio.play( musi1, { channel=1, loops=-1 })
		audio.setVolume(0.6, {channel=1})


		
		---add o fundo da fase1
		local fundo1 = display.newImageRect(backGroup,"Imagens/fundo1.png",540,960)
		fundo1.x = display.contentCenterX
		fundo1.y = display.contentCenterY
		

		-------------------------------------------------------------
		local retangulo = display.newRect( backGroup,35, 35, 35,35  ) 
		retangulo.x = 310
		retangulo.y = 220
		
		local forma = display.newImageRect(backGroup,"formas/forma.png",180,15)
		forma.x = 250
		forma.y = 190
		
		local forma2 = display.newImageRect(backGroup,"formas/forma.png",20,157)
		forma2.x = 97
		forma2.y = 65
		
		local forma3 = display.newImageRect(backGroup,"formas/forma.png",292,15)
		forma3.x = 300
		forma3.y = 81
		
		local forma4 = display.newImageRect(backGroup,"formas/forma.png",65,15)
		forma4.x = 15
		forma4.y = 27
		
		local forma5 = display.newImageRect(backGroup,"formas/forma.png",505,16)
		forma5.x = 15
		forma5.y = 297
		
		local forma6 = display.newImageRect(backGroup,"formas/forma.png",110,15)
		forma6.x = 80
		forma6.y = 345
		
			
		local forma7 = display.newImageRect(backGroup,"formas/forma.png",280,15)
		forma7.x = 220
		forma7.y = 395

		local forma8 = display.newImageRect(backGroup,"formas/forma.png",260,15)
		forma8.x = 163
		forma8.y = 445
		
		local forma9 = display.newImageRect(backGroup,"formas/forma.png",18,32)
		forma9.x = 40
		forma9.y = 422
		
		local forma10 = display.newImageRect(backGroup,"formas/forma.png",47,15)
		forma10.x = 25
		forma10.y = 400
		
		local forma11= display.newImageRect(backGroup,"formas/forma.png",25,35)
		forma11.x = 92
		forma11.y = 370
		
		local forma12= display.newImageRect(backGroup,"formas/forma.png",175,15)
		forma12.x = 50
		forma12.y = 190
		
		local forma13= display.newImageRect(backGroup,"formas/forma.png",60,15)
		forma13.x = 60
		forma13.y = 78
		
		local forma14= display.newImageRect(backGroup,"formas/forma.png",123,15)
		forma14.x = 160
		forma14.y = 30
		
		local forma15= display.newImageRect(backGroup,"formas/forma.png",50,15)
		forma15.x = 25
		forma15.y = 135
		
		local forma16= display.newImageRect(backGroup,"formas/forma.png",82,15)
		forma16.x = 150
		forma16.y = 135
		
		local forma17= display.newImageRect(backGroup,"formas/forma.png",115,15)
		forma17.x = 300
		forma17.y = 135
		
		
		local forma18= display.newImageRect(backGroup,"formas/forma.png",350,15)
		forma18.x = 200
		forma18.y = 243
		
		local forma19= display.newImageRect(backGroup,"formas/forma.png",125,15)
		forma19.x = 232
		forma19.y = 341
		
		local forma20= display.newImageRect(backGroup,"formas/forma.png",25,30)
		forma20.x = 255
		forma20.y = 320

		local forma21= display.newImageRect(backGroup,"formas/forma.png",60,15)
		forma21.x = 300
		forma21.y = 30
			
		
		----------VIDAS------------------------------------------------------------
		local quantidadeVidas = 3
		function criarVidas(quantidadeVidas)
			for i = 1, quantidadeVidas do
				vida = display.newImageRect('Imagens/vida.png',30,25)
				vida.x = (display.contentWidth - vida.width * 0.22) - (5 * i+1) - vida.width * i + 20
				vida.y = display.contentHeight - vida.height * 20
				vidasGrupo:insert(vida) 
			         
			end
	   end
	   criarVidas(quantidadeVidas)
	-----------------------------------------------------------------------------------------	
	--add o labirinto
		local lab1 = display.newImage(backGroup,"Imagens/lab1.png")
		lab1.x = display.contentCenterX
		lab1.y = display.contentCenterY

-------- add o mob----------------------------------------------------------------------------
        local mob = display.newImageRect(mainGroup,"Imagens/mob.png",18,23)
		mob.x= 700
		mob.y= 500
		mob.myName = "mob"
		mob.id="mob"
------------------------------------------------------------------------------------------------
	    local vmenu = display.newImageRect(mainGroup,"Imagens/vmenu.png",40,40)
		vmenu.x=20
		vmenu.y=-25
		vmenu:addEventListener("tap", CenaVMenu)

---add o cristal verde-------------------------------------------------------------------------
		local cristalV=display.newImageRect(mainGroup,"Imagens/cristalV.png",28,26)
		cristalV.x=display.contentCenterX
		cristalV.y=display.contentCenterY-235
		cristalV.id="cristalV"
	
		function  CenaFase2()
			 
             composer.gotoScene("cena.fase2", "fade", 500 )
		end

		function onCollision(event) 
	         local object1 = event.object1
			 local object2 = event.object2
		
		  if ( object1.id == "cristalV" and object2.id == "mob"
			   or object1.id == "mob" and object2.id == "cristalV" ) then
		     	timer.performWithDelay(	1000, CenaFase2)
				end 	
			 
		end

		Runtime:addEventListener("collision", onCollision)

		-------add inimigo--------------------------------------------------
		local ini1 = display.newImageRect(mainGroup,"Imagens/im1.png",21,25)
		ini1.x=123
		ini1.y=320
		ini1.id="ini1"

		local ini2 = display.newImageRect(mainGroup,"Imagens/im1.png",21,25)
		ini2.x=30
		ini2.y=50
		ini2.id="ini2"

		local ini3 = display.newImageRect(mainGroup,"Imagens/im1.png",21,25)
		ini3.x=200
		ini3.y=60
		ini3.id="ini3"

		local ini4 = display.newImageRect(mainGroup,"Imagens/im1.png",21,25)
		ini4.x=200
		ini4.y=220
		ini4.id="ini4"

		---------Move inimigos----------------------------------------------------------
		function moveInimigo1()
			transition.to(ini1,{time=8000,x=math.random(15,310),y=
			math.random( 30, 455 ),onComplete=moveInimigo1})
		end
		moveInimigo1()
		function moveInimigo2()
			transition.to(ini2,{time=8000,x=math.random(15,310),y=
			math.random( 30, 455 ),onComplete=moveInimigo2})
		end
		moveInimigo2()
		function moveInimigo3()
			transition.to(ini3,{time=8000,x=math.random(15,310),y=
			math.random( 30, 455 ),onComplete=moveInimigo3})
		end
		moveInimigo3()
		function moveInimigo4()
			transition.to(ini4,{time=8000,x=math.random(15,310),y=
			math.random(30, 455 ),onComplete=moveInimigo4})
		end
		moveInimigo4()



		-------------------------------------------------------------------------------
		function  GameOver()
			composer.gotoScene("cena.gameover", "fade", 500 )
	   end

		function CollisionIni1(event) 
			local object1 = event.object1
			local object2 = event.object2
		
		 if ( object1.id == "ini1" and object2.id == "mob"
			  or object1.id == "mob" and object2.id == "ini1" ) then
			  
                display.remove(vidasGrupo)            
                quantidadeVidas = quantidadeVidas - 0.5
                vidasGrupo = display.newGroup()
                criarVidas(quantidadeVidas)

                if quantidadeVidas == 0 then
					timer.performWithDelay(	1000, GameOver)
                end
		   end 	
		end

	function CollisionIni2(event) 
		local object1 = event.object1
		local object2 = event.object2
		
	 if ( object1.id == "ini2" and object2.id == "mob"
		  or object1.id == "mob" and object2.id == "ini2" ) then
	
			display.remove(vidasGrupo)            
			quantidadeVidas = quantidadeVidas - 0.5
			vidasGrupo = display.newGroup()
			criarVidas(quantidadeVidas)

			if quantidadeVidas == 0 then
				timer.performWithDelay(	1000, GameOver)
			end
	   end 	
		
	end
	function CollisionIni3(event) 
		local object1 = event.object1
		local object2 = event.object2
	 if ( object1.id == "ini3" and object2.id == "mob"
		  or object1.id == "mob" and object2.id == "ini3") then
		   
			display.remove(vidasGrupo)            
			quantidadeVidas = quantidadeVidas - 0.5
			vidasGrupo = display.newGroup()
			criarVidas(quantidadeVidas)

			if quantidadeVidas == 0 then
				timer.performWithDelay(	1000, GameOver)
			end
	   end 	
		
	end
	function CollisionIni4(event) 
		local object1 = event.object1
		local object2 = event.object2
	 if ( object1.id == "ini4" and object2.id == "mob"
		  or object1.id == "mob" and object2.id == "ini4") then
		  
			display.remove(vidasGrupo)            
			quantidadeVidas = quantidadeVidas - 0.5
			vidasGrupo = display.newGroup()
			criarVidas(quantidadeVidas)

			if quantidadeVidas == 0 then
				timer.performWithDelay(	1000, GameOver)
			end
	   end 	
		
	end
	
	Runtime:addEventListener("collision", CollisionIni1)
    Runtime:addEventListener("collision", CollisionIni2)
    Runtime:addEventListener("collision", CollisionIni3)
    Runtime:addEventListener("collision", CollisionIni4)   

	   -------------------------------------------------------------------------------------------------------


	
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

		----------------------------------------
		--add a fisica 
		physics.addBody( forma, "static")
		physics.addBody( forma2, "static")
		physics.addBody( forma3, "static")
		physics.addBody( forma4, "static")
		physics.addBody( forma5, "static")
		physics.addBody( forma6, "static")
		physics.addBody( forma7, "static")
		physics.addBody( forma8, "static")
		physics.addBody( forma9, "static")
		physics.addBody( forma10, "static")
		physics.addBody( forma11, "static")
		physics.addBody( forma12, "static")
		physics.addBody( forma13, "static")
		physics.addBody( forma14, "static")
		physics.addBody( forma15, "static")
		physics.addBody( forma16, "static")
		physics.addBody( forma17, "static")
		physics.addBody( forma18, "static")
		physics.addBody( forma19, "static")
		physics.addBody( forma20, "static")
		physics.addBody( forma21, "static")
		physics.addBody( retangulo, "static")
		-----------------------------------------
	

		physics.addBody(cristalV,"static")
		
		physics.addBody( mob, "dynamic" )
		physics.addBody( ini1, "dynamic" )
		physics.addBody( ini2, "dynamic" )
		physics.addBody( ini3, "dynamic" )
		physics.addBody( ini4, "dynamic" )
		
		mob.isFixedRotation = true
		ini1.isFixedRotation = true
		ini2.isFixedRotation = true
		ini3.isFixedRotation = true
		ini4.isFixedRotation = true

		
		sceneGroup:insert(backGroup)
		sceneGroup:insert(mainGroup)
		sceneGroup:insert(uiGroup)
		sceneGroup:insert(vidasGrupo)
		
		
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
			audio.stop( 1 )
			composer.removeScene( "cena.fase1" )
			Runtime:removeEventListener("collision",onCollision)
			Runtime:removeEventListener("collision", CollisionIni1)
			Runtime:removeEventListener("collision", CollisionIni2)
			Runtime:removeEventListener("collision", CollisionIni3)
			Runtime:removeEventListener("collision", CollisionIni4)
			

		    
	
		elseif ( phase == "did" ) then
			-- Code here runs immediately after the scene goes entirely off screen
	
		end
	end
	
	
	-- destroy()
	function scene:destroy( event )
	
		local sceneGroup = self.view
	
	    display.remove(vidasGrupo)
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