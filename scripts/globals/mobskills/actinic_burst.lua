---------------------------------------------
--  Actinic Burst
--  Family: Ghrah
--  Description: Greatly lowers the accuracy of enemies within range for a brief period of time.
--  Type: Magical (Light)
--  Utsusemi/Blink absorb: Ignores shadows
--  Range: Unknown
--  Notes:
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_FLASH;
    local power = 200;
    local duration = 20;

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, power, 0, duration));

    return typeEffect;
end;