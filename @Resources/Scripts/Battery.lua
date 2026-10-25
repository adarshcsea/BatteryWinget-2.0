--Version 2.0 made by Nooby4Ever

PROPERTIES = {}
	
function Initialize()
	msPowerPercent = SKIN:GetMeasure("mPowerPercent")
	msPowerSource = SKIN:GetMeasure("mPowerSource")	
end

function Update()
	iPowerPercent = msPowerPercent:GetValue()
	sPowerSource = msPowerSource:GetStringValue()
	
	if (sPowerSource == "Battery") then
		-- Put here the power percent when the image should change
		if (iPowerPercent <= 10) then 
			SKIN:Bang('!SetOption meterBGIcon7 ImageName BatteryOut.png')
		else 
			SKIN:Bang('!SetOption meterBGIcon7 ImageName Battery.png')
		end
	else
		SKIN:Bang('!SetOption meterBGIcon7 ImageName BatteryPlug.png')
	end
	
	-- You can always change the colors (in RGBA) or make more different colors
	if 	(iPowerPercent >90)		then	SKIN:Bang('!SetOption meterBattGraph BarColor 92,161,17')
	elseif (iPowerPercent >70)	then	SKIN:Bang('!SetOption meterBattGraph BarColor 125,192,53')
    elseif (iPowerPercent >50)	then	SKIN:Bang('!SetOption meterBattGraph BarColor 171,220,40')
    elseif (iPowerPercent >40)	then	SKIN:Bang('!SetOption meterBattGraph BarColor 246,170,0')
    elseif (iPowerPercent >20)	then	SKIN:Bang('!SetOption meterBattGraph BarColor 246,116,0')
    elseif (iPowerPercent >=0)	then	SKIN:Bang('!SetOption meterBattGraph BarColor 219,48,0')
    else                 		  		SKIN:Bang('!SetOption meterBattGraph BarColor 0,0,0,255')	--Default value, should never been displayed
    end		
	
	SKIN:Bang('!Refresh meterBGIcon7')
	return iPowerPercent	
end