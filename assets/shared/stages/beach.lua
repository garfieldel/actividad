function onCreate()

	makeLuaSprite('sky', 'sky', -600, -300);
    addLuaSprite('sky', false);
	makeLuaSprite('beach', 'beach', -600, -300);
    addLuaSprite('beach', false);

	makeLuaSprite('cloud', 'cloud', -600, -300);
    addLuaSprite('cloud', false);
	makeLuaSprite('ground', 'ground', -600, -300);
    addLuaSprite('ground', false);
	
makeAnimatedLuaSprite('pibby','pibby',1250,430)
addAnimationByPrefix('pibby','bounce','pibby',24,false)
addLuaSprite('pibby',true)

	precacheImage('corrupt');
	addCharacterToList('spinel', 'dad'); 
	addCharacterToList('spinel', 'gf'); 
	
	
end

function onBeatHit()

objectPlayAnimation('corrupt','bounce',true)
objectPlayAnimation('pibby','bounce',true)
objectPlayAnimation('pibbyc','bounce',true)

end

function onStartCountdown()
	return Function_Continue;
end

stepHitFuncs = { --a bunch of timed events, timed to steps
	[255] = function()
		setProperty('defaultCamZoom', 1);
	end,
	[271] = function()
		setProperty('defaultCamZoom', 0.7);
	end,
	[602] = function()
		setProperty('defaultCamZoom', 1.1);
	end,
	[607] = function()
		setProperty('defaultCamZoom', 0.7);
	end,
	[622] = function()
		setProperty('defaultCamZoom', 1);
	end,
	[638] = function()
		setProperty('defaultCamZoom', 0.7);
	end,
	[906] = function()
		setProperty('defaultCamZoom', 0.9);
	end,
	[908] = function()
makeAnimatedLuaSprite('corrupt','corrupt',-800,-500)
addAnimationByPrefix('corrupt','bounce','corrupt',24,false)
addLuaSprite('corrupt',false)	
	end,
	[909] = function()
removeLuaSprite('pibby', true);	
makeAnimatedLuaSprite('pibbyc','pibbyc',1250,430)
addAnimationByPrefix('pibbyc','bounce','pibbyc',24,false)
addLuaSprite('pibbyc',true)
	end,
	[975] = function()
		setProperty('defaultCamZoom', 0.7);
	end,
	[1038] = function()
		setProperty('defaultCamZoom', 0.8);
	end,
	[1046] = function()
		setProperty('defaultCamZoom', 1);
	end,
	[1141] = function()
		setProperty('defaultCamZoom', 0.7);
	end,
}

function onStepHit()
    if stepHitFuncs[curStep] then 
        stepHitFuncs[curStep]() -- Executes function at curStep in stepHitFuncs
    end
end