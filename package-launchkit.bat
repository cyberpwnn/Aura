@echo off
mkdir compile
powershell Compress-Archive .minecraft/mods compile/mods.zip
powershell Compress-Archive .minecraft/config compile/config.zip
powershell Compress-Archive .minecraft/ambience_music compile/ambience_music.zip
powershell Compress-Archive .minecraft/fonts compile/fonts.zip
powershell Compress-Archive .minecraft/local compile/local.zip
powershell Compress-Archive .minecraft/oresources compile/oresources.zip
powershell Compress-Archive .minecraft/resources compile/resources.zip
powershell Compress-Archive .minecraft/scripts compile/scripts.zip
powershell Compress-Archive .minecraft/shaderpacks compile/shaderpacks.zip
powershell Compress-Archive .minecraft/resourcepacks compile/resourcepacks.zip
pause