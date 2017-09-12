local module={}
local function wifi_wait_ip()
  if wifi.sta.getip()==nil then
  print("ip unavailable,waiting..")
  else
  tmr.stop(1)
  print("\n=========")
  print(wifi.sta.getip())
  print("loc 9")
  app.start()
  end
  end
  local function wifi_start(list_aps)
  if list_aps then
  print("location 4")
  print("loc 3")
  for key,value in pairs(list_aps) do
  print("loc 6")
  tmr.alarm(1,2500,1,wifi_wait_ip) 
  end
  else
  print("error getting ap list")
  end
  end
  function module.start()
  print("entered")
  print("configuring wifi...")
  wifi.setmode(wifi.STATION);
  wifi.sta.getap(wifi_start)
  end
  return module