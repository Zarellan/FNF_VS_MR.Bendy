--Script by Gavman22
function onCreate()
	makeLuaSprite('dadWinningIcon', 'icons/win-Mr bendy', getProperty('iconP2.x'), getProperty('iconP2.y'))
	setObjectCamera('dadWinningIcon', 'hud')
	addLuaSprite('dadWinningIcon', true)
	setObjectOrder('dadWinningIcon', getObjectOrder('iconP2') + 1)
	setProperty('dadWinningIcon.flipX', false)
	setProperty('dadWinningIcon.visible', false)
	setObjectOrder('dadWinningIcon', getObjectOrder('iconP2') + 1)
end
function onUpdate()
	if getProperty('healthBar.percent') < 20 then
		setProperty('dadWinningIcon.visible', true)
		setProperty('iconP2.visible', false)
	else
		setProperty('dadWinningIcon.visible', false)
		setProperty('iconP2.visible', true)
	end
	setProperty('dadWinningIcon.x', getProperty('iconP2.x'))
	setProperty('dadWinningIcon.angle', getProperty('iconP2.angle'))
	setProperty('dadWinningIcon.y', getProperty('iconP2.y'))
	setProperty('dadWinningIcon.scale.x', getProperty('iconP2.scale.x'))
	setProperty('dadWinningIcon.scale.y', getProperty('iconP2.scale.y'))
	setProperty('dadWinningIcon.alpha', getProperty('iconP2.alpha'))
end