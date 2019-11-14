
display.setStatusBar (display.HiddenStatusBar)	

local composer = require( "composer" )

local scene = composer.newScene()
local physics = require( "physics" )
physics.start()
physics.setGravity(0, 0) 

--physics.setDrawMode("hybrid")
    


local w = display.contentWidth
local h = display.contentHeight

local backGroup  = display.newGroup()
local mainGroup  = display.newGroup()
local uiGroup = display.newGroup()
local vidasGrupo = display.newGroup()


		-- -----------------------------------------------------------------------------------
	-- Code outside of the scene event functions below will only be executed ONCE unless
	-- the scene is removed entirely (not recycled) via "composer.removeScene()"
	-- -----------------------------------------------------------------------------------


	local function CenaVMenu()
		audio.stop( 1 )
		composer.removeScene( "cena.fase2" )
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

		musi2 = audio.loadSound( "music/musi2.mp3" )
		click = audio.loadSound("music/click.wav")
		audio.play( musi2, { channel=1, loops=-1 })
		audio.setVolume(0.6, {channel=1})



	
	---add o fundo da fase2
		local fundo2 = display.newImageRect(backGroup,"Imagens/fundo2.png",540,960)
		fundo2.x = display.contentCenterX
		fundo2.y = display.contentCenterY
	

	-------------------------------------------------------------
	    local forma = display.newImageRect(backGroup,"formas/forma.png",67,11)
		forma.x = 280
		forma.y = 155

		local forma2 = display.newImageRect(backGroup,"formas/forma.png",9,31)
		forma2.x = 315
		forma2.y = 170

		local forma3 = display.newImageRect(backGroup,"formas/forma.png",89,9)
		forma3.x = 242
		forma3.y = 100

		local forma4 = display.newImageRect(backGroup,"formas/forma.png",11,14)
		forma4.x = 281
		forma4.y = 89

		local forma5 = display.newImageRect(backGroup,"formas/forma.png",11,14)
		forma5.x = 210
		forma5.y = 89

		local forma6 = display.newImageRect(backGroup,"formas/forma.png",10,52)
		forma6.x = 190
		forma6.y = 121

		local forma7 = display.newImageRect(backGroup,"formas/forma.png",10,68)
		forma7.x = 177
		forma7.y = 171

		local forma8 = display.newImageRect(backGroup,"formas/forma.png",80,11)
		forma8.x = 212
		forma8.y = 199

		local forma9= display.newImageRect(backGroup,"formas/forma.png",78,10)
		forma9.x = 133
		forma9.y = 161

		local forma10= display.newImageRect(backGroup,"formas/forma.png",11,89)
		forma10.x = 100
		forma10.y = 205

		local forma11= display.newImageRect(backGroup,"formas/forma.png",69,10)
		forma11.x = 68
		forma11.y = 242

		local forma12= display.newImageRect(backGroup,"formas/forma.png",10,44)
		forma12.x = 39
		forma12.y = 220

		local forma13= display.newImageRect(backGroup,"formas/forma.png",31,10)
		forma13.x = 29
		forma13.y = 203

		local forma14= display.newImageRect(backGroup,"formas/forma.png",41,10)
		forma14.x = 47
		forma14.y = 106

		local forma15= display.newImageRect(backGroup,"formas/forma.png",30,10)
		forma15.x = 9
		forma15.y = 163
			
		local forma16= display.newImageRect(backGroup,"formas/forma.png",80,11)
		forma16.x = 98
		forma16.y = 120

		local forma17= display.newImageRect(backGroup,"formas/forma.png",11,64)
		forma17.x = 62
		forma17.y = 133

		local forma18= display.newImageRect(backGroup,"formas/forma.png",11,78)
		forma18.x = 132
		forma18.y = 75

		local forma19= display.newImageRect(backGroup,"formas/forma.png",189,11)
		forma19.x = 230
		forma19.y = 42

		local forma20= display.newImageRect(backGroup,"formas/forma.png",11,6)
		forma20.x = 257
		forma20.y = 32

		local forma21= display.newImageRect(backGroup,"formas/forma.png",11,9)
		forma21.x = 254
		forma21.y = -7

		local forma22= display.newImageRect(backGroup,"formas/forma.png",11,39)
		forma22.x = 92
		forma22.y = -1

		local forma23= display.newImageRect(backGroup,"formas/forma.png",98,11)
		forma23.x = 48
		forma23.y = 23

		local forma24= display.newImageRect(backGroup,"formas/forma.png",88,11)
		forma24.x = 45
		forma24.y = 60

		
		local forma25= display.newImageRect(backGroup,"formas/forma.png",22,10)
		forma25.x = 248
		forma25.y = 143
		
		local forma26= display.newImageRect(backGroup,"formas/forma.png",22,10)
		forma26.x = 248
		forma26.y = 143

		local forma27= display.newImageRect(backGroup,"formas/forma.png",49,10)
		forma27.x = 266
		forma27.y = 212

		local forma28= display.newImageRect(backGroup,"formas/forma.png",11,73)
		forma28.x = 224
		forma28.y = 230

		local forma29= display.newImageRect(backGroup,"formas/forma.png",24,11)
		forma29.x = 240
		forma29.y = 262

		local forma30= display.newImageRect(backGroup,"formas/forma.png",44,11)
		forma30.x = 309
		forma30.y = 262

		local forma31= display.newImageRect(backGroup,"formas/forma.png",146,10)
		forma31.x = 246
		forma31.y = 305

		local forma32= display.newImageRect(backGroup,"formas/forma.png",11,109)
		forma32.x = 179
		forma32.y = 293

		local forma33= display.newImageRect(backGroup,"formas/forma.png",149,11)
		forma33.x = 70
		forma33.y = 293

		local forma34= display.newImageRect(backGroup,"formas/forma.png",11,9)
		forma34.x = 139
		forma34.y = 282

		local forma35= display.newImageRect(backGroup,"formas/forma.png",10,11)
		forma35.x = 142
		forma35.y = 230

		local forma36= display.newImageRect(backGroup,"formas/forma.png",38,10)
		forma36.x = 155
		forma36.y = 243

		local forma37= display.newImageRect(backGroup,"formas/forma.png",99,11)
		forma37.x = 125
		forma37.y = 337

		local forma38= display.newImageRect(backGroup,"formas/forma.png",11,119)
		forma38.x = 80
		forma38.y = 391

		local forma39= display.newImageRect(backGroup,"formas/forma.png",21,11)
		forma39.x = 62
		forma39.y = 445

		local forma40= display.newImageRect(backGroup,"formas/forma.png",22,11)
		forma40.x = 12
		forma40.y = 445

		local forma41= display.newImageRect(backGroup,"formas/forma.png",46,11)
		forma41.x = 25
		forma41.y = 400

		local forma42= display.newImageRect(backGroup,"formas/forma.png",49,11)
		forma42.x = 47
		forma42.y = 360

		local forma43= display.newImageRect(backGroup,"formas/forma.png",10,119)
		forma43.x = 118
		forma43.y = 435

		local forma44= display.newImageRect(backGroup,"formas/forma.png",101,11)
		forma44.x = 174
		forma44.y = 381

		local forma45= display.newImageRect(backGroup,"formas/forma.png",11,34)
		forma45.x = 219
		forma45.y = 360

		local forma46= display.newImageRect(backGroup,"formas/forma.png",50,11)
		forma46.x = 250
		forma46.y = 349

		local forma47= display.newImageRect(backGroup,"formas/forma.png",20,11)
		forma47.x = 310
		forma47.y = 349


		local forma48= display.newImageRect(backGroup,"formas/forma.png",10,44)
		forma48.x = 255
		forma48.y = 420

		local forma49= display.newImageRect(backGroup,"formas/forma.png",11,49)
		forma49.x = 293
		forma49.y = 450 
		
		local forma50= display.newImageRect(backGroup,"formas/forma.png",10,24)
		forma50.x = 200
		forma50.y = 430

		local forma51= display.newImageRect(backGroup,"formas/forma.png",11,23)
		forma51.x = 151
		forma51.y = 430

		local forma52= display.newImageRect(backGroup,"formas/forma.png",62,11)
		forma52.x = 176
		forma52.y = 449

		local forma53= display.newImageRect(backGroup,"formas/forma.png",36,11)
		forma53.x = 241
		forma53.y = 449

		local forma54= display.newImageRect(backGroup,"formas/forma.png",35,10)
		forma54.x = 215
		forma54.y = 422

		local forma55= display.newImageRect(backGroup,"formas/forma.png",46,11)
		forma55.x = 273
		forma55.y = 390

		
		local forma56= display.newImageRect(backGroup,"formas/forma.png",11,9)
		forma56.x = 139
		forma56.y = 282

		local forma57= display.newImageRect(backGroup,"formas/forma.png",11,43)
		forma57.x = 305
		forma57.y = 375
	
			
		
		--------------------------------------------------------------------------

		local quantidadeVidas = 3
		function criarVidas(quantidadeVidas)
			for i = 1, quantidadeVidas do
				vida = display.newImageRect(vidasGrupo,'Imagens/vida.png',30,25)
				vida.x = (display.contentWidth - vida.width * 0.22) - (5 * i+1) - vida.width * i + 20
				vida.y = display.contentHeight - vida.height * 20
			         
			end
	   end
	   criarVidas(quantidadeVidas)
		
	--add o labirinto-----------------------------------------------------------------------
	   local lab2 = display.newImage(backGroup,"Imagens/lab2.png")
	   lab2.x = display.contentCenterX
	   lab2.y = display.contentCenterY

	-- add o mob-------------------------------------------------------------------------------
		local mob = display.newImage(mainGroup,"Imagens/mob.png")
		mob.x= 700
		mob.y= 500
		mob.myName = "mob"
		mob.id="mob"
---------botão voltar menu-------------------------------------------------------------------------------
	    local vmenu = display.newImageRect(mainGroup,"Imagens/vmenu.png",40,40)
		vmenu.x=20
		vmenu.y=-25
		vmenu:addEventListener("tap", CenaVMenu)

   --add o cristal branco----------------------------------------------------------
		local cristalB= display.newImageRect(mainGroup,"Imagens/cristalB.png",28,26)
		cristalB.x=300
		cristalB.y=display.contentCenterY-230
	    cristalB.id="cristalB"

	---------------------Collision	entre mob e cristal -------------------------------------------------	
		function  CenaFase3()
            composer.gotoScene("cena.fase3", "fade", 500 )
    	end

		function onCollision(event) 
	        local object1 = event.object1
		    local object2 = event.object2
			 
			if ( object1.id == "cristalB" and object2.id == "mob"
			   or object1.id == "mob" and object2.id == "cristalB" ) then
		     	timer.performWithDelay(	1000, CenaFase3)
				end 	
		end

		Runtime:addEventListener("collision", onCollision)

	-----Inimigos-----------------------------------------------------------------------------------------------------
	local ini1 =display.newImageRect(mainGroup,"Imagens/im2.png",22,20)
	ini1.x=105
	ini1.y=50
	ini1.id="ini1"

	local ini2 =display.newImageRect(mainGroup,"Imagens/im2.png",22,20)
	ini2.x=200
	ini2.y=20
	ini2.id="ini2"

	local ini3 =display.newImageRect(mainGroup,"Imagens/im2.png",22,20)
	ini3.x=200
	ini3.y=400
	ini3.id="ini3"

	local ini4 =display.newImageRect(mainGroup,"Imagens/im2.png",22,20)
	ini4.x=300
	ini4.y=100
	ini4.id="ini4"

	local ini5 =display.newImageRect(mainGroup,"Imagens/im2.png",22,20)
	ini5.x=80
	ini5.y=200
	ini5.id="ini5"

	local ini6=display.newImageRect(mainGroup,"Imagens/im2.png",22,20)
	ini6.x=270
	ini6.y=250
	ini6.id="ini6"
	-----------------------------------------------------------------------------------------------------
		---------Move inimigo----------------------------------------------------------
		function moveInimigo1()
			transition.to(ini1,{time=4000,x=math.random(50,150),y=
			math.random( 10, 150 ),onComplete=moveInimigo1})
		end
		moveInimigo1()
		function moveInimigo2()
			transition.to(ini2,{time=4000,x=math.random(60,280),y=
			math.random( 30, 250 ),onComplete=moveInimigo2})
		end
		moveInimigo2()
		function moveInimigo3()
			transition.to(ini3,{time=4000,x=math.random(70,270),y=
			math.random( 100, 350 ),onComplete=moveInimigo3})
		end
		moveInimigo3()
		function moveInimigo4()
			transition.to(ini4,{time=4000,x=math.random(20,300),y=
			math.random( 60, 104 ),onComplete=moveInimigo4})
		end
		moveInimigo4()

		function moveInimigo5()
			transition.to(ini5,{time=4000,x=math.random(60,210),y=
			math.random( 90, 384 ),onComplete=moveInimigo5})
		end
		moveInimigo5()
		function moveInimigo6()
			transition.to(ini6,{time=3800,x=math.random(20,200),y=
			math.random( 10, 100 ),onComplete=moveInimigo6})
		end
		moveInimigo6()




	---------------------------------------------
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
        physics.addBody( forma45, "static")
        physics.addBody( forma46, "static")
        physics.addBody( forma47, "static")
        physics.addBody( forma48, "static")
        physics.addBody( forma49, "static")
        physics.addBody( forma50, "static")
        physics.addBody( forma51, "static")
        physics.addBody( forma52, "static")
        physics.addBody( forma53, "static")
        physics.addBody( forma54, "static")
        physics.addBody( forma55, "static")
        physics.addBody( forma56, "static")
        physics.addBody( forma57, "static")
	

	--	physics.addBody(teste,"static")
		physics.addBody( cristalB, "static")
		physics.addBody( ini1, "dynamic" )
		physics.addBody( ini2, "dynamic" )
		physics.addBody( ini3, "dynamic" )
		physics.addBody( ini4, "dynamic" )
		physics.addBody( ini5, "dynamic" )
		physics.addBody( ini6, "dynamic" )
		physics.addBody( mob, "dynamic" )
		mob.isFixedRotation = true
		ini1.isFixedRotation = true
		ini2.isFixedRotation = true
		ini3.isFixedRotation = true
		ini4.isFixedRotation = true
		ini5.isFixedRotation = true
		ini6.isFixedRotation = true


		
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
			composer.removeScene( "cena.fase2" )
			Runtime:removeEventListener("collision",onCollision)
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