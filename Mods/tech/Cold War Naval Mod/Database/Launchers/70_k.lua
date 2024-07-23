-- Based on Current Hill Weapon Code, values adjusted to fit a V-11 turret for the 70-K

GT_t.LN_t.CWNM_70_k = {name = "70-K 37mm", display_name = _("70-K 37mm AAA V-11 Turret")}
GT_t.LN_t.CWNM_70_k.type = 3;
GT_t.LN_t.CWNM_70_k.distanceMin = 10
GT_t.LN_t.CWNM_70_k.distanceMax = 8400
GT_t.LN_t.CWNM_70_k.max_trg_alt = 5000
GT_t.LN_t.CWNM_70_k.reactionTime = 1.2;
GT_t.LN_t.CWNM_70_k.useTargetAccelInSight = true
GT_t.LN_t.CWNM_70_k.sensor = {}
set_recursive_metatable(GT_t.LN_t.CWNM_70_k.sensor, GT_t.WSN_t[7])
GT_t.LN_t.CWNM_70_k.PL = {}
GT_t.LN_t.CWNM_70_k.PL[1] = {}
GT_t.LN_t.CWNM_70_k.PL[1].switch_on_delay = 60;
GT_t.LN_t.CWNM_70_k.PL[1].shell_name = {"CWNM_37_252_mmSR_Frag"};
GT_t.LN_t.CWNM_70_k.PL[1].ammo_capacity = 1150;
GT_t.LN_t.CWNM_70_k.PL[1].portionAmmoCapacity = 10;
GT_t.LN_t.CWNM_70_k.PL[1].reload_time = 60;
GT_t.LN_t.CWNM_70_k.PL[1].shot_delay = 2.5;
for i=2,4 do
    GT_t.LN_t.CWNM_70_k.PL[i] = {};
    set_recursive_metatable(GT_t.LN_t.CWNM_70_k.PL[i], GT_t.LN_t.CWNM_70_k.PL[1]);
end;
GT_t.LN_t.CWNM_70_k.BR = { {pos = {-4.65, 1.4, -1.35} } }