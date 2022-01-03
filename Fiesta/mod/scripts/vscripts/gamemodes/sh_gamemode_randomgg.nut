global function Sh_GamemodeRandomGG_Init;

global function GetRandomFiestaWeapons;
global function GetRandomOrdnance;
global function GetRandomTacticals

global const string GAMEMODE_RANDOMGG = "randomgg"

global struct FiestaWeapon {
	string weapon
	array<string> mods
	array<string> sights
}

struct {
	array<FiestaWeapon> weapons
	array<FiestaWeapon> ordnance
	array<FiestaWeapon> tacticals
} file

void function Sh_GamemodeRandomGG_Init()
{
    // create custom gamemode
    AddCallback_OnCustomGamemodesInit( CreateGamemodeRandomGG )
}

void function CreateGamemodeRandomGG()
{
    GameMode_Create( GAMEMODE_RANDOMGG )
    GameMode_SetName( GAMEMODE_RANDOMGG, "#GAMEMODE_RANDOMGG" )
	GameMode_SetDesc( GAMEMODE_RANDOMGG, "#PL_randomgg_desc" )
	GameMode_SetGameModeAnnouncement( GAMEMODE_RANDOMGG, "ffa_modeDesc" )
	GameMode_SetDefaultTimeLimits( GAMEMODE_RANDOMGG, 10, 0.0 )
	GameMode_AddScoreboardColumnData( GAMEMODE_RANDOMGG, "#SCOREBOARD_SCORE", PGS_ASSAULT_SCORE, 2 )
	GameMode_AddScoreboardColumnData( GAMEMODE_RANDOMGG, "#SCOREBOARD_PILOT_KILLS", PGS_PILOT_KILLS, 2 )
	GameMode_SetColor( GAMEMODE_RANDOMGG, [147, 204, 57, 255] )

    AddPrivateMatchMode( GAMEMODE_RANDOMGG )

	// setup guns

	// smgs

	// car
	FiestaWeapon ggCar = { weapon = "mp_weapon_car", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","holosight","redline_sight","threat_scope"], ... }
	file.weapons.append( ggCar )

	// alternator
	FiestaWeapon ggAlternator = { weapon = "mp_weapon_alternator_smg", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","hcog","redline_sight","threat_scope"], ... }
	file.weapons.append( ggAlternator )

	// volt
	FiestaWeapon ggVolt = { weapon = "mp_weapon_hemlok_smg", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","holosight","redline_sight","threat_scope"], ... }
	file.weapons.append( ggVolt )

	// r97
	FiestaWeapon ggR97 = { weapon = "mp_weapon_r97", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","holosight","redline_sight","threat_scope"], ... }
	file.weapons.append( ggR97 )


	// rifles

	// hemlok
	FiestaWeapon ggHemlok = { weapon = "mp_weapon_hemlok", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","hcog","redline_sight","threat_scope"], ... }
	file.weapons.append( ggHemlok )

	// flatline
	FiestaWeapon ggFlatline = { weapon = "mp_weapon_vinson", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","hcog","redline_sight","threat_scope"], ... }
	file.weapons.append( ggFlatline )

	// r201
	FiestaWeapon ggR101 = { weapon = "mp_weapon_rspn101", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","hcog","redline_sight","threat_scope"], ... }
	file.weapons.append( ggR101 )

	// r101
	FiestaWeapon ggR101og = { weapon = "mp_weapon_rspn101_og", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","hcog","redline_sight","threat_scope"], ... }
	file.weapons.append( ggR101og )

	// g2
	FiestaWeapon ggG2A5 = { weapon = "mp_weapon_g2", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","hcog","redline_sight","threat_scope"], ... }
	file.weapons.append( ggG2A5 )

	// lmgs

	// devotion
	FiestaWeapon ggDevotion = { weapon = "mp_weapon_esaw", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["aog","redline_sight","threat_scope"], ... }
	file.weapons.append( ggDevotion )

	// l-star
	FiestaWeapon ggLstar = { weapon = "mp_weapon_lstar", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["aog","redline_sight","threat_scope"], ... }
	file.weapons.append( ggLstar )

	// spitfire
	FiestaWeapon ggSpitfire = { weapon = "mp_weapon_lmg", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["aog","redline_sight","threat_scope"], ... }
	file.weapons.append( ggSpitfire )

	// shotguns

	// eva-8
	FiestaWeapon ggEva = { weapon = "mp_weapon_shotgun", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","holosight","redline_sight","threat_scope"], ... }
	file.weapons.append( ggEva )

	// mastiff
	FiestaWeapon ggMastiff = { weapon = "mp_weapon_mastiff", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","holosight","redline_sight","threat_scope"], ... }
	file.weapons.append( ggMastiff )


	// grenadiers

	// softball
	FiestaWeapon ggSoftball = { weapon = "mp_weapon_softball", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = [], ... }
	file.weapons.append( ggSoftball )

	// epg
	FiestaWeapon ggEpg = { weapon = "mp_weapon_epg", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = [], ... }
	file.weapons.append( ggEpg )

	// smr
	FiestaWeapon ggSmr = { weapon = "mp_weapon_smr", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = [], ... }
	file.weapons.append( ggSmr )

	// call of duty: bad
	FiestaWeapon ggCold = { weapon = "mp_weapon_pulse_lmg", mods = ["extended_ammo","pas_fast_reload","pas_run_and_gun","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = [], ... }
	file.weapons.append( ggCold )

	// primary pistols

	// mozambique
	FiestaWeapon ggMozam = { weapon = "mp_weapon_shotgun_pistol", mods = ["extended_ammo","silencer","pas_run_and_gun","pas_fast_reload","pas_fast_ads","tactical_cdr_on_kill"], sights = [], ... }
	file.weapons.append( ggMozam )

	// wingman elite
	FiestaWeapon ggWme = { weapon = "mp_weapon_wingman_n", mods = ["extended_ammo","ricochet","pas_run_and_gun","pas_fast_reload","pas_fast_ads","tactical_cdr_on_kill"], sights = [], ... }
	file.weapons.append( ggWme )


	// snipers

	// double take
	FiestaWeapon ggTaketake = { weapon = "mp_weapon_doubletake", mods = ["extended_ammo","pas_fast_reload","ricochet","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","scope_4x","threat_scope"], ... }
	file.weapons.append( ggTaketake )

	// kraber
	FiestaWeapon ggKraber = { weapon = "mp_weapon_sniper", mods = ["extended_ammo","ricochet","pas_fast_reload","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","scope_4x","threat_scope"], ... }
	file.weapons.append( ggKraber )

	// dmr
	FiestaWeapon ggDmr = { weapon = "mp_weapon_dmr", mods = ["extended_ammo","pas_fast_reload","pas_fast_ads","pas_fast_swap","tactical_cdr_on_kill"], sights = ["iron_sights","scope_4x","threat_scope"], ... }

	// secondary pistols

	// re-45
	FiestaWeapon ggRe45 = { weapon = "mp_weapon_autopistol", mods = ["extended_ammo","silencer","pas_run_and_gun","pas_fast_reload","pas_fast_ads","tactical_cdr_on_kill"], sights = [], ... }
	file.weapons.append( ggRe45 )

	// p2016
	FiestaWeapon ggP2016 = { weapon = "mp_weapon_semipistol", mods = ["extended_ammo","silencer","pas_run_and_gun","pas_fast_reload","pas_fast_ads","tactical_cdr_on_kill"], sights = [], ... }
	file.weapons.append( ggP2016 )

	// wingman
	FiestaWeapon ggWingman = { weapon = "mp_weapon_wingman", mods = ["extended_ammo","silencer","pas_run_and_gun","pas_fast_reload","pas_fast_ads","tactical_cdr_on_kill"], sights = [], ... }
	file.weapons.append( ggWingman )


	// final/special weapons
	// charge rifle
	FiestaWeapon ggChargeRifle = { weapon = "mp_weapon_defender", mods = ["extended_ammo","quick_charge","pas_fast_swap","pas_fast_ads"], sights = [], ... }
	file.weapons.append( ggChargeRifle )



	// ordnance

	// frag grenade
	FiestaWeapon ggFrag = { weapon = "mp_weapon_frag_grenade", mods = [], sights = [], ...}
	file.ordnance.append( ggFrag )

	// arc grenade
	FiestaWeapon ggArc = { weapon = "mp_weapon_grenade_emp", mods = [], sights = [], ... }
	file.ordnance.append( ggArc )

	// firestar
	FiestaWeapon ggFire = { weapon = "mp_weapon_thermite_grenade", mods = [], sights = [], ... }
	file.ordnance.append( ggFire )

	// gravstar
	FiestaWeapon ggGrav = { weapon = "mp_weapon_grenade_gravity", mods = [], sights = [], ... }
	file.ordnance.append( ggGrav )

	// esmoke
	FiestaWeapon ggSmoke = { weapon = "mp_weapon_grenade_electric_smoke", mods = [], sights = [], ... }
	file.ordnance.append( ggSmoke )

	// satchel
	FiestaWeapon ggSatchel = { weapon = "mp_weapon_satchel", mods = [], sights = [], ... }
	file.ordnance.append( ggSatchel )


	// tacticals

	// cloak
	FiestaWeapon ggCloak = { weapon = "mp_ability_cloak", mods = [], sights = [], ... }
	file.tacticals.append( ggCloak )

	// sonar
	FiestaWeapon ggSonar = { weapon = "mp_weapon_grenade_sonar", mods = [], sights = [], ... }
	file.tacticals.append( ggSonar )

	// grapple
	FiestaWeapon ggGrapple = { weapon = "mp_ability_grapple", mods = [], sights = [], ... }
	file.tacticals.append( ggGrapple )

	// stim
	FiestaWeapon ggStim = { weapon = "mp_ability_heal", mods = [], sights = [], ... }
	file.tacticals.append( ggStim )

	// awall
	FiestaWeapon ggCunt = { weapon = "mp_weapon_deployable_cover", mods = [], sights = [], ... }
	file.tacticals.append( ggCunt )

	// phase shift
	FiestaWeapon ggPhase = { weapon = "mp_ability_shifter", mods = [], sights = [], ... }
	file.tacticals.append( ggPhase )

	// holo
	FiestaWeapon ggHolo = { weapon = "mp_ability_holopilot", mods = [], sights = [], ... }
	file.tacticals.append( ggHolo )

    // set this to 25 score limit default
	GameMode_SetDefaultScoreLimits( GAMEMODE_RANDOMGG, 25, 0 )

	#if SERVER
		GameMode_AddServerInit( GAMEMODE_RANDOMGG, GamemodeRandomGG_Init )
		GameMode_AddServerInit( GAMEMODE_RANDOMGG, GamemodeFFAShared_Init )
		GameMode_SetPilotSpawnpointsRatingFunc( GAMEMODE_RANDOMGG, RateSpawnpoints_Generic )
		GameMode_SetTitanSpawnpointsRatingFunc( GAMEMODE_RANDOMGG, RateSpawnpoints_Generic )
	#elseif CLIENT
		GameMode_AddClientInit( GAMEMODE_RANDOMGG, ClGamemodeRandomGG_Init )
		GameMode_AddClientInit( GAMEMODE_RANDOMGG, GamemodeFFAShared_Init )
		GameMode_AddClientInit( GAMEMODE_RANDOMGG, ClGamemodeRandomGG_Init )
	#endif
	#if !UI
		GameMode_SetScoreCompareFunc( GAMEMODE_RANDOMGG, CompareAssaultScore )
		GameMode_AddSharedInit( GAMEMODE_RANDOMGG, GamemodeFFA_Dialogue_Init )
	#endif
}



array<FiestaWeapon> function GetRandomFiestaWeapons()
{
	return file.weapons
}

array<FiestaWeapon> function GetRandomOrdnance()
{
	return file.ordnance
}

array<FiestaWeapon> function GetRandomTacticals()
{
	return file.tacticals
}