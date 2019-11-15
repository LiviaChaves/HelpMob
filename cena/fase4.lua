
	display.setStatusBar (display.HiddenStatusBar)	

	local composer = require( "composer" )

	local scene = composer.newScene()

	local backGroup  = display.newGroup()
	local mainGroup  = display.newGroup()
	local uiGroup = display.newGroup()
	local vidasGrupo = display.newGroup()


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
		composer.removeScene ("cena.fase4") 
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

	   musi4 = audio.loadSound( "music/musi4.wav" )
	   click = audio.loadSound("music/click.wav")
	   
	   audio.play( musi4, { channel=1, loops=-1 })
	   audio.setVolume(0.6, {channel=1})
		----------------------------------------------------------------------
		
		local fundo4 = display.newImage(backGroup,"Imagens/fundo4.png")
		fundo4.x = display.contentCenterX
		fundo4.y = display.contentCenterY

	-----------------------------------------------------------------------------
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

		local forma19= display.newImageRect(backGroup,"formas/forma.png",15,40)
		forma19.x = 247
		forma19.y = 340

		local forma20= display.newImageRect(backGroup,"formas/forma.png",15,40)
		forma20.x = 118
		forma20.y = 389

		local forma21= display.newImageRect(backGroup,"formas/forma.png",13,40)
		forma21.x = 155
		forma21.y = 423

		local forma22= display.newImageRect(backGroup,"formas/forma.png",13,40)
		forma22.x = 82
		forma22.y = 425

		local forma23= display.newImageRect(backGroup,"formas/forma.png",150,15)
		forma23.x = 153
		forma23.y = 444

		local forma24= display.newImageRect(backGroup,"formas/forma.png",150,13)
		forma24.x = 113
		forma24.y = 365

		local forma25= display.newImageRect(backGroup,"formas/forma.png",80,13)
		forma25.x = 117
		forma25.y = 321

		local forma26= display.newImageRect(backGroup,"formas/forma.png",84,13)
		forma26.x = 284
		forma26.y = 315

		local forma27= display.newImageRect(backGroup,"formas/forma.png",30,13)
		forma27.x = 304
		forma27.y = 273

		local forma28= display.newImageRect(backGroup,"formas/forma.png",20,14)
		forma28.x = 311
		forma28.y = 439

		local forma29= display.newImageRect(backGroup,"formas/forma.png",20,14)
		forma29.x = 25
		forma29.y = 439

		local forma30= display.newImageRect(backGroup,"formas/forma.png",10,11)
		forma30.x = 6
		forma30.y = 360

		local forma31= display.newImageRect(backGroup,"formas/forma.png",40,13)
		forma31.x = 43
		forma31.y = 200

		local forma32= display.newImageRect(backGroup,"formas/forma.png",55,13)
		forma32.x = 55
		forma32.y = 114

		local forma33= display.newImageRect(backGroup,"formas/forma.png",50,13)
		forma33.x = 28
		forma33.y = 26

		local forma34= display.newImageRect(backGroup,"formas/forma.png",33,13)
		forma34.x = 18
		forma34.y = 158

		local forma35= display.newImageRect(backGroup,"formas/forma.png",45,13)
		forma35.x = 90
		forma35.y = 163

		local forma36= display.newImageRect(backGroup,"formas/forma.png",60,13)
		forma36.x = 93
		forma36.y = 190

		local forma37= display.newImageRect(backGroup,"formas/forma.png",80,13)
		forma37.x = 75
		forma37.y = 285

		local forma38= display.newImageRect(backGroup,"formas/forma.png",30,13)
		forma38.x = 15
		forma38.y = 243

		local forma39= display.newImageRect(backGroup,"formas/forma.png",40,13)
		forma39.x = 120
		forma39.y = 240

		local forma40= display.newImageRect(backGroup,"formas/forma.png",50,13)
		forma40.x = 180
		forma40.y = 223

		local forma41= display.newImageRect(backGroup,"formas/forma.png",55,13)
		forma41.x = 228
		forma41.y = 270

		local forma42= display.newImageRect(backGroup,"formas/forma.png",50,13)
		forma42.x = 270
		forma42.y = 224

		local forma43= display.newImageRect(backGroup,"formas/forma.png",90,13)
		forma43.x = 265
		forma43.y = 183

		local forma43= display.newImageRect(backGroup,"formas/forma.png",42,13)
		forma43.x = 300
		forma43.y = 135

		local forma44= display.newImageRect(backGroup,"formas/forma.png",120,13)
		forma44.x = 240
		forma44.y = 90

		local forma45= display.newImageRect(backGroup,"formas/forma.png",43,13)
		forma45.x = 150
		forma45.y = 142

   ----------------VIDAS-------------------------------------------------------------
	local quantidadeVidas = 3
	function criarVidas(quantidadeVidas)
		for i = 1, quantidadeVidas do
			vida = display.newImageRect(vidasGrupo,'Imagens/vida.png',30,25)
			vida.x = (display.contentWidth - vida.width * 0.22) - (5 * i+1) - vida.width * i + 20
			vida.y = display.contentHeight - vida.height * 20
					
		end
	end
	criarVidas(quantidadeVidas)
   ---------------------------------------------------------------------------------
		local lab4 = display.newImage(backGroup,"Imagens/lab4.png")
		lab4.x = display.contentCenterX
		lab4.y = display.contentCenterY

	-- add o mob-------------------------------------------------------------------
		local mob = display.newImageRect(mainGroup,"Imagens/mob.png",18,23)
		mob.x= 700
		mob.y= 500
		mob.myName = "mob"
		mob.id="mob"

---------------------------------------------------------------------------
		local vmenu = display.newImageRect(mainGroup,"Imagens/vmenu.png",40,40)
		vmenu.x=20
		vmenu.y=-25
		vmenu:addEventListener("tap", CenaVMenu)		
------------Cristal vermelho---------------------------------------------------------------
        local cristalred= display.newImageRect(mainGroup,"Imagens/cristalred.png",28,26)
		cristalred.x=20
		cristalred.y=400
		cristalred.id="cristalred"
		
---------Colisão entre mob e cristalred-------------------------------------------------------
		function  CenaFinal()
		    composer.gotoScene("cena.cenafinal", "fade", 500 )
		end

	   function onCollision(event) 
			local object1 = event.object1
			local object2 = event.object2

			if ( object1.id == "cristalred" and object2.id == "mob"
			or object1.id == "mob" and object2.id == "cristalred" ) then
				timer.performWithDelay(	1000, CenaFinal)
			end 	
		end

		Runtime:addEventListener("collision", onCollision)

--------INIMIGOS------------------------------------------------------------------------------------------
		local ini1 =display.newImageRect(mainGroup,"Imagens/im4.png",45,45)
		ini1.x=93
		ini1.y=50
		ini1.id="ini1"

		local ini2 =display.newImageRect(mainGroup,"Imagens/im4.png",45,45)
		ini2.x=190
		ini2.y=20
		ini2.id="ini2"

		local ini3 =display.newImageRect(mainGroup,"Imagens/im4.png",45,45)
		ini3.x=200
		ini3.y=400
		ini3.id="ini3"

		local ini4 =display.newImageRect(mainGroup,"Imagens/im4.png",45,45)
		ini4.x=300
		ini4.y=120
		ini4.id="ini4"

		local ini5 =display.newImageRect(mainGroup,"Imagens/im4.png",45,45)
		ini5.x=80
		ini5.y=300
		ini5.id="ini5"

		local ini6=display.newImageRect(mainGroup,"Imagens/im4.png",45,45)
		ini6.x=275
		ini6.y=210
		ini6.id="ini6"

        local ini7=display.newImageRect(mainGroup,"Imagens/im4.png",45,45)
		ini7.x=30
		ini7.y=420
		ini7.id="ini7"

		local ini8=display.newImageRect(mainGroup,"Imagens/im4.png",45,45)
		ini8.x=30
		ini8.y=420
		ini8.id="ini8"

		local ini9=display.newImageRect(mainGroup,"Imagens/im4.png",45,45)
		ini9.x=150
		ini9.y=200
		ini9.id="ini10"

----------------MOVE INIMIGOS--------------------------------------------------------------------------
		function moveInimigo1()
			transition.to(ini1,{time=4800,x=math.random(6,311),y=
			math.random( 25, 444 ),onComplete=moveInimigo1})
		end
		moveInimigo1()
		function moveInimigo2()
			transition.to(ini2,{time=4800,x=math.random(6,311),y=
			math.random(  25, 444 ),onComplete=moveInimigo2})
		end
		moveInimigo2()
		function moveInimigo3()
			transition.to(ini3,{time=4800,x=math.random(6,311),y=
			math.random(  25, 444 ),onComplete=moveInimigo3})
		end
		moveInimigo3()
		function moveInimigo4()
			transition.to(ini4,{time=4800,x=math.random(6,311),y=
			math.random(  25, 444 ),onComplete=moveInimigo4})
		end
		moveInimigo4()

		function moveInimigo5()
			transition.to(ini5,{time=4800,x=math.random(6,311),y=
			math.random(  25, 444 ),onComplete=moveInimigo5})
		end
		moveInimigo5()

		function moveInimigo6()
			transition.to(ini6,{time=4800,x=math.random(6,311),y=
			math.random(  25, 444),onComplete=moveInimigo6})
		end
		moveInimigo6()

		function moveInimigo7()
			transition.to(ini7,{time=4800,x=math.random(6,311),y=
			math.random(  25, 444 ),onComplete=moveInimigo7})
		end
		moveInimigo7()

		function moveInimigo8()
			transition.to(ini8,{time=3900,x=math.random(6,311),y=
			math.random(  25, 444 ),onComplete=moveInimigo8})
		end
		moveInimigo8()

		function moveInimigo9()
			transition.to(ini9,{time=3900,x=math.random(6,311),y=
			math.random(  25, 444 ),onComplete=moveInimigo9})
		end
		moveInimigo9()


	----------------Collision Inimigo--------------------------------------------------------------------------------
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

		function CollisionIni5(event) 
			local object1 = event.object1
			local object2 = event.object2
		if ( object1.id == "ini5" and object2.id == "mob"
			or object1.id == "mob" and object2.id == "ini5") then
				
				display.remove(vidasGrupo)            
				quantidadeVidas = quantidadeVidas - 0.5
				vidasGrupo = display.newGroup()
				criarVidas(quantidadeVidas)

				if quantidadeVidas == 0 then
					timer.performWithDelay(	1000, GameOver)
				end
			end 	
		end

		function CollisionIni6(event) 
			local object1 = event.object1
			local object2 = event.object2
		if ( object1.id == "ini6" and object2.id == "mob"
			or object1.id == "mob" and object2.id == "ini6") then
				
				display.remove(vidasGrupo)            
				quantidadeVidas = quantidadeVidas - 0.5
				vidasGrupo = display.newGroup()
				criarVidas(quantidadeVidas)

				if quantidadeVidas == 0 then
					timer.performWithDelay(	1000, GameOver)
				end
			end 
		end 

		function CollisionIni7(event) 
			local object1 = event.object1
			local object2 = event.object2
		if ( object1.id == "ini7" and object2.id == "mob"
			or object1.id == "mob" and object2.id == "ini7") then
				
				display.remove(vidasGrupo)            
				quantidadeVidas = quantidadeVidas - 0.5
				vidasGrupo = display.newGroup()
				criarVidas(quantidadeVidas)

				if quantidadeVidas == 0 then
					timer.performWithDelay(	1000, GameOver)
				end
			end 
		end 

		function CollisionIni8(event) 
			local object1 = event.object1
			local object2 = event.object2
		if ( object1.id == "ini8" and object2.id == "mob"
			or object1.id == "mob" and object2.id == "ini8") then
				
				display.remove(vidasGrupo)            
				quantidadeVidas = quantidadeVidas - 0.5
				vidasGrupo = display.newGroup()
				criarVidas(quantidadeVidas)

				if quantidadeVidas == 0 then
					timer.performWithDelay(	1000, GameOver)
				end
			end 
		end 
		function CollisionIni9(event) 
			local object1 = event.object1
			local object2 = event.object2
		if ( object1.id == "ini9" and object2.id == "mob"
			or object1.id == "mob" and object2.id == "ini9") then
				
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
		Runtime:addEventListener("collision", CollisionIni5)
		Runtime:addEventListener("collision", CollisionIni6)
		Runtime:addEventListener("collision", CollisionIni7)
		Runtime:addEventListener("collision", CollisionIni8)
		Runtime:addEventListener("collision", CollisionIni9)
		
	--criação dos botões de movimentação----------------------------------------------------------------------

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

		----------------FISICA---------------------------------------------------------------
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
        physics.addBody( forma22, "static")
        physics.addBody( forma23, "static")
        physics.addBody( forma24, "static")
        physics.addBody( forma25, "static")
        physics.addBody( forma26, "static")
        physics.addBody( forma27, "static")
        physics.addBody( forma28, "static")
        physics.addBody( forma29, "static")
        physics.addBody( forma30, "static")
        physics.addBody( forma31, "static")
        physics.addBody( forma32, "static")
        physics.addBody( forma33, "static")
        physics.addBody( forma34, "static")
        physics.addBody( forma35, "static")
        physics.addBody( forma36, "static")
        physics.addBody( forma37, "static")
        physics.addBody( forma38, "static")
        physics.addBody( forma39, "static")
        physics.addBody( forma40, "static")
		physics.addBody( forma41, "static")
		physics.addBody( forma42, "static")
		physics.addBody( forma43, "static")
		physics.addBody( forma44, "static")
		physics.addBody( forma44, "static")
		physics.addBody( ini1, "dynamic" )
		physics.addBody( ini2, "dynamic" )
		physics.addBody( ini3, "dynamic" )
		physics.addBody( ini4, "dynamic" )
		physics.addBody( ini5, "dynamic" )
		physics.addBody( ini6, "dynamic" )
		physics.addBody( ini7, "dynamic" )
		physics.addBody( ini8, "dynamic" )
		physics.addBody( ini9, "dynamic" )
		
		physics.addBody( mob, "dynamic" )
		mob.isFixedRotation = true
		ini1.isFixedRotation = true
		ini2.isFixedRotation = true
		ini3.isFixedRotation = true
		ini4.isFixedRotation = true
		ini5.isFixedRotation = true
		ini6.isFixedRotation = true
		ini7.isFixedRotation = true
		ini8.isFixedRotation = true
		ini9.isFixedRotation = true
-----------------------------------------------------------------------------
		
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
			composer.removeScene( "cena.fase4" )
			Runtime:removeEventListener("collision",onCollision)
			Runtime:removeEventListener("collision", CollisionIni1)
			Runtime:removeEventListener("collision", CollisionIni2)
			Runtime:removeEventListener("collision", CollisionIni3)
			Runtime:removeEventListener("collision", CollisionIni4)
			Runtime:removeEventListener("collision", CollisionIni5)
			Runtime:removeEventListener("collision", CollisionIni6)
			Runtime:removeEventListener("collision", CollisionIni7)
			Runtime:removeEventListener("collision", CollisionIni8)
			Runtime:removeEventListener("collision", CollisionIni9)
			
		elseif ( phase == "did" ) then
			-- Code here runs immediately after the scene goes entirely off screen
	
		end
	end
	
	
	-- destroy()
	function scene:destroy( event )
	
		local sceneGroup = self.view
		-- Code here runs prior to the removal of scene's view
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