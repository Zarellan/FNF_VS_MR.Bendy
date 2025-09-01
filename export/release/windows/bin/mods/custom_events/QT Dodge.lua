function onCreate()
	makeAnimatedLuaSprite('mechanics/warning', 'mechanics/warning', 400, 200);

    luaSpriteAddAnimationByPrefix('mechanics/warning', 'Advertencia', 'Advertencia', 25, true);
	setObjectCamera('mechanics/warning', 'Hud');
	scaleLuaSprite('mechanics/warning', 0.50, 0.50); 
    addLuaSprite('mechanics/warning', true); 
	end	

function onEvent(name, value1, value2)
	if name == "Do Syringe" then
		runTimer('dodge', 0.779)
		playSound('Warning', 0.5)
		addLuaSprite('mechanics/warning', false);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'dodge' then
		if keyPressed('space') then
			characterPlayAnim('boyfriend', 'dodge', true);
		else
			characterPlayAnim('boyfriend', 'hurt', true);
			setProperty('health', -19);
		end
	removeLuaSprite('mechanics/warning', false)
	end
end