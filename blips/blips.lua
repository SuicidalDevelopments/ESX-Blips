local blips = {
   {title="Perrera Beach Flats", colour=61, id=475, x = -1476.62, y = -661.79, z = 6.0},
   {title="Bilingsgate Flats", colour=61, id=475, x = 570.99, y = -1746.87, z = 6.0},
   {title="Von Crastenburg Flats", colour=61, id=475, x = 503.97, y = 208.16, z = 6.0},
   {title="The Motor Flats", colour=61, id=475, x = 1124.01, y = 2660.0, z = 6.0},
   {title="Eastern Flats", colour=61, id=475, x = 330.17, y = 2630.59, z = 6.0},
   {title="Bayview Lodge Flats", colour=61, id=475, x = -696.90, y = 5774.35, z = 6.0},
   {title="Dream View Flats", colour=61, id=475, x = -93.63, y = 6313.9, z = 6.0},
   {title="Pink Cage Flats", colour=61, id=475, x = 325.03, y = -212.05, z = 6.0},
   {title="Sun Rise Flats", colour=61, id=475, x = -126.28, y = -1659.41, z = 6.0},
   {title="Crown Jewel Flats", colour=61, id=475, x = -1317.33, y = -923.79, z = 6.0},
   {title="Police Station", colour=29, id=60, x = 368.53, y = -1599.99, z = 6.0},
   {title="Hospital", colour=2, id=61, x = 292.34, y = -589.81, z = 6.0}

  }	  
	  
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.8)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)