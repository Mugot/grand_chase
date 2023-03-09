PrevCommendUp = false
PrevCommendLeft = false
PrevCommendRight = false
PrevCommendDown = false
PrevCommandPunch = false
PrevCommandDoubleX = false

function OnDash_New(_ARG_0_, _ARG_1_, MID_DASHATK, MID_DASHATK_BACK)
  local mPlayer = g_MyD3D:GetPlayer(_ARG_0_)
	if _ARG_1_ then
		if g_kControls.Up then
			if mPlayer.IsContact then
        DashJumpFunc(mPlayer, _ARG_1_)
      end
			mPlayer.NoCheckContact = 0
    elseif g_kControls.Fresh_Punch and (MID_DASHATK ~= -1 or MID_DASHATK_BACK ~= -1) then
      if g_kControls.Left == true and mPlayer:GetIsRight() == true or g_kControls.Right == true and mPlayer:GetIsRight() == false then
        mPlayer:ChangeMotion(MID_DASHATK_BACK)
      else
        mPlayer:ChangeMotion(MID_DASHATK)
      end
      g_kControls.Fresh_Punch = false
    elseif g_kControls.Down then
      g_kControls.Down = false
      if CheckPortal(mPlayer, _ARG_1_) then
        return
      end
      mPlayer.y_Speed = mPlayer.y_Speed - 0.01
      mPlayer.NoCheckContact = 20
    end
		if mPlayer:GetFrame() < 3 then
			mPlayer:SetWindSpeed()
    end
  end
end
function dashAtkBack(_ARG_1_, MID_DASHATK_BACK)
	if g_MyD3D:GetPlayer(_ARG_1_):GetBurnningPoint() < 0.6 and (g_MyD3D:GetPlayer(_ARG_1_).m_bIsBurnningMode == false and g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_EFFECT_JIN1_SPECIAL4_BUFF) == false) then
		return 0
	end
	if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 and IsPushBack((g_MyD3D:GetPlayer(_ARG_1_))) then
		g_MyD3D:GetPlayer(_ARG_1_).m_fBurnningElapsedTime = 0
		g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_DASHATK_BACK)
	end
end
function tiredEmoticon(_ARG_0_)
  if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() then
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin_Hadoken_Nogauge_Emoticon01", 0, 0.1, 0.15, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Amy1_Emoticon01", 0, 0.1, 0.15, 5)
  else
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Jin_Hadoken_Nogauge_Emoticon01_R", 0, -0.1, 0.15, 5)
    g_MyD3D:GetPlayer(_ARG_0_):AddParticleNoDirectionPosWithTrace("Amy1_Emoticon01_R", 0, -0.1, 0.15, 5)
  end
end

local lastAttack = -4
local attackTime = os.clock()
function Jin1StringBuff(_ARG_1_)
	if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 then
		if lastAttack ~= g_MyD3D:GetPlayer(_ARG_1_):GetCurrentMotion() and attackTime + 1  > os.clock() then
			g_MyD3D:GetPlayer(_ARG_1_):SetMagicEffect(EGC_EFFECT_JIN_FLUENCE_BOOST, 3)
		end
		if g_MyD3D:GetPlayer(_ARG_1_):IsLocalPlayer() == true then
      lastAttack = g_MyD3D:GetPlayer(_ARG_1_):GetCurrentMotion()
      attackTime = os.clock()
    end
  end
end
function CheckJin1SpecialStance(_ARG_0_)
  if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == true then
    return 0
  end
  if g_kControls.Fresh_Double_X then
		if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() < 20 and g_MyD3D:GetPlayer(_ARG_1_):GetCurrentMotion() == MID_JIN1_ROLL then
			g_MyD3D:GetPlayer(_ARG_1_):SetIsRight(not g_MyD3D:GetPlayer(_ARG_1_):GetIsRight())
		end
    g_MyD3D:GetPlayer(_ARG_0_):ChangeMotion(MID_JIN1_SPECIAL_STANCE)
    return true
  end
  return false
end
StateFunc[MID_JIN1_SPECIAL_STANCE] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Up and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_SPECIAL_COMMAND_3_LV2) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_TENLIGHT_BURNING)
    end
    if g_kControls.Fresh_Down then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_UNIQUE_EVASION)
    end
    if g_kControls.Fresh_Punch and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_SPECIAL_COMMAND_2_LV2) then
        g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_BODYCANNON)
    end
    if g_kControls.Fresh_Double_X and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > 20 and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() < 53 then
      g_MyD3D:GetPlayer(_ARG_1_):SetFrame(53)
    end
    if IsHitFront((g_MyD3D:GetPlayer(_ARG_1_))) and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_SPECIAL_COMMAND_1_LV2) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_DASHPUNCH)
    end
    if IsHitBack((g_MyD3D:GetPlayer(_ARG_1_))) and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_DASH_COMBO_LV3) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_DASH_COMBO_LV3)
    end
  end
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 52 then
    g_MyD3D:GetPlayer(_ARG_1_):SetFrame(51)
  end
end
function JinDelayCancel(_ARG_0_, _ARG_1_, MID_SPECIAL_STANCE, _ARG_2_)
  if not _ARG_1_ then
    return
  end
  --if not g_MyD3D:GetPlayer(_ARG_0_):CheckSkill(SID_JIN1_SPECIAL_COMMAND_LINK) then
  --  return
  --end
  if g_MyD3D:GetPlayer(_ARG_0_):GetFrame() == 0 then
    PrevCommendUp = false
    PrevCommendLeft = false
    PrevCommendRight = false
    PrevCommendDown = false
		PrevCommandPunch = false
		PrevCommandDoubleX = false
  end
  if g_kControls.Fresh_Punch then
		PrevCommandPunch = g_kControls.Fresh_Punch
  end
	if g_kControls.Fresh_Double_X then
		PrevCommandDoubleX = g_kControls.Fresh_Double_X
	end
	if PrevCommandDoubleX or PrevCommandPunch then
		if g_kControls.Fresh_Up then
      PrevCommendUp = g_kControls.Fresh_Up
    end
    if g_kControls.Fresh_Left then
      PrevCommendLeft = g_kControls.Fresh_Left
    end
    if g_kControls.Fresh_Right then
      PrevCommendRight = g_kControls.Fresh_Right
    end
    if g_kControls.Fresh_Down then
      PrevCommendDown = g_kControls.Fresh_Down
    end
  end
  if g_MyD3D:GetPlayer(_ARG_0_):GetFrame() + _ARG_2_ > g_MyD3D:GetPlayer(_ARG_0_):GetFrameNum() then
		if PrevCommandDoubleX == true and MID_SPECIAL_STANCE ~= -4 then
			g_MyD3D:GetPlayer(_ARG_0_):SetMotion(MID_SPECIAL_STANCE)
			g_MyD3D:GetPlayer(_ARG_0_):SetFrame(0)
		elseif PrevCommandPunch == true then
			OnWait(g_MyD3D:GetPlayer(_ARG_0_), _ARG_1_)
		end
		g_kControls.Fresh_Punch = PrevCommandPunch
		g_kControls.Fresh_Up = PrevCommendUp
		g_kControls.Fresh_Left = PrevCommendLeft
		g_kControls.Fresh_Right = PrevCommendRight
		g_kControls.Fresh_Down = PrevCommendDown
	end
end
StateFunc[MID_JIN_WAIT] = function(_ARG_0_, _ARG_1_)
	CheckJin1SpecialStance(_ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == true and _ARG_0_ == true and g_kControls.Fresh_Skill_Key then
    if g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_SKILL_JIN_RENEW_KUMKANG_DUNGEON) then
      g_MyD3D:GetPlayer(_ARG_1_):ClearMagicEffect(EGC_SKILL_JIN_RENEW_KUMKANG_DUNGEON)
    elseif g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_SKILL_JIN_RENEW_KYUHWA_DUNGEON) then
      g_MyD3D:GetPlayer(_ARG_1_):ClearMagicEffect(EGC_SKILL_JIN_RENEW_KYUHWA_DUNGEON)
    end
    g_kControls.Fresh_Skill_Key = false
  end
end
StateFunc[MID_JIN1_SPECIAL1_SHOULDERCHARGE_A] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 then
    if g_MyD3D:GetPlayer(_ARG_1_):GetOldMotion() == MID_JIN1_SPECIAL1_SHOULDERCHARGE_A then
      g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_JIN1_SPECIAL1_SHOULDERCHARGE_B)
    end
    if g_MyD3D:GetPlayer(_ARG_1_):GetOldMotion() == MID_JIN1_SPECIAL1_SHOULDERCHARGE_B then
      g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_JIN1_SPECIAL1_SHOULDERCHARGE_C)
    end
  end
end
StateFunc[MID_JIN_UNIQUE_HUJIN] = function(_ARG_0_, _ARG_1_) --IRA DO FURACÃO
  if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == true then
    if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_SPECIAL_COMMAND_1_LV2) then
      g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_JIN1_DASHPUNCH)
    end
  else
  Jin1StringBuff(_ARG_1_)
  JinDelayCancel(_ARG_1_, _ARG_0_, MID_JIN1_SPECIAL_STANCE, 5)
  end
end
StateFunc[MID_JIN1_CHASE_KICK] = function(_ARG_0_, _ARG_1_)
  Jin1StringBuff(_ARG_1_)
  JinDelayCancel(_ARG_1_, _ARG_0_, MID_JIN1_SPECIAL_STANCE, 5)
end
StateFunc[MID_JIN_UNIQUE_HANDWIND] = function(_ARG_0_, _ARG_1_) --ONDA ENERGÉTICA
  if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == true then
    if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_SPECIAL_COMMAND_3_LV2) then
      g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_JIN1_TENLIGHT_BURNING)
    end
  else
  Jin1StringBuff(_ARG_1_)
  JinDelayCancel(_ARG_1_, _ARG_0_, MID_JIN1_SPECIAL_STANCE, 5)
  end
end
StateFunc[MID_JIN_UNIQUE_HANDWIND_BP_EMPTY] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == true then
    if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_SPECIAL_COMMAND_3_LV2) then
      g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_JIN1_TENLIGHT)
    end
  end
end
StateFunc[MID_JIN1_TENLIGHT_BURNING] = function(_ARG_0_, _ARG_1_)
  Jin1StringBuff(_ARG_1_)
  JinDelayCancel(_ARG_1_, _ARG_0_, MID_JIN1_SPECIAL_STANCE, 5)
end
StateFunc[MID_JIN1_DASHPUNCH] = function(_ARG_0_, _ARG_1_)
  Jin1StringBuff(_ARG_1_)
  JinDelayCancel(_ARG_1_, _ARG_0_, MID_JIN1_SPECIAL_STANCE, 5)
end
StateFunc[MID_JIN_UNIQUE_SPINKICK] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == true then
    if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_SPECIAL_COMMAND_2_LV2) then
      g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_JIN1_BODYCANNON)
    end
  else
  Jin1StringBuff(_ARG_1_)
  JinDelayCancel(_ARG_1_, _ARG_0_, MID_JIN1_SPECIAL_STANCE, 5)
  end
end
StateFunc[MID_JIN1_BODYCANNON] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == false then
    Jin1StringBuff(_ARG_1_)
    JinDelayCancel(_ARG_1_, _ARG_0_, MID_JIN1_SPECIAL_STANCE, 5)
  end
end
StateFunc[MID_JIN_DOUBLE_ATK] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_DOUBLE_ATK_LV2) then
    g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_JIN1_DOUBLEL_ATK_LV2)
  end
end
StateFunc[MID_JIN_DASH_ATK] = function(_ARG_0_, _ARG_1_)
	dashAtkBack(_ARG_1_, MID_JIN_UNIQUE_SPINKICK)
  if _ARG_0_ then
    if (g_kControls.Fresh_Up and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() >= 20) and (g_kControls.Select_Item == false and g_kControls.Fresh_Double_X == false) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_DASH_ATK_2)
    end
		if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == true then
			if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() >= 7 and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() <= 25 and g_kControls.Fresh_Down and not g_MyD3D:GetPlayer(_ARG_1_):IsOldMotion(MID_JIN1_ABUNDANTSTEP) then
				g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_UNIQUE_EVASION)
			end
		else
			CheckJin1SpecialStance(_ARG_1_)
			if g_kControls.Fresh_Down and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() < 20 then
				g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_ROLL)
			end
		end
  end
end
StateFunc[MID_JIN1_DASH_ATK_LV2] = function(_ARG_0_, _ARG_1_)
	dashAtkBack(_ARG_1_, MID_JIN_UNIQUE_SPINKICK)
  if _ARG_0_ then
    if (g_kControls.Fresh_Up and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() >= 20) and (g_kControls.Select_Item == false and g_kControls.Fresh_Double_X == false) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_DASH_ATK_2)
    end
		if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == true then
			if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() >= 7 and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() <= 25 and g_kControls.Fresh_Down and not g_MyD3D:GetPlayer(_ARG_1_):IsOldMotion(MID_JIN1_ABUNDANTSTEP) then
				g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_UNIQUE_EVASION)
			end
		else
			CheckJin1SpecialStance(_ARG_1_)
			if g_kControls.Fresh_Down and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() < 20 then
				g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_ROLL)
			end
		end
  end
end
StateFunc[MID_JIN_DASH_ATK_2] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 then
    if g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_DASH_COMBO_LV2) then
      g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_JIN1_DASH_COMBO_LV2)
    elseif g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_DASH_COMBO_LV3) and g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == true then
      g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_JIN1_DASH_COMBO_LV3)
    end
  end
end
StateFunc[MID_JIN_JUMP_ATK] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == true then
    if _ARG_0_ and g_kControls.Fresh_Up and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() < 10 and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_JUMP_PLUS) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_JUMP_PLUS_LV2)
    end
  else
    if _ARG_0_ and g_kControls.Fresh_Up and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_JUMP_PLUS) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_JUMP_PLUS_LV2)
    end
  end
end
StateFunc[MID_JIN1_JUMP_ATK_LV2] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == true then
    if _ARG_0_ and g_kControls.Fresh_Up and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() < 10 and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_JUMP_PLUS) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_JUMP_PLUS_LV2)
    end
  else
    if _ARG_0_ and g_kControls.Fresh_Up and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_JUMP_PLUS) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_JUMP_PLUS_LV2)
    end
    --if _ARG_0_ and g_kControls.Fresh_Punch and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > 12 and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() < 20 then
    --  g_MyD3D:GetPlayer(_ARG_1_).y_Speed = 0.016
    --  g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_JUMP_ATK)
    --end
  end
end
StateFunc[MID_JIN_WAIT_BURNNING_MODE] = function(_ARG_0_, _ARG_1_)
  CheckJin1SpecialStance(_ARG_1_)
  if _ARG_0_ == false then
    return
  end
  if g_kControls.Fresh_Skill_Key then
    if g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_SKILL_JIN_RENEW_KUMKANG_DUNGEON) then
      g_MyD3D:GetPlayer(_ARG_1_):ClearMagicEffect(EGC_SKILL_JIN_RENEW_KUMKANG_DUNGEON)
    elseif g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_SKILL_JIN_RENEW_KYUHWA_DUNGEON) then
      g_MyD3D:GetPlayer(_ARG_1_):ClearMagicEffect(EGC_SKILL_JIN_RENEW_KYUHWA_DUNGEON)
    else
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_COMMAND_BURNNING)
    end
    g_kControls.Fresh_Skill_Key = false
  end
  if g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_SKILL_JIN_KYUHWA) or g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_SKILL_JIN_KUMKANG) then
    return
  elseif g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_SKILL_JIN_RENEW_KUMKANG_DUNGEON) or g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_SKILL_JIN_RENEW_KYUHWA_DUNGEON) then
    return
  elseif not g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_GYUHWA_LV1) and not g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_GUMGANG_LV1) then
    return
  end
end
StateFunc[MID_JIN1_COMMAND_BURNNING] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_GYUHWA_LV1) and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_GUMGANG_LV1) then
    if g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_EFFECT_JIN_BURNING_COMMAND_LEFT) == false then
      g_MyD3D:GetPlayer(_ARG_1_):SetMagicEffect(EGC_EFFECT_JIN_BURNING_COMMAND_LEFT, 60)
    end
    if g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_EFFECT_JIN_BURNING_COMMAND_RIGHT) == false then
      g_MyD3D:GetPlayer(_ARG_1_):SetMagicEffect(EGC_EFFECT_JIN_BURNING_COMMAND_RIGHT, 60)
    end
  elseif g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_GYUHWA_LV1) then
    if g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_EFFECT_JIN_BURNING_COMMAND_RIGHT) == false then
      g_MyD3D:GetPlayer(_ARG_1_):SetMagicEffect(EGC_EFFECT_JIN_BURNING_COMMAND_RIGHT, 60)
    end
  elseif g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_GUMGANG_LV1) and g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_EFFECT_JIN_BURNING_COMMAND_LEFT) == false then
    g_MyD3D:GetPlayer(_ARG_1_):SetMagicEffect(EGC_EFFECT_JIN_BURNING_COMMAND_LEFT, 60)
  end
  if _ARG_0_ then
    if g_kControls.Fresh_Skill_Key then
      g_kControls.Fresh_Skill_Key = false
    end
    if g_kControls.Left and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_GUMGANG_LV1) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_DIAMONDBODY)
    elseif g_kControls.Right and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_GYUHWA_LV1) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_HOLLYHOCK)
    end
  end
end
StateFunc[MID_JIN_UNIQUE_EVASION] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == false then
    return
  end
  if not g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_EVASION) then
    return
  end
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 then
    g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 0
  end
  if g_kControls.Fresh_Down then
    g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
  end
  if g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count == 255 then
    if IsHitFront((g_MyD3D:GetPlayer(_ARG_1_))) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_ABUNDANTSTEP)
    elseif IsHitBack((g_MyD3D:GetPlayer(_ARG_1_))) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_ABUNDANTSTEP_B)
    end
  end
	CheckJin1SpecialStance(_ARG_1_)
end
StateFunc[MID_JIN1_ABUNDANTSTEP] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == false then
    return
  end
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 1 then
    g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 0
    g_MyD3D:GetPlayer(_ARG_1_).Next_Motion = -1
    g_kControls.Fresh_Down = false
  end
  if g_kControls.Fresh_Down then
    g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
  end
  if g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count == 255 then
    if IsHitFront((g_MyD3D:GetPlayer(_ARG_1_))) then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Motion = MID_JIN1_ABUNDANTSTEP
    elseif IsHitBack((g_MyD3D:GetPlayer(_ARG_1_))) then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Motion = MID_JIN1_ABUNDANTSTEP_B
    end
  end
  if g_kControls.Fresh_Punch then
    OnWait(g_MyD3D:GetPlayer(_ARG_1_), _ARG_0_)
  end
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) and g_MyD3D:GetPlayer(_ARG_1_).Next_Motion ~= -1 then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(g_MyD3D:GetPlayer(_ARG_1_).Next_Motion)
  end
	CheckJin1SpecialStance(_ARG_1_)
end
StateFunc[MID_JIN1_ABUNDANTSTEP_B] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == false then
    return
  end
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 1 then
    g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 0
    g_MyD3D:GetPlayer(_ARG_1_).Next_Motion = -1
    g_kControls.Fresh_Down = false
  end
  if g_kControls.Fresh_Down then
    g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
  end
  if g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count == 255 then
    if IsHitFront((g_MyD3D:GetPlayer(_ARG_1_))) then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Motion = MID_JIN1_ABUNDANTSTEP
    elseif IsHitBack((g_MyD3D:GetPlayer(_ARG_1_))) then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Motion = MID_JIN1_ABUNDANTSTEP_B
    end
  end
  if g_kControls.Fresh_Punch then
    OnWait(g_MyD3D:GetPlayer(_ARG_1_), _ARG_0_)
  end
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) and g_MyD3D:GetPlayer(_ARG_1_).Next_Motion ~= -1 then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(g_MyD3D:GetPlayer(_ARG_1_).Next_Motion)
  end
	CheckJin1SpecialStance(_ARG_1_)
end
JinAirWalkCount = 0
StateFunc[MID_JIN_JUMP] = function(_ARG_0_, _ARG_1_)
  if CheckAirWalk(_ARG_0_, _ARG_1_) then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_STOMP)
    JinAirWalkCount = 1
  end
end
StateFunc[MID_JIN4_JUMP] = function(_ARG_0_, _ARG_1_)
  OnJump(g_MyD3D:GetPlayer(_ARG_1_), _ARG_0_)
  StateFunc[MID_JIN_JUMP](_ARG_0_, _ARG_1_)
end
StateFunc[MID_JIN1_JUMP] = function(_ARG_0_, _ARG_1_)
  StateFunc[MID_JIN_JUMP](_ARG_0_, _ARG_1_)
end
StateFunc[MID_JIN2_JUMP] = function(_ARG_0_, _ARG_1_)
  StateFunc[MID_JIN_JUMP](_ARG_0_, _ARG_1_)
end
StateFunc[MID_JIN2_2_JUMP] = function(_ARG_0_, _ARG_1_)
  StateFunc[MID_JIN_JUMP](_ARG_0_, _ARG_1_)
end
function CheckAirWalk(_ARG_0_, _ARG_1_)
  if _ARG_0_ == false then
    return false
  end
  if g_kControls.Select_Item then
    if g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_COMMON_JUMP_LV1) then
    elseif g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_COMMON_JUMP_LV2) then
    elseif g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_COMMON_JUMP_LV3) then
	else 
	return false 
    end
    if 0.95 == -1 then
      return false
    end
    if 0.95 > 0 and 0.95 < g_MyD3D:GetPlayer(_ARG_1_):GetBurnningPoint() or g_MyD3D:GetPlayer(_ARG_1_).m_bIsBurnningMode then
      if g_MyD3D:GetPlayer(_ARG_1_).m_bIsBurnningMode == false then
        g_MyD3D:GetPlayer(_ARG_1_):CountBP(-0.95)
        g_MyD3D:GetPlayer(_ARG_1_).m_fBurnningElapsedTime = 0
      end
      g_kControls.Select_Item = false
      return true
    end
  end
  return false
end
StateFunc[MID_JIN1_STOMP] = function(_ARG_0_, _ARG_1_)
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
    g_MyD3D:GetPlayer(_ARG_1_).m_bFrameLock = true
    g_MyD3D:GetPlayer(_ARG_1_).m_bCheckGround = true
  end
  airWalkEnable = false
  if g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_COMMON_JUMP_LV2) and JinAirWalkCount < 2 then
    airWalkEnable = true
  elseif g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_COMMON_JUMP_LV3) and JinAirWalkCount < 3 then
    airWalkEnable = true
  end
  if g_MyD3D:GetPlayer(_ARG_1_).m_bIsBurnningMode == true then
    airWalkEnable = true
  end
  if airWalkEnable and CheckAirWalk(_ARG_0_, _ARG_1_) then
    if IsPushBack((g_MyD3D:GetPlayer(_ARG_1_))) then
      g_MyD3D:GetPlayer(_ARG_1_):SetIsRight(not g_MyD3D:GetPlayer(_ARG_1_):GetIsRight())
    end
    if g_MyD3D:GetPlayer(_ARG_1_).m_bIsBurnningMode == true then
      if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
        g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_STOMP)
        JinAirWalkCount = 1
      end
    elseif IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_STOMP)
      JinAirWalkCount = JinAirWalkCount + 1
    end
  end
  if g_kControls.Fresh_Punch then
    OnJump(g_MyD3D:GetPlayer(_ARG_1_), _ARG_0_)
  end
end
StateFunc[MID_JIN1_COMBO_ATK1_LV2] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Punch then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
    end
    if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() < 12 then
      if g_kControls.Fresh_Down and not g_MyD3D:GetPlayer(_ARG_1_):IsOldMotion(MID_JIN1_ABUNDANTSTEP) then
        g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_UNIQUE_EVASION)
      end
      if g_MyD3D:GetPlayer(_ARG_1_):GetBurnningPoint() >= 0.6 or g_MyD3D:GetPlayer(_ARG_1_).m_bIsBurnningMode then
        if IsHitFront((g_MyD3D:GetPlayer(_ARG_1_))) then
          g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_JIN_UNIQUE_HUJIN)
          g_MyD3D:GetPlayer(_ARG_1_):SetFrame(0)
        elseif IsHitBack((g_MyD3D:GetPlayer(_ARG_1_))) then
          g_MyD3D:GetPlayer(_ARG_1_):SetIsRight(not g_MyD3D:GetPlayer(_ARG_1_):GetIsRight())
          g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_JIN_UNIQUE_HUJIN)
          g_MyD3D:GetPlayer(_ARG_1_):SetFrame(0)
        end
      end
      if g_kControls.Fresh_Up then
        if g_MyD3D:GetPlayer(_ARG_1_):GetBurnningPoint() >= 0.75 or g_MyD3D:GetPlayer(_ARG_1_).m_bIsBurnningMode then
          g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_UNIQUE_HANDWIND)
        else
          g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_UNIQUE_HANDWIND_BP_EMPTY)
        end
      end
    end
  end
end
StateFunc[MID_JIN1_COMBO_ATK2_LV2] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Punch then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
    end
    if g_kControls.Fresh_Up and g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_COMBO_PLUS) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_COMBO_PLUS)
    end
    if g_kControls.Fresh_Down and not g_MyD3D:GetPlayer(_ARG_1_):IsOldMotion(MID_JIN1_ABUNDANTSTEP) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_UNIQUE_EVASION)
    end
		CheckJin1SpecialStance(_ARG_1_)
  end
  if CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_JIN_CRITICAL_ATK) == true then
    g_MyD3D:GetPlayer(_ARG_1_):AddDamage(DT_CRITICAL)
  end
end
StateFunc[MID_JIN1_COMBO_ATK3_LV2] = function(_ARG_0_, _ARG_1_)
  StateFunc[MID_JIN1_COMBO_ATK2_LV2](_ARG_0_, _ARG_1_)
  if _ARG_0_ and g_kControls.Fresh_Down and not g_MyD3D:GetPlayer(_ARG_1_):IsOldMotion(MID_JIN1_ABUNDANTSTEP) then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_UNIQUE_EVASION)
  end
end
StateFunc[MID_JIN1_COMBO_ATK4_LV2] = function(_ARG_0_, _ARG_1_)
  StateFunc[MID_JIN1_COMBO_ATK2_LV2](_ARG_0_, _ARG_1_)
  if _ARG_0_ and g_kControls.Fresh_Down and not g_MyD3D:GetPlayer(_ARG_1_):IsOldMotion(MID_JIN1_ABUNDANTSTEP) then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_UNIQUE_EVASION)
  end
end
StateFunc[MID_JIN1_COMBO_ATK5_LV2] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ and g_kControls.Fresh_Punch and g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count > 0 then
    g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
  end
  if CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_JIN_CRITICAL_ATK) == true then
    if g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_DOUBLE_ATK_LV2) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_DOUBLEL_ATK_LV2)
    end
    g_MyD3D:GetPlayer(_ARG_1_):AddDamage(DT_DOUBLE)
  end
  if g_kControls.Fresh_Down and not g_MyD3D:GetPlayer(_ARG_1_):IsOldMotion(MID_JIN1_ABUNDANTSTEP) then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_UNIQUE_EVASION)
  end
	CheckJin1SpecialStance(_ARG_1_)
end
StateFunc[MID_JIN1_SPECIAL2_FURRYOFBLOWS] = function(_ARG_0_, _ARG_1_)
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_SPECIAL2_FURRYOFBLOWS_ATK)
  end
end
StateFunc[MID_JIN1_SPECIAL2_FURRYOFBLOWS_BURNING] = function(_ARG_0_, _ARG_1_)
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_SPECIAL2_FURRYOFBLOWS_ATK_BURNING)
  end
end
StateFunc[MID_JIN1_JUMP_PLUS_LV2] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 then
  end
  g_MyD3D:GetPlayer(_ARG_1_).m_bCheckGround = true
  g_MyD3D:GetPlayer(_ARG_1_).IsContact = false
end
StateFunc[MID_JIN1_SPECIAL4] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 100 and not g_MyD3D:GetPlayer(_ARG_1_).IsContact then
    g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_JIN_JUMP)
    g_MyD3D:GetPlayer(_ARG_1_):SetFrame(40)
  end
end
StateFunc[MID_JIN_ATK1] = function(_ARG_0_, _ARG_1_)
	CheckJin1SpecialStance(_ARG_1_)
  if _ARG_0_ and g_kControls.Fresh_Punch then
    g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
    g_kControls.Fresh_Punch = false
  end
	if g_kControls.Fresh_Down and not g_MyD3D:GetPlayer(_ARG_1_):IsOldMotion(MID_JIN1_ABUNDANTSTEP) then
		g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_UNIQUE_EVASION)
	end
end
StateFunc[MID_JIN_ATK2] = function(_ARG_0_, _ARG_1_)
	CheckJin1SpecialStance(_ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Punch then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
      g_kControls.Fresh_Punch = false
    elseif g_kControls.Fresh_Up then
      if g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_JIN1_COMBO_PLUS) then
        g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_COMBO_PLUS)
      end
    elseif g_kControls.Fresh_Down and not g_MyD3D:GetPlayer(_ARG_1_):IsOldMotion(MID_JIN1_ABUNDANTSTEP) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN_UNIQUE_EVASION)
    end
  end
end
StateFunc[MID_JIN_ATK3] = function(_ARG_0_, _ARG_1_)
  StateFunc[MID_JIN_ATK2](_ARG_0_, _ARG_1_)
end
StateFunc[MID_JIN_ATK4] = function(_ARG_0_, _ARG_1_)
  StateFunc[MID_JIN_ATK2](_ARG_0_, _ARG_1_)
end

StateFunc[MID_JIN2_ATK1] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ and g_kControls.Fresh_Punch then
    g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
    g_kControls.Fresh_Punch = false
  end
end
StateFunc[MID_JIN2_ATK2] = function(_ARG_0_, _ARG_1_)
  StateFunc[MID_JIN2_ATK1](_ARG_0_, _ARG_1_)
end
StateFunc[MID_JIN2_ATK3] = function(_ARG_0_, _ARG_1_)
  StateFunc[MID_JIN2_ATK1](_ARG_0_, _ARG_1_)
end

StateFunc[MID_JIN1_DASH_NEW] = function(_ARG_0_, _ARG_1_)
  --OnDash_New(_ARG_1_, _ARG_0_, MID_JIN_DASH_ATK, MID_JIN_UNIQUE_SPINKICK)
    OnDash(g_MyD3D:GetPlayer(_ARG_1_), _ARG_0_)
end

StateFunc[MID_JIN3_DASH_NEW] = function(_ARG_0_, _ARG_1_)
    --OnDash_New(_ARG_1_, _ARG_0_, MID_JIN_DASH_ATK, MID_JIN2_DASH_ATK_1)
    OnDash(g_MyD3D:GetPlayer(_ARG_1_), _ARG_0_)
end

StateFunc[MID_JIN1_ROLL] = function(_ARG_0_, _ARG_1_)
	CheckJin1SpecialStance(_ARG_1_)
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
		if g_MyD3D:GetPlayer(_ARG_1_).IsContact == false then
			g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_ROLL_TO_JUMP)
    else
			g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_JIN1_ROLL_TO_WAIT)
		end
  end
end