-- Wolf Branding
local branding = 
[[ 
    ▒  
    ▒                                __
    ▒                              .d$$b
    ▒                            .' TO$;\
    ▒                           /  : TP._;
    ▒                          / _.;  :Tb|
    ▒                         /   /   ;j$j
    ▒                     _.-"       d$$$$
    ▒                   .' ..       d$$$$;
    ▒                  /  /P'      d$$$$P. |\
    ▒                 /   "      .d$$$P' |\^"l
    ▒               .'           `T$P^"""""  :
    ▒           ._.'      _.'                ;
    ▒        `-.-".-'-' ._.       _.-"    .-"
    ▒      `.-" _____  ._              .-"
    ▒     -(.g$$$$$$$b.              .'
    ▒       ""^^T$$$P^)            .(:
    ▒         _/  -"  /.'         /:/;
    ▒      ._.'-'`-'  ")/         /;/;
    ▒   `-.-"..--""   " /         /  ;
    ▒  .-" ..--""        -'          :
    ▒  ..--""--.-"         (\      .-(\
    ▒    ..--""              `-\(\/;`
    ▒      _.                      :
    ▒                              ;`-
    ▒                             :\
    ▒                             ; 
    ▒  
    ▒     Created by SenkaWolf
    ▒]]

-- Returns the current version set in fxmanifest.lua
function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end 

-- Grabs the latest version number from the web GitHub
PerformHttpRequest( "https://raw.githubusercontent.com/SenkaWolf/FiveM-Standalone-RP-Chat-Command-Basic-Pack/master/version.txt", function( err, text, headers )
	-- Wait to reduce spam 
	Citizen.Wait( 2000 )

	-- Print the branding!
	print( branding )

	-- Get the current resource version 
	local curVer = GetCurrentVersion()
	
	if ( text ~= nil ) then 
		-- Print out the current and latest version 
		print( "    ▒    Current Version: " .. curVer )
		print( "    ▒    Latest Version: " .. text .."\n  ▒" )
		
		-- If the versions are different, print it out
		if ( text ~= curVer ) then
			print( "    ▒    ^1Your SenkaWolf-RPCCPack is outdated, go to https://github.com/SenkaWolf/FiveM-Standalone-RP-Chat-Command-Basic-Pack/releases to get the latest version.\n^0  ▒▒\n" )
		else
			print( "    ▒    ^2Your SenkaWolf-RPCCPack is up to date!\n^0  ▒\n  ▒▒\n" )
		end
	else 
		-- In case the version can not be requested, print out an error message
		print( "    ▒    ^1There was an error in the checks for the latest version, if the issue persists contact submit an issue @ https://github.com/SenkaWolf/FiveM-Standalone-RP-Chat-Command-Basic-Pack/issues \n^0  ▒\n  ▒▒\n" )
	end 
end )