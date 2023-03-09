Player_Action[MID_MARI3_INSTALLATION_DOWN] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
      g_MyD3D:GetPlayer(_ARG_0_):DecreaseMP(-0.1)
    end
  elseif _ARG_1_ == 13 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92010)
    g_MyD3D:GetPlayer(_ARG_0_):ClearChildMeshOneTimeMotion("WEAPON")
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_MARI1_PORTAL_CREATOR, 0, 0.2)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(91011)
    g_MyD3D:GetPlayer(_ARG_0_):DecreaseMP(-1)
  end
end
Player_Action[MID_MARI3_INSTALLATION_RIGHT] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
      g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI3_INSTALLATION_RIGHT_COOLTIME, 10)
      g_MyD3D:GetPlayer(_ARG_0_):DecreaseMP(-0.1)
    end
  elseif _ARG_1_ == 5 then
    g_MyD3D:GetPlayer(_ARG_0_):ClearChildMeshOneTimeMotion("WEAPON")
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_MARI3_MISSILE_TURRET, 0, 0.2)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_MARI3_MISSILE_TURRET_MON, 0, 0.2)
    end
  elseif _ARG_1_ == 13 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92010)
  end
end
Player_Action[MID_MARI3_INSTALLATION_LEFT] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
      g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI3_INSTALLATION_LEFT_COOLTIME, 10)
      g_MyD3D:GetPlayer(_ARG_0_):DecreaseMP(-0.1)
    end
  elseif _ARG_1_ == 5 then
    g_MyD3D:GetPlayer(_ARG_0_):ClearChildMeshOneTimeMotion("WEAPON")
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_MARI3_BUILD_MANA_DEVICE, 0, 0)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_MARI3_BUILD_MANA_DEVICE_MON, 0, 0)
    end
    g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI3_BUILD_LIMIT_TIME, 10)
  elseif _ARG_1_ == 13 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92010)
  end
end
Player_Action[MID_MARI3_FATAL] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 1 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsFatalGameMode() == false then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySoundForCharIndex("90107", 0, true)
    end
  elseif _ARG_1_ == 82 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(27, 0)
  else
    MakeError()
  end
end
Player_Action[MID_MARI3_DASHATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 4 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bDrawSlashRight = true
  elseif _ARG_1_ == 7 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_DASH_ATK)
  elseif _ARG_1_ == 9 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92006)
  elseif _ARG_1_ == 30 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bDrawSlashRight = false
  end
end
Damage[DT_MARI3_DASH_ATK] = {
  START_LIFE = 5,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.2,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0.15,
  START_LOCATE_Y = 0.2,
  DAMAGE_XSPEED = -0.015,
  DAMAGE_YSPEED = 0.023,
  DAMAGETO_PLAYER = -21,
  DAMAGETO_MONSTER = -13.377,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  DAMAGE_FLAG = DA_PARTICLES + DA_HIT_LIGHT + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT + DA_TRACE_CREATOR,
  DAMAGE_SOUND = 92025,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0.035
}
Player_Action[MID_MARI3_JSJ_DASH_ATK] = function(_ARG_0_, _ARG_1_)
  local Player = g_MyD3D:GetPlayer(_ARG_0_)
  if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
    if _ARG_1_ == 0 then
      g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_DashAtk", true, true)
    elseif _ARG_1_ == 2 then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92024)
    elseif _ARG_1_ == 5 then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_DASH_ATK_DAMAGE_1)
    elseif _ARG_1_ == 10 then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_DASH_ATK_DAMAGE_2)
    elseif _ARG_1_ == 11 then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound()
    elseif _ARG_1_ == 15 then
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
	    xPos = -0.35
      else
	    xPos = 0.35
      end
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_01", 0, xPos, 0.15, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_02", 0, xPos, 0.15, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_03", 0, xPos, 0.15, 5)
    elseif _ARG_1_ == 20 then
      if g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count == 255 then
        g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_MARI3_JSJ_DASH_ATK_2)
      else
        g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_DashAtk_Return", true, true)
      end
    end
  end
end
Player_Action[MID_MARI3_JSJ_DASH_ATK_2] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
    if _ARG_1_ == 0 then
      g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_DashAtk2", true, true)
    elseif _ARG_1_ == 11 then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_DASH_ATK_ADD_DAMAGE)
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73008)
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
	    xPos = -0.32
      else
	    xPos = 0.32
      end
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Dash_Boom_01", 0, xPos, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Dash_Boom_02", 0, xPos, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Dash_Boom_03", 0, xPos, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Dash_Boom_04", 0, xPos, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Dash_Boom_05", 0, xPos, 0.2, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Dash_Boom_06", 0, xPos, 0.2, 5)
    elseif _ARG_1_ == 12 then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92021)
    end
  end
end
Damage[DT_MARI3_JSJ_DASH_ATK_DAMAGE_1] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.22,
  SCALE_Y_PER_X = 0.8,
  START_LOCATE_X = 0.25,
  START_LOCATE_Y = 0.25,
  DAMAGE_XSPEED = -0.02,
  DAMAGE_YSPEED = 0.03,
  DAMAGETO_PLAYER = -8.3,
  DAMAGETO_MONSTER = -5.6,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  DAMAGE_FLAG = DA_PARTICLES + DA_HIT_LIGHT + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_TRACE_CREATOR + DA_SHOW_DAMAGE_EFFECT,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_MIDDLE,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0.015
}
Damage[DT_MARI3_JSJ_DASH_ATK_DAMAGE_2] = {
  PARENT = DT_MARI3_JSJ_DASH_ATK_DAMAGE_1,
  DAMAGE_XSPEED = -0.005,
  DAMAGE_YSPEED = 0.025,
  DAMAGETO_PLAYER = -8.3,
  DAMAGETO_MONSTER = -11.2,
  DAMAGE_MOTION = MID_COMMON_DAMAGED_BY_FLYATK,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_DOWN,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0.02,
  EARTH_QUAKE = 5
}
Damage[DT_MARI3_JSJ_DASH_ATK_ADD_DAMAGE] = {
  PARENT = DT_MARI3_JSJ_DASH_ATK_DAMAGE_1,
  START_LIFE = 10,
  DAMAGE_XSPEED = -0.01,
  DAMAGE_YSPEED = 0.025,
  START_SCALE_X = 0.2,
  SCALE_Y_PER_X = 0.7,
  START_LOCATE_X = 0.32,
  START_LOCATE_Y = 0.4,
  DAMAGETO_PLAYER = -11,
  DAMAGETO_MONSTER = -14,
  DAMAGE_MOTION = MID_COMMON_DAMAGED_BY_FLYATK,
  DAMAGE_FLAG = DA_PARTICLES + DA_HIT_LIGHT + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_TRACE_CREATOR + DA_DAMAGE_DIRECTION + DA_SHOW_DAMAGE_EFFECT,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = 0.005,
  PUSH_Y_TO_MONSTER = 0.03,
  EARTH_QUAKE = 10
}
Player_Action[MID_MARI3_DASH_UNIQUE_ATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 7 then
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
		--g_MyD3D:GetPlayer(_ARG_0_):DecreaseMP(-0.5)
		if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI3_UNIQUE_DASHATK_COOLTIME_2) then 
			if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
			  g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_UNIQUE_DASH_ATK_WHIFF)
			  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin_Hadoken_Nogauge_Emoticon01", 0, 0.1, 0.15, 5)
			  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Amy1_Emoticon01", 0, 0.1, 0.15, 5)
			else
			  g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_UNIQUE_DASH_ATK_WHIFF_L)
			  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin_Hadoken_Nogauge_Emoticon01_R", 0, -0.1, 0.15, 5)
			  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Amy1_Emoticon01_R", 0, -0.1, 0.15, 5)
			end
		else
			if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
			  g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_UNIQUE_DASH_ATK)
			else
			  g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_UNIQUE_DASH_ATK_L)
			end
		end
		if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_AMY_STIGMA) == false then
		  g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_RONAN_MANA_STOP, 0.7)
		end
		if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI3_UNIQUE_DASHATK_COOLTIME_2) then
			g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI3_UNIQUE_DASHATK_COOLTIME_2, 1.5)
		elseif g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI3_UNIQUE_DASHATK_COOLTIME_1) then
			g_MyD3D:GetPlayer(_ARG_0_):ClearMagicEffect(EGC_EFFECT_MARI3_UNIQUE_DASHATK_COOLTIME_1)
			g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI3_UNIQUE_DASHATK_COOLTIME_2, 1.5)
		else
			g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI3_UNIQUE_DASHATK_COOLTIME_1, 1.5)
		end
	else
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_UNIQUE_DASH_ATK)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_UNIQUE_DASH_ATK_L)
    end
	end
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92026)
  elseif IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_0_))) then
    g_MyD3D:GetPlayer(_ARG_0_):SetIsRight(not g_MyD3D:GetPlayer(_ARG_0_):GetIsRight())
  end
end
Damage[DT_MARI3_UNIQUE_DASH_ATK] = {
  START_LIFE = 120,
  START_SCALE_X = 0.1,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0.2,
  DIRECTIONALITY = TRUE,
  ADDNODIRECTION = TRUE,
  ENABLE_DAMAGE = TRUE,
  SPEED_X = -0.008,
  DAMAGE_XSPEED = -0.01,
  DAMAGETO_PLAYER = -2.5,
  DAMAGETO_MONSTER = -4.8,
  DAMAGE_FLAG = DA_SHOW_DAMAGE_EFFECT + DA_EQUAL_DIRECTION,
  HIT_PER_FRAME = 10,
  PARTICLE_TRACE = TRUE,
  DAMAGE_SOUND = 92027,
  CHILD_PARTICLE = {
    {
      "Mari03_Volt_01",
      8,
      8,
      TRUE,
      0,
      0,
      119
    },
    {
      "Mari03_Volt_02",
      8,
      8,
      TRUE,
      0,
      0,
      119
    },
    {
      "Mari03_Volt_03",
      100,
      100,
      TRUE,
      0,
      0,
      119
    },
    {
      "Mari03_Volt_04",
      100,
      100,
      TRUE,
      0,
      0,
      119
    },
    {
      "Mari03_Volt_05",
      100,
      100,
      TRUE,
      0,
      0,
      119
    },
    {
      "Mari03_Volt_06",
      10,
      10,
      TRUE,
      0,
      0,
      119
    }
  },
  CRASH_PARTICLE = {
    {
      "Mari01_Volt_Spark_01",
      0.2,
      0,
      TRUE
    },
    {
      "Mari01_Volt_Spark_02",
      0.2,
      0,
      TRUE
    },
    {
      "Mari01_Volt_Spark_03",
      0.2,
      0,
      TRUE
    }
  },
  AUTO_DAMAGE = {
    {
      DT_MARI3_UNIQUE_DASH_ATK_EFFECT,
      0,
      0,
      2,
      TRUE,
      TIME_AUTO_DAMAGE
    }
  },
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = 0.016,
  PUSH_Y_TO_MONSTER = 0,
  IS_SPECIAL_ATTACK = TRUE
}
Damage[DT_MARI3_UNIQUE_DASH_ATK_WHIFF] = {
  START_LIFE = 30,
  START_SCALE_X = 0.1,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0.2,
  DIRECTIONALITY = TRUE,
  ADDNODIRECTION = TRUE,
  ENABLE_DAMAGE = TRUE,
  SPEED_X = -0.008,
  DAMAGE_XSPEED = -0.01,
  DAMAGETO_PLAYER = -2.5,
  DAMAGETO_MONSTER = -4.8,
  DAMAGE_FLAG = DA_SHOW_DAMAGE_EFFECT + DA_EQUAL_DIRECTION,
  HIT_PER_FRAME = 10,
  PARTICLE_TRACE = TRUE,
  DAMAGE_SOUND = 92027,
  CHILD_PARTICLE = {
    {
      "Mari03_Volt_01",
      8,
      8,
      TRUE,
      0,
      0,
      29
    },
    {
      "Mari03_Volt_02",
      8,
      8,
      TRUE,
      0,
      0,
      29
    },
    {
      "Mari03_Volt_03",
      100,
      100,
      TRUE,
      0,
      0,
      29
    },
    {
      "Mari03_Volt_04",
      100,
      100,
      TRUE,
      0,
      0,
      29
    },
    {
      "Mari03_Volt_05",
      100,
      100,
      TRUE,
      0,
      0,
      29
    },
    {
      "Mari03_Volt_06",
      10,
      10,
      TRUE,
      0,
      0,
      29
    }
  },
  CRASH_PARTICLE = {
    {
      "Mari01_Volt_Spark_01",
      0.2,
      0,
      TRUE
    },
    {
      "Mari01_Volt_Spark_02",
      0.2,
      0,
      TRUE
    },
    {
      "Mari01_Volt_Spark_03",
      0.2,
      0,
      TRUE
    }
  },
  AUTO_DAMAGE = {
    {
      DT_MARI3_UNIQUE_DASH_ATK_EFFECT,
      0,
      0,
      2,
      TRUE,
      TIME_AUTO_DAMAGE
    }
  },
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = 0.016,
  PUSH_Y_TO_MONSTER = 0,
  IS_SPECIAL_ATTACK = TRUE
}
Damage[DT_MARI3_UNIQUE_DASH_ATK_EFFECT] = {
  START_LIFE = 50,
  START_SCALE_X = 0,
  ENABLE_DAMAGE = FALSE,
  CHILD_PARTICLE = {
    {
      "Mari01_Volt_Spark_01",
      0,
      0,
      TRUE,
      0,
      0,
      49
    },
    {
      "Mari01_Volt_Spark_02",
      0,
      0,
      TRUE,
      0,
      0,
      49
    },
    {
      "Mari01_Volt_Spark_03",
      0,
      0,
      TRUE,
      0,
      0,
      49
    }
  }
}
Damage[DT_MARI3_UNIQUE_DASH_ATK_L] = {
  PARENT = DT_MARI3_UNIQUE_DASH_ATK,
  CRASH_PARTICLE = {
    {
      "Mari01_Volt_Spark_01",
      -0.2,
      0,
      TRUE
    },
    {
      "Mari01_Volt_Spark_02",
      -0.2,
      0,
      TRUE
    },
    {
      "Mari01_Volt_Spark_03",
      -0.2,
      0,
      TRUE
    }
  },
  AUTO_DAMAGE = {
    {
      DT_MARI3_UNIQUE_DASH_ATK_EFFECT,
      0,
      0,
      2,
      TRUE,
      TIME_AUTO_DAMAGE
    }
  }
}
Damage[DT_MARI3_UNIQUE_DASH_ATK_WHIFF_L] = {
  PARENT = DT_MARI3_UNIQUE_DASH_ATK_WHIFF,
  CRASH_PARTICLE = {
    {
      "Mari01_Volt_Spark_01",
      -0.2,
      0,
      TRUE
    },
    {
      "Mari01_Volt_Spark_02",
      -0.2,
      0,
      TRUE
    },
    {
      "Mari01_Volt_Spark_03",
      -0.2,
      0,
      TRUE
    }
  },
  AUTO_DAMAGE = {
    {
      DT_MARI3_UNIQUE_DASH_ATK_EFFECT,
      0,
      0,
      2,
      TRUE,
      TIME_AUTO_DAMAGE
    }
  }
}
Player_Action[MID_MARI3_JUMPREADY] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 and g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
    g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_JumpReady", true, false)
  end
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_0_))) then
    g_MyD3D:GetPlayer(_ARG_0_):Jump()
  end
end
Player_Action[MID_MARI3_JUMPATK] = function(_ARG_0_, _ARG_1_)
  g_MyD3D:GetPlayer(_ARG_0_).m_bCheckGround = true
  if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) == false then
    if _ARG_1_ == 0 then
      g_MyD3D:GetPlayer(_ARG_0_).m_bDrawSlashRight = true
    elseif _ARG_1_ == 6 then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JUMP_ATK)
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92002)
    elseif _ARG_1_ == 10 then
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_Jump_Attack_01", 0, 0.02, 0, 5)
      else
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_Jump_Attack_01_R", 0, -0.02, 0, 5)
      end
    elseif _ARG_1_ == 20 then
      g_MyD3D:GetPlayer(_ARG_0_).m_bDrawSlashRight = false
    end
  else
    --g_MyD3D:GetPlayer(_ARG_0_).IsContact = false
    --if _ARG_1_ == 0 then
    --  g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_JumpAtk_1", true, true)
    --elseif _ARG_1_ == 2 then
    --  if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    --    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari2_WDW_Jump_AT_01", 0, 0.05, -0.03, 5)
    --    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari2_WDW_Jump_AT_02", 0, 0.05, -0.03, 5)
    --    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari2_WDW_Jump_AT_03", 0, 0.05, -0.03, 5)
    --    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari2_WDW_Jump_AT_04", 0, 0.05, -0.03, 5)
    --  else
    --    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari2_WDW_Jump_AT_01_R", 0, -0.05, -0.03, 5)
    --    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari2_WDW_Jump_AT_02_R", 0, -0.05, -0.03, 5)
    --    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari2_WDW_Jump_AT_03_R", 0, -0.05, -0.03, 5)
    --    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari2_WDW_Jump_AT_04_R", 0, -0.05, -0.03, 5)
    --  end
    --elseif _ARG_1_ == 3 then
    --  g_MyD3D:GetPlayer(_ARG_0_):PlaySound(90028)
    --  g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_JUMP_ATK1_1)
    --  g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_JUMP_ATK1_2)
    --elseif _ARG_1_ == 4 then
    --  g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_JUMP_ATK2)
    --elseif _ARG_1_ == 7 then
    --  g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_JUMP_ATK_FINISH)
    --else
    --  MakeError()
    --end
	g_MyD3D:GetPlayer(_ARG_0_).IsContact = false
      if _ARG_1_ > 9 and _ARG_1_ < 15 and g_MyD3D:GetPlayer(_ARG_0_).y_Speed <= 0 and g_kControls.Down == false then
		g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0
      end
    if _ARG_1_ == 0 then
		if g_MyD3D:GetPlayer(_ARG_0_).y_Speed <= 0 then
			g_MyD3D:GetPlayer(_ARG_0_).NoCheckContact = 15
		end
      g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_ComboAtk_1", true, true)
    elseif _ARG_1_ == 6 then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92020)
    elseif _ARG_1_ == 7 then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_COMBO_ATK1)
    elseif _ARG_1_ == 8 then
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
	    xPos = -0.35
      else
	    xPos = 0.35
      end
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_01", 0, xPos, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_02", 0, xPos, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_03", 0, xPos, 0, 5)
    elseif _ARG_1_ == 20 then
        g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_ComboAtk_1_Return", true, true)
    elseif _ARG_1_ == 22 then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73008)
    else
      MakeError()
	end
  end
end
Damage[DT_MARI3_JSJ_JUMP_ATK1_1] = {
  PARENT = DT_MARI2_JUMP_ATK1_MAGIC,
  START_LIFE = 15,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.18,
  SCALE_Y_PER_X = 0.57,
  START_LOCATE_X = 0.13,
  START_LOCATE_Y = 0.28,
  DAMAGETO_PLAYER = -6.3,
  DAMAGETO_MONSTER = -4.2,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  DAMAGE_XSPEED = -0.005
}
Damage[DT_MARI3_JSJ_JUMP_ATK1_2] = {
  PARENT = DT_MARI3_JSJ_JUMP_ATK1_1,
  START_LIFE = 15,
  START_LOCATE_X = 0.13,
  START_LOCATE_Y = -0.05
}
Damage[DT_MARI3_JSJ_JUMP_ATK2] = {
  PARENT = DT_MARI3_JSJ_JUMP_ATK1_1,
  START_LIFE = 10,
  START_SCALE_X = 0.17,
  SCALE_Y_PER_X = 1.2,
  START_LOCATE_X = 0.23,
  START_LOCATE_Y = 0.12
}
Damage[DT_MARI3_JSJ_JUMP_ATK_FINISH] = {
  PARENT = DT_MARI3_JSJ_JUMP_ATK2,
  START_LIFE = 10,
  START_SCALE_X = 0.17,
  SCALE_Y_PER_X = 1.2,
  START_LOCATE_X = 0.23,
  START_LOCATE_Y = 0.12
}
Player_Action[MID_MARI3_JUMP_UNIQUE_ATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bCheckGround = true
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
      g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_JumpAtk_2", true, false)
    end
  elseif _ARG_1_ == 7 then
	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
		--g_MyD3D:GetPlayer(_ARG_0_):DecreaseMP(-0.5)
		if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI3_UNIQUE_JUMPATK_COOLTIME_2) then
			g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JUMP_UNIQUE_ATK_WHIFF)
			if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
			  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin_Hadoken_Nogauge_Emoticon01", 0, 0.1, 0.15, 5)
			  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Amy1_Emoticon01", 0, 0.1, 0.15, 5)
			else
			  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin_Hadoken_Nogauge_Emoticon01_R", 0, -0.1, 0.15, 5)
			  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Amy1_Emoticon01_R", 0, -0.1, 0.15, 5)
			end
		else
			g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JUMP_UNIQUE_ATK)
		end
		if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_AMY_STIGMA) == false then
		  g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_RONAN_MANA_STOP, 0.5)
		end
		if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI3_UNIQUE_JUMPATK_COOLTIME_2) then
			g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI3_UNIQUE_JUMPATK_COOLTIME_2, 1.5)
		elseif g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI3_UNIQUE_JUMPATK_COOLTIME_1) then
			g_MyD3D:GetPlayer(_ARG_0_):ClearMagicEffect(EGC_EFFECT_MARI3_UNIQUE_JUMPATK_COOLTIME_1)
			g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI3_UNIQUE_JUMPATK_COOLTIME_2, 1.5)
		else
			g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI3_UNIQUE_JUMPATK_COOLTIME_1, 1.5)
		end
	else
		g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JUMP_UNIQUE_ATK)
	end
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92004)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92008)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Jump_Volt_Circle_01_R", 0, -0.25, -0.1, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Jump_Volt_Circle_02_R", 0, -0.25, -0.1, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Jump_Volt_Circle_03", 0, -0.25, -0.1, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Jump_Volt_Circle_01", 0, 0.25, -0.1, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Jump_Volt_Circle_02", 0, 0.25, -0.1, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Jump_Volt_Circle_03", 0, 0.25, -0.1, 5)
    end
  elseif _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0.008
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == true then
      g_MyD3D:GetPlayer(_ARG_0_).x_Speed = g_MyD3D:GetPlayer(_ARG_0_).x_Speed - 0.013
    else
      g_MyD3D:GetPlayer(_ARG_0_).x_Speed = g_MyD3D:GetPlayer(_ARG_0_).x_Speed + 0.013
    end
  end
end
Player_Action[MID_MARI3_JSJ_JUMP_ATK] = function(_ARG_0_, _ARG_1_)
  --g_MyD3D:GetPlayer(_ARG_0_).m_bCheckGround = true
  --if _ARG_1_ == 0 then
  --  g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0
  --  g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0.018
  --  if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == true then
  --    g_MyD3D:GetPlayer(_ARG_0_).x_Speed = g_MyD3D:GetPlayer(_ARG_0_).x_Speed - 0.013
  --  else
  --    g_MyD3D:GetPlayer(_ARG_0_).x_Speed = g_MyD3D:GetPlayer(_ARG_0_).x_Speed + 0.013
  --  end
  --  g_MyD3D:GetPlayer(_ARG_0_):ClearChildMeshOneTimeMotion("JSJ")
  --elseif _ARG_1_ == 5 then
  --  g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_JumpAtk_2", true, true)
  --elseif _ARG_1_ == 7 then
  --    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
	--    xPos = -0.15
  --    else
	--    xPos = 0.15
  --    end
  --  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_Special01_01", 0, xPos, -0.08, 5)
  --  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_Special01_02", 0, xPos, -0.08, 5)
  --  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_Special01_03", 0, xPos, -0.08, 5)
  --  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_Special01_04", 0, xPos, -0.08, 5)
  --  g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_JUMP_UNIQUE_ATK)
  --  g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92005)
  --end
      if _ARG_1_ < 16 and g_MyD3D:GetPlayer(_ARG_0_).y_Speed <= 0 then
		g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0
      end
	if _ARG_1_ == 0 then
	  g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_ComboAtk_2", true, true)
	elseif _ARG_1_ == 2 then
	  g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73008)
	elseif _ARG_1_ == 8 then
	  g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92020)
	elseif _ARG_1_ == 9 then
	  if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
		xPos = -0.35
	  else
		xPos = 0.35
	  end
	  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_01", 0, xPos, 0, 5)
	  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_02", 0, xPos, 0, 5)
	  g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_03", 0, xPos, 0, 5)
	  g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_COMBO_ATK2)
	elseif _ARG_1_ == 20 then
		g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_ComboAtk_2_Return", true, true)
	else
	  MakeError()
	end
end
Damage[DT_MARI3_JSJ_JUMP_UNIQUE_ATK] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.18,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0.2,
  START_LOCATE_Y = 0.07,
  DAMAGE_XSPEED = -0.015,
  DAMAGE_YSPEED = 0,
  DAMAGETO_PLAYER = -16.5,
  DAMAGETO_MONSTER = -9.8,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  DAMAGE_FLAG = DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT + DA_TRACE_CREATOR,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_MIDDLE,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0.01
}
Damage[DT_MARI3_JUMP_UNIQUE_ATK] = {
  START_LIFE = 25,
  ENABLE_DAMAGE = TRUE,
  DAMAGETO_PLAYER = -22.5,
  DAMAGETO_MONSTER = -13.56,
  START_LOCATE_X = 0.18,
  START_LOCATE_Y = 0.15,
  START_SCALE_X = 0.1,
  SCALE_Y_PER_X = 1,
  SPEED_Y = -0.025,
  SPEED_X = 0.025,
  PARTICLE_TRACE = TRUE,
  DIRECTIONALITY = TRUE,
  CHILD_PARTICLE = {
    {
      "Mari03_Jump_Volt_01",
      13,
      13,
      TRUE,
      0,
      0,
      24
    },
    {
      "Mari01_Volt_02",
      13,
      13,
      TRUE,
      0,
      0,
      24
    },
    {
      "Mari01_Volt_03",
      100,
      100,
      TRUE,
      0,
      0,
      24
    },
    {
      "Mari01_Volt_04",
      100,
      100,
      TRUE,
      0,
      0,
      24
    },
    {
      "Mari01_Volt_05",
      100,
      100,
      TRUE,
      0,
      0,
      24
    }
  },
  DAMAGE_MOTION = MID_COMMON_BIGDAMAGE,
  DAMAGE_FLAG = DA_ONETIME_DAMAGE + DA_PUSH + DA_CANCEL_JUMP_STATE + DA_DEFENCEABLE + DA_MISSILE + DA_SHOW_DAMAGE_EFFECT,
  DAMAGE_SOUND = 487,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_DOWN,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0,
  CRASH_PARTICLE = {
    {
      "Mari01_Volt_Spark_01",
      0,
      -0.05,
      TRUE,
      TRUE,
      0
    },
    {
      "Mari01_Volt_Spark_02",
      0,
      -0.05,
      TRUE,
      TRUE,
      0
    },
    {
      "Mari01_Volt_Spark_03",
      0,
      -0.05,
      TRUE,
      TRUE,
      0
    }
  },
  IS_SPECIAL_ATTACK = TRUE
}
Damage[DT_MARI3_JUMP_UNIQUE_ATK_WHIFF] = {
  START_LIFE = 6,
  ENABLE_DAMAGE = TRUE,
  DAMAGETO_PLAYER = -22.5,
  DAMAGETO_MONSTER = -13.56,
  START_LOCATE_X = 0.18,
  START_LOCATE_Y = 0.15,
  START_SCALE_X = 0.1,
  SCALE_Y_PER_X = 1,
  SPEED_Y = -0.025,
  SPEED_X = 0.025,
  PARTICLE_TRACE = TRUE,
  DIRECTIONALITY = TRUE,
  CHILD_PARTICLE = {
    {
      "Mari03_Jump_Volt_01",
      13,
      13,
      TRUE,
      0,
      0,
      5
    },
    {
      "Mari01_Volt_02",
      13,
      13,
      TRUE,
      0,
      0,
      5
    },
    {
      "Mari01_Volt_03",
      100,
      100,
      TRUE,
      0,
      0,
      5
    },
    {
      "Mari01_Volt_04",
      100,
      100,
      TRUE,
      0,
      0,
      5
    },
    {
      "Mari01_Volt_05",
      100,
      100,
      TRUE,
      0,
      0,
      5
    }
  },
  DAMAGE_MOTION = MID_COMMON_BIGDAMAGE,
  DAMAGE_FLAG = DA_ONETIME_DAMAGE + DA_PUSH + DA_CANCEL_JUMP_STATE + DA_DEFENCEABLE + DA_MISSILE + DA_SHOW_DAMAGE_EFFECT,
  DAMAGE_SOUND = 487,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_DOWN,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0,
  CRASH_PARTICLE = {
    {
      "Mari01_Volt_Spark_01",
      0,
      -0.05,
      TRUE,
      TRUE,
      0
    },
    {
      "Mari01_Volt_Spark_02",
      0,
      -0.05,
      TRUE,
      TRUE,
      0
    },
    {
      "Mari01_Volt_Spark_03",
      0,
      -0.05,
      TRUE,
      TRUE,
      0
    }
  },
  IS_SPECIAL_ATTACK = TRUE
}
Damage[DT_MARI3_JUMP_ATK] = {
  ENABLE_DAMAGE = TRUE,
  START_LIFE = 10,
  START_SCALE_X = 0.22,
  SCALE_Y_PER_X = 0.87,
  START_LOCATE_X = 0.1,
  START_LOCATE_Y = 0.15,
  DAMAGE_FLAG = DA_HIT_LIGHT + DA_REVERSE_DIRECTION + DA_TRACE_CREATOR + DA_CANCEL_JUMP_STATE + DA_FELL_DOWN_AT_SKY + DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT,
  DAMAGE_XSPEED = -0.008,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_MIDDLE,
  PUSH_X_TO_MONSTER = 0.011,
  DAMAGETO_PLAYER = -21.5,
  DAMAGETO_MONSTER = -5.98,
  DAMAGE_SOUND = 92025
}
Player_Action[MID_MARI3_CRITICAL_ATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ) then
      g_MyD3D:GetPlayer(_ARG_0_):ClearChildMeshOneTimeMotion("JSJ")
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_DOUBLE)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_CRITICAL)
    end
  elseif _ARG_1_ == 13 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_CRITICAL_DOUBLE_ATK_MANA_EMPTY)
  elseif _ARG_1_ == 15 then
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
	    xPos = -0.2
      else
	    xPos = 0.2
      end
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_01", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_02", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_03", 0, xPos, 0.02, 5)
  end
end
Player_Action[MID_MARI3_DOUBLE_ATK] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ) then
    if _ARG_1_ == 0 then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_DOUBLE)
    end
  elseif _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_DOUBLE)
  end
  if _ARG_1_ == 13 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_CRITICAL_DOUBLE_ATK)
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
      g_MyD3D:GetPlayer(_ARG_0_):DecreaseMP(-0.3)
    end
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92004)
  end
end
Player_Action[MID_MARI3_DOUBLE_ATK_MANA_EMPTY] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ) then
    if _ARG_1_ == 0 then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_DOUBLE)
    end
  elseif _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_DOUBLE)
  end
  if _ARG_1_ == 13 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_CRITICAL_DOUBLE_ATK_MANA_EMPTY)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92004)
  elseif _ARG_1_ == 15 then
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
	    xPos = -0.2
      else
	    xPos = 0.2
      end
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_01", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_02", 0, xPos, 0.02, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_03", 0, xPos, 0.02, 5)
  end
end
Damage[DT_MARI3_CRITICAL_DOUBLE_ATK] = {
  START_LIFE = 165,
  START_SCALE_X = 0.12,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0.12,
  START_LOCATE_Y = 0.18,
  ENABLE_DAMAGE = TRUE,
  DAMAGE_XSPEED = -0.008,
  DAMAGETO_PLAYER = -21,
  DAMAGETO_MONSTER = -8.775,
  DAMAGE_FLAG = DA_SHOW_DAMAGE_EFFECT + DA_DAMAGE_DIRECTION + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_ONETIME_DAMAGE,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  DRAIN_MP = 0.1,
  CHILD_PARTICLE = {
    {
      "Mari03_Critical_01",
      0,
      0,
      TRUE,
      0,
      0,
      164
    },
    {
      "Mari03_Critical_02",
      0,
      0,
      TRUE,
      0,
      0,
      164
    },
    {
      "Mari03_Critical_03",
      0,
      0,
      TRUE,
      0,
      0,
      164
    },
    {
      "Mari03_Critical_04",
      0,
      0,
      TRUE,
      0,
      0,
      164
    },
    {
      "Mari03_Critical_05",
      0,
      0,
      TRUE,
      0,
      0,
      164
    },
    {
      "Mari03_Critical_06",
      0,
      0,
      TRUE,
      0,
      0,
      164
    }
  },
  TIME_SOUND = {
    {92005, 5}
  },
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0.02,
  CRASH_PARTICLE = {
    {
      "Mari03_Special3_Spark_01",
      0,
      0,
      TRUE
    },
    {
      "Mari03_Special3_Spark_02",
      0,
      0,
      TRUE
    },
    {
      "Mari03_Special3_Spark_03",
      0,
      0,
      TRUE
    },
    {
      "Mari03_Special3_Spark_04",
      0,
      0,
      TRUE
    }
  },
  DAMAGE_SOUND = 92005
}
Damage[DT_MARI3_CRITICAL_DOUBLE_ATK_MANA_EMPTY] = {
  PARENT = DT_MARI3_CRITICAL_DOUBLE_ATK,
  START_LIFE = 10,
  START_SCALE_X = 0.18,
  SCALE_Y_PER_X = 0.8,
  DAMAGE_FLAG = DA_SHOW_DAMAGE_EFFECT + DA_DAMAGE_DIRECTION + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_ONETIME_DAMAGE,
  DAMAGE_SOUND = 92005,
  DAMAGE_MOTION = MID_COMMON_BIGDAMAGE,
  PLUS_DELAY = 20,
  DRAIN_MP = 0
}
Player_Action[MID_MARI3_ARROW_DEF_ON_GROUND] = function(_ARG_0_, _ARG_1_)
  Player_Action[MID_JIN2_2_ARROWDEF_ON_GROUND](_ARG_0_, _ARG_1_)
end
Player_Action[MID_MARI3_ARROW_DEF_IN_SKY] = function(_ARG_0_, _ARG_1_)
  Player_Action[MID_JIN2_2_ARROWDEF_ON_GROUND](_ARG_0_, _ARG_1_)
end
Player_Action[MID_MARI3_STANDUP_ATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 45
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(90006)
  elseif _ARG_1_ == 20 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_STANDUP_ATK)
  end
end
Damage[DT_MARI3_STANDUP_ATK] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.35,
  SCALE_Y_PER_X = 0.45,
  START_LOCATE_X = -0.08,
  START_LOCATE_Y = 0.15,
  DAMAGE_XSPEED = -0.015,
  DAMAGE_YSPEED = 0,
  DAMAGETO_PLAYER = -8.3,
  DAMAGETO_MONSTER = -8,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  DAMAGE_FLAG = DA_PARTICLES + DA_HIT_LIGHT + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT + DA_DAMAGE_DIRECTION,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_MIDDLE,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0.01
}
Player_Action[MID_MARI3_CATCH] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = false
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
    g_MyD3D:GetPlayer(_ARG_0_):Catched()
    g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("WEAPON", "Mari3_Catch_ScaleUp_Weapon", true, true)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_CATCH_WEAPON_LOCUS)
  elseif _ARG_1_ == 1 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(70)
  elseif _ARG_1_ == 10 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari1_Emoticon01", 0, 0.15, 0.05, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari1_Emoticon02", 0, 0.15, 0.05, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari1_Emoticon01_R", 0, -0.15, 0.05, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari1_Emoticon02_R", 0, -0.15, 0.05, 5)
    end
  elseif _ARG_1_ == 27 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92013)
  elseif _ARG_1_ == 55 then
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
	    xPos = -0.35
      else
	    xPos = 0.35
      end
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_01", 0, xPos, -0.15, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_02", 0, xPos, -0.15, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_03", 0, xPos, -0.15, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_04", 0, xPos, -0.15, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_05", 0, xPos, -0.15, 5)
  elseif _ARG_1_ == g_MyD3D:GetPlayer(_ARG_0_):GetFrameNum() - 1 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = true
  else
    MakeError()
  end
end
Damage[DT_MARI3_CATCH_WEAPON_LOCUS] = {
  START_LIFE = 87,
  START_SCALE_X = 0.1,
  SCALE_Y_PER_X = 1,
  DAMAGE_FLAG = DA_TRACE_CREATOR,
  MOTION_TRACE = TRUE,
  MESHINFO = {
    MESHLIST = {
      {
        "Mari3_Special1_Smog.p3m",
        ""
      }
    },
    MOTIONLIST = {
      "Mari3_Catch_Locus.frm"
    },
    SCALE = 0.4,
    ANIMATION = {
      {87, 0}
    },
    LOCALPOS = {
      0,
      0,
      0.5
    },
    MESH_CHILDPARTICLE = {
      {
        "Mari03_Hemmer_Booster_01",
        0.05,
        -0.11,
        27,
        0,
        FALSE,
        3,
        FALSE
      },
      {
        "Mari03_Hemmer_Booster_02",
        0.05,
        -0.11,
        27,
        0,
        FALSE,
        3,
        FALSE
      },
      {
        "Mari03_Hemmer_Booster_03",
        0.05,
        -0.11,
        27,
        0,
        FALSE,
        3,
        FALSE
      }
    },
    ISSTOPMOTION = TRUE
  }
}
Player_Action[MID_MARI3_CATCHED] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = false
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
    pos = g_MyD3D:GetPlayer(_ARG_0_):GetPos()
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      pos.x = pos.x - 0.2
    else
      pos.x = pos.x + 0.2
    end
    g_MyD3D:GetPlayer(_ARG_0_):SetDirectMove(pos.x, pos.y)
  elseif _ARG_1_ == 60 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(49)
    g_MyD3D:GetPlayer(_ARG_0_):CatchDamage(-0.32)
  elseif _ARG_1_ == g_MyD3D:GetPlayer(_ARG_0_):GetFrameNum() - 1 then
    g_MyD3D:GetPlayer(_ARG_0_):EffectDust()
    g_MyD3D:GetPlayer(_ARG_0_).Super = 0
    g_MyD3D:GetPlayer(_ARG_0_).m_bCrashCheck = true
    g_MyD3D:GetPlayer(_ARG_0_):Direct_Motion_Input(MID_COMMON_DOWN_AND_STANDUP)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(49)
  else
    MakeError()
  end
end
Player_Action[MID_MARI3_START] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):ToggleExtraMesh("JSJ", true)
    g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_GameStart", true, true)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92103 + math.random(0, 1))
  elseif _ARG_1_ == 147 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Start_01", 0, 0.1, 0.02)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Start_02", 0, 0.1, 0.02)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Start_03", 0, 0.1, 0.02)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Start_04", 0, 0.1, 0.02)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Start_05", 0, 0.1, 0.02)
  elseif IsEndOfFrame() then
    g_MyD3D:GetPlayer(_ARG_0_):ToggleExtraMesh("JSJ", false)
  end
end
Player_Action[MID_MARI3_WINPOS] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92101 + math.random(0, 1))
  else
    MakeError()
  end
end
Player_Action[MID_MARI3_JOKE] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92105 + math.random(0, 1))
  end
  if _ARG_1_ >= 5 and _ARG_1_ <= 90 and g_MyD3D:IsMyTeam(_ARG_0_) == false then
    g_MyD3D:GetPlayer(_ARG_0_):ChangeAllCharacterMP(-0.0035)
  end
end
Player_Action[MID_MARI3_DASH_JUMP] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 5 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_01", 0, -0.08, -0.08)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_02", 0, -0.08, -0.08)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_03", 0, -0.08, -0.08)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_01_R", 0, 0.08, -0.08)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_02_R", 0, 0.08, -0.08)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_03_R", 0, 0.08, -0.08)
    end
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_01", 0, -0.3, 0.08)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_02", 0, -0.3, 0.08)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_03", 0, -0.3, 0.08)
      else
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_01_R", 0, 0.3, 0.08)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_02_R", 0, 0.3, 0.08)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_03_R", 0, 0.3, 0.08)
      end
    end
  elseif _ARG_1_ == 14 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(90005)
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0.11
    g_MyD3D:GetPlayer(_ARG_0_).x_Speed = 0.03
    g_MyD3D:GetPlayer(_ARG_0_).IsContact = false
    if not g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_).x_Speed = -0.03
    end
  end
  g_MyD3D:GetPlayer(_ARG_0_).m_bCheckGround = true
  if _ARG_1_ > 16 then
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = g_MyD3D:GetPlayer(_ARG_0_).y_Speed * 0.9
  end
end
Player_Action[MID_MARI3_DASH_JUMP_NEW] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 6 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(90005)
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0.11
    g_MyD3D:GetPlayer(_ARG_0_).x_Speed = 0.03
    g_MyD3D:GetPlayer(_ARG_0_).IsContact = false
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_01", 0, -0.08, -0.08)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_02", 0, -0.08, -0.08)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_03", 0, -0.08, -0.08)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_01_R", 0, 0.08, -0.08)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_02_R", 0, 0.08, -0.08)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_03_R", 0, 0.08, -0.08)
    end
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_01", 0, -0.3, 0.08)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_02", 0, -0.3, 0.08)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_03", 0, -0.3, 0.08)
      else
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_01_R", 0, 0.3, 0.08)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_02_R", 0, 0.3, 0.08)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_High_Jump_03_R", 0, 0.3, 0.08)
      end
    end
    if not g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_).x_Speed = -0.03
    end
  end
  g_MyD3D:GetPlayer(_ARG_0_).m_bCheckGround = true
  if _ARG_1_ > 8 then
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = g_MyD3D:GetPlayer(_ARG_0_).y_Speed * 0.9
  end
end
Player_Action[MID_MARI3_JSJ_DASH_JUMP_UNIQUE_SKILL] = function(_ARG_0_, _ARG_1_)
  g_MyD3D:GetPlayer(_ARG_0_).m_bCheckGround = true
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_0_))) == false then
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0
  end
  if _ARG_1_ == 0 then
    --g_MyD3D:GetPlayer(_ARG_0_):DecreaseMP(-0.5)
	if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_AMY_STIGMA) == false then
	  g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_RONAN_MANA_STOP, 0.2)
	end
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(90005)
    g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_Dash_Jump_Unique_skill", true, true)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Dash_01", 0, -0.18, 0.08, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Dash_02", 0, -0.18, 0.08, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Dash_03", 0, -0.18, 0.08, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Dash_01_R", 0, 0.18, 0.08, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Dash_02_R", 0, 0.18, 0.08, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Dash_03_R", 0, 0.18, 0.08, 5)
    end
  end
end
Player_Action[MID_MARI3_SPECIAL1] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
    g_MyD3D:GetPlayer(_ARG_0_).m_bUnstop = true
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then
	  g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(33, 191, 253)
	else
	  SSNS((g_MyD3D:GetPlayer(_ARG_0_)))
    end
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_SPECIAL1_BOOSTER_SMOG)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_SPECIAL1_BOOSTER_SMOG2)
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
      g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari3_JSJ_Special1", true, false)
    end
  elseif _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("WEAPON", "Mari3_Weapon_Booster_Start", true, false)
  elseif _ARG_1_ == 40 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92107)
  elseif _ARG_1_ == 43 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticlePosWithTrace("Mari03_Special1_Booster_01", 0, 0, 0.1, -0.2, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticlePosWithTrace("Mari03_Special1_Booster_02", 0, 0, 0.1, -0.2, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticlePosWithTrace("Mari03_Special1_Booster_03", 0, 0, 0.1, -0.2, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticlePosWithTrace("Mari03_Special1_Booster_04", 0, 0, 0.1, -0.2, 5)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92013)
  elseif _ARG_1_ == 52 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_SPECIAL1_ATK)
  elseif _ARG_1_ == 54 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92006)
  elseif _ARG_1_ == 57 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Special1_JSJ_01", 0, -0.1, 0.25, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Special1_JSJ_02", 0, -0.1, 0.25, 5)
      else
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Special1_JSJ_01_R", 0, 0.1, 0.25, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Special1_JSJ_02_R", 0, 0.1, 0.25, 5)
      end
    end
  elseif _ARG_1_ == 60 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(90030)
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
	    xPos = -0.15
      else
	    xPos = 0.15
      end
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_Special01_01", 0, xPos, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_Special01_02", 0, xPos, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_Special01_03", 0, xPos, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari01_Special01_04", 0, xPos, 0, 5)
  elseif _ARG_1_ == 65 then
    g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("WEAPON", "Mari3_Weapon_Booster_End", true, true)
  else
    MakeError()
  end
end
Damage[DT_MARI3_SPECIAL1_BOOSTER_SMOG] = {
  START_LIFE = 65,
  START_SCALE_X = 0.1,
  SCALE_Y_PER_X = 1,
  MAX_INSTANCE_NUM = 3,
  DAMAGE_FLAG = DA_TRACE_CREATOR,
  MOTION_TRACE = TRUE,
  MESHINFO = {
    MESHLIST = {
      {
        "Mari3_Special1_Smog.p3m",
        ""
      }
    },
    MOTIONLIST = {
      "Mari3_Special1_Smog.frm"
    },
    SCALE = 0.4,
    ANIMATION = {
      {65, 0}
    },
    LOCALPOS = {
      0,
      0,
      0.5
    },
    MESH_CHILDPARTICLE = {
      {
        "Mari03_Special1_Smog_01",
        0,
        0,
        52,
        0,
        FALSE,
        3,
        TRUE
      }
    },
    ISSTOPMOTION = TRUE
  }
}
Damage[DT_MARI3_SPECIAL1_BOOSTER_SMOG2] = {
  START_LIFE = 65,
  START_SCALE_X = 0.1,
  SCALE_Y_PER_X = 1,
  DAMAGE_FLAG = DA_TRACE_CREATOR,
  MOTION_TRACE = TRUE,
  MESHINFO = {
    MESHLIST = {
      {
        "Mari3_Special1_Smog.p3m",
        ""
      }
    },
    MOTIONLIST = {
      "Mari3_Special1_Smog2.frm"
    },
    SCALE = 0.4,
    ANIMATION = {
      {65, 0}
    },
    LOCALPOS = {
      0,
      0,
      0.5
    },
    MESH_CHILDPARTICLE = {
      {
        "Mari03_Special1_Smog_01",
        0,
        0,
        52,
        0,
        FALSE,
        3,
        TRUE
      }
    },
    ISSTOPMOTION = TRUE
  }
}
Damage[DT_MARI3_SPECIAL1_ATK] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.25,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0.15,
  START_LOCATE_Y = 0.25,
  DAMAGE_XSPEED = -0.045,
  DAMAGE_YSPEED = 0.035,
  DAMAGETO_PLAYER = -18.4,
  DAMAGETO_MONSTER = -43.79232,
  DAMAGE_MOTION = MID_COMMON_DAMAGED_MID_SPECIAL,
  DAMAGE_FLAG = DA_PARTICLES + DA_HIT_LIGHT + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT + DA_TRACE_CREATOR,
  DAMAGE_SOUND = 34,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = 0.025,
  PUSH_Y_TO_MONSTER = 0.035,
  AUTO_DAMAGE = {
    {
      DT_MARI3_SPECIAL1_ADD_ATK,
      0,
      0,
      -1,
      TRUE,
      CRASH_AUTO_DAMAGE
    }
  },
  IS_SPECIAL_ATTACK = TRUE
}
Damage[DT_MARI3_SPECIAL1_ADD_ATK] = {
  START_LIFE = 255,
  START_SCALE_X = 0.2,
  SCALE_Y_PER_X = 0.65,
  START_LOCATE_X = 0,
  START_LOCATE_Y = -0.05,
  MAX_INSTANCE_NUM = 3,
  DAMAGE_MOTION = MID_COMMON_DAMAGED_MID_SPECIAL,
  DAMAGETO_PLAYER = 0,
  DAMAGETO_MONSTER = 0,
  PLUS_DELAY = 16,
  DAMAGE_FLAG = DA_TRACE_HITTED,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_DOWN,
  PARTICLE_TRACE = TRUE,
  CHILD_PARTICLE = {
    {
      "Mari03_Special1_Icon_01",
      1000,
      1000,
      TRUE,
      -0.05,
      0.35,
      254
    }
  },
  AUTO_DAMAGE = {
    {
      DT_MARI3_SPECIAL1_ADD_ATK_DAMAGE,
      0,
      0,
      -1,
      TRUE,
      GROUND_CRASH_AUTO_DAMAGE,
      210,
      FALSE
    }
  },
  IS_TOTAL_RANGE = TRUE,
  IS_SPECIAL_ATTACK = TRUE
}
Damage[DT_MARI3_SPECIAL1_ADD_ATK_DAMAGE] = {
  START_LIFE = 5,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.25,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0.15,
  START_LOCATE_Y = 0.15,
  DAMAGE_XSPEED = -0.02,
  DAMAGE_YSPEED = 0.02,
  DAMAGETO_PLAYER = -18.4,
  DAMAGETO_MONSTER = -43.79232,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  DAMAGE_FLAG = DA_FIRES + DA_HIT_LIGHT + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = 0.015,
  PUSH_Y_TO_MONSTER = 0.02,
  IS_SPECIAL_ATTACK = TRUE

}
Player_Action[MID_MARI3_SPECIAL3] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).x_Speed = 0
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
    g_MyD3D:GetPlayer(_ARG_0_).m_bUnstop = true
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then
			g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(33, 191, 253)
		else
			g_MyD3D:GetPlayer(_ARG_0_):StartSpecial(0, 0, 0)
			g_MyD3D:GetPlayer(_ARG_0_).m_bUnstop = true
			g_MyD3D:GetPlayer(_ARG_0_):Stop(g_MyD3D:GetPlayer(_ARG_0_):GetPos().x, g_MyD3D:GetPlayer(_ARG_0_):GetPos().y)
    end
		g_MyD3D:GetPlayer(_ARG_0_):SetFrame(24)
    if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
      g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari3_JSJ_Special3", true, true)
    end
  elseif _ARG_1_ == 25 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Special3_Start_01", 0, -0.02, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Special3_Start_02", 0, -0.02, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Special3_Start_03", 0, -0.02, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Special3_Start_04", 0, -0.02, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Special3_Start_05", 0, -0.02, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Special3_Start_06", 0, -0.02, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Special3_Start_07", 0, -0.02, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Special3_Start_08", 0, -0.02, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Special3_Start_09", 0, -0.02, 0, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari03_Special3_Start_10", 0, -0.02, 0, 5)
  elseif _ARG_1_ == 30 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92109)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92017)
  elseif _ARG_1_ == 45 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_SPECIAL3_ATK_CORE)
  else
    MakeError()
  end
end
Damage[DT_MARI3_SPECIAL3_ATK_CORE] = {
  START_LIFE = 100,
  START_SCALE_X = 0.23,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0.05,
  START_LOCATE_Y = 0.2,
  DIRECTIONALITY = TRUE,
  ADDNODIRECTION = TRUE,
  ENABLE_DAMAGE = TRUE,
  SPEED_X = 0.01,
  CRASH_SPEED_X = -0.0001,
  DAMAGE_XSPEED = -0.019,
  DAMAGE_CRASH_SPEED_X = 0.0001,
  DAMAGETO_PLAYER = -13.4,
  DAMAGETO_MONSTER = -13.91607,
  PLUS_DELAY = 3,
  HIT_PER_FRAME = 5,
  DAMAGE_FLAG = DA_SHOW_DAMAGE_EFFECT + DA_KILLING_DAMAGE + DA_REVERSE_DIRECTION,
  PARTICLE_TRACE = TRUE,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = 0.004,
  PUSH_Y_TO_MONSTER = 0,
  IS_SPECIAL_ATTACK = TRUE,
  IS_TOTAL_RANGE = TRUE,
  CHILD_PARTICLE = {
    {
      "Mari03_Special3_01",
      10,
      10,
      TRUE,
      0,
      0,
      99
    },
    {
      "Mari03_Special3_02",
      17,
      20,
      TRUE,
      0,
      0,
      99
    },
    {
      "Mari03_Special3_03",
      10,
      10,
      TRUE,
      0,
      0,
      99
    },
    {
      "Mari03_Special3_04",
      10,
      15,
      TRUE,
      0,
      0,
      99
    },
    {
      "Mari03_Special3_05",
      30,
      30,
      TRUE,
      0,
      0,
      99
    },
    {
      "Mari03_Special3_06",
      40,
      40,
      TRUE,
      0,
      0,
      99
    },
    {
      "Mari03_Special3_07",
      10,
      15,
      TRUE,
      0,
      0,
      99
    }
  },
  CRASH_PARTICLE = {
    {
      "Mari03_Special3_Spark_01",
      0,
      0.2,
      FASLE
    },
    {
      "Mari03_Special3_Spark_02",
      0,
      0.2,
      FALSE
    },
    {
      "Mari03_Special3_Spark_03",
      0,
      0.2,
      FALSE
    },
    {
      "Mari03_Special3_Spark_04",
      0,
      0.2,
      FALSE
    }
  },
  AUTO_DAMAGE = {
    {
      DT_MARI3_SPECIAL3_ATK_EXPLOSION_EFFECT,
      0,
      0,
      5,
      TRUE,
      TIME_AUTO_DAMAGE
    }
  },
  TIME_SOUND = {
    {92018, 99},
    {497, 25}
  }
}
Damage[DT_MARI3_SPECIAL3_ATK_EXPLOSION_EFFECT] = {
  START_LIFE = 15,
  ENABLE_DAMAGE = FALSE,
  START_SCALE_X = 0.23,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0,
  DAMAGE_XSPEED = 0,
  DAMAGE_YSPEED = 0,
  DAMAGETO_PLAYER = 0,
  DAMAGETO_MONSTER = 0,
  DAMAGE_MOTION = -1,
  DAMAGE_FLAG = DA_NOREACTION,
  ADDNODIRECTION = TRUE,
  CHILD_PARTICLE = {
    {
      "Mari03_Special3_Boom_01",
      20,
      20,
      FALSE,
      0,
      0
    },
    {
      "Mari03_Special3_Boom_02",
      20,
      20,
      FALSE,
      0,
      0
    },
    {
      "Mari03_Special3_Boom_03",
      20,
      20,
      FALSE,
      0,
      0
    },
    {
      "Mari03_Special3_Boom_04",
      50,
      50,
      FALSE,
      0,
      0
    },
    {
      "Mari03_Special3_Boom_05",
      100,
      100,
      FALSE,
      0,
      0
    },
    {
      "Mari03_Special3_Boom_06",
      20,
      20,
      FALSE,
      0,
      0
    },
    {
      "Mari03_Special3_Boom_07",
      20,
      20,
      FALSE,
      0,
      0
    },
    {
      "Mari03_Special3_Boom_08",
      50,
      50,
      FALSE,
      0,
      0
    }
  },
  AUTO_DAMAGE = {
    {
      DT_MARI3_SPECIAL3_ATK_FROZEN_HORIZONTAL,
      0,
      0.45,
      2,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1
    },
    {
      DT_MARI3_SPECIAL3_ATK_FROZEN_HORIZONTAL,
      0,
      -0.45,
      2,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1
    },
    {
      DT_MARI3_SPECIAL3_ATK_FROZEN_VERTICAL,
      0.45,
      0,
      2,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1
    },
    {
      DT_MARI3_SPECIAL3_ATK_FROZEN_VERTICAL,
      -0.45,
      0,
      2,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1
    },
    {
      DT_MARI3_SPECIAL3_ATK_EXPLOSION,
      0,
      0,
      1,
      TRUE,
      TIME_AUTO_DAMAGE
    }
  },
  TIME_SOUND = {
    {92019, 15}
  }
}
Damage[DT_MARI3_SPECIAL3_ATK_EXPLOSION] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.27,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0,
  DAMAGE_XSPEED = -0.015,
  DAMAGE_YSPEED = 0.025,
  DAMAGETO_PLAYER = -20.5,
  DAMAGETO_MONSTER = -27.83214,
  DAMAGE_MOTION = MID_COMMON_FREEZED_BY_PIXIE,
  DAMAGE_FLAG = DA_PARTICLES + DA_HIT_LIGHT + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT + DA_DAMAGE_DIRECTION + DA_KILLING_DAMAGE,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_MIDDLE,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0.01,
  IS_TOTAL_RANGE = TRUE,
  IS_SPECIAL_ATTACK = TRUE
}
Damage[DT_MARI3_SPECIAL3_ATK_FROZEN_HORIZONTAL] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.38,
  SCALE_Y_PER_X = 0.4,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0,
  DAMAGE_XSPEED = 0,
  DAMAGE_YSPEED = 0,
  DAMAGETO_MONSTER = -27.83214,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_ICECURSE,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_NORMAL,
  DAMAGE_FLAG = DA_ONEHIT_DAMAGE,
  IS_SPECIAL_ATTACK = TRUE
}
Damage[DT_MARI3_SPECIAL3_ATK_FROZEN_VERTICAL] = {
  PARENT = DT_MARI3_SPECIAL3_ATK_FROZEN_HORIZONTAL,
  START_SCALE_X = 0.2,
  SCALE_Y_PER_X = 2.5
}
Player_Action[MID_MARI3_SPECIAL2] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
    g_MyD3D:GetPlayer(_ARG_0_).m_bUnstop = true
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then
			g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(33, 191, 253)
		end
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_SPECIAL2_CORE)
	g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_SPECIAL2_CORE_ATK)
	g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_MARI3_SPECIAL2_ATK)
  else
    MakeError()
  end
end
Player_Action[MID_MARI3_SPECIAL2_ATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
			g_MyD3D:GetPlayer(_ARG_0_):StartSpecial(0, 0, 0)
			g_MyD3D:GetPlayer(_ARG_0_).m_bUnstop = true
			g_MyD3D:GetPlayer(_ARG_0_):Stop(g_MyD3D:GetPlayer(_ARG_0_):GetPos().x, g_MyD3D:GetPlayer(_ARG_0_):GetPos().y)
    end
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
		g_MyD3D:GetPlayer(_ARG_0_):SetFrame(96)
  elseif _ARG_1_ == 1 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
		g_MyD3D:GetPlayer(_ARG_0_):SetFrame(96)
	--g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92014)
    --if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
    --  g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari3_JSJ_Special2", true, true)
    --end
  elseif _ARG_1_ == 130 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92108)
  else
    MakeError()
  end
end
Damage[DT_MARI3_SPECIAL2_CORE] = {
  START_LIFE = 155,
  ENABLE_DAMAGE = FALSE,
  START_SCALE_X = 0.1,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0.15,
  START_LOCATE_Y = 0,
  CHILD_PARTICLE = {
    {
      "Mari03_Special2_circle_01",
      0,
      0,
      FALSE,
      0.38,
      0.32,
      155
    },
    {
      "Mari03_Special2_circle_02",
      0,
      0,
      FALSE,
      0.38,
      0.32,
      155
    },
    {
      "Mari03_Special2_01",
      0,
      0,
      FALSE,
      0.38,
      0.32,
      100
    },
    {
      "Mari03_Special2_02",
      0,
      0,
      FALSE,
      0.38,
      0.32,
      100
    },
    {
      "Mari03_Special2_03",
      0,
      0,
      FALSE,
      0.38,
      0.32,
      90
    },
    {
      "Mari03_Special2_04",
      0,
      0,
      FALSE,
      0.38,
      0.32,
      90
    },
    {
      "Mari03_Special2_05",
      0,
      0,
      FALSE,
      0.38,
      0.32,
      90
    },
    {
      "Mari03_Special2_06",
      0,
      0,
      FALSE,
      0.38,
      0.32,
      90
    },
    {
      "Mari03_Special2_07",
      0,
      0,
      FALSE,
      0.38,
      0.32,
      90
    },
    {
      "Mari03_Special2_08",
      0,
      0,
      FALSE,
      0.38,
      0.32,
      90
    },
    {
      "Mari03_Special2_09",
      0,
      0,
      FALSE,
      0.38,
      0.32,
      90
    },
    {
      "Mari03_Special2_10",
      0,
      0,
      FALSE,
      0.38,
      0.32,
      90
    }
  },
  TIME_SOUND = {
    {919, 1},
    {92015, 100},
    {92016, 90}
  }
}
Damage[DT_MARI3_SPECIAL2_CORE_ATK] = {
  START_LIFE = 155,
  ENABLE_DAMAGE = FALSE,
  START_SCALE_X = 0.1,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0.15,
  START_LOCATE_Y = 0,
  AUTO_DAMAGE = {
    {
      DT_MARI3_SPECIAL2_ATK,
      0,
      0,
      100,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1,
      FALSE
    },
    {
      DT_MARI3_SPECIAL2_ATK2,
      0,
      0,
      89,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1,
      FALSE
    },
    {
      DT_MARI3_SPECIAL2_ATK,
      0,
      0,
      78,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1,
      FALSE
    },
    {
      DT_MARI3_SPECIAL2_ATK2,
      0,
      0,
      67,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1,
      FALSE
    },
    {
      DT_MARI3_SPECIAL2_ATK,
      0,
      0,
      56,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1,
      FALSE
    },
    {
      DT_MARI3_SPECIAL2_ATK2,
      0,
      0,
      45,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1,
      FALSE
    },
    {
      DT_MARI3_SPECIAL2_ATK,
      0,
      0,
      34,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1,
      FALSE
    },
    {
      DT_MARI3_SPECIAL2_ATK2,
      0,
      0,
      23,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1,
      FALSE
    },
    {
      DT_MARI3_SPECIAL2_ATK,
      0,
      0,
      12,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1,
      FALSE
    },
    {
      DT_MARI3_SPECIAL2_ATK,
      0,
      0,
      1,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1,
      FALSE
    }
  }
}
Damage[DT_MARI3_SPECIAL2_ATK] = {
  START_LIFE = 5,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.4,
  SCALE_Y_PER_X = 0.65,
  START_LOCATE_X = 0.4,
  START_LOCATE_Y = 0.3,
  DAMAGE_XSPEED = 0.015,
  DAMAGE_YSPEED = 0.012,
  DAMAGETO_PLAYER = -10.5,
  DAMAGETO_MONSTER = -17.1738,
  DAMAGE_MOTION = MID_COMMON_DAMAGED_BY_FLYATK,
  DAMAGE_FLAG = DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_SHOW_DAMAGE_EFFECT + DA_DAMAGE_DIRECTION,
  DAMAGE_SOUND = 34,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_UP,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_DOWN,
  PUSH_X_TO_MONSTER = 0,
  PUSH_Y_TO_MONSTER = 0.013,
  IS_TOTAL_RANGE = TRUE,
  IS_SPECIAL_ATTACK = TRUE,
  MAGIC_EFF = EGC_EFFECT_DARKBALL,
  MAGIC_TIME = 5,
  CRASH_PARTICLE = {
    {
      "Rin03_Curse_Hit_01"
    }
  }
}
Damage[DT_MARI3_SPECIAL2_ATK2] = {
  PARENT = DT_MARI3_SPECIAL2_ATK,
  DAMAGE_YSPEED = 0.01,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP
}
Player_Action[MID_MARI3_BUILD_1] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 5 then
    g_MyD3D:GetPlayer(_ARG_0_):ClearChildMeshOneTimeMotion("WEAPON")
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_MARI3_BUILD_MANA_DEVICE, 0, 0)
    g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI3_BUILD_LIMIT_TIME, 10)
  elseif _ARG_1_ == 13 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92010)
  end
end
Player_Action[MID_MARI3_BUILD1_FINISH] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_BUILD_MANA_DEVICE)
    g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI3_BUILD_LIMIT_TIME, 10)
  end
end
Player_Action[MID_MARI3_BUILD_2] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_):ClearChildMeshOneTimeMotion("WEAPON")
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_MARI3_MISSILE_TURRET, 0, 0.2)
  elseif _ARG_1_ == 13 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92010)
  end
end
Player_Action[MID_MARI3_BUILD_3] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 10 then
  elseif _ARG_1_ == 13 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92010)
    g_MyD3D:GetPlayer(_ARG_0_):ClearChildMeshOneTimeMotion("WEAPON")
    g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_MARI1_PORTAL_CREATOR, 0, 0.2)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(91011)
    g_MyD3D:GetPlayer(_ARG_0_):DecreaseMP(-1)
  end
end
Damage[DT_MARI3_BUILD_MANA_DEVICE] = {
  PARENT = 1210,
  START_LIFE = 550,
  ENABLE_DAMAGE = FALSE,
  START_SCALE_X = 0.12,
  SCALE_Y_PER_X = 1.5,
  START_LOCATE_X = 0.08,
  START_LOCATE_Y = 0.1,
  DIRECTIONALITY = FALSE,
  DAMAGE_XSPEED = 0,
  DAMAGE_YSPEED = 0,
  DAMAGETO_PLAYER = 0,
  DAMAGETO_MONSTER = 0,
  DAMAGE_MOTION = -1,
  DAMAGE_SOUND = -1,
  DAMAGE_FLAG = DA_ONEHIT_DAMAGE + DA_PARTICLES,
  NO_PASS_DAMAGE = TRUE,
  DAMAGE_HP = 2,
  CRASH_START = 550,
  CRASH_END = 0,
  AUTO_DAMAGE = {
    {
      DT_MARI3_BUILD_MANA_DEVICE_TEAM_BUFF,
      0,
      0,
      550,
      FALSE,
      TIME_AUTO_DAMAGE
    },
    {
      DT_MARI3_BUILD_MANA_DEVICE_ENEMY_BUFF,
      0,
      0,
      550,
      FALSE,
      TIME_AUTO_DAMAGE
    }
  },
  TRIGGER = {
    {
      TRIGGER_GROUND_CRASH,
      0,
      0,
      "Mari3Build1DamageStop",
      1
    }
  },
  TIME_SOUND = {
    {92011, 520},
    {92011, 420},
    {92011, 320},
    {92011, 220},
    {92011, 120}
  },
  CHILD_PARTICLE = {
    {
      "Mari01_Construction_1"
    },
    {
      "Mari01_Construction_2"
    },
    {
      "Mari01_Construction_3"
    },
    {
      "Mari01_Construction_4"
    },
    {
      "Mari03_Machine_01",
      0,
      0,
      TRUE,
      0,
      0.03,
      540
    },
    {
      "Mari03_Machine_02",
      0,
      0,
      TRUE,
      0,
      0.03,
      540
    },
    {
      "Mari03_Machine_03",
      0,
      0,
      TRUE,
      0,
      0.03,
      540
    },
    {
      "Mari03_Machine_04",
      0,
      0,
      TRUE,
      0,
      0.03,
      540
    },
    {
      "Mari03_Machine_05",
      0,
      0,
      TRUE,
      0,
      0.03,
      540
    },
    {
      "Mari03_Machine_06",
      0,
      0,
      TRUE,
      0,
      0.03,
      540
    },
    {
      "Mari03_Machine_07",
      0,
      0,
      TRUE,
      0,
      0.03,
      540
    }
  },
  MAX_INSTANCE_NUM = 1
}
Damage[DT_MARI3_BUILD_MANA_DEVICE_MON] = {PARENT = DT_MARI3_BUILD_MANA_DEVICE, DAMAGE_HP = 1000000}
Mari3Build1DamageStop = {
  SPEED_X = 0,
  SPEED_Y = 0,
  GRAVITY = 0
}
Damage[DT_MARI3_BUILD_MANA_DEVICE_TEAM_BUFF] = {
  START_LIFE = 550,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.5,
  SCALE_Y_PER_X = 0.1,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0,
  DAMAGE_FLAG = DA_CURE_PLUS + DA_NOREACTION,
  DAMAGE_MOTION = -1,
  MAGIC_EFF = EGC_EFFECT_MARI3_BUILD_BUFF_TEAM,
  MAGIC_TIME = 1
}
Damage[DT_MARI3_BUILD_MANA_DEVICE_ENEMY_BUFF] = {
  START_LIFE = 550,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.5,
  SCALE_Y_PER_X = 0.1,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0,
  DAMAGE_FLAG = DA_NOREACTION,
  DAMAGE_MOTION = -1,
  MAGIC_EFF = EGC_EFFECT_MARI3_BUILD_BUFF_ENEMY,
  MAGIC_TIME = 1
}
Damage[DT_MARI3_BUILDING] = {
  START_SCALE_X = 0.1,
  USER_FRAME_DEPENDENT = TRUE,
  START_LIFE = 100,
  TRIGGER = {
    {
      TRIGGER_OWNER_MOTION,
      MID_MARI3_BUILD_2,
      1,
      "Mari3BuildOn2",
      2
    },
    {
      TRIGGER_OWNER_MOTION,
      MID_MARI3_BUILD1_FINISH,
      20,
      "Mari3BuildFinish",
      4
    },
    {
      TRIGGER_OWNER_MOTION,
      MID_MARI1_BUILD_CANCEL,
      15,
      "Mari3BuildCancel",
      5
    }
  },
  CHILD_PARTICLE = {
    {
      "Mari01_Construction_Start_01"
    },
    {
      "Mari01_Construction_Start_02"
    },
    {
      "Mari01_Construction_LV1",
      0,
      0,
      TRUE
    }
  },
  AUTO_DAMAGE = {
    {
      DT_CONSTRUCT_CANCEL,
      0,
      0,
      5,
      FALSE,
      TIME_AUTO_DAMAGE
    }
  },
  ADDNODIRECTION = TRUE
}
Damage[DT_MARI3_BUILDING2] = {
  PARENT = DT_MARI3_BUILDING,
  CHILD_PARTICLE = {
    {
      "Mari01_Construction_Start_01"
    },
    {
      "Mari01_Construction_Start_02"
    },
    {
      "Mari01_Construction_LV2",
      0,
      0,
      TRUE
    }
  },
  TRIGGER = {
    {
      TRIGGER_OWNER_MOTION,
      MID_MARI3_BUILD_3,
      1,
      "Mari3BuildOn3",
      2
    },
    {
      TRIGGER_OWNER_MOTION,
      MID_MARI3_BUILD_FINISH,
      20,
      "Mari3BuildFinish",
      4
    },
    {
      TRIGGER_OWNER_MOTION,
      MID_MARI1_BUILD_CANCEL,
      15,
      "Mari3BuildCancel",
      5
    }
  },
  AUTO_DAMAGE = {
    {
      DT_CONSTRUCT_CANCEL,
      0,
      0,
      5,
      FALSE,
      TIME_AUTO_DAMAGE
    },
    {
      DT_MARI3_MISSILE_TURRET,
      0,
      0.1,
      2000,
      TRUE,
      TIME_AUTO_DAMAGE
    }
  }
}
Damage[DT_MARI3_BUILDING3] = {
  PARENT = DT_MARI3_BUILDING,
  CHILD_PARTICLE = {
    {
      "Mari01_Construction_Start_01"
    },
    {
      "Mari01_Construction_Start_02"
    },
    {
      "Mari01_Construction_LV3",
      0,
      0,
      TRUE
    }
  },
  TRIGGER = {
    {
      TRIGGER_OWNER_MOTION,
      MID_MARI3_BUILD_FINISH,
      20,
      "Mari3BuildFinish",
      4
    },
    {
      TRIGGER_OWNER_MOTION,
      MID_MARI1_BUILD_CANCEL,
      15,
      "Mari3BuildCancel",
      5
    }
  },
  AUTO_DAMAGE = {
    {
      DT_CONSTRUCT_CANCEL,
      0,
      0,
      5,
      FALSE,
      TIME_AUTO_DAMAGE
    },
    {
      DT_MARI1_PORTAL_CREATOR,
      0,
      0.1,
      2000,
      TRUE,
      TIME_AUTO_DAMAGE
    }
  }
}
Damage[DT_MARI3_MISSILE_TURRET] = {
  START_LIFE = 270,
  START_SCALE_X = 0.15,
  SCALE_Y_PER_X = 1.5,
  DAMAGE_HP = 3,
  CHILD_PARTICLE = {
    {
      "Mari01_Construction_1"
    },
    {
      "Mari01_Construction_2"
    },
    {
      "Mari01_Construction_3"
    },
    {
      "Mari01_Construction_4"
    }
  },
  TIME_SOUND = {
    {91011, 150}
  },
  MESHINFO = {
    MESHLIST = {
      {
        "Mari1_RedCanon.p3m",
        "Mari3_Build3_Turret.dds"
      }
    },
    MOTIONLIST = {
      "Mari1_RedCanon_Start.frm",
      "Mari1_RedCanon_Fire.frm",
      "Mari3_RedCanon_Wait.frm"
    },
    SCALE = 0.35,
    ANIMATION = {
      {280, 0},
      {259, 1},
      {198, 2},
      {86, 1},
      {25, 2}
    },
    LOCALPOS = {
      0,
      -0.2,
      0.5
    },
    MESH_CREATEDAMAGE = {
      {
        DT_MARI3_MISSILE_TURRET_BULLET1,
        0,
        0,
        31,
        1
      },
      {
        DT_MARI3_MISSILE_TURRET_BULLET2,
        0,
        0,
        33,
        1
      },
      {
        DT_MARI3_MISSILE_TURRET_BULLET3,
        0,
        0,
        35,
        1
      }
    }
  },
  MAX_INSTANCE_NUM = 2
}
Damage[DT_MARI3_MISSILE_TURRET_MON] = {PARENT = DT_MARI3_MISSILE_TURRET, DAMAGE_HP = 1000000}
Damage[DT_MARI3_MISSILE_TURRET_BULLET1] = {
  PARENT = DT_MARI1_SENTRY_GUN_BULLET,
  START_LOCATE_Y = 0.05,
  START_LOCATE_X = 0.15,
  SPEED_Y = 0.03,
  SPEED_X = 0.02,
  START_LIFE = 60,
  TEXTURE = DAMAGE_TEX_MARI1_CANNONBALL,
  NO_CHECK_CONTACT_DAMAGE = 45,
  DAMAGETO_PLAYER = -16.5,
  DAMAGETO_MONSTER = -5.285735,
  GRAVITY = 0.002,
  AUTO_DAMAGE = {
    {
      DT_MARI1_SENTRY_GUN2_BULLET_BOOM,
      0,
      0,
      1,
      TRUE,
      CRASH_AUTO_DAMAGE + GROUND_CRASH_AUTO_DAMAGE
    },
    {
      DT_MARI1_CANNON2_GROUND_FIRE,
      0,
      0,
      1,
      TRUE,
      CRASH_AUTO_DAMAGE + GROUND_CRASH_AUTO_DAMAGE
    }
  },
  TIME_SOUND = {
    {90019, 60}
  }
}
Damage[DT_MARI3_MISSILE_TURRET_BULLET2] = {
  PARENT = DT_MARI3_MISSILE_TURRET_BULLET1,
  SPEED_Y = 0.03,
  SPEED_X = 0.025,
  GRAVITY = 0.002
}
Damage[DT_MARI3_MISSILE_TURRET_BULLET3] = {
  PARENT = DT_MARI3_MISSILE_TURRET_BULLET1,
  SPEED_Y = 0.03,
  SPEED_X = 0.03,
  GRAVITY = 0.002
}
Damage[DT_MARI3_TURRET_BULLET_BOOM] = {
  START_LIFE = 15,
  CHILD_PARTICLE = {
    {
      "Mari01_Cannon_Boom_01"
    },
    {
      "Mari01_Cannon_Boom_02"
    },
    {
      "Mari01_Cannon_Boom_03"
    },
    {
      "Mari01_Cannon_Boom_04"
    },
    {
      "Mari01_Cannon_Boom_05"
    }
  },
  TIME_SOUND = {
    {90021, 15}
  }
}
Damage[DT_MARI3_TURRET_GROUND_FIRE] = {
  PARENT = DT_RONAN_MAGIC_SPECIAL2_FIRE,
  TRIGGER = {
    {
      TRIGGER_GROUND_CRASH,
      0,
      0,
      "DamageStop",
      1
    }
  }
}
Damage[DT_MARI1_PORTAL] = {
  TEXTURE = 55,
  START_SCALE_X = 0.1,
  SCALE_Y_PER_X = 0.1,
  START_LOCATE_Y = 0.2,
  START_LIFE = 10
}
Damage[DT_MARI1_PORTAL_CREATOR] = {
  START_SCALE_X = 0.1,
  SCALE_Y_PER_X = 0.1,
  START_LOCATE_Y = 0.05,
  START_LIFE = 200,
  SPEED_Y = -0.02,
  LIFE_CHANGE = -2,
  AUTO_DAMAGE = {
    {
      DT_MARI1_PORTAL,
      0,
      -0.3,
      1,
      TRUE,
      GROUND_CRASH_AUTO_DAMAGE
    }
  },
  CHILD_PARTICLE = {
    {
      "Mari01_Construction_1",
      0,
      0,
      FALSE,
      0,
      -0.1
    },
    {
      "Mari01_Construction_2",
      0,
      0,
      FALSE,
      0,
      -0.1
    },
    {
      "Mari01_Construction_3",
      0,
      0,
      FALSE,
      0,
      -0.1
    },
    {
      "Mari01_Construction_4",
      0,
      0,
      FALSE,
      0,
      -0.1
    }
  }
}
Damage[DT_MARI1_PORTAL_MODEL] = {
  START_LIFE = 999999999,
  TEXTURE = 55,
  START_SCALE_X = 0.1,
  START_LOCATE_Y = 0
}
Mari3BuildOn2 = {
  START_LIFE = 4,
  AUTO_DAMAGE = {
    {
      DT_MARI3_BUILDING2,
      0,
      0,
      3,
      FALSE,
      TIME_AUTO_DAMAGE
    }
  }
}
Mari3BuildOn3 = {
  START_LIFE = 4,
  AUTO_DAMAGE = {
    {
      DT_MARI3_BUILDING3,
      0,
      0,
      3,
      FALSE,
      TIME_AUTO_DAMAGE
    }
  }
}
Mari3BuildFinish = {START_LIFE = 2000, LIFE_CHANGE = 2000}
Mari3BuildCancel = {START_LIFE = 8}
Player_Action[MID_MARI3_SUMMON_JSJ] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 1 then
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI1_SUMMON_WDW_DECO)
    g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI1_SUMMON_WDW_DECO2)
  elseif _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_):ClearChildMeshOneTimeMotion("WEAPON")
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(90022)
  elseif _ARG_1_ == 28 then
    g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_Start", true, true)
  elseif _ARG_1_ == 30 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(90025)
    g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_MARI_JSJ, 20)
  end
  if _ARG_1_ < 36 and _ARG_1_ % 3 == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Mari01_Casting_01", 0, 0, -0.08)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Mari01_Casting_02", 0, 0, -0.08)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticlePos("Mari01_Casting_03", 0, 0, -0.08)
  end
end
Player_Action[MID_MARI3_PRODUCT_START] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92009)
  end
end
Player_Action[MID_MARI3_MAGIC_BEAD] = function(_ARG_0_, _ARG_1_)
  g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count = g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count + 10
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count = 0
    if g_MyD3D:GetPlayer(_ARG_0_):IsLocalPlayer() then
      if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI4_REPAIR_R) then
        g_MyD3D:GetPlayer(_ARG_0_):ClearMagicEffect(EGC_EFFECT_MARI4_REPAIR_R)
      end
      if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI4_REPAIR) then
        g_MyD3D:GetPlayer(_ARG_0_):ClearMagicEffect(EGC_EFFECT_MARI4_REPAIR_R)
      end
    end
  elseif _ARG_1_ == 14 or _ARG_1_ == 22 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari01_Casting_01", 0, 0, -0.08)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari01_Casting_02", 0, 0, -0.08)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari01_Casting_03", 0, 0, -0.08)
    if _ARG_1_ == 14 then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(91012)
    end
  elseif _ARG_1_ == 27 then
    g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_MARI3_MAGIC_BEAD_MP_RECOVERY, 15)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(90024)
  end
  if g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count >= 1450 and g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count <= 1459 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari01_Casting_LV_Up_Mark_01")
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari01_Casting_LV_Up_Mark_02")
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari01_Casting_LV_Up_01")
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari01_Casting_LV_Up_02")
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari01_Casting_LV_Up_03")
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari01_Casting_LV_Up_04")
  elseif g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count >= 100 and g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count <= 109 then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari01_Casting_LV_Up_01")
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari01_Casting_LV_Up_02")
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari01_Casting_LV_Up_03")
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Mari01_Casting_LV_Up_04")
  end
end
Player_Action[MID_MARI3_MANA_SHIELD] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_):ClearChildMeshOneTimeMotion("WEAPON")
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(90015)
    if g_MyD3D:GetPlayer(_ARG_0_):CheckSkill(SID_MARI_COMMON_MANA_SHIELD_LV2) then
      g_MyD3D:GetPlayer(_ARG_0_):SetManaShieldRatio(1.5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):SetManaShieldRatio(2)
    end
    g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_MARI1_MANASHIELD, 10)
  end
end
Player_Action[MID_MARI3_COMBO_ATK1] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 3 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bDrawSlashRight = true
  elseif _ARG_1_ == 9 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then
      g_MyD3D:GetPlayer(_ARG_0_):StartAttack(11.4954, PAT_SWORD, PAR_SMALL_DAMAGE)
    else
      g_MyD3D:GetPlayer(_ARG_0_):StartAttack(6.2, PAT_SWORD, PAR_SMALL_DAMAGE)
    end
    g_MyD3D:GetPlayer(_ARG_0_):SetAttackProperty(ATTACKTYPE_NORMAL, ATTACKDIR_MIDDLE, 0.006, 0)
    g_MyD3D:GetPlayer(_ARG_0_):SetAttackInfo(0, 0, -6)
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92001)
  elseif _ARG_1_ == 13 then
    g_MyD3D:GetPlayer(_ARG_0_):EndAttack()
    g_MyD3D:GetPlayer(_ARG_0_).m_bDrawSlashRight = false
  elseif _ARG_1_ == 15 then
    if g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count == 255 then
      g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_MARI3_COMBO_ATK2)
    end
  else
    MakeError()
  end
end
Player_Action[MID_MARI3_COMBO_ATK2] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 7 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bDrawSlashRight = true
  elseif _ARG_1_ == 17 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92002)
  elseif _ARG_1_ == 19 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then
      g_MyD3D:GetPlayer(_ARG_0_):StartAttack(11.4954, PAT_SWORD, PAR_BIG_DAMAGE)
    else
      g_MyD3D:GetPlayer(_ARG_0_):StartAttack(6.2, PAT_SWORD, PAR_BIG_DAMAGE)
    end
    g_MyD3D:GetPlayer(_ARG_0_):SetAttackProperty(ATTACKTYPE_NORMAL, ATTACKDIR_MIDDLE, 0.004, 0)
    g_MyD3D:GetPlayer(_ARG_0_):SetAttackInfo(0, 0, -4)
  elseif _ARG_1_ == 22 then
    g_MyD3D:GetPlayer(_ARG_0_):EndAttack()
    g_MyD3D:GetPlayer(_ARG_0_).m_bDrawSlashRight = false
  elseif _ARG_1_ == 27 then
    if g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count == 255 then
      g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_MARI3_COMBO_ATK3)
    end
  else
    MakeError()
  end
end
Player_Action[MID_MARI3_COMBO_ATK3] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 10 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bDrawSlashRight = true
  elseif _ARG_1_ == 17 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92003)
  elseif _ARG_1_ == 19 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then
      g_MyD3D:GetPlayer(_ARG_0_):StartAttack(5.7477, PAT_SWORD, PAR_SMALL_DAMAGE)
    else
      g_MyD3D:GetPlayer(_ARG_0_):StartAttack(6.2, PAT_SWORD, PAR_SMALL_DAMAGE)
    end
    g_MyD3D:GetPlayer(_ARG_0_):SetAttackProperty(ATTACKTYPE_NORMAL, ATTACKDIR_MIDDLE, 0.005, 0)
    g_MyD3D:GetPlayer(_ARG_0_):SetAttackInfo(0, 0, -6)
  elseif _ARG_1_ == 22 then
    g_MyD3D:GetPlayer(_ARG_0_):EndAttack()
  elseif _ARG_1_ == 32 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then
      g_MyD3D:GetPlayer(_ARG_0_):StartAttack(5.7477, PAT_SWORD, PAR_DOWN)
    else
      g_MyD3D:GetPlayer(_ARG_0_):StartAttack(6.2, PAT_SWORD, PAR_DOWN)
    end
    g_MyD3D:GetPlayer(_ARG_0_):SetAttackProperty(ATTACKTYPE_DOWN, ATTACKDIR_MIDDLE, 0.02, 0.015)
    g_MyD3D:GetPlayer(_ARG_0_):SetAttackInfo(0, 0, -4)
  elseif _ARG_1_ == 34 then
    g_MyD3D:GetPlayer(_ARG_0_):EndAttack()
  elseif _ARG_1_ == 45 then
    g_MyD3D:GetPlayer(_ARG_0_).m_bDrawSlashRight = false
  end
end
Player_Action[MID_MARI3_JSJ_COMBO_ATK1] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
    if _ARG_1_ == 0 then
      g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_ComboAtk_1", true, true)
    elseif _ARG_1_ == 10 then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92020)
    elseif _ARG_1_ == 11 then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_COMBO_ATK1)
    elseif _ARG_1_ == 12 then
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
	    xPos = -0.35
      else
	    xPos = 0.35
      end
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_01", 0, xPos, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_02", 0, xPos, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_03", 0, xPos, 0, 5)
    elseif _ARG_1_ == 20 then
      if g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count == 255 then
        g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_MARI3_JSJ_COMBO_ATK2)
      elseif g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count == 300 then
        if g_MyD3D:GetPlayer(_ARG_0_).m_iBranchSkill == 1 then
          g_MyD3D:GetPlayer(_ARG_0_):SetIsRight(false)
        elseif g_MyD3D:GetPlayer(_ARG_0_).m_iBranchSkill == 2 then
          g_MyD3D:GetPlayer(_ARG_0_):SetIsRight(true)
        end
        g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_MARI3_JSJ_CRITICAL_ATK)
      else
        g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_ComboAtk_1_Return", true, true)
      end
    elseif _ARG_1_ == 22 then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73008)
    else
      MakeError()
    end
  end
end
Damage[DT_MARI3_JSJ_COMBO_ATK1] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.25,
  SCALE_Y_PER_X = 0.8,
  START_LOCATE_X = 0.25,
  START_LOCATE_Y = 0.17,
  DAMAGE_XSPEED = -0.012,
  DAMAGE_YSPEED = 0,
  DAMAGETO_PLAYER = -15,
  DAMAGETO_MONSTER = -4.62,
  DAMAGE_MOTION = MID_COMMON_BIGDAMAGE,
  DAMAGE_FLAG = DA_PARTICLES + DA_HIT_LIGHT + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_TRACE_CREATOR + DA_SHOW_DAMAGE_EFFECT,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_MIDDLE,
  PUSH_X_TO_MONSTER = 0.01,
  EARTH_QUAKE = 5
}
Player_Action[MID_MARI3_JSJ_COMBO_ATK2] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
    if _ARG_1_ == 0 then
      g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_ComboAtk_2", true, true)
    elseif _ARG_1_ == 2 then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73008)
    elseif _ARG_1_ == 14 then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92020)
    elseif _ARG_1_ == 15 then
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
	    xPos = -0.35
      else
	    xPos = 0.35
      end
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_01", 0, xPos, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_02", 0, xPos, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_03", 0, xPos, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_COMBO_ATK2)
    elseif _ARG_1_ == 22 then
      if g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count == 255 then
        g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_MARI3_JSJ_COMBO_ATK3)
      elseif g_MyD3D:GetPlayer(_ARG_0_).Next_Attack_Count == 300 then
        if g_MyD3D:GetPlayer(_ARG_0_).m_iBranchSkill == 1 then
          g_MyD3D:GetPlayer(_ARG_0_):SetIsRight(false)
        elseif g_MyD3D:GetPlayer(_ARG_0_).m_iBranchSkill == 2 then
          g_MyD3D:GetPlayer(_ARG_0_):SetIsRight(true)
        end
        g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_MARI3_JSJ_CRITICAL_ATK)
      else
        g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_ComboAtk_2_Return", true, true)
      end
    else
      MakeError()
    end
  end
end
Damage[DT_MARI3_JSJ_COMBO_ATK2] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.25,
  SCALE_Y_PER_X = 0.8,
  START_LOCATE_X = 0.25,
  START_LOCATE_Y = 0.17,
  DAMAGE_XSPEED = -0.008,
  DAMAGE_YSPEED = 0,
  DAMAGETO_PLAYER = -15,
  DAMAGETO_MONSTER = -6.16,
  DAMAGE_MOTION = MID_COMMON_BIGDAMAGE,
  DAMAGE_FLAG = DA_PARTICLES + DA_HIT_LIGHT + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_TRACE_CREATOR + DA_SHOW_DAMAGE_EFFECT,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_MIDDLE,
  PUSH_X_TO_MONSTER = 0.01,
  EARTH_QUAKE = 5
}
Player_Action[MID_MARI3_JSJ_COMBO_ATK3] = function (iPlayer,iFrame) 
	local Player = g_MyD3D:GetPlayer(iPlayer)
	if( Player:IsMagicEffect(EGC_MARI_JSJ, true) ) then
	    if( iFrame == 0 ) then
            Player:SetChildMeshMotion( "JSJ", "Mari_JSJ_ComboAtk_3", true , true)
            local xPos = 0.11
            if( Player:GetIsRight() == false ) then
                xPos = -0.18
                Player:AddParticleNoDirectionPosWithTrace("Mari2_JSJ_Missile_01_R", 0, xPos, 0.24, 5.0)        
                Player:AddParticleNoDirectionPosWithTrace("Mari2_JSJ_Missile_02_R", 0, xPos, 0.24, 5.0)        
                Player:AddParticleNoDirectionPosWithTrace("Mari2_JSJ_Missile_03_R", 0, xPos, 0.24, 5.0)        
                Player:AddParticleNoDirectionPosWithTrace("Mari2_JSJ_Missile_04_R", 0, xPos, 0.24, 5.0)        
            else
                Player:AddParticleNoDirectionPosWithTrace("Mari2_JSJ_Missile_01", 0, xPos, 0.25, 5.0)        
                Player:AddParticleNoDirectionPosWithTrace("Mari2_JSJ_Missile_02", 0, xPos, 0.25, 5.0)        
                Player:AddParticleNoDirectionPosWithTrace("Mari2_JSJ_Missile_03", 0, xPos, 0.25, 5.0)        
                Player:AddParticleNoDirectionPosWithTrace("Mari2_JSJ_Missile_04", 0, xPos, 0.25, 5.0)        
            end              
        elseif( iFrame == 10 ) then
            --Player:PlaySound(92022)                
            Player:AddDamage(DT_MARI3_JSJ_COMBO_ATK3_1)                          
        elseif( iFrame == 12 ) then
            local xPos = 0.27
            local yPos = -0.03
            if( Player:GetIsRight() == false ) then
                xPos = -0.27
            end             
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_01", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_02", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_03", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_04", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_05", 0, xPos, yPos, 5.0)
        elseif( iFrame == 14 ) then    
            Player:AddDamage(DT_MARI3_JSJ_COMBO_ATK3_1)                
            local xPos = 0.5
            local yPos = 0.03
            if( Player:GetIsRight() == false ) then
                xPos = -0.5
            end             
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_01", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_02", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_03", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_04", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_05", 0, xPos, yPos, 5.0)       
        elseif( iFrame == 16 ) then
            local xPos = 0.37
            local yPos = 0.1
            if( Player:GetIsRight() == false ) then
                xPos = -0.37
            end             
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_01", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_02", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_03", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_04", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_05", 0, xPos, yPos, 5.0)                                
        elseif( iFrame == 18 ) then
            Player:AddDamage(DT_MARI3_JSJ_COMBO_ATK3_2)
            local xPos = 0.37
            local yPos = -0.08
            if( Player:GetIsRight() == false ) then
                xPos = -0.37
            end             
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_01", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_02", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_03", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_04", 0, xPos, yPos, 5.0)        
            Player:AddParticleNoDirectionPos("Mari2_JSJ_Missile_Boom_05", 0, xPos, yPos, 5.0)                        
        elseif( iFrame == 20 ) then
            if( Player.Next_Attack_Count == 300 ) then
                if( Player.m_iBranchSkill == 1 ) then
                    Player:SetIsRight( false )
                elseif( Player.m_iBranchSkill == 2 ) then
                    Player:SetIsRight( true )
                end                
			    Player:ChangeMotion(MID_MARI3_JSJ_DOUBLE_ATK)			
            else
                Player:SetChildMeshMotion( "JSJ", "Mari_JSJ_ComboAtk_3_Return", true , true)			
            end
	    end
    end	    
end--------------------------------------------------------------------------------------------------------------------
Damage[DT_MARI3_JSJ_COMBO_ATK3_1] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.25,
  SCALE_Y_PER_X = 0.8,
  START_LOCATE_X = 0.25,
  START_LOCATE_Y = 0.2,
  DAMAGE_XSPEED = -0.005,
  DAMAGE_YSPEED = 0,
  DAMAGETO_PLAYER = -15,
  DAMAGETO_MONSTER = -7.7,
  DAMAGE_FLAG = DA_PARTICLES + DA_HIT_LIGHT + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_TRACE_CREATOR + DA_SHOW_DAMAGE_EFFECT,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0.01,
  TIME_SOUND = {
    {43, 9}
  }
}
Damage[DT_MARI3_JSJ_COMBO_ATK3_2] = {
  PARENT = DT_MARI3_JSJ_COMBO_ATK3_1,
  DAMAGE_XSPEED = -0.01,
  DAMAGE_YSPEED = 0.025,
  DAMAGETO_PLAYER = -15,
  DAMAGETO_MONSTER = -7.7,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  DAMAGE_FLAG = DA_PARTICLES + DA_HIT_LIGHT + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_TRACE_CREATOR + DA_SHOW_DAMAGE_EFFECT,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_MIDDLE,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0.01
}
Player_Action[MID_MARI3_JSJ_CRITICAL_ATK] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
    if _ARG_1_ == 0 then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_CRITICAL)
      g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_CriticalDouble_Atk", true, true)
    elseif _ARG_1_ == 10 then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73008)
    elseif _ARG_1_ == 8 then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_CRITICAL_DOUBLE_ATK)
    elseif _ARG_1_ == 14 then
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Start_05", 0, -0.45, 0, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_01", 0, -0.48, -0.1, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_02", 0, -0.48, -0.1, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_03", 0, -0.48, -0.1, 5)
      else
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Start_05", 0, 0.45, 0, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_01", 0, 0.48, -0.1, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_02", 0, 0.48, -0.1, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_03", 0, 0.48, -0.1, 5)
      end
    end
  end
end
Player_Action[MID_MARI3_JSJ_DOUBLE_ATK] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_MARI_JSJ, true) then
    if _ARG_1_ == 0 then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_DOUBLE)
      g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("JSJ", "Mari_JSJ_CriticalDouble_Atk", true, true)
    elseif _ARG_1_ == 10 then
      g_MyD3D:GetPlayer(_ARG_0_):PlaySound(73008)
    elseif _ARG_1_ == 8 then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_JSJ_CRITICAL_DOUBLE_ATK)
    elseif _ARG_1_ == 14 then
      if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Start_05", 0, -0.45, 0, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_01", 0, -0.48, -0.1, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_02", 0, -0.48, -0.1, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_03", 0, -0.48, -0.1, 5)
      else
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_Start_05", 0, 0.45, 0, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_01", 0, 0.48, -0.1, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_02", 0, 0.48, -0.1, 5)
        g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari03_JSJ_Punch_03", 0, 0.48, -0.1, 5)
      end

    end
  end
end
Damage[DT_MARI3_JSJ_CRITICAL_DOUBLE_ATK] = {
  START_LIFE = 10,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.25,
  SCALE_Y_PER_X = 0.6,
  START_LOCATE_X = 0.43,
  START_LOCATE_Y = 0.1,
  DAMAGE_XSPEED = -0.015,
  DAMAGE_YSPEED = 0.03,
  DAMAGETO_PLAYER = -17,
  DAMAGETO_MONSTER = -14,
  DAMAGE_MOTION = MID_COMMON_DAMAGED_BY_FLYATK,
  DAMAGE_FLAG = DA_PARTICLES + DA_HIT_LIGHT + DA_PUSH + DA_REVERSE_DIRECTION + DA_ONEHIT_DAMAGE + DA_TRACE_CREATOR + DA_SHOW_DAMAGE_EFFECT,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_MIDDLE,
  PUSH_X_TO_MONSTER = 0.01,
  PUSH_Y_TO_MONSTER = 0.03,
  EARTH_QUAKE = 10
}
Player_Action[MID_MARI3_SPECIAL4] = function(_ARG_0_, _ARG_1_)
  g_MyD3D:GetPlayer(_ARG_0_).x_Speed = 0
  g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0
  if _ARG_1_ == 0 then
    g_MyD3D:GetPlayer(_ARG_0_).Super = 255
    g_MyD3D:GetPlayer(_ARG_0_).m_bUnstop = true
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == true then
	  g_MyD3D:GetPlayer(_ARG_0_):StartSpecialNoZoom(33, 191, 253)
	else
	  SSS(g_MyD3D:GetPlayer(_ARG_0_), true)
    end
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() == false then
      g_MyD3D:GetPlayer(_ARG_0_):SetIsRight(not g_MyD3D:GetPlayer(_ARG_0_):GetIsRight())
      g_MyD3D:GetPlayer(_ARG_0_):AddDamageWithLocate(DT_MARI3_SPECIAL4_JSJ, -0.75)
      g_MyD3D:GetPlayer(_ARG_0_):SetIsRight(not g_MyD3D:GetPlayer(_ARG_0_):GetIsRight())
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddDamage(DT_MARI3_SPECIAL4_JSJ)
    end
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(1000421)
  elseif _ARG_1_ == 10 then
    if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
      g_MyD3D:GetPlayer(_ARG_0_):AddDamageTarget(DT_MARI3_SPECIAL4_JSJ_MAGNETIC_FIND, (g_MyD3D:GetPlayer(_ARG_0_):GetTargetPos(5)))
    end
  elseif _ARG_1_ == 40 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(92006)
  elseif _ARG_1_ == 50 or _ARG_1_ == 53 or _ARG_1_ == 115 then
    g_kCamera:SetEarthQuake(21)
  elseif _ARG_1_ > 48 and _ARG_1_ < 120 then
    if _ARG_1_ % 2 == 0 then
      g_kCamera:CameraVib(0.1, 0.4, 1)
    end
  else
    MakeError()
  end
end
Damage[DT_MARI3_SPECIAL4_JSJ] = {
  START_LIFE = 230,
  ENABLE_DAMAGE = FALSE,
  START_SCALE_X = 0.01,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0.375,
  START_LOCATE_Y = 0.36,
  ADDNODIRECTION = TRUE,
  IS_SPECIAL_ATTACK = TRUE,
  CREATE_CHECK_BOUNDARY = TRUE,
  MESHINFO = {
    MESHLIST = {
      {
        "Mari_JSJ.p3m",
        "Mari_JSJ.dds"
      }
    },
    MOTIONLIST = {
      "mari3_special4_JSJ.frm"
    },
    SCALE = 1,
    USE_AFTER_IMAGE = 0.1,
    ANIMATION = {
      {230, 0}
    },
    MESH_CHILDPARTICLE = {
      {
        "4th_Mari3_Circle_01",
        0,
        0.15,
        1,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari3_Circle_02",
        0,
        0.15,
        1,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari3_Circle_03",
        0,
        0.15,
        1,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari3_Circle_04",
        0,
        0.15,
        1,
        0,
        FALSE,
        0
      },
      {
        "Arme01_Icetrap_LV1_06",
        0,
        0.15,
        40,
        0,
        FALSE,
        0
      },
      {
        "Arme01_Icetrap_LV1_07",
        0,
        0.15,
        40,
        0,
        FALSE,
        0
      },
      {
        "Pet_Duelneo_Boom_05",
        0,
        0.15,
        40,
        0,
        FALSE,
        0
      },
      {
        "Pet_Duelneo_Boom_10",
        0,
        0.15,
        40,
        0,
        FALSE,
        0
      },
      {
        "Mari04_DashATT_06",
        0,
        0.15,
        40,
        0,
        FALSE,
        0
      },
      {
        "Rin_Special02_Spark_03",
        0,
        0.15,
        40,
        0,
        FALSE,
        0
      },
      {
        "Rin_Special02_Spark_05",
        0,
        0.15,
        40,
        0,
        FALSE,
        0
      },
      {
        "Rin_Special02_Spark_12",
        0,
        0.15,
        40,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari3_Circle_Boom",
        0,
        0.15,
        40,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari4_Holl_01",
        0,
        0.15,
        56,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari4_Holl_02",
        0,
        0.15,
        56,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari4_Holl_03",
        0,
        0.15,
        56,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari4_Holl_04",
        0,
        0.15,
        56,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari4_Circle_01",
        0,
        0.15,
        101,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari4_Circle_02",
        0,
        0.15,
        101,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari4_Circle_03",
        0,
        0.15,
        101,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari4_Circle_04",
        0,
        0.15,
        101,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari4_Circle_05",
        0,
        0.15,
        101,
        0,
        FALSE,
        0
      },
      {
        "4th_Mari4_Circle_06",
        0,
        0.15,
        101,
        0,
        FALSE,
        0
      }
    },
    LOCALPOS = {
      0,
      0,
      0.5
    }
  },
  PLAYER_X_TRACE = FALSE,
  TIME_SOUND = {
    {529, 230},
    {1155, 190},
    {1100119, 188},
    {1100119, 185},
    {100007, 170},
    {982010, 130},
    {982010, 100},
    {982010, 70},
    {1427, 15}
  },
  AUTO_DAMAGE = {
    {
      DT_MARI3_SPECIAL4_JSJ_MAGNETIC_ATK,
      0,
      0,
      129,
      false,
      TIME_AUTO_DAMAGE,
      -1
    },
    {
      DT_MARI3_SPECIAL4_JSJ_MAGNETIC_PULL,
      0,
      0,
      190,
      false,
      TIME_AUTO_DAMAGE,
      -1
    }
  }
}
Damage[DT_MARI3_SPECIAL4_JSJ_MAGNETIC_ATK] = {
  START_LIFE = 130,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.5,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0.18,
  START_ANGLE = 0,
  IS_TOTAL_RANGE = TRUE,
  IS_SPECIAL_ATTACK = TRUE,
  DAMAGETO_PLAYER = -21.4,
  DAMAGETO_MONSTER = -16.4662875,
  DAMAGE_MOTION = MID_COMMON_SMALLDAMAGE,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_MIDDLE,
  DAMAGE_FLAG = DA_CANCEL_JUMP_STATE + DA_KILLING_DAMAGE,
  HIT_PER_FRAME = 10,
  EARTH_QUAKE = 5,
  EARTH_QUAKE_Y = 5,
  AUTO_DAMAGE = {
    {
      DT_MARI3_SPECIAL4_JSJ_MAGNETIC_ATK_FANAL,
      0,
      0,
      10,
      false,
      TIME_AUTO_DAMAGE,
      -1
    }
  }
}
Damage[DT_MARI3_SPECIAL4_JSJ_MAGNETIC_ATK_FANAL] = {
  START_LIFE = 30,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.5,
  SCALE_Y_PER_X = 1,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0.18,
  IS_TOTAL_RANGE = TRUE,
  IS_SPECIAL_ATTACK = TRUE,
  DAMAGETO_PLAYER = -28.6,
  DAMAGETO_MONSTER = -16.4662875,
  DAMAGE_XSPEED = -0.08,
  DAMAGE_YSPEED = 0.04,
  DAMAGE_MOTION = MID_COMMON_DOWN_AND_STANDUP,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = 0.025,
  PUSH_Y_TO_MONSTER = 0.03,
  DAMAGE_FLAG = DA_FELL_DOWN_AT_SKY + DA_CANCEL_JUMP_STATE + DA_KILLING_DAMAGE + DA_ONEHIT_DAMAGE,
  CHILD_PARTICLE = {
    {
      "4th_Ronan2_Start_04",
      0,
      0,
      TRUE,
      0,
      -0.17
    },
    {
      "Ronan3_SPECIAL2-3_Boom_01",
      0,
      0,
      TRUE,
      0,
      -0.17
    },
    {
      "Ronan3_SPECIAL2-3_Boom_02",
      0,
      0,
      TRUE,
      0,
      -0.17
    },
    {
      "Ronan3_SPECIAL2-3_Boom_03",
      0,
      0,
      TRUE,
      0,
      -0.17
    },
    {
      "SK2_Magnetic_Boom_04",
      0,
      0,
      TRUE,
      0,
      -0.17
    },
    {
      "Sieg04_Special3_06",
      0,
      0,
      TRUE,
      0,
      -0.17
    }
  }
}
Damage[DT_MARI3_SPECIAL4_JSJ_MAGNETIC_FIND] = {
  START_LIFE = 35,
  ENABLE_DAMAGE = TRUE,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0.08,
  START_SCALE_X = 0.1,
  SCALE_Y_PER_X = 2,
  DAMAGE_MOTION = MID_COMMON_SMALLDAMAGE,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_DOWN,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_UP,
  PUSH_X_TO_MONSTER = 0.005,
  PUSH_Y_TO_MONSTER = 0.03,
  CHILD_PARTICLE = {
    {
      "Casi_Lightning_Mark_01",
      0,
      0,
      TRUE,
      0,
      0.22,
      34
    },
    {
      "Casi_Lightning_Mark_02",
      0,
      0,
      TRUE,
      0,
      0.22,
      34
    },
    {
      "Casi_Lightning_Mark_03",
      0,
      0,
      TRUE,
      0,
      0.22,
      34
    }
  },
  AUTO_DAMAGE = {
    {
      DT_MARI3_SPECIAL4_JSJ_MAGNETIC_FIND_GO,
      0,
      0,
      5,
      TRUE,
      TIME_AUTO_DAMAGE,
      -1,
      FALSE
    }
  },
  IS_SPECIAL_ATTACK = TRUE
}
Damage[DT_MARI3_SPECIAL4_JSJ_MAGNETIC_FIND_GO] = {
  START_LIFE = 50,
  ENABLE_DAMAGE = TRUE,
  START_LOCATE_Y = -0.08,
  START_SCALE_X = 0,
  ADDNODIRECTION = TRUE,
  SHIELD_BREAK = TRUE,
  PLUS_DELAY = 20,
  DAMAGE_FLAG = DA_ONEHIT_DAMAGE,
  DAMAGE_MOTION = MID_COMMON_SMALLDAMAGE,
  DAMAGE_TO_TELEPORT = DT_MARI3_SPECIAL4_JSJ,
  IS_SPECIAL_ATTACK = TRUE
}
Damage[DT_MARI3_SPECIAL4_JSJ_MAGNETIC_PULL] = {
  START_LIFE = 70,
  ENABLE_DAMAGE = TRUE,
  START_SCALE_X = 0.8,
  SCALE_Y_PER_X = 0.7,
  START_LOCATE_X = 0,
  START_LOCATE_Y = 0.18,
  DAMAGE_XSPEED = 0.05,
  IS_TOTAL_RANGE = TRUE,
  IS_SPECIAL_ATTACK = TRUE,
  DAMAGETO_PLAYER = 0,
  DAMAGETO_MONSTER = -16.4662875,
  DAMAGE_MOTION = -1,
  ATTACK_TYPE_TO_MONSTER = ATTACKTYPE_NORMAL,
  ATTACK_DIR_TO_MONSTER = ATTACKDIR_MIDDLE,
  PUSH_X_TO_MONSTER = 0.015,
  DAMAGE_FLAG = DA_KILLING_DAMAGE + DA_DAMAGE_DIRECTION + DA_POSITION_CONTROL
}
Player_Action[MID_MARI3_AIR_DASH] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 1 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(90005)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari04_AirDash_01", 0, -0.18, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari04_AirDash_02", 0, -0.18, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari04_AirDash_03", 0, -0.18, 0, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari04_AirDash_01_R", 0, 0.18, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari04_AirDash_02_R", 0, 0.18, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari04_AirDash_03_R", 0, 0.18, 0, 5)
    end
    --g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("WEAPON", "SoulTaker_3219", true, true)
  elseif _ARG_1_ < 30 then
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = 0
  end
end
Player_Action[MID_MARI3_DOWN_DASH] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ < 25 then
	g_MyD3D:GetPlayer(_ARG_0_).NoCheckContact = 2
  end
	if _ARG_1_ == 0 then
		g_MyD3D:GetPlayer(_ARG_0_).x_Speed = 0
  elseif _ARG_1_ == 1 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(90005)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Polaris_Down_Dash_01", 0, -0.095, 0.07, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Polaris_Down_Dash_02", 0, -0.095, 0.07, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Polaris_Down_Dash_03", 0, -0.095, 0.07, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Polaris_Down_Dash_01_R", 0, 0.095, 0.07, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Polaris_Down_Dash_02_R", 0, 0.095, 0.07, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Polaris_Down_Dash_03_R", 0, 0.095, 0.07, 5)
    end
    --g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("WEAPON", "SoulTaker_3219", true, true)
  elseif _ARG_1_ >= 0 and _ARG_1_ < 5 then
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = -0.036
  elseif _ARG_1_ >= 5 and _ARG_1_ > 15 then
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = -0.026
  elseif _ARG_1_ >= 15 and _ARG_1_ < 25 then
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = -0.022
  elseif _ARG_1_ < 30 then
    g_MyD3D:GetPlayer(_ARG_0_).y_Speed = -0.016
  end
end
Player_Action[MID_MARI3_BOOSTER_DASH_START] = function(_ARG_0_, _ARG_1_)
  if _ARG_1_ == 1 then
    g_MyD3D:GetPlayer(_ARG_0_):PlaySound(90005)
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() and false == g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI4_BOOSTER_DASH) then
      g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI4_BOOSTER_DASH)
    elseif false == g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() and false == g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI4_BOOSTER_DASH_R) then
      g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI4_BOOSTER_DASH_R)
    end
    --g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("WEAPON", "SoulTaker_3220", true, true)
  elseif _ARG_1_ == 5 then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari04_BDash_Start", 0, -0.1, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Flarebeast_Turn_R", 0, 0.06, -0.12, 5)
    else
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Mari04_BDash_Start_R", 0, 0.1, 0, 5)
      g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPos("Flarebeast_Turn", 0, -0.06, -0.12, 5)
    end
  end
end
Player_Action[MID_MARI3_BOOSTER_DASH] = function(_ARG_0_, _ARG_1_)
  --if _ARG_1_ == 1 then
  --  g_MyD3D:GetPlayer(_ARG_0_):SetChildMeshMotion("WEAPON", "SoulTaker_3221", true, true)
  --end
end