Player_Action[MID_JIN_BURNNING_CHARGE] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySoundForCharIndex("1224", 0, true)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySoundForCharIndex("1192", 0, true)
  else
    MakeError()
  end
end
Player_Action[MID_JIN_START_BURNNING_MODE] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
  elseif _ARG_1_ == 6 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Gage_Full_01", 0, 0, -0.04)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Gage_Full_02", 0, 0, -0.04)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1161)
  elseif _ARG_1_ == 7 then
    g_kCamera:SetEarthQuake(20)
  elseif _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_JIN_BURNNING_MODE_EFFECT, 6.2)
  elseif _ARG_1_ == 24 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  else
    MakeError()
  end
end
Player_Action[MID_JIN_DASH] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 2 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(4)
  elseif _ARG_1_ == 3 then
    g_MyD3D:GetPlayer(_ARG_0_):EffectDust()
  elseif _ARG_1_ == 15 then
    g_MyD3D:GetPlayer(_ARG_0_):Run()
  else
    MakeError()
  end
end
Player_Action[MID_JIN1_DASH_NEW] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 2 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(4)
  elseif _ARG_1_ == 3 then
    g_MyD3D:GetPlayer(_ARG_0_):EffectDust()
  elseif _ARG_1_ == 15 then
    g_MyD3D:GetPlayer(_ARG_0_):Run()
  else
    MakeError()
  end
end
Player_Action[MID_JIN_DASH_ATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).m_iBranchSkill = SKILL_BRANCH_NONE
  elseif _ARG_1_ == 2 then
    g_MyD3D:GetPlayer(_ARG_0_):EffectDust()
  elseif _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_DASH_ATTACK_ATK1, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_SP1-3_Finish_01", 0, 0.2, 0, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_SP1-3_Finish_01_R", 0, -0.2, 0, 5)
    end
  elseif _ARG_1_ == 11 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1144)
  elseif _ARG_1_ == 12 then
    if g_MyD3D:GetPlayer(_ARG_0_).m_iBranchSkill == SKILL_BRANCH_1 then
      g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_JIN_DASH_ATK_1)
    elseif g_MyD3D:GetPlayer(_ARG_0_).m_iBranchSkill == SKILL_BRANCH_2 then
      g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_JIN_DASH_ATK_2)
    end
  elseif _ARG_1_ == 16 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_DASH_ATTACK_ATK2, 0)
  else
    MakeError()
  end
end
Player_Action[MID_JIN_DASH_ATK_1] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 8 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_DASH_ATTACK_1_ATK, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Combo_Hit_01", 0, -0.12, -0.04)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Combo_Hit_02", 0, -0.12, -0.04)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Combo_Hit_01_R", 0, 0.12, -0.04)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Combo_Hit_02_R", 0, 0.12, -0.04)
    end
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1146)
  elseif _ARG_1_ == 15 then
    g_kCamera:SetEarthQuake(10)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin01_SP1-3_Finish_04", 0, 0.2, 0.03)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin01_SP1-3_Finish_05", 0, 0.2, 0.03)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin01_SP1-3_Finish_04", 0, -0.2, 0.03)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin01_SP1-3_Finish_05", 0, -0.2, 0.03)
    end
  else
    MakeError()
  end
end
Player_Action[MID_JIN_DASH_ATK_2] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 5 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_DASH_ATTACK_2_ATK1, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_Critical", 0, 0.05, 0.12, 0.15)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_Critical", 0, -0.05, 0.12, 0.15)
    end
  elseif _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_DASH_ATTACK_2_ATK2, 0)
  elseif _ARG_1_ == 13 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1148)
  else
    MakeError()
  end
end
Player_Action[MID_JIN_JUMP_READY] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 5 then
    g_MyD3D:GetPlayer(_ARG_0_):Jump()
  else
    MakeError()
  end
end
Player_Action[MID_JIN_JUMP_ATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 4 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_JUMP_ATK, 0)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1142)
  elseif _ARG_1_ == 8 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_SP1-3_Finish_01", 0, 0.2, 0, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_SP1-3_Finish_01_R", 0, -0.2, 0, 5)
    end
  else
    MakeError()
  end
end
Player_Action[MID_JIN_JUMP_DASH] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 2 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(4)
  elseif _ARG_1_ == 3 then
    g_MyD3D:GetPlayer(_ARG_0_):EffectDust()
  elseif _ARG_1_ == 12 then
    g_MyD3D:GetPlayer(_ARG_0_):Run()
  else
    MakeError()
  end
end
Player_Action[MID_JIN_CRITICAL_ATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 9 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1149)
  elseif _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_CRITICAL_DOUBLE_ATK1, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_Critical", 0, 0.2, 0, 0.1)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, 0.2, 0, 0.1)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, 0.2, 0, 0.1)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_Critical", 0, -0.2, 0, 0.1)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, -0.2, 0, 0.1)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, -0.2, 0, 0.1)
    end
  elseif _ARG_1_ == 17 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_CRITICAL_DOUBLE_ATK2, 0)
  else
    MakeError()
  end
end
Player_Action[MID_JIN_DOUBLE_ATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 9 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1149)
  elseif _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_CRITICAL_DOUBLE_ATK1, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_Critical", 0, 0.2, 0, 0.1)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, 0.2, 0, 0.1)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, 0.2, 0, 0.1)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_Critical", 0, -0.2, 0, 0.1)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, -0.2, 0, 0.1)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, -0.2, 0, 0.1)
    end
  elseif _ARG_1_ == 17 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_CRITICAL_DOUBLE_ATK2, 0)
  else
    MakeError()
  end
end
Player_Action[MID_JIN_SPECIAL1] = function(_ARG_0_, _ARG_1_)
--Dragão Celeste
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then 
    g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(180, 0, 0)
	end	
  elseif _ARG_1_ == 8 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(5)
  elseif _ARG_1_ == 9 then
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then	
	g_MyD3D:GetPlayer(_ARG_0_):StartSpecial(0, 0, 0)	
    g_MyD3D:GetPlayer(_ARG_0_):Stop(g_MyD3D:GetPlayer(_ARG_0_):GetPos().x, g_MyD3D:GetPlayer(_ARG_0_):GetPos().y)
	end 
  elseif _ARG_1_ == 16 then
		g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL1_FORCED_ATK, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_01", 0, 0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_02", 0, 0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_03", 0, 0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_04", 0, 0.15, -0.065)
    else														 
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_01", 0, -0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_02", 0, -0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_03", 0, -0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_04", 0, -0.15, -0.065)
    end 
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1163)
  elseif _ARG_1_ == 35 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL1_ATK2, 0)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1203)
  elseif _ARG_1_ == 38 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1164)
  elseif _ARG_1_ == 40 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Jump_01", 0, 0, -0.1)
  elseif _ARG_1_ == 42 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL1_ATK3, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_01", 0, 0.02, -0.02, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_01", 0, -0.02, -0.02, 5)
    end
  elseif _ARG_1_ == 83 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  else
    MakeError()
  end
end
Player_Action[MID_JIN_SPECIAL1_FORCED] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then 
    g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(180, 0, 0)
	end	
  elseif _ARG_1_ == 8 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(5)
  elseif _ARG_1_ == 9 then
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then	
		g_MyD3D:GetPlayer(_ARG_0_):StartSpecial(0, 0, 0)	
    g_MyD3D:GetPlayer(_ARG_0_):Stop(g_MyD3D:GetPlayer(_ARG_0_):GetPos().x, g_MyD3D:GetPlayer(_ARG_0_):GetPos().y)
	end 									 
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_01", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_02", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_03", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_04", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_05", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_06", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_07", 0, 0.18, 0, 5)
    else			   
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_01", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_02", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_03", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_04", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_05", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_06", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_07", 0, -0.18, 0, 5)
    end  
  elseif _ARG_1_ == 16 then
		g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL1_FORCED_ATK, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_01", 0, 0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_02", 0, 0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_03", 0, 0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_04", 0, 0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_05", 0, 0.15, -0.065)
    else	
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_01", 0, -0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_02", 0, -0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_03", 0, -0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_04", 0, -0.15, -0.065)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Start_05", 0, -0.15, -0.065)
    end 
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1163)
  elseif _ARG_1_ == 38 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL1_FORCED_ATK1, 0)
  elseif _ARG_1_ == 39 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_01", 0, 0.1, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, 0.1, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, 0.1, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_04", 0, 0.1, 0.02, 5)
    else
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_01", 0, -0.1, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, -0.1, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, -0.1, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_04", 0, -0.1, 0.02, 5)
    end 
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1165)
  elseif _ARG_1_ == 40 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1190)
  elseif _ARG_1_ == 60 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL1_FORCED_ATK2, 0)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1203)
  elseif _ARG_1_ == 63 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1164)
  elseif _ARG_1_ == 65 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Jump_01", 0, 0, -0.1)
  elseif _ARG_1_ == 67 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL1_FORCED_ATK3, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_04", 0, 0.02, -0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_05", 0, 0.02, -0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_06", 0, 0.02, -0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_07", 0, 0.02, -0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_B_01", 0, 0.02, 0.02, 0.08)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_B_02", 0, 0.02, -0.07, 0)
    else
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_04", 0, -0.02, -0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_05", 0, -0.02, -0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_06", 0, -0.02, -0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_07", 0, -0.02, -0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_B_01", 0, -0.02, -0.02, 0.08)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_B_02", 0, -0.02, -0.07, 0)
    end
  elseif _ARG_1_ == 108 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  else
    MakeError()
  end
end
Player_Action[MID_JIN_SPECIAL2] = function(_ARG_0_, _ARG_1_)
--Espirito Indomavel
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then 
    g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(180, 0, 0)
	end													
  elseif _ARG_1_ == 14 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(5)
  elseif _ARG_1_ == 15 then
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then 
    g_MyD3D:GetPlayer(_ARG_0_):StartSpecial(0, 0, 0)
    g_MyD3D:GetPlayer(_ARG_0_):Stop(g_MyD3D:GetPlayer(_ARG_0_):GetPos().x, g_MyD3D:GetPlayer(_ARG_0_):GetPos().y)
	end 
  elseif _ARG_1_ == 18 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL2_TEXT_BAEK, 0, 0.12)
  elseif _ARG_1_ == 20 then
    g_kCamera:SetEarthQuake(3)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL2_ATK1, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      xPos = 0.12
    else
      xPos = -0.12
    end
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Hit_01", 0, 0, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_01", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1166)
  elseif _ARG_1_ == 30 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1204)
  elseif _ARG_1_ == 35 then
    g_kCamera:SetEarthQuake(3)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL2_ATK2, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      xPos = 0.12
    else
      xPos = -0.12
    end
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Hit_01", 0, 0, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_01", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL2_TEXT_HWOA, 0.005, 0.07)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1167)
  elseif _ARG_1_ == 49 then
    g_kCamera:SetEarthQuake(3)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL2_ATK3, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      xPos = 0.12
    else
      xPos = -0.12
    end
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Hit_01", 0, 0, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_01", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL2_TEXT_NAN, 0.065, 0.12)
  elseif _ARG_1_ == 51 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1166)
  elseif _ARG_1_ == 66 then
    g_kCamera:SetEarthQuake(3)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL2_ATK4, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      xPos = 0.12
    else
      xPos = -0.12
    end
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Hit_01", 0, 0, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_01", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL2_TEXT_MU, 0.1, 0.07)
  elseif _ARG_1_ == 68 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1168)
  elseif _ARG_1_ == 84 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(5)
  elseif _ARG_1_ == 85 then
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
	g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(0, 0, 0)
    g_MyD3D:GetPlayer(_ARG_0_):Stop(g_MyD3D:GetPlayer(_ARG_0_):GetPos().x, g_MyD3D:GetPlayer(_ARG_0_):GetPos().y)
	end 
  elseif _ARG_1_ == 105 then
    g_kCamera:SetEarthQuake(25)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL2_FINAL_ATK, 0)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_01", 0, 0, -0.05)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_02", 0, 0, -0.05)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_03", 0, 0, -0.05)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_04", 0, 0, -0.05)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_05", 0, 0, -0.05)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_06", 0, 0, -0.05)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_07", 0, 0, -0.05)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_08", 0, 0, -0.05)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_09", 0, 0, -0.05)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_10", 0, 0, -0.05)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1172)
  elseif _ARG_1_ == 110 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL2_FINAL_ATK, 0)
  elseif _ARG_1_ == 115 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL2_FINAL_ATK, 0)
  elseif _ARG_1_ == 132 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  else
    MakeError()
  end
end
Player_Action[MID_JIN_SPECIAL2_FORCED] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then 
    g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(180, 0, 0)
	end	
  elseif _ARG_1_ == 4 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(5)
  elseif _ARG_1_ == 5 then
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then	  
	g_MyD3D:GetPlayer(_ARG_0_):StartSpecial(0, 0, 0)
    g_MyD3D:GetPlayer(_ARG_0_):Stop(g_MyD3D:GetPlayer(_ARG_0_):GetPos().x, g_MyD3D:GetPlayer(_ARG_0_):GetPos().y)
	end 
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_01", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_02", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_03", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_04", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_05", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_06", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_07", 0, 0.18, 0, 5)
    else			   
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_01", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_02", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_03", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_04", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_05", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_06", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special_Upgrade_Effect_07", 0, -0.18, 0, 5)
    end 
  elseif _ARG_1_ == 6 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1190)
  elseif _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL2_BURNNING_ATK1, 0)
  elseif _ARG_1_ == 12 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1173)
  elseif _ARG_1_ == 13 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_01", 0, 0.15, 0.04, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_02", 0, 0.15, 0.04, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_03", 0, 0.15, 0.04, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_04", 0, 0.15, 0.04, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_02", 0, 0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_04", 0, 0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_05", 0, 0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_06", 0, 0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Foot_01", 0, 0, -0.015, 5)
    else
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_01", 0, -0.15, 0.04, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_02", 0, -0.15, 0.04, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_03", 0, -0.15, 0.04, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_04", 0, -0.15, 0.04, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_02", 0, -0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_04", 0, -0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_05", 0, -0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_06", 0, -0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Foot_01", 0, 0, -0.015, 5)
    end 
  elseif _ARG_1_ == 15 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL2_BURNNING_ATK2, 0)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL2_TEXT_BAEK, 0.05, 0.1)
  elseif _ARG_1_ == 25 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1204)
  elseif _ARG_1_ == 30 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL2_BURNNING_ATK3, 0)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL2_TEXT_HWOA, 0.07, 0.03)
  elseif _ARG_1_ == 32 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_01", 0, 0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_02", 0, 0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_03", 0, 0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_04", 0, 0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_02", 0, 0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_04", 0, 0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_05", 0, 0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_06", 0, 0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Foot_01", 0, 0, -0.015, 5)
    else 
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_01", 0, -0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_02", 0, -0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_03", 0, -0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_04", 0, -0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_02", 0, -0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_04", 0, -0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_05", 0, -0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_06", 0, -0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Foot_01", 0, 0, -0.015, 5)
    end 
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1174)
  elseif _ARG_1_ == 33 then
    g_kCamera:SetEarthQuake(20)
  elseif _ARG_1_ == 53 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL2_BURNNING_ATK4, 0)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL2_TEXT_NAN, 0.05, 0.08)
  elseif _ARG_1_ == 56 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1175)
  elseif _ARG_1_ == 57 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_01", 0, 0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_02", 0, 0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_03", 0, 0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_04", 0, 0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_02", 0, 0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_04", 0, 0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_05", 0, 0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_06", 0, 0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Foot_01", 0, 0, -0.015, 5)
    else
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_01", 0, -0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_02", 0, -0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_03", 0, -0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_04", 0, -0.15, 0.05, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_02", 0, -0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_04", 0, -0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_05", 0, -0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_06", 0, -0.15, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Foot_01", 0, 0, -0.015, 5)
    end 			   
  elseif _ARG_1_ == 70 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_).x_Speed = -0.01
    else
      g_MyD3D:GetPlayer(_ARG_0_).x_Speed = 0.01
    end
  elseif _ARG_1_ == 74 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special2_Upgrade_4Hit_01", 0, -0.05, -0.015, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special2_Upgrade_4Hit_01", 0, -0.05, -0.015, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Special2_Upgrade_4Hit_01", 0, 0.05, -0.015, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Special2_Upgrade_4Hit_01", 0, 0.05, -0.015, 5)
    end
  elseif _ARG_1_ == 75 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL2_BURNNING_ATK5, 0)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL2_TEXT_MU, 0.05, 0.02)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_01", 0, 0.12, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_02", 0, 0.12, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_03", 0, 0.12, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_04", 0, 0.12, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_02", 0, 0.12, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_04", 0, 0.12, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_05", 0, 0.12, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_06", 0, 0.12, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Foot_01", 0, 0, -0.015, 5)
    else
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_01", 0, -0.12, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_02", 0, -0.12, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_03", 0, -0.12, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Hit_04", 0, -0.12, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_02", 0, -0.12, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_04", 0, -0.12, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_05", 0, -0.12, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Boom_06", 0, -0.12, 0.04, 0.1)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special2_Upgrade_Foot_01", 0, 0, -0.015, 5)
    end 
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1176)
  elseif _ARG_1_ == 77 then
    g_kCamera:SetEarthQuake(25)
  elseif _ARG_1_ == 132 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  else
    MakeError()
  end
end
Player_Action[MID_JIN_SPECIAL3] = function(_ARG_0_, _ARG_1_)
--Fim dos Dias
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = false
    g_MyD3D:GetPlayer(_ARG_0_).x_Speed = 0
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then 
    g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(180, 0, 0)
	end	
  elseif _ARG_1_ == 7 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(5)
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then 
		if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_01", 0, 0.4, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_02", 0, 0.4, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_03", 0, 0.4, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_04", 0, 0.4, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_05", 0, 0.4, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_06", 0, 0.4, 0.1)
		else
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_01", 0, -0.4, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_02", 0, -0.4, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_03", 0, -0.4, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_04", 0, -0.4, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_05", 0, -0.4, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_06", 0, -0.4, 0.1)
		end 
	end
  elseif _ARG_1_ == 8 then
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then  
	g_MyD3D:GetPlayer(_ARG_0_):StartSpecial(0, 0, 0)
    g_MyD3D:GetPlayer(_ARG_0_):Stop(g_MyD3D:GetPlayer(_ARG_0_):GetPos().x, g_MyD3D:GetPlayer(_ARG_0_):GetPos().y)
	end 
  elseif _ARG_1_ == 15 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1205)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL3_START_ATK, 0)
  elseif _ARG_1_ == 20 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1177)
  elseif _ARG_1_ == 25 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL3_CONTINUOUS_ATK1, -0.2, 0)
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then 
		if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_01", 0, 0.2, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_02", 0, 0.2, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_03", 0, 0.2, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_04", 0, 0.2, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_05", 0, 0.2, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_06", 0, 0.2, 0.1)
		else
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_01", 0, -0.2, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_02", 0, -0.2, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_03", 0, -0.2, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_04", 0, -0.2, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_05", 0, -0.2, 0.1)
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_06", 0, -0.2, 0.1)
		end 
	end
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1178)
  elseif _ARG_1_ == 32 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL3_CONTINUOUS_ATK2, -0.4, 0)
  elseif _ARG_1_ == 39 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL3_CONTINUOUS_ATK1, -0.4, 0)
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = true
  elseif _ARG_1_ == 46 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL3_CONTINUOUS_ATK2, -0.4, 0)
  elseif _ARG_1_ == 53 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL3_CONTINUOUS_ATK1, -0.4, 0)
  elseif _ARG_1_ == 54 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(5)
  elseif _ARG_1_ == 55 then
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then	  
	g_MyD3D:GetPlayer(_ARG_0_):StartSpecial(0, 0, 0)
    g_MyD3D:GetPlayer(_ARG_0_):Stop(g_MyD3D:GetPlayer(_ARG_0_):GetPos().x, g_MyD3D:GetPlayer(_ARG_0_):GetPos().y)
	end 
  elseif _ARG_1_ == 70 then
    g_kCamera:SetEarthQuake(25)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL3_FINAL_ATK2, -0.45, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_01", 0, -0.2, 0.07)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_02", 0, -0.2, 0.07)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_03", 0, -0.2, 0.07)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_04", 0, -0.2, 0.07)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_05", 0, -0.2, 0.07)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_06", 0, -0.2, 0.07)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_07", 0, -0.2, 0.07)
    else
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_01", 0, 0.2, 0.07)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_02", 0, 0.2, 0.07)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_03", 0, 0.2, 0.07)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_04", 0, 0.2, 0.07)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_05", 0, 0.2, 0.07)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_06", 0, 0.2, 0.07)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Finish_07", 0, 0.2, 0.07)
    end 
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1179)
  elseif _ARG_1_ == 78 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_JIN_SPECIAL3_FINAL_ATK2, -0.45, 0)
  elseif _ARG_1_ == 98 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  else
    MakeError()
  end
end
Player_Action[MID_JIN_SPECIAL3_FORCED] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(5)
    g_MyD3D:GetPlayer(_ARG_0_).x_Speed = 0
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then	
	g_MyD3D:GetPlayer(_ARG_0_):StartSpecial(0, 0, 0)	
    g_MyD3D:GetPlayer(_ARG_0_):Stop(g_MyD3D:GetPlayer(_ARG_0_):GetPos().x, g_MyD3D:GetPlayer(_ARG_0_):GetPos().y)
	else
	g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(180, 0, 0)	
	end 
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_01", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_02", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_03", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_04", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_05", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_06", 0, 0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_07", 0, 0.18, 0, 5)
    else
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_01", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_02", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_03", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_04", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_05", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_06", 0, -0.18, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special_Upgrade_Effect_07", 0, -0.18, 0, 5)
    end 
  elseif _ARG_1_ == 46 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_01", 0, 0.25, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_02", 0, 0.25, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_03", 0, 0.25, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_04", 0, 0.25, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_05", 0, 0.25, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_06", 0, 0.25, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_07", 0, 0.25, 0.14, 5)
    else
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_01", 0, -0.25, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_02", 0, -0.25, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_03", 0, -0.25, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_04", 0, -0.25, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_05", 0, -0.25, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_06", 0, -0.25, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_special3_Upgrade_Start_07", 0, -0.25, 0.14, 5)
    end 
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL3_BURNNING_ATK1, 0)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1180)
  elseif _ARG_1_ == 53 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL3_BURNNING_BALL_EFFECT, 0)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL3_BURNNING_ATK1, 0)
  elseif _ARG_1_ == 60 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL3_BURNNING_ATK1, 0)
  elseif _ARG_1_ == 67 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL3_BURNNING_ATK1, 0)
  elseif _ARG_1_ == 74 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL3_BURNNING_ATK1, 0)
  elseif _ARG_1_ == 81 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL3_BURNNING_ATK1, 0)
  elseif _ARG_1_ == 82 then
    g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_JIN_SPECIAL3_FORCED2)
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  else
    MakeError()
  end
end
Player_Action[MID_JIN_SPECIAL3_FORCED2] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(5)
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then		
	g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(0, 0, 0)
    g_MyD3D:GetPlayer(_ARG_0_):Stop(g_MyD3D:GetPlayer(_ARG_0_):GetPos().x, g_MyD3D:GetPlayer(_ARG_0_):GetPos().y)
	end 
  elseif _ARG_1_ == 30 then
    g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_JIN_SPECIAL3_FORCED3)
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  else
    MakeError()
  end
end
Player_Action[MID_JIN_SPECIAL3_FORCED3] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then	  
	g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(180, 0, 0)
    g_MyD3D:GetPlayer(_ARG_0_):Stop(g_MyD3D:GetPlayer(_ARG_0_):GetPos().x, g_MyD3D:GetPlayer(_ARG_0_):GetPos().y)
	end 
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
  elseif _ARG_1_ == 1 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPECIAL3_BURNNING_FINAL_ATK1, 0)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1190)
  elseif _ARG_1_ == 4 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special3_Upgrade_Start_01", 0, 0.18, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special3_Upgrade_Start_02", 0, 0.18, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special3_Upgrade_Start_03", 0, 0.18, 0.07, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special3_Upgrade_Start_04", 0, 0.18, 0.07, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special3_Upgrade_Start_05", 0, 0.18, 0.14, 5)
    else
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special3_Upgrade_Start_01", 0, -0.18, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special3_Upgrade_Start_02", 0, -0.18, 0.14, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special3_Upgrade_Start_03", 0, -0.18, 0.07, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special3_Upgrade_Start_04", 0, -0.18, 0.07, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_special3_Upgrade_Start_05", 0, -0.18, 0.14, 5)
    end 
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1181)
  elseif _ARG_1_ == 8 then
    g_kCamera:SetEarthQuake(20)
  elseif _ARG_1_ == 20 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1205)
  elseif _ARG_1_ == 44 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  else
    MakeError()
  end
end
Player_Action[MID_JIN_CATCH] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bOffAllEffect = true
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
    g_MyD3D:GetPlayer(_ARG_0_):Catched()
  elseif _ARG_1_ == 1 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(70)
  elseif _ARG_1_ == 39 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_01", 0, 0.12, 0.1, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, 0.12, 0.1, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, 0.12, 0.1, 5)
    else
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_01", 0, -0.12, 0.1, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, -0.12, 0.1, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, -0.12, 0.1, 5)
    end 
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1143)
  elseif _ARG_1_ == 73 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  else
    MakeError()
  end
end
Player_Action[MID_JIN_CATCHED] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
  elseif _ARG_1_ == 49 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(49)
  elseif _ARG_1_ == 50 then
    g_MyD3D:GetPlayer(_ARG_0_):CatchDamage(-0.32)
  elseif _ARG_1_ == 62 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
    g_MyD3D:GetPlayer(_ARG_0_):Direct_Motion_Input(MID_COMMON_DOWN_AND_STANDUP)
  else
    MakeError()
  end
end
Player_Action[MID_JIN_STAND_UP_ATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):Ah_Sound(5)
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
  elseif _ARG_1_ == 26 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_STAND_UP_ATK2, 0)
  elseif _ARG_1_ == 42 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_STAND_UP_ATK, 0)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special2_Upgrade_Foot_01", 0, 0, 0.035)
  elseif _ARG_1_ == 74 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  else
    MakeError()
  end
end
Player_Action[MID_JIN_FATAL] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 8 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsFatalGameMode() == false then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1194, 0, true)
    end
  else
    MakeError()
  end
end
Player_Action[MID_JIN_JOKE] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 7 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1201 + math.random(0, 1))
  elseif _ARG_1_ >= 8 and _ARG_1_ <= 99 then
    if g_MyD3D:IsMyTeam(_ARG_0_) == false then
      g_MyD3D:GetPlayer(_ARG_0_):ChangeAllCharacterMP(-0.0035)
    end
  else
    MakeError()
  end
end
Player_Action[MID_JIN_START] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1197 + math.random(0, 1))
  else
    MakeError()
  end
end
Player_Action[MID_JIN_WINPOS] = function(_ARG_0_, _ARG_1_)
  g_MyD3D:GetPlayer(_ARG_0_):SetIsRight(true)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1195 + math.random(0, 1))
  elseif _ARG_1_ == 1 then
    g_kCamera:SetZoomViewMode(0)
  else
    MakeError()
  end
end
Player_Action[MID_JIN_ARROWDEF_ON_GROUND] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(16, 0)
  elseif _ARG_1_ == 1 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(12)
  else
    MakeError()
  end
end
Player_Action[MID_JIN_ARROWDEF_IN_SKY] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(16, 0)
  elseif _ARG_1_ == 1 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(12)
  else
    MakeError()
  end
end
Player_Action[MID_JIN_ATK1] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 and g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_JIN_CHASE_KICK) then
    g_MyD3D:GetPlayer(_ARG_0_):ClearMagicEffect(EGC_EFFECT_JIN_CHASE_KICK)
    g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_JIN1_CHASE_KICK)
  end
  if _ARG_1_ == 9 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1139)
  elseif _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1185)
    g_kCamera:SetEarthQuake(3)
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN1_RENEW_JIN_ATK1)
    else
      g_MyD3D:GetPlayer(_ARG_0_):StartAttack(4.5, PAT_SWORD, PAR_BIG_DAMAGE_NODOWN)
    end
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_SKILL_JIN_KYUHWA) then
      if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then
        g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN1_RENEW_JIN_ATK1)
      else
        g_MyD3D:GetPlayer(_ARG_0_):StartAttack(4.5, PAT_SWORD, PAR_BIG_DAMAGE_NODOWN)
      end
    end
    g_MyD3D:GetPlayer(_ARG_0_):SetAttackProperty(ATTACKTYPE_NORMAL, ATTACKDIR_UP, 0.005, 0)
    g_MyD3D:GetPlayer(_ARG_0_):SetAttackInfo(0, 0, -6)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Combo_Hit_01", 0, -0.15, -0.03)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Combo_Hit_02", 0, -0.15, -0.03)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Combo_01", 0, -0.13, 0.03, 0.5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Combo_02", 0, -0.1, 0.03, 0.5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Combo_Hit_01_R", 0, 0.15, -0.03)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Combo_Hit_02_R", 0, 0.15, -0.03)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Combo_01_R", 0, 0.13, 0.03, 0.5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Renew_Jin01_Combo_02_R", 0, 0.1, 0.03, 0.5)
    end
  elseif _ARG_1_ == 14 then
    g_MyD3D:GetPlayer(_ARG_0_):EndAttack()
  elseif _ARG_1_ >= 15 then
    if g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count == 255 then
      g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(1592)
    end
  else
    MakeError()
  end
end
Damage[DT_JIN1_RENEW_JIN_ATK1] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.18,
  SCALE_Y_PER_X = 0.7,
  START_LOCATE_X = 0.15,
  START_LOCATE_Y = 0.02,
  DAMAGE_XSPEED = 0,
  DAMAGETO_PLAYER = -13.5,
  DAMAGETO_MONSTER = -4.752,
  DAMAGE_MOTION = MID_COMMON_SMALLDAMAGE,
  DAMAGE_FLAG = DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT + DA_TRACE_CREATOR + DA_HIT_EFFECT + DA_REVERSE_DIRECTION + DA_PHYSICAL + DA_PHYSICAL_REACTION,
  MOTION_TRACE = TRUE,
  TRACE_POS = EPT_BODY_CENTER,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_DOWN,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0,
  DAMAGE_SOUND = 1140,
  SLOW_COUNT = 0
}
Player_Action[MID_JIN_ATK2] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 7 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_ATK1_1, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_SKILL_JIN_KYUHWA) then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_ATK1_1, 0)
    end
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Combo_Hit_03", 0, 0.02, 0)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Combo_Hit_04", 0, -0.02, 0)
    end
  elseif _ARG_1_ == 17 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1138)
  elseif _ARG_1_ == 18 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1186)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_ATK1_2, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_SKILL_JIN_KYUHWA) then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_ATK1_2, 0)
    end
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Combo_Hit_04", 0, 0.02, 0)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Combo_Hit_03", 0, -0.02, 0)
    end
  elseif _ARG_1_ >= 27 then
    if g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count == 255 then
      g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(1593)
    end
  else
    MakeError()
  end
end
Player_Action[MID_JIN_ATK3] = function(_ARG_0_, _ARG_1_)
	if _ARG_1_ == 2 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_Critical", 0, 0.11, 0.006, 0.15)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_Critical", 0, -0.11, 0.006, 0.15)
    end
  elseif _ARG_1_ == 4 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_ATK3_1, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_SKILL_JIN_KYUHWA) then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_ATK3_1, 0)
    end
  elseif _ARG_1_ == 7 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1137)
  elseif _ARG_1_ == 14 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_Critical", 0, 0.13, 0.009, 0.15)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin01_Special1_Critical", 0, -0.13, 0.009, 0.15)
    end
  elseif _ARG_1_ == 16 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_ATK3_2, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_SKILL_JIN_KYUHWA) then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_ATK3_2, 0)
    end
  elseif _ARG_1_ == 19 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1138)
  elseif _ARG_1_ == 20 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1187)
  elseif _ARG_1_ >= 22 then
    if g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count == 255 then
      g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(1594)
    end
  else
    MakeError()
  end
end
Player_Action[MID_JIN_ATK4] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 4 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_ATK4, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_SKILL_JIN_KYUHWA) then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_ATK4, 0)
    end
  elseif _ARG_1_ == 11 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Combo_Hit_05", 0, 0, -0.15)
  elseif _ARG_1_ == 13 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1138)
  elseif _ARG_1_ == 14 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1188)
  elseif _ARG_1_ >= 18 then
    if g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count == 255 then
      g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(1595)
    end
  else
    MakeError()
  end
end
Player_Action[MID_JIN_ATK5] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 9 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1137)
  elseif _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1189)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_ATK5, 0)
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_SKILL_JIN_KYUHWA) then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_ATK5, 0)
    end
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      xPos = 0.12
    else
      xPos = -0.12
    end
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_01", 0, xPos, 0.03, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, xPos, 0.03, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, xPos, 0.03, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_04", 0, xPos, 0.03, 5)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Combo_Hit_01", 0, -0.1, -0.03, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Combo_Hit_02", 0, -0.1, -0.03, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Combo_Hit_01_R", 0, 0.1, -0.03, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Combo_Hit_02_R", 0, 0.1, -0.03, 5)
    end
  else
    MakeError()
  end
end
Player_Action[MID_JIN_DRAGON_KICK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).x_Speed = 0
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_DRAGON_KICK_ATK1, 0)
  elseif _ARG_1_ == 5 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePosWithTrace("Jin1_Dragon_Kick_01", 0, 0, 0, 0.03, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePosWithTrace("Jin1_Dragon_Kick_01_R", 0, 0, 0, 0.03, 5)
    end
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0.03
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1150)
  elseif _ARG_1_ == 6 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_DRAGON_KICK_ATK2, 0)
  elseif _ARG_1_ == 15 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = false
  elseif _ARG_1_ == 34 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = true
  else
    MakeError()
  end
end
Player_Action[MID_JIN_TAG_ATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):ToggleExtraMesh("WEAPON", false)
  elseif _ARG_1_ == 1 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticle("tag_shadow02_type1", 0, 0)
  elseif _ARG_1_ == 7 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(337)
  else
    MakeError()
  end
end
Player_Action[MID_JIN_TAG_END] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsLocalPlayer() == true then
      g_kCamera:Follow(false)
    end
    g_MyD3D:GetPlayer(_ARG_0_):ToggleExtraMesh("WEAPON", false)
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = false
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
    if g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count == 255 then
      g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_JIN_TAG_ATK)
    end
  elseif _ARG_1_ == 1 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticle("tag_shadow02_type1", 0, 0)
  elseif _ARG_1_ == 3 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  elseif _ARG_1_ == 12 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = true
  else
    MakeError()
  end
end
Player_Action[MID_JIN_TAG_START] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsLocalPlayer() == true then
      g_kCamera:Follow(false)
    end
    g_MyD3D:GetPlayer(_ARG_0_):ToggleExtraMesh("WEAPON", false)
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = false
  elseif _ARG_1_ == 1 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticle("portal01_l_front", 0, 0)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticle("portal01_l_rear", 0, 0)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticle("portal01_r_front", 0, 0)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticle("portal01_r_rear", 0, 0)
    end
  elseif _ARG_1_ == 3 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticle("tag_shadow01_type1", 0, 0)
  elseif _ARG_1_ == 14 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = true
  else
    MakeError()
  end
end
Player_Action[MID_JIN_DASH_BURNNING_MODE] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 2 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(4)
  elseif _ARG_1_ == 3 then
    g_MyD3D:GetPlayer(_ARG_0_):EffectDust()
  elseif _ARG_1_ == 12 then
    g_MyD3D:GetPlayer(_ARG_0_):Run()
  else
    MakeError()
  end
end
local playerTarget = -1
local curTarget = -1
Player_Action[MID_JIN_UNIQUE_HANDWIND] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
      playerTarget = g_MyD3D:GetPlayer(_ARG_0_):GetPrevDamageHitWho(DT_JIN_UNIQUE_HANDWIND_ATK2)
      playerTarget = nil
  elseif _ARG_1_ == 10 then
    if g_MyD3D:GetPlayer(_ARG_0_).m_bIsBurnningMode == false and g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_JIN1_SPECIAL4_BUFF) == false then
      g_MyD3D:GetPlayer(_ARG_0_):CountBP(-0.8)
      g_MyD3D:GetPlayer(_ARG_0_).m_fBurnningElapsedTime = 0
    end
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_UNIQUE_HANDWIND_ATK1, 0)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_UNIQUE_HANDWIND_ATK1_R, 0)
    end
  elseif _ARG_1_ == 15 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin_Hadoken_Start_01", 0, 0, 0)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin_Hadoken_Start_02", 0, 0, 0)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin_Hadoken_Start_01", 0, 0, 0)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin_Hadoken_Start_02_R", 0, 0, 0)
    end
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1155)
  elseif _ARG_1_ == 16 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1199)
  elseif _ARG_1_ == 17 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1156)
  else
    MakeError()
  end
  if g_MyD3D:GetPlayer(_ARG_0_):IsLocalPlayer() and g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
    playerTarget = nil
    playerTarget = g_MyD3D:GetPlayer(_ARG_0_):GetPrevDamageHitWho(DT_JIN_UNIQUE_HANDWIND_ATK2)
    if playerTarget ~= -1 then
      g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_JIN_CHASE_KICK, 3)
      curTarget = playerTarget
      playerTarget = -1
    end
  end
end

Damage[DT_JIN_UNIQUE_HANDWIND_ATK1] = {
  START_LIFE = 20,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.1,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0.15,
  SPEED_X = 0.042,
  DAMAGE_XSPEED = -0.008,
  DAMAGETO_PLAYER = -10.5,
  DAMAGETO_MONSTER = -13.8,
  DAMAGE_MOTION = MID_COMMON_SMALLDAMAGE,
  PARTICLE_TRACE = TRUE,
  ADDNODIRECTION = TRUE,
  DAMAGE_FLAG = DA_ONETIME_DAMAGE + DA_SHOW_DAMAGE_EFFECT + DA_REVERSE_DIRECTION,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0,
  DAMAGE_SOUND = 1157,
  CHILD_PARTICLE = {
    {
      "Jin_Hadoken_01",
      0,
      0,
      TRUE,
      0,
      0,
      19
    },
    {
      "Jin_Hadoken_02",
      0,
      0,
      TRUE,
      0,
      0,
      19
    },
    {
      "Jin_Hadoken_03",
      0,
      0,
      TRUE,
      0,
      0,
      19
    },
    {
      "Jin_Hadoken_04",
      0,
      0,
      TRUE,
      0,
      0,
      19
    },
    {
      "Jin1_Special2_Upgrade_Hit_02",
      0,
      0,
      FALSE,
      0,
      0,
      4
    },
    {
      "Jin01_Hado_Boom_02",
      0,
      0,
      FALSE,
      0,
      0,
      4
    },
    {
      "Jin1_Hit_01",
      0,
      0,
      FALSE,
      0,
      0,
      4
    },
    {
      "Jin1_Hit_02",
      0,
      0,
      FALSE,
      0,
      0,
      4
    },
    {
      "Jin1_Hit_05",
      0,
      0,
      FALSE,
      0,
      0,
      4
    },
    {
      "Jin01_Hado_Boom_01",
      0,
      0,
      FALSE,
      0,
      0,
      4
    }
  },
  SLOW_COUNT = 0,
  AUTO_DAMAGE = {
    {
      DT_JIN_UNIQUE_HANDWIND_ATK2,
      0,
      0,
      0,
      FALSE,
      CRASH_AUTO_DAMAGE
    }
  }
}
Damage[DT_JIN_UNIQUE_HANDWIND_ATK2] = {
  PARENT = 1485,
  START_LIFE = 5,
  START_SCALE_X = 0.15,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0.12,
  SPEED_X = 0,
  DAMAGE_XSPEED = 0,
  DAMAGETO_PLAYER = -10.5,
  DAMAGETO_MONSTER = -9.2,
  DAMAGE_FLAG = DA_ONETIME_DAMAGE + DA_SHOW_DAMAGE_EFFECT + DA_REVERSE_DIRECTION + DA_HIT_EFFECT,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_NORMAL,
  PUSH_X_TO_MONSTER = 0.02,
  PUSH_Y_TO_MONSTER = 0.02,
  AUTO_DAMAGE = {}
}
Damage[DT_JIN_UNIQUE_HANDWIND_ATK1_R] = {
  PARENT = 1485,
  DAMAGE_SOUND = 1157,
  CHILD_PARTICLE = {
    {
      "Jin_Hadoken_01_R",
      7,
      7,
      TRUE,
      0,
      0,
      19
    },
    {
      "Jin_Hadoken_02_R",
      10,
      10,
      TRUE,
      0,
      0,
      19
    },
    {
      "Jin_Hadoken_03_R",
      10,
      10,
      TRUE,
      0,
      0,
      19
    },
    {
      "Jin_Hadoken_04_R",
      7,
      7,
      TRUE,
      0,
      0,
      19
    },
    {
      "Jin1_Special2_Upgrade_Hit_02",
      0,
      0,
      FALSE,
      0,
      0,
      4
    },
    {
      "Jin01_Hado_Boom_02",
      0,
      0,
      FALSE,
      0,
      0,
      4
    },
    {
      "Jin1_Hit_01",
      0,
      0,
      FALSE,
      0,
      0,
      4
    },
    {
      "Jin1_Hit_02",
      0,
      0,
      FALSE,
      0,
      0,
      4
    },
    {
      "Jin1_Hit_05",
      0,
      0,
      FALSE,
      0,
      0,
      4
    },
    {
      "Jin01_Hado_Boom_01",
      0,
      0,
      FALSE,
      0,
      0,
      4
    }
  },
  AUTO_DAMAGE = {
    {
      DT_JIN_UNIQUE_HANDWIND_ATK2,
      0,
      0,
      1,
      FALSE,
      CRASH_AUTO_DAMAGE
    }
  }
}
Player_Action[MID_JIN1_CHASE_KICK] = function(_ARG_0_, _ARG_1_)
    if curTarget ~= -1 then
      mPos = g_MyD3D:GetPlayer(_ARG_0_):GetPos()
      tPos = g_MyD3D:GetPlayer(curTarget):GetPos()
      if tPos.x > mPos.x then
        g_MyD3D:GetPlayer(_ARG_0_):SetIsRight(true)
      else
        g_MyD3D:GetPlayer(_ARG_0_):SetIsRight(false)
      end
      if getPlayerDistance(_ARG_0_, curTarget) > 0.2 then
        g_MyD3D:GetPlayer(_ARG_0_).NoCheckContact = 2
        g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = false 
        if diff(mPos.x, tPos.x) >= 0.19 then
          g_MyD3D:GetPlayer(_ARG_0_):SetDirectMove(interpolatePos(mPos.x, tPos.x, 0.16), interpolatePos(mPos.y, tPos.y, 0.12))
        else
          g_MyD3D:GetPlayer(_ARG_0_):SetDirectMove(mPos.x, interpolatePos(mPos.y, tPos.y, 0.12))
        end
        if _ARG_1_ >= 11 then
          g_MyD3D:GetPlayer(_ARG_0_):SetFrame(10)
        end
      else
        curTarget = -1
      end
    end
  if _ARG_1_ == 0 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin01_Lowkick_R", 0, 0.03, -0.13, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin01_Lowkick", 0, -0.03, -0.13, 5)
    end
  elseif _ARG_1_ == 2 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Amy01_Hectopascal_Kick_LV2_03", 0, -0.5, 0, 0.05)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Amy01_Hectopascal_Kick_LV2_03_R", 0, 0.5, 0, 0.05)
    end
  elseif _ARG_1_ == 6 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN1_CHASE_KICK_L)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Amy01_Hectopascal_Kick_LV2_03", 0, -0.5, 0, 0.05)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin2_Special1_Kick_04", 0, 0.02, 0, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN1_CHASE_KICK_R)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Amy01_Hectopascal_Kick_LV2_03_R", 0, 0.5, 0, 0.05)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin2_Special1_Kick_04_R", 0, -0.02, 0, 5)
    end
  end
end
Damage[DT_JIN1_CHASE_KICK_L] = {--TEXTURE = 75, ISBLENDONE = 1, SRC_BLENDMODE = D3DBLEND_ONE,
  PARENT = 1483,
  START_LIFE = 999,
  START_SCALE_X = 0.24,
  SCALE_Y_PER_X = 0.7,
  START_LOCATE_X = 0.07,
  START_LOCATE_Y = 0.2,
  DAMAGE_XSPEED = -0.005,
  DAMAGE_YSPEED = 0.005,
  DAMAGETO_PLAYER = -10.5,
  DAMAGETO_MONSTER = -8.625,
  DAMAGE_MOTION = MID_COMMON_BIGDAMAGE,
  DAMAGE_FLAG = DA_TRACE_CREATOR + DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT + DA_REVERSE_DIRECTION + DA_PHYSICAL,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = 0.024,
  PUSH_Y_TO_MONSTER = 0,
  SLOW_COUNT = 0,
  PLUS_DELAY = 2,
  ONLY_MOTION_DAMAGE = {
    TRUE_TO_LIFE = 0,
    FALSE_TO_LIFE = 0,
    OPERATION = 1,
    CONDITION = {
      {MID_JIN1_CHASE_KICK, TRUE}
    }
  }
}
Damage[DT_JIN1_CHASE_KICK_R] = {
  PARENT = DT_JIN1_CHASE_KICK_L
}
Player_Action[MID_JIN_UNIQUE_HANDWIND_BP_EMPTY] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 15 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin_Hadoken_Start_02", 0, 0, 0)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin_Hadoken_Start_02_R", 0, 0, 0)
    end
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1155)
  elseif _ARG_1_ == 16 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1199)
  elseif _ARG_1_ == 17 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin_Hadoken_Nogauge_01", 0, 0.18, 0.02)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin_Hadoken_Nogauge_01", 0, -0.18, 0.02)
    end
  elseif _ARG_1_ == 20 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin_Hadoken_Nogauge_Emoticon01", 0, 0.1, 0.15, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Amy1_Emoticon01", 0, 0.1, 0.15, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin_Hadoken_Nogauge_Emoticon01_R", 0, -0.1, 0.15, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Amy1_Emoticon01_R", 0, -0.1, 0.15, 5)
    end
  else
    MakeError()
  end
end
Player_Action[MID_JIN_UNIQUE_SPINKICK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    if g_MyD3D:GetPlayer(_ARG_0_).m_bIsBurnningMode == false and g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_JIN1_SPECIAL4_BUFF) == false then
      g_MyD3D:GetPlayer(_ARG_0_):CountBP(-0.6)
      g_MyD3D:GetPlayer(_ARG_0_).m_fBurnningElapsedTime = 0
    end
  elseif _ARG_1_ == 5 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPINKICK_ATK1, 0)
    g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_CHAR_SKILL_SUPER_ARMOR, 9999)
  elseif _ARG_1_ == 8 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1158)
  elseif _ARG_1_ == 9 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1210)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Sunpung_01", 0, 0, 0)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Sunpung_01_R", 0, 0, 0)
    end
  elseif _ARG_1_ == 16 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPINKICK_ATK2, 0)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1158)
  elseif _ARG_1_ == 18 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Sunpung_01", 0, 0, 0)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Sunpung_01_R", 0, 0, 0)
    end
  elseif _ARG_1_ == 28 then
    g_MyD3D:GetPlayer(_ARG_0_):ClearMagicEffect(EGC_EFFECT_CHAR_SKILL_SUPER_ARMOR)
  elseif _ARG_1_ == 32 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_SPINKICK_ATK3, 0)
  elseif _ARG_1_ == 38 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1159)
  elseif _ARG_1_ == 40 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Sunpung_01", 0, 0, 0)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Sunpung_01_R", 0, 0, 0)
    end
  else
    MakeError()
  end
end
Player_Action[MID_JIN_UNIQUE_EVASION] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = false
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
  elseif _ARG_1_ == 4 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1152)
  elseif _ARG_1_ == 6 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Avoid_01", 0, -0.22, -0.04)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Avoid_02", 0, -0.22, -0.04)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Avoid_01", 0, 0.22, -0.04)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Jin1_Avoid_02", 0, 0.22, -0.04)
    end
  elseif _ARG_1_ == 23 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = true
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  elseif _ARG_1_ == 24 then
    g_MyD3D:GetPlayer(_ARG_0_):SetIsRight(not g_MyD3D:GetPlayer(_ARG_0_):GetIsRight())
  else
    MakeError()
  end
end

Player_Action[MID_JIN_UNIQUE_HUJIN] = function(_ARG_0_, _ARG_1_)
	if _ARG_1_ == 5 then
		if g_MyD3D:GetPlayer(_ARG_0_).m_bIsBurnningMode == false and g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_JIN1_SPECIAL4_BUFF) == false then
			g_MyD3D:GetPlayer(_ARG_0_):CountBP(-0.6)
			g_MyD3D:GetPlayer(_ARG_0_).m_fBurnningElapsedTime = 0
		end
	elseif _ARG_1_ == 9 then
		if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Hujin_01", 0, 0, -0.05, 5)
		else
			g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Hujin_01_R", 0, 0, -0.05, 5)
		end
		g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1153)
	elseif _ARG_1_ == 10 then
		g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN_UNIQUE_HUJIN_ATK, 0)
	elseif _ARG_1_ == 11 then
		if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
		g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_01", 0, 0.1, 0.04, 5)
		g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, 0.1, 0.04, 5)
		g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, 0.1, 0.04, 5)
		else
		g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_01", 0, -0.1, 0.04, 5)
		g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_02", 0, -0.1, 0.04, 5)
		g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin1_Special1_Upgrade_03", 0, -0.1, 0.04, 5)
		end 
	elseif _ARG_1_ == 14 then
		g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1200)
	else
		MakeError()
	end
end
Player_Action[MID_JIN1_SPECIAL4] = function(_ARG_0_, _ARG_1_)
  g_MyD3D:GetPlayer(_ARG_0_).x_Speed = 0
  g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0
  g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = false
  if _ARG_1_ == 0 then
  	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then
     g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(180, 0, 0)
	end 
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
    g_MyD3D:GetPlayer(_ARG_0_).m_bNoCrashCheck = true
  elseif _ARG_1_ == 20 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73012)
  elseif _ARG_1_ == 25 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73014)
    g_kCamera:SetEarthQuake(19)
    g_MyD3D:GetPlayer(_ARG_0_):StartAfterImage()
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_01", 0, 0.1, -0.1, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_02", 0, 0.1, -0.1, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_03", 0, 0.1, -0.1, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_04", 0, 0.1, -0.1, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_06", 0, 0.1, -0.1, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_01", 0, -0.1, -0.1, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_02", 0, -0.1, -0.1, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_03", 0, -0.1, -0.1, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_04", 0, -0.1, -0.1, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin1_Special1_Finish_06", 0, -0.1, -0.1, 5)
    end
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN1_SPECIAL4_DMG1)
  elseif _ARG_1_ == 35 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(800401)
  elseif _ARG_1_ == 50 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73015)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_01", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_02", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_03", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_04", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_05", 0, 0, 0, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_01_R", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_02_R", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_03_R", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_04_R", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_05_R", 0, 0, 0, 5)
    end
  elseif _ARG_1_ == 52 then
    g_kCamera:SetEarthQuake(17)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_01", 0, 0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_02", 0, 0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_03", 0, 0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Boom", 0, 0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_05", 0, 0.35, 0.2, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_01", 0, -0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_02", 0, -0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_03", 0, -0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Boom", 0, -0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_05", 0, -0.35, 0.2, 5)
    end
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN1_SPECIAL4_DMG2)
  elseif _ARG_1_ == 58 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73015)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_01_R", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_02_R", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_03_R", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_04_R", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_05_R", 0, 0, 0, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_01", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_02", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_03", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_04", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_05", 0, 0, 0, 5)
    end
  elseif _ARG_1_ == 60 then
    g_kCamera:SetEarthQuake(17)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_01", 0, -0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_02", 0, -0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_03", 0, -0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Boom", 0, -0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_05", 0, -0.35, 0.2, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_01", 0, 0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_02", 0, 0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_03", 0, 0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Boom", 0, 0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_05", 0, 0.35, 0.2, 5)
    end
  elseif _ARG_1_ == 66 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73015)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_01", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_02", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_03", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_04", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_05", 0, 0, 0, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_01_R", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_02_R", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_03_R", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_04_R", 0, 0, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_05_R", 0, 0, 0, 5)
    end
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN1_SPECIAL4_DMG3)
  elseif _ARG_1_ == 68 then
    g_kCamera:SetEarthQuake(17)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_01", 0, 0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_02", 0, 0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_03", 0, 0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Boom", 0, 0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_05", 0, 0.35, 0.2, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_01", 0, -0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_02", 0, -0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_03", 0, -0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Boom", 0, -0.35, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_05", 0, -0.35, 0.2, 5)
    end
  elseif _ARG_1_ == 74 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73015)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_01_R1", 0, 0.5, 0.13, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_02_R1", 0, 0.5, 0.13, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_03_R", 0, 0.5, 0.13, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_04_R", 0, 0.5, 0.13, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_05_R", 0, 0.5, 0.13, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_01_1", 0, -0.5, 0.13, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_02_1", 0, -0.5, 0.13, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_03_R", 0, -0.5, 0.13, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_04_R", 0, -0.5, 0.13, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Slash_05_R", 0, -0.5, 0.13, 5)
    end
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN1_SPECIAL4_DMG4)
  elseif _ARG_1_ == 76 then
    g_kCamera:SetEarthQuake(17)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_01", 0, 0.05, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_02", 0, 0.05, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_03", 0, 0.05, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Boom", 0, 0.05, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_05", 0, 0.05, 0.2, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_01", 0, -0.05, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_02", 0, -0.05, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_03", 0, -0.05, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Boom", 0, -0.05, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Las01_Raven_Walker_Boom_05", 0, -0.05, 0.2, 5)
    end
  elseif _ARG_1_ == 80 then
   	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
		SSS((g_MyD3D:GetPlayer(_ARG_0_)))
	end 
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Under", 0, 0, -0.1, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin01_10Ja_02", 0, 0.03, 0.25, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin01_SP2-1_Charge_01", 0, 0, 0.33, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin01_SP2-1_Charge_02", 0, 0, 0.33, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin01_SP2-1_Charge_03", 0, 0, 0.33, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin01_SP2-1_Charge_04", 0, 0, 0.33, 5)
  elseif _ARG_1_ == 100 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73020)
    g_kCamera:SetEarthQuake(21)
    g_MyD3D:GetPlayer(_ARG_0_):EndAfterImage()
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin2_special3_Finisher_01", 0, 0, -0.2, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin2_special3_Finisher_02", 0, 0, -0.2, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin2_special3_Finisher_03", 0, 0, -0.2, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin2_special3_Finisher_04", 0, 0, -0.2, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin2_special3_Finisher_05", 0, 0, -0.2, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin2_special3_Upgrade_Boom_05", 0, 0, -0.27, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin4_special3_Boom_01", 0, 0, -0.26, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin2_special3_Finisher_07", 0, 0, -0.2, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin2_special3_Finisher_Upgrade_05", 0, 0, -0.2, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin4_special3_Boom_06", 0, 0, -0.25, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Ryan2_Boom_16", 0, 0, -0.15, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Elesis01_Tornado_Blade_03", 0, 0, -0.2, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Boom_01", 0, 0, -0.3, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("4th_Jin1_Boom_02", 0, 0, -0.2, 5)
    g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_JIN1_SPECIAL4_BUFF, 15)
  elseif _ARG_1_ == 103 then
    g_kCamera:SetEarthQuake(20)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_JIN1_SPECIAL4_DMG5)
  elseif _ARG_1_ == 105 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
      g_MyD3D:GetPlayer(_ARG_0_):OnReverseGravity(6, 0.25, TRUE, 0.055, 1.5, 0, 0)
    else
      g_MyD3D:GetPlayer(_ARG_0_):OnReverseGravity(6, 0.189, TRUE, 0.035, 1.5, 0, 0)
    end
  elseif _ARG_1_ == 130 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
    g_MyD3D:GetPlayer(_ARG_0_).m_bNoCrashCheck = false
  else
    MakeError()
  end
end
Damage[DT_JIN1_SPECIAL4_DMG1] = {
  START_LIFE = 8,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.45,
  SCALE_Y_PER_X = 0.6,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0.23,
  DAMAGETO_PLAYER = -64.3,
  DAMAGETO_MONSTER = -57.75,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  DAMAGE_FLAG = DA_SHOW_DAMAGE_EFFECT + DA_CANCEL_JUMP_STATE + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE,
  DAMAGE_SOUND = 1244,
  IS_SPECIAL_ATTACK = TRUE,
  IS_TOTAL_RANGE = TRUE,
  NO_ALPHA_CHANGE = TRUE,
  DAMAGE_XSPEED = 0,
  DAMAGE_YSPEED = 0.03,
  PUSH_X_TO_MONSTER = 0,
  PUSH_Y_TO_MONSTER = 0.03
}
Damage[DT_JIN1_SPECIAL4_DMG2] = {
  START_LIFE = 5,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.75,
  SCALE_Y_PER_X = 0.25,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0.3,
  DAMAGETO_PLAYER = -53.6,
  DAMAGETO_MONSTER = -57.75,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  DAMAGE_FLAG = DA_SHOW_DAMAGE_EFFECT + DA_CANCEL_JUMP_STATE + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE,
  DAMAGE_SOUND = 1244,
  IS_SPECIAL_ATTACK = TRUE,
  IS_TOTAL_RANGE = TRUE,
  NO_ALPHA_CHANGE = TRUE,
  DAMAGE_XSPEED = 0.01,
  DAMAGE_YSPEED = 0.022,
  PUSH_X_TO_MONSTER = -0.01,
  PUSH_Y_TO_MONSTER = 0.025
}
Damage[DT_JIN1_SPECIAL4_DMG3] = {
  START_LIFE = 5,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.75,
  SCALE_Y_PER_X = 0.25,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0.5,
  DAMAGETO_PLAYER = -53.6,
  DAMAGETO_MONSTER = -57.75,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  DAMAGE_FLAG = DA_SHOW_DAMAGE_EFFECT + DA_CANCEL_JUMP_STATE + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE,
  DAMAGE_SOUND = 1244,
  IS_SPECIAL_ATTACK = TRUE,
  IS_TOTAL_RANGE = TRUE,
  NO_ALPHA_CHANGE = TRUE,
  DAMAGE_XSPEED = -0.01,
  DAMAGE_YSPEED = 0.022,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0.025
}
Damage[DT_JIN1_SPECIAL4_DMG4] = {
  START_LIFE = 5,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.75,
  SCALE_Y_PER_X = 0.25,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0.7,
  DAMAGETO_PLAYER = -53.6,
  DAMAGETO_MONSTER = -57.75,
  DAMAGE_MOTION = MID_COMMON_DAMAGED_UPPER_SPECIAL,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  DAMAGE_FLAG = DA_SHOW_DAMAGE_EFFECT + DA_CANCEL_JUMP_STATE + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE,
  DAMAGE_SOUND = 1244,
  IS_SPECIAL_ATTACK = TRUE,
  IS_TOTAL_RANGE = TRUE,
  NO_ALPHA_CHANGE = TRUE,
  DAMAGE_XSPEED = 0.01,
  DAMAGE_YSPEED = 0.022,
  PUSH_X_TO_MONSTER = -0.01,
  PUSH_Y_TO_MONSTER = 0.02
}
Damage[DT_JIN1_SPECIAL4_DMG5] = {
  START_LIFE = 8,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.4,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0.4,
  DAMAGETO_PLAYER = -78.6,
  DAMAGETO_MONSTER = -57.75,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_NORMAL,
  DAMAGE_FLAG = DA_PARTICLES + DA_HIT_LIGHT + DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT + DA_KILLING_DAMAGE + DA_DAMAGE_DIRECTION,
  DAMAGE_SOUND = 1244,
  IS_SPECIAL_ATTACK = TRUE,
  IS_TOTAL_RANGE = TRUE,
  NO_ALPHA_CHANGE = TRUE,
  DAMAGE_XSPEED = -0.08,
  DAMAGE_YSPEED = 0.04,
  PUSH_X_TO_MONSTER = 0.03,
  PUSH_Y_TO_MONSTER = 0.05
}
--Player_Action[MID_JIN1_LION] = function(_ARG_0_, _ARG_1_)
--  g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = false
--  if _ARG_1_ == 2 then
--    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(40053)
--    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_ASIN1_SPECIAL2_ATK_PLUS)
--    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Asin_Special2_Plus_01", 0.05, 0.15, 0.12, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Asin_Special2_Plus_02", 0.05, 0.15, 0.12, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Asin_Special2_Plus_03", 0.05, 0.15, 0.12, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Asin_Special2_Plus_05_R", 0.05, 0.15, 0.12, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Asin_Special2_Plus_06_R", 0.05, 0.15, 0.12, 0.5)
--      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Fighter_Lion_1_L", 0.05, 0.13, 0.05, 0.5)
--      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Fighter_Lion_2_L", 0.05, 0.13, 0.05, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Asin_Debuf_LV1_01", 0.05, 0, 0.04, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Asin_Debuf_LV1_04", 0.05, 0, 0.04, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Asin_Debuf_LV1_05", 0.05, 0, 0.04, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Asin_Debuf_LV1_06", 0.05, 0, 0.04, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Asin_Special1_01", 0.05, 0, -0.08, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Asin_Special1_04", 0.05, 0, -0.08, 0.5)
--    else
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Asin_Special2_Plus_01", 0.05, -0.15, 0.12, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Asin_Special2_Plus_02", 0.05, -0.15, 0.12, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Asin_Special2_Plus_03", 0.05, -0.15, 0.12, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Asin_Special2_Plus_05", 0.05, -0.15, 0.12, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Asin_Special2_Plus_06", 0.05, -0.15, 0.12, 0.5)
--      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Fighter_Lion_1_R", 0.05, -0.13, 0.05, 0.5)
--      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Fighter_Lion_2_R", 0.05, -0.13, 0.05, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Asin_Debuf_LV1_01_R", 0.05, 0, 0.04, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Asin_Debuf_LV1_04_R", 0.05, 0, 0.04, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Asin_Debuf_LV1_05_R", 0.05, 0, 0.04, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Asin_Debuf_LV1_06_R", 0.05, 0, 0.04, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Asin_Special1_01", 0.05, 0, -0.08, 0.5)
--      --g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Asin_Special1_04", 0.05, 0, -0.08, 0.5)
--    end
--  elseif _ARG_1_ == 2 or _ARG_1_ == 4 then
--    g_kCamera:SetEarthQuake(15)
--  else
--    MakeError()
--  end
--end
Player_Action[MID_JIN1_SPECIAL_STANCE] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 3 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73023)
  end
end

Damage[DT_JIN1_WALLKICK_TRACE_SMALL] = {
  START_LIFE = 55,
  START_SCALE_X = 0.2,
  SCALE_Y_PER_X = 0.5,
  START_LOCATE_X = -0.12,
  START_LOCATE_Y = 0.1,
  DAMAGE_FLAG = DA_TRACE_HITTED,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  AUTO_DAMAGE = {
    {
      DT_JIN1_WALLKICK_BOUND_SMALL,
      0,
      0,
      -1,
      TRUE,
      BOUNDARY_CRASH_AUTO_DAMAGE,
      -1,
      TRUE
    }
  },
  IS_TOTAL_RANGE = TRUE
}
Damage[DT_JIN1_WALLKICK_BOUND_SMALL] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.15,
  SCALE_Y_PER_X = 0.5,
  START_LOCATE_X = 0.1,
  START_LOCATE_Y = 0.05,
  DAMAGETO_PLAYER = 0,
  DAMAGETO_MONSTER = -0.1,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  DAMAGE_XSPEED = 0.020,
  DAMAGE_YSPEED = 0.012,
  DAMAGE_FLAG = DA_PARTICLES + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = -0.01,
  PUSH_Y_TO_MONSTER = 0.01,
  CHILD_PARTICLE = {
    {
      "Jin1_Hit_01",
      0,
      0,
      FALSE,
      0,
      -0.05
    },
    {
      "Jin1_Hit_02",
      0,
      0,
      FALSE,
      0,
      -0.05
    },
    {
      "Jin1_Hit_05",
      0,
      0,
      FALSE,
      0,
      -0.05
    }
  },
  TIME_SOUND = {
    {1140, 9}
  }
}

Damage[DT_JIN1_WALLKICK_TRACE_MEDIUM] = {
  START_LIFE = 55,
  START_SCALE_X = 0.2,
  SCALE_Y_PER_X = 0.5,
  START_LOCATE_X = -0.12,
  START_LOCATE_Y = 0.1,
  DAMAGE_FLAG = DA_TRACE_HITTED,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  AUTO_DAMAGE = {
    {
      DT_JIN1_WALLKICK_BOUND_MEDIUM,
      0,
      0,
      -1,
      TRUE,
      BOUNDARY_CRASH_AUTO_DAMAGE,
      -1,
      TRUE
    }
  },
  IS_TOTAL_RANGE = TRUE
}
Damage[DT_JIN1_WALLKICK_BOUND_MEDIUM] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.15,
  SCALE_Y_PER_X = 0.5,
  START_LOCATE_X = 0.1,
  START_LOCATE_Y = 0.05,
  DAMAGETO_PLAYER = 0,
  DAMAGETO_MONSTER = -0.1,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  DAMAGE_XSPEED = 0.020,
  DAMAGE_YSPEED = 0.024,
  DAMAGE_FLAG = DA_PARTICLES + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = -0.01,
  PUSH_Y_TO_MONSTER = 0.01,
  CHILD_PARTICLE = {
    {
      "Jin1_Hit_01",
      0,
      0,
      FALSE,
      0,
      -0.05
    },
    {
      "Jin1_Hit_02",
      0,
      0,
      FALSE,
      0,
      -0.05
    },
    {
      "Jin1_Hit_05",
      0,
      0,
      FALSE,
      0,
      -0.05
    }
  },
  TIME_SOUND = {
    {1140, 9}
  }
}

Damage[DT_JIN1_WALLKICK_TRACE_BIG] = {
  START_LIFE = 55,
  START_SCALE_X = 0.2,
  SCALE_Y_PER_X = 0.5,
  START_LOCATE_X = -0.12,
  START_LOCATE_Y = 0.1,
  DAMAGE_FLAG = DA_TRACE_HITTED,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  AUTO_DAMAGE = {
    {
      DT_JIN1_WALLKICK_BOUND_BIG,
      0,
      0,
      -1,
      TRUE,
      BOUNDARY_CRASH_AUTO_DAMAGE,
      -1,
      TRUE
    }
  },
  IS_TOTAL_RANGE = TRUE
}
Damage[DT_JIN1_WALLKICK_BOUND_BIG] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.15,
  SCALE_Y_PER_X = 0.5,
  START_LOCATE_X = 0.1,
  START_LOCATE_Y = 0.05,
  DAMAGETO_PLAYER = 0,
  DAMAGETO_MONSTER = -0.1,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  DAMAGE_XSPEED = 0.025,
  DAMAGE_YSPEED = 0.028,
  DAMAGE_FLAG = DA_PARTICLES + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = -0.01,
  PUSH_Y_TO_MONSTER = 0.01,
  CHILD_PARTICLE = {
    {
      "Jin1_Hit_01",
      0,
      0,
      FALSE,
      0,
      -0.05
    },
    {
      "Jin1_Hit_02",
      0,
      0,
      FALSE,
      0,
      -0.05
    },
    {
      "Jin1_Hit_05",
      0,
      0,
      FALSE,
      0,
      -0.05
    }
  },
  TIME_SOUND = {
    {1140, 9}
  }
}

Player_Action[MID_JIN1_ROLL] = function(_ARG_0_, _ARG_1_)
  g_MyD3D:GetPlayer(_ARG_0_).m_bNoCrashCheck = true
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
  elseif _ARG_1_ == 7 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1251)
  elseif _ARG_1_ == 20 then
    g_MyD3D:GetPlayer(_ARG_0_):SetIsRight(not g_MyD3D:GetPlayer(_ARG_0_):GetIsRight())
  elseif _ARG_1_ == 25 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
  else
    MakeError()
  end
end

Player_Action[MID_JIN1_BACK_EVASION] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1251)
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = false
  elseif _ARG_1_ == 5 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Jin2_Special1_Jump_01", 0, 0, -0.12, 0)
  end
end

function interpolatePos(start, ending, difference)
  if (start < ending) then
      return math.min(start + difference, ending)
  else
      return math.max(start - difference, ending)
  end
end

function diff(value1, value2)
  return math.max(math.abs(value1), math.abs(value2)) - math.min(math.abs(value1), math.abs(value2))
end

function getPlayerDistance(player, target)
  local x1 = g_MyD3D:GetPlayer(player):GetPos().x
  local y1 = g_MyD3D:GetPlayer(player):GetPos().y
  local x2 = g_MyD3D:GetPlayer(target):GetPos().x
  local y2 = g_MyD3D:GetPlayer(target):GetPos().y
  local dx = x1 - x2
  local dy = y1 - y2
  return math.sqrt ( dx * dx + dy * dy )
end