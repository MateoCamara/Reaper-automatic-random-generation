-- get selected track
track = reaper.GetSelectedTrack(0, 0)

-- if no track is selected, print error and exit
if track == nil then
    reaper.ShowConsoleMsg("No track selected.\n")
    return
end

-- add REAEQ to selected track
fx = reaper.TrackFX_AddByName(track, "Chorus", false, -1)

global_path = ""
name_of_audio_file = ""


for alv=0,20,1 do

  length = math.random()* 200
  voices = math.random()*8
  wet_mix = math.random()*42 - 30
  dry_mix = math.random()*42 - 30
  rate = math.random() * 16
  pitch = math.random()
  
  
  reaper.TrackFX_SetParam(track, fx, 0, length)
  reaper.TrackFX_SetParam(track, fx, 1, voices)
  reaper.TrackFX_SetParam(track, fx, 2, rate)
  reaper.TrackFX_SetParam(track, fx, 3, pitch)
  reaper.TrackFX_SetParam(track, fx, 4, wet_mix)
  reaper.TrackFX_SetParam(track, fx, 5, dry_mix)
  
  reaper.GetSetProjectInfo_String(0, "RENDER_FILE", global_path, true)
  reaper.GetSetProjectInfo_String(0, "RENDER_PATTERN", name_of_audio_file .. "_chorus_length" .. tostring(length) .. "_voice_" .. tostring(voice) .. "_rate_" .. rate .. "_pitch_" .. pitch .. "_wetmix_" .. wet_mix .. "_drymix_" .. dry_mix .. ".wav", true)
  reaper.Main_OnCommand(41824, 0) -- Command ID for "Render project to a file"
end

reaper.TrackFX_Delete(track, 0)

fx = reaper.TrackFX_AddByName(track, "Distortion", false, -1)

--------------------------

for alv=0,20,1 do

  gain = math.random()* 30 + 10
  hardness = math.random()*9 +1
  
  reaper.TrackFX_SetParam(track, fx, 0, gain)
  reaper.TrackFX_SetParam(track, fx, 1, hardness)
  
  reaper.GetSetProjectInfo_String(0, "RENDER_FILE", global_path, true)
  reaper.GetSetProjectInfo_String(0, "RENDER_PATTERN", name_of_audio_file .. "_distortion_gain" .. tostring(gain) .. "_hardness_" .. hardness .. ".wav", true)
  reaper.Main_OnCommand(41824, 0) -- Command ID for "Render project to a file"
end

reaper.TrackFX_Delete(track, 0)

--------------------------

fx = reaper.TrackFX_AddByName(track, "ReaEQ (Cockos)", false, -1)

for alv=0,20,1 do

  gain_1 = math.random()/1.5
  gain_2 = math.random()/1.5
  gain_3 = math.random()/1.5
  gain_4 = math.random()/1.5
  bandwidth_1 = math.random()
  bandwidth_2 = math.random()
  bandwidth_3 = math.random()
  bandwidth_4 = math.random()
  
  reaper.TrackFX_SetParam(track, fx, 1, gain_1)
  reaper.TrackFX_SetParam(track, fx, 2, bandwidth_1)
  reaper.TrackFX_SetParam(track, fx, 4, gain_2)
  reaper.TrackFX_SetParam(track, fx, 5, bandwidth_2)
  reaper.TrackFX_SetParam(track, fx, 7, gain_3)
  reaper.TrackFX_SetParam(track, fx, 8, bandwidth_3)
  reaper.TrackFX_SetParam(track, fx, 10, gain_4)
  reaper.TrackFX_SetParam(track, fx, 11, bandwidth_4)

  reaper.GetSetProjectInfo_String(0, "RENDER_FILE", global_path, true)
  reaper.GetSetProjectInfo_String(0, "RENDER_PATTERN", name_of_audio_file .. "_eq_gain_" .. gain_1 .. "_" .. gain_2 .. "_" .. gain_3 .. "_" .. gain_4 .. "_" .. "_bandwidth_" .. bandwidth_1 .. "_" .. bandwidth_2 .. "_" .. bandwidth_3 .. "_" .. bandwidth_4 .. "_" ..  ".wav", true)
  reaper.Main_OnCommand(41824, 0) -- Command ID for "Render project to a file"
    
end

reaper.TrackFX_Delete(track, 0)

----------------------------

fx = reaper.TrackFX_AddByName(track, "ReaVerbate (Cockos)", false, -1)

for alv=0,20,1 do

  wet = math.random()*3
  dry = math.random()*3
  room = math.random()
  dampening = math.random()
  lowpass = math.random()
  highpass = math.random() * lowpass
  
  
  reaper.TrackFX_SetParam(track, fx, 0, wet)
  reaper.TrackFX_SetParam(track, fx, 1, dry)
  reaper.TrackFX_SetParam(track, fx, 2, room)
  reaper.TrackFX_SetParam(track, fx, 3, dampening)
  reaper.TrackFX_SetParam(track, fx, 6, lowpass)
  reaper.TrackFX_SetParam(track, fx, 7, highpass)
    
      -- set the render output file and render
  reaper.GetSetProjectInfo_String(0, "RENDER_FILE", global_path, true)
  reaper.GetSetProjectInfo_String(0, "RENDER_PATTERN", name_of_audio_file .. "_reverb_wet" .. tostring(wet) .. "_dry_" .. dry .. "_room_" .. room .. "_dampening_" .. dampening .. "_lowpass_" .. lowpass .. "_highpass_" .. highpass .. ".wav", true)
  reaper.Main_OnCommand(41824, 0) -- Command ID for "Render project to a file"
end

reaper.TrackFX_Delete(track, 0)

-------------------------------

fx = reaper.TrackFX_AddByName(track, "Flanger", false, -1)

for alv=0,20,1 do

  length = math.random()* 200
  feedback = math.random()*126 -120
  wet_mix = math.random()*42 - 30
  dry_mix = math.random()*42 - 30
  rate = math.random() * 100
  
  
  reaper.TrackFX_SetParam(track, fx, 0, length)
  reaper.TrackFX_SetParam(track, fx, 1, feedback)
  reaper.TrackFX_SetParam(track, fx, 2, wet_mix)
  reaper.TrackFX_SetParam(track, fx, 3, dry_mix)
  reaper.TrackFX_SetParam(track, fx, 4, rate)
  
  reaper.GetSetProjectInfo_String(0, "RENDER_FILE", global_path, true)
  reaper.GetSetProjectInfo_String(0, "RENDER_PATTERN", name_of_audio_file .. "_flanger_length" .. tostring(length) .. "_feedback_" .. feedback .. "_wetmix_" .. wet_mix .. "_drymix_" .. dry_mix .. "_rate_" .. rate .. ".wav", true)
  reaper.Main_OnCommand(41824, 0) -- Command ID for "Render project to a file"
end
