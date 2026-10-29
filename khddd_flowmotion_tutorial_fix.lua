--Flowmotion Tutorial Fix

--Standalone emergency mod: grants full flowmotion while Sora's Traverse Town flowmotion tutorials are unfinished

local World = {0x9CF730, 0x9CF720}
local Character = {0xA40760, 0xA3FFE0}
local SoraTTStory = {0xA41DA4, 0xA41624}
local ActionFlags = {0xA98088, 0xA97908}

local _isEpic = 0x7F7109
local _isSteam = 0x7F7041

local _gameVer = 0 --1 for Steam; 2 for Epic

function _OnInit()
  if ReadLong(_isEpic) == 0x7265737563697065 then
    ConsolePrint("Running KHDDD Flowmotion Tutorial Fix for EGS")
    _gameVer = 2
  elseif ReadLong(_isSteam) == 0x7265737563697065 then
    ConsolePrint("Running KHDDD Flowmotion Tutorial Fix for Steam")
    _gameVer = 1
  else
    ConsolePrint("Dream Drop Distance not detected. Make sure your game is up to date.")
  end
end

function _OnFrame()
  if _gameVer == 0 or ReadByte(World[_gameVer]) ~= 0x03 or ReadByte(Character[_gameVer]) ~= 0x00 then
    return
  end
  --story+0x01: 0x02 = Flowmotion Basics done, 0x10 = Flowmotion Combat done
  if (ReadByte(SoraTTStory[_gameVer]+0x01) & 0x12) ~= 0x12 and ReadByte(ActionFlags[_gameVer]) ~= 0xDE then
    WriteByte(ActionFlags[_gameVer], 0xDE)
  end
end
