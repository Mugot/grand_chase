StateFunc[MID_MARI3_WAIT] = function(_ARG_0_, _ARG_1_)
  OnWait(g_MyD3D:GetPlayer(_ARG_1_), _ARG_0_)
  if g_MyD3D:GetPlayer(_ARG_1_):GetHGDecreaseState() == false then
    g_MyD3D:GetPlayer(_ARG_1_):SetHGDecreaseState(true)
  end
  if _ARG_0_ and g_kControls.Fresh_Double_X then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_PRODUCT_START)
  end
  if g_kControls.Skill_Key and g_MyD3D:GetPlayer(_ARG_1_).IsContact then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_INSTALLATION_READY)
    g_kControls.Skill_Key = false
  end
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 and g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_MARI_JSJ, true) then
    g_MyD3D:GetPlayer(_ARG_1_):SetChildMeshMotion("JSJ", "Mari_JSJ", true, false)
    g_MyD3D:GetPlayer(_ARG_1_).bIsPushLeftKey = false
    g_MyD3D:GetPlayer(_ARG_1_).bIsPushRightKey = false
  end
end
StateFunc[MID_MARI3_INSTALLATION_READY] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Left then
      if g_MyD3D:GetPlayer(_ARG_1_):GetIsRight() == false and not g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_EFFECT_MARI3_INSTALLATION_RIGHT_COOLTIME) then
        g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_INSTALLATION_RIGHT)
      elseif g_MyD3D:GetPlayer(_ARG_1_):GetIsRight() == true and not g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_EFFECT_MARI3_INSTALLATION_LEFT_COOLTIME) then
        g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_INSTALLATION_LEFT)
      end
      g_kControls.Left = false
    elseif g_kControls.Right then
      if g_MyD3D:GetPlayer(_ARG_1_):GetIsRight() == true and not g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_EFFECT_MARI3_INSTALLATION_RIGHT_COOLTIME) then
        g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_INSTALLATION_RIGHT)
      elseif g_MyD3D:GetPlayer(_ARG_1_):GetIsRight() == false and not g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_EFFECT_MARI3_INSTALLATION_LEFT_COOLTIME) then
        g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_INSTALLATION_LEFT)
      end
      g_kControls.Right = false
    elseif g_kControls.Down then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_INSTALLATION_DOWN)
      g_kControls.Down = false
    elseif g_kControls.Up then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_SUMMON_JSJ)
      g_kControls.Up = false
    end
    CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_DASH)
  end
end
StateFunc[MID_MARI3_INSTALLATION_RIGHT] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_DASH)
  end
end
StateFunc[MID_MARI3_INSTALLATION_LEFT] = function(_ARG_0_, _ARG_1_)
  StateFunc[MID_MARI3_INSTALLATION_RIGHT](_ARG_0_, _ARG_1_)
end
StateFunc[MID_MARI3_INSTALLATION_DOWN] = function(_ARG_0_, _ARG_1_)
  StateFunc[MID_MARI3_INSTALLATION_RIGHT](_ARG_0_, _ARG_1_)
end
StateFunc[MID_MARI3_FATAL] = function(_ARG_0_, _ARG_1_)
  StateFunc[MID_MARI3_WAIT](_ARG_0_, _ARG_1_)
end
StateFunc[MID_MARI3_WALK] = function(_ARG_0_, _ARG_1_)
  OnWalk(g_MyD3D:GetPlayer(_ARG_1_), _ARG_0_)
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 and g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_MARI_JSJ, true) then
    g_MyD3D:GetPlayer(_ARG_1_):SetChildMeshMotion("JSJ", "Mari_JSJ_Walk", true, true)
  end
end
StateFunc[MID_MARI3_DASH] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
	if IsHitFront((g_MyD3D:GetPlayer(_ARG_1_))) then
		if (g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > g_MyD3D:GetPlayer(_ARG_1_):GetFrameNum() - 25 and 
				g_MyD3D:GetPlayer(_ARG_1_):GetFrame() < g_MyD3D:GetPlayer(_ARG_1_):GetFrameNum() - 1) then
			g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_BOOSTER_DASH_START)
			return
		end
	end
    if g_kControls.Up then
            if( g_MyD3D:GetPlayer(_ARG_1_).IsContact and
				(g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > g_MyD3D:GetPlayer(_ARG_1_):GetFrameNum() - 15) and 
				(g_MyD3D:GetPlayer(_ARG_1_):GetFrame() < g_MyD3D:GetPlayer(_ARG_1_):GetFrameNum() - 1) ) then
					g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion( MID_MARI3_DASH_JUMP_NEW )
            else
        DashJumpFunc(g_MyD3D:GetPlayer(_ARG_1_), _ARG_0_)
      end
      g_MyD3D:GetPlayer(_ARG_1_).NoCheckContact = 0
    elseif g_kControls.Fresh_Punch then --and g_MyD3D:GetPlayer(_ARG_1_):GetMP() > 0.5 then
      if g_kControls.Left == true and g_MyD3D:GetPlayer(_ARG_1_):GetIsRight() == true or g_kControls.Right == true and g_MyD3D:GetPlayer(_ARG_1_):GetIsRight() == false then
        g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_DASH_UNIQUE_ATK)
        g_kControls.Fresh_Punch = false
      end
    elseif g_kControls.Fresh_Punch and g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == true then
      if g_kControls.Left == true and g_MyD3D:GetPlayer(_ARG_1_):GetIsRight() == true or g_kControls.Right == true and g_MyD3D:GetPlayer(_ARG_1_):GetIsRight() == false then
        g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_DASH_UNIQUE_ATK)
        g_kControls.Fresh_Punch = false
      end
	  if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
		elseif g_kControls.Fresh_Down_Dash then
			if g_MyD3D:GetPlayer(_ARG_1_).IsContact == false then
				g_kControls.Fresh_Down_Dash = false
				g_kControls.Down = false
				g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_DOWN_DASH)
			end
		end 
    elseif g_kControls.Down then
      g_kControls.Down = false
      if CheckPortal(g_MyD3D:GetPlayer(_ARG_1_), _ARG_0_) then
        return
      end
      g_MyD3D:GetPlayer(_ARG_1_).y_Speed = g_MyD3D:GetPlayer(_ARG_1_).y_Speed - 0.01
      g_MyD3D:GetPlayer(_ARG_1_).NoCheckContact = 20
    end
  end
  OnDash(g_MyD3D:GetPlayer(_ARG_1_), _ARG_0_)
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 and g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_MARI_JSJ, true) then
    g_MyD3D:GetPlayer(_ARG_1_):SetChildMeshMotion("JSJ", "Mari_JSJ_Dash", true, true)
  end
end
StateFunc[MID_MARI3_BOOSTER_DASH_START] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ and g_kControls.Fresh_Punch then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_DASHATK)
  end
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_BOOSTER_DASH)
  end
end
StateFunc[MID_MARI3_BOOSTER_DASH] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Punch then
		if IsPushBack((g_MyD3D:GetPlayer(_ARG_1_))) then
		g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_DASH_UNIQUE_ATK)
		else
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_DASHATK)
	  end
    elseif g_kControls.Up then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_DASH_JUMP_NEW)
      g_MyD3D:GetPlayer(_ARG_1_).NoCheckContact = 0
	  	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
	elseif g_kControls.Fresh_Down_Dash then
		if g_MyD3D:GetPlayer(_ARG_1_).IsContact == false then
			g_kControls.Fresh_Down_Dash = false
			g_kControls.Down = false
			g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_DOWN_DASH)
		 end 
		end
	elseif g_kControls.Down then
      g_kControls.Down = false
      if CheckPortal(g_MyD3D:GetPlayer(_ARG_1_), _ARG_0_) then
        return
      end
      g_MyD3D:GetPlayer(_ARG_1_).y_Speed = g_MyD3D:GetPlayer(_ARG_1_).y_Speed - 0.01
      g_MyD3D:GetPlayer(_ARG_1_).NoCheckContact = 20
    end
    if g_MyD3D:GetPlayer(_ARG_1_):GetIsRight() then
      if g_kControls.Fresh_Keep_Right then
        g_MyD3D:GetPlayer(_ARG_1_).x_Speed = 0.025
      else
        g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_WAIT)
      end
    elseif g_kControls.Fresh_Keep_Left then
      g_MyD3D:GetPlayer(_ARG_1_).x_Speed = -0.025
    else
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_WAIT)
    end
    g_MyD3D:GetPlayer(_ARG_1_).y_Speed = -0.02
  end
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
    g_MyD3D:GetPlayer(_ARG_1_):SetFrame(0)
  end
end
StateFunc[MID_MARI3_AIR_DASH] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Punch then
        if g_kControls.Down then --and g_MyD3D:GetPlayer(_ARG_1_):GetMP() > 0.4 then
          g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMP_UNIQUE_ATK)
        else
          g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMPATK)
        end
    end
	 	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
		if g_kControls.Fresh_Down_Dash then
			g_kControls.Fresh_Down_Dash = false
			g_kControls.Down = false
			g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_DOWN_DASH)
		end
	 end 
  end
	if g_MyD3D:GetPlayer(_ARG_1_).IsContact and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > 5 and IsPushFront((g_MyD3D:GetPlayer(_ARG_1_))) then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() and false == g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI4_BOOSTER_DASH) then
      g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI4_BOOSTER_DASH)
    elseif false == g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() and false == g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI4_BOOSTER_DASH_R) then
      g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI4_BOOSTER_DASH_R)
    end
		g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_BOOSTER_DASH)
	end
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
    g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI3_JUMP)
    g_MyD3D:GetPlayer(_ARG_1_):SetFrame(40)
    g_MyD3D:GetPlayer(_ARG_1_).m_bCheckGround = true
    g_MyD3D:GetPlayer(_ARG_1_).IsContact = false
  end
end
StateFunc[MID_MARI3_DOWN_DASH] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Punch then
        if g_kControls.Down then --and g_MyD3D:GetPlayer(_ARG_1_):GetMP() > 0.4 then
          g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMP_UNIQUE_ATK)
        else
          g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMPATK)
        end
    end
	if g_MyD3D:GetPlayer(_ARG_1_).IsContact then
		CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_DASH)
	end
  end
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
    g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI3_JUMP)
    g_MyD3D:GetPlayer(_ARG_1_):SetFrame(40)
    g_MyD3D:GetPlayer(_ARG_1_).m_bCheckGround = true
    g_MyD3D:GetPlayer(_ARG_1_).IsContact = false
  end
end
StateFunc[MID_MARI3_DASHATK] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_MARI_JSJ) then
    g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI3_JSJ_DASH_ATK)
  end
end
StateFunc[MID_MARI3_JSJ_DASH_ATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ and g_kControls.Fresh_Punch then
    g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
  end
end
StateFunc[MID_MARI3_JUMP] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
	if g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_MARI_JSJ, true) and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() >= 2 then
		CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_JSJ_DASH_JUMP_UNIQUE_SKILL)
	end
    if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == false and g_kControls.Down and g_kControls.Fresh_Punch then --and g_MyD3D:GetPlayer(_ARG_1_):GetMP() > 0.4 then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMP_UNIQUE_ATK)
      g_kControls.Fresh_Punch = false
    end
    if g_kControls.Down and g_kControls.Fresh_Punch then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMP_UNIQUE_ATK)
      g_kControls.Fresh_Punch = false
    end
  else
  end
  if g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_MARI_JSJ, true) then
    if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 2 then
      g_MyD3D:GetPlayer(_ARG_1_):SetChildMeshMotion("JSJ", "Mari_JSJ_Jump", true, true)
    elseif g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 22 then
      g_MyD3D:GetPlayer(_ARG_1_):SetChildMeshMotion("JSJ", "Mari_JSJ_Jump_Down", true, true)
    end
  end
  OnJump(g_MyD3D:GetPlayer(_ARG_1_), _ARG_0_)
end
StateFunc[MID_MARI3_DASH_JUMP_NEW] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
  	if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
		if g_kControls.Fresh_Down_Dash then
			if g_MyD3D:GetPlayer(_ARG_1_).IsContact == false then
				g_kControls.Fresh_Down_Dash = false
				g_kControls.Down = false
				g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_DOWN_DASH)
			end
		end
	end
    if g_kControls.Fresh_Left then
      g_MyD3D:GetPlayer(_ARG_1_).bIsPushLeftKey = true
      g_MyD3D:GetPlayer(_ARG_1_).bIsPushRightKey = false
    elseif g_kControls.Fresh_Right then
      g_MyD3D:GetPlayer(_ARG_1_).bIsPushRightKey = true
      g_MyD3D:GetPlayer(_ARG_1_).bIsPushLeftKey = false
    end
    if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > 20 and g_kControls.Fresh_Punch then
      if g_MyD3D:GetPlayer(_ARG_1_).bIsPushLeftKey then
        g_MyD3D:GetPlayer(_ARG_1_):SetIsRight(false)
        g_MyD3D:GetPlayer(_ARG_1_).bIsPushLeftKey = false
      elseif g_MyD3D:GetPlayer(_ARG_1_).bIsPushRightKey then
        g_MyD3D:GetPlayer(_ARG_1_):SetIsRight(true)
        g_MyD3D:GetPlayer(_ARG_1_).bIsPushRightKey = false
      end
      if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == false then
        if g_kControls.Down then --and g_MyD3D:GetPlayer(_ARG_1_):GetMP() > 0.4 then
          g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMP_UNIQUE_ATK)
        else
          g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMPATK)
        end
      else
        g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMP_UNIQUE_ATK)
      end
    end
	if g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_MARI_JSJ, true) then
		CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_JSJ_DASH_JUMP_UNIQUE_SKILL)
	else
		CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_AIR_DASH)
	end
    if g_MyD3D:GetPlayer(_ARG_1_):CheckSkill(SID_MARI_COMMON_ROCKET_JUMP_LV2) and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > 40 and g_kControls.Up then
      g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI1_JUMPREADY)
      g_MyD3D:GetPlayer(_ARG_1_):SetFrame(0)
      g_MyD3D:GetPlayer(_ARG_1_).y_Speed = 0.035
      DashJumpToJump = 0
      g_MyD3D:GetPlayer(_ARG_1_).IsContact = false
      g_kControls.Up = false
    end
  end
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 0 and g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_MARI_JSJ, true) then
    g_MyD3D:GetPlayer(_ARG_1_):SetChildMeshMotion("JSJ", "Mari_JSJ_DashJump", true, true)
  end
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
    g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI3_JUMP)
    g_MyD3D:GetPlayer(_ARG_1_):SetFrame(40)
    g_MyD3D:GetPlayer(_ARG_1_).IsContact = false
  end
end
StateFunc[MID_MARI3_JSJ_DASH_JUMP_UNIQUE_SKILL] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Punch then
        if g_kControls.Down then --and g_MyD3D:GetPlayer(_ARG_1_):GetMP() > 0.4 then
          g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMP_UNIQUE_ATK)
        else
          g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMPATK)
        end
    end
		if g_MyD3D:GetPlayer(_ARG_0_):IsMonsterGameMode() == false then
		if g_kControls.Fresh_Down_Dash then
			g_kControls.Fresh_Down_Dash = false
			g_kControls.Down = false
			g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_DOWN_DASH)
		end
	end
  end
	if g_MyD3D:GetPlayer(_ARG_1_).IsContact and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > 5 and IsPushFront((g_MyD3D:GetPlayer(_ARG_1_))) then
    if g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() and false == g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI4_BOOSTER_DASH) then
      g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI4_BOOSTER_DASH)
    elseif false == g_MyD3D:GetPlayer(_ARG_0_):GetIsRight() and false == g_MyD3D:GetPlayer(_ARG_0_):IsMagicEffect(EGC_EFFECT_MARI4_BOOSTER_DASH_R) then
      g_MyD3D:GetPlayer(_ARG_0_):SetMagicEffect(EGC_EFFECT_MARI4_BOOSTER_DASH_R)
    end
		g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_BOOSTER_DASH)
	end
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
    g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI3_JUMP)
    g_MyD3D:GetPlayer(_ARG_1_):SetFrame(40)
    g_MyD3D:GetPlayer(_ARG_1_).m_bCheckGround = true
    g_MyD3D:GetPlayer(_ARG_1_).IsContact = false
  end
end
StateFunc[MID_MARI3_JUMPATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > 12 and g_kControls.Fresh_Punch then
	if g_kControls.Down then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMP_UNIQUE_ATK)
	elseif g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_MARI_JSJ, true) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JSJ_JUMP_ATK)
	end
  end
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > 15 and g_MyD3D:GetPlayer(_ARG_1_).IsContact then
	g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI3_WAIT)
  end
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
    g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI3_JUMP)
    g_MyD3D:GetPlayer(_ARG_1_):SetFrame(40)
    g_MyD3D:GetPlayer(_ARG_1_).IsContact = false
  end
end
StateFunc[MID_MARI3_JSJ_JUMP_ATK] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > 12 and g_kControls.Fresh_Punch then
	if g_kControls.Down then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMP_UNIQUE_ATK)
	end
  end
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > 15 and g_MyD3D:GetPlayer(_ARG_1_).IsContact then
	g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI3_WAIT)
  end
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > 25 and g_MyD3D:GetPlayer(_ARG_1_).IsContact == false then
	CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_JSJ_DASH_JUMP_UNIQUE_SKILL)
  end
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == g_MyD3D:GetPlayer(_ARG_1_):GetFrameNum() - 5 then
    g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI3_JUMP)
    g_MyD3D:GetPlayer(_ARG_1_):SetFrame(40)
    g_MyD3D:GetPlayer(_ARG_1_).IsContact = false
  end
end
StateFunc[MID_MARI3_JUMP_UNIQUE_ATK] = function(_ARG_0_, _ARG_1_)
  if IsEndOfFrame((g_MyD3D:GetPlayer(_ARG_1_))) then
    g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI3_JUMP)
    g_MyD3D:GetPlayer(_ARG_1_):SetFrame(40)
    g_MyD3D:GetPlayer(_ARG_1_).IsContact = false
  end
end
StateFunc[MID_MARI3_WINPOS] = function(_ARG_0_, _ARG_1_)
  StateFunc[MID_JIN4_WINPOS](_ARG_0_, _ARG_1_)
end
StateFunc[MID_MARI3_PRODUCT_START] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Select_Item then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 20000
    end
    if g_kControls.Fresh_Up and not g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_MARI1_MANASHIELD) then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_MANA_SHIELD)
    end
    if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > 35 and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() < 55 and g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count > 255 then
      g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_MAGIC_BEAD)
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 0
    end
    CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_DASH)
  end
  if not g_MyD3D:GetPlayer(_ARG_1_).IsContact then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMP)
  end
end
StateFunc[MID_MARI3_BUILD_1] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Skill_Key then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
    end
    if g_kControls.Fresh_Punch then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 10000
    end
    CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_DASH)
  end
  if not g_MyD3D:GetPlayer(_ARG_1_).IsContact then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMP)
  end
end
StateFunc[MID_MARI3_BUILD_2] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Skill_Key then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
    end
    if g_kControls.Fresh_Punch then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 10000
    end
    CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_DASH)
  end
  if not g_MyD3D:GetPlayer(_ARG_1_).IsContact then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMP)
  end
end
StateFunc[MID_MARI3_BUILD_3] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Punch and g_MyD3D:GetPlayer(_ARG_1_):GetMP() >= 1 then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 10000
    end
    CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_DASH)
  end
  if not g_MyD3D:GetPlayer(_ARG_1_).IsContact then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_JUMP)
  end
end
StateFunc[MID_MARI3_SUMMON_JSJ] = function(_ARG_0_, _ARG_1_)
end
StateFunc[MID_MARI3_MAGIC_BEAD] = function(_ARG_0_, _ARG_1_)
  CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_DASH)
  if _ARG_0_ and g_MyD3D:GetPlayer(_ARG_1_):GetFrame() < 27 and g_kControls.Fresh_Skill_Key then
    g_MyD3D:GetPlayer(_ARG_1_):ChangeMotion(MID_MARI3_SUMMON_JSJ)
  end
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() == 26 then
    if g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count > 1500 then
      g_MyD3D:GetPlayer(_ARG_1_):SetFrame(27)
    elseif g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count > 10 then
      g_MyD3D:GetPlayer(_ARG_1_):SetFrame(12)
    end
  end
end
StateFunc[MID_MARI3_COMBO_ATK1] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_MARI_JSJ) then
    g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI3_JSJ_COMBO_ATK1)
  end
  if _ARG_0_ and g_kControls.Fresh_Punch then
    g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
  end
  if g_MyD3D:GetPlayer(_ARG_1_):GetFrame() > 15 then
    CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_CRITICAL_ATK)
  end
end
StateFunc[MID_MARI3_COMBO_ATK2] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_MARI_JSJ) then
    g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI3_JSJ_COMBO_ATK2)
  end
  if _ARG_0_ and g_kControls.Fresh_Punch then
    g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
  end
  CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_CRITICAL_ATK)
end
StateFunc[MID_MARI3_COMBO_ATK3] = function(_ARG_0_, _ARG_1_)
  if g_MyD3D:GetPlayer(_ARG_1_):IsMagicEffect(EGC_MARI_JSJ) then
    g_MyD3D:GetPlayer(_ARG_1_):SetMotion(MID_MARI3_JSJ_COMBO_ATK3)
  end
  if _ARG_0_ and g_kControls.Fresh_Punch then
    g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
  end
  if g_MyD3D:GetPlayer(_ARG_1_):IsMonsterGameMode() == false then
    if g_MyD3D:GetPlayer(_ARG_1_):GetMP() >= 0.3 then
      CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_DOUBLE_ATK)
    else
      CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_DOUBLE_ATK_MANA_EMPTY)
    end
  else
    CheckCriticalDouble(_ARG_1_, _ARG_0_, MID_MARI3_DOUBLE_ATK)
  end
end
StateFunc[MID_MARI3_JSJ_COMBO_ATK1] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Punch then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
    end
    if g_kControls.Fresh_Left_Dash then
      g_MyD3D:GetPlayer(_ARG_1_).m_iBranchSkill = 1
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 300
      g_kControls.Fresh_Left_Dash = false
    end
    if g_kControls.Fresh_Right_Dash then
      g_MyD3D:GetPlayer(_ARG_1_).m_iBranchSkill = 2
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 300
      g_kControls.Fresh_Right_Dash = false
    end
  end
end
StateFunc[MID_MARI3_JSJ_COMBO_ATK2] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Punch then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
    end
    if g_kControls.Fresh_Left_Dash then
      g_MyD3D:GetPlayer(_ARG_1_).m_iBranchSkill = 1
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 300
      g_kControls.Fresh_Left_Dash = false
    end
    if g_kControls.Fresh_Right_Dash then
      g_MyD3D:GetPlayer(_ARG_1_).m_iBranchSkill = 2
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 300
      g_kControls.Fresh_Right_Dash = false
    end
  end
end
StateFunc[MID_MARI3_JSJ_COMBO_ATK3] = function(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if g_kControls.Fresh_Punch then
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 255
    end
    if g_kControls.Fresh_Left_Dash then
      g_MyD3D:GetPlayer(_ARG_1_).m_iBranchSkill = 1
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 300
      g_kControls.Fresh_Left_Dash = false
    end
    if g_kControls.Fresh_Right_Dash then
      g_MyD3D:GetPlayer(_ARG_1_).m_iBranchSkill = 2
      g_MyD3D:GetPlayer(_ARG_1_).Next_Attack_Count = 300
      g_kControls.Fresh_Right_Dash = false
    end
  end
end
