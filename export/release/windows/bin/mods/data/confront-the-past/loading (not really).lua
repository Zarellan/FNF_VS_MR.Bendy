local bg = 'loadingBG' -- don't touch this

local allowCountdown = false

function onStartCountdown() -- No countdown yet
    if not allowCountdown then
	    return Function_Stop
	end

	if allowCountdown then
	    return Function_Continue
	end
end

function onCreatePost() -- sprite loading
	makeLuaSprite('loadingBendy', 'loadingscreen/loadingBendy', 0, -60)
	scaleObject('loadingBendy',1.03,1.03)
	runTimer('fadeTimer', 3.0, 1)

	addLuaSprite('loadingBendy', true)
	setObjectCamera('loadingBendy', 'camOther')
end

function onTimerCompleted(tag) -- bye bye loading screen
    if tag == 'fadeTimer' then
	    doTweenAlpha('delete', 'loadingBendy', 0, 0.5, 'backIn')
		allowCountdown = true
		startCountdown()
		
	end
end

function onTweenCompleted(tag) -- everything goes bye bye
    if tag == 'delete' then
	    removeLuaSprite('loadingBendy', true)
		
	end
end