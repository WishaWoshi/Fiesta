global function Sh_GamemodeRandomGG_Init;

global function GetRandomGunGameWeapons;
global function GetRandomOrdnance;
global function GetRandomTacticals

global const string GAMEMODE_RANDOMGG = "randomgg"

struct {
	array<GunGameWeapon> weapons
	array<GunGameWeapon> ordnance
	array<GunGameWeapon> tacticals
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
	GunGameWeapon ggCar = { weapon = "mp_weapon_car", mods = [], ... }
	file.weapons.append( ggCar )

	// alternator
	GunGameWeapon ggAlternator = { weapon = "mp_weapon_alternator_smg", mods = [], ... }
	file.weapons.append( ggAlternator )

	// volt
	GunGameWeapon ggVolt = { weapon = "mp_weapon_hemlok_smg", mods = [], ... }
	file.weapons.append( ggVolt )

	// r97
	GunGameWeapon ggR97 = { weapon = "mp_weapon_r97", mods = [], ... }
	file.weapons.append( ggR97 )


	// rifles

	// hemlok
	GunGameWeapon ggHemlok = { weapon = "mp_weapon_hemlok", mods = [], ... }
	file.weapons.append( ggHemlok )

	// flatline
	GunGameWeapon ggFlatline = { weapon = "mp_weapon_vinson", mods = [], ... }
	file.weapons.append( ggFlatline )

	// r201
	GunGameWeapon ggR101 = { weapon = "mp_weapon_rspn101", mods = [], ... }
	file.weapons.append( ggR101 )

	// r101
	GunGameWeapon ggR101og = { weapon = "mp_weapon_rspn101_og", mods = [], ... }
	file.weapons.append( ggR101og )

	// g2
	GunGameWeapon ggG2A5 = { weapon = "mp_weapon_g2", mods = [], ... }
	file.weapons.append( ggG2A5 )

	// lmgs

	// devotion
	GunGameWeapon ggDevotion = { weapon = "mp_weapon_esaw", mods = [], ... }
	file.weapons.append( ggDevotion )

	// l-star
	GunGameWeapon ggLstar = { weapon = "mp_weapon_lstar", mods = [], ... }
	file.weapons.append( ggLstar )

	// spitfire
	GunGameWeapon ggSpitfire = { weapon = "mp_weapon_lmg", mods = [], ... }
	file.weapons.append( ggSpitfire )

	// shotguns

	// eva-8
	GunGameWeapon ggEva = { weapon = "mp_weapon_shotgun", mods = [], ... }
	file.weapons.append( ggEva )

	// mastiff
	GunGameWeapon ggMastiff = { weapon = "mp_weapon_mastiff", mods = [], ... }
	file.weapons.append( ggMastiff )


	// grenadiers

	// softball
	GunGameWeapon ggSoftball = { weapon = "mp_weapon_softball", mods = [], ... }
	file.weapons.append( ggSoftball )

	// epg
	GunGameWeapon ggEpg = { weapon = "mp_weapon_epg", mods = [], ... }
	file.weapons.append( ggEpg )

	// smr
	GunGameWeapon ggSmr = { weapon = "mp_weapon_smr", mods = [], ... }
	file.weapons.append( ggSmr )

	// call of duty: bad
	GunGameWeapon ggCold = { weapon = "mp_weapon_pulse_lmg", mods = [], ... }
	file.weapons.append( ggCold )

	// primary pistols

	// mozambique
	GunGameWeapon ggMozam = { weapon = "mp_weapon_shotgun_pistol", mods = [], ... }
	file.weapons.append( ggMozam )

	// wingman elite
	GunGameWeapon ggWme = { weapon = "mp_weapon_wingman_n", mods = [], ... }
	file.weapons.append( ggWme )


	// snipers

	// double take
	GunGameWeapon ggTaketake = { weapon = "mp_weapon_doubletake", mods = [], ... }
	file.weapons.append( ggTaketake )

	// kraber
	GunGameWeapon ggKraber = { weapon = "mp_weapon_sniper", mods = [], ... }
	file.weapons.append( ggKraber )


	// secondary pistols

	// re-45
	GunGameWeapon ggRe45 = { weapon = "mp_weapon_autopistol", mods = [], ... }
	file.weapons.append( ggRe45 )

	// p2016
	GunGameWeapon ggP2016 = { weapon = "mp_weapon_semipistol", mods = [], ... }
	file.weapons.append( ggP2016 )

	// wingman
	GunGameWeapon ggWingman = { weapon = "mp_weapon_wingman", mods = [], ... }
	file.weapons.append( ggWingman )


	// final/special weapons
	// charge rifle
	GunGameWeapon ggChargeRifle = { weapon = "mp_weapon_defender", mods = [], ... }
	file.weapons.append( ggChargeRifle )


	// ordnance

	// frag grenade
	GunGameWeapon ggFrag = { weapon = "mp_weapon_frag_grenade", mods = [], ...}
	file.ordnance.append( ggFrag )

	// arc grenade
	GunGameWeapon ggArc = { weapon = "mp_weapon_grenade_emp", mods = [], ... }
	file.ordnance.append( ggArc )

	// firestar
	GunGameWeapon ggFire = { weapon = "mp_weapon_thermite_grenade", mods = [], ... }
	file.ordnance.append( ggFire )

	// gravstar
	GunGameWeapon ggGrav = { weapon = "mp_weapon_grenade_gravity", mods = [], ... }
	file.ordnance.append( ggGrav )

	// esmoke
	GunGameWeapon ggSmoke = { weapon = "mp_weapon_grenade_electric_smoke", mods = [], ... }
	file.ordnance.append( ggSmoke )

	// satchel
	GunGameWeapon ggSatchel = { weapon = "mp_weapon_satchel", mods = [], ... }
	file.ordnance.append( ggSatchel )


	// tacticals

	// cloak
	GunGameWeapon ggCloak = { weapon = "mp_ability_cloak", mods = [], ... }
	file.tacticals.append( ggCloak )

	// sonar
	GunGameWeapon ggSonar = { weapon = "mp_weapon_grenade_sonar", mods = [], ... }
	file.tacticals.append( ggSonar )

	// grapple
	GunGameWeapon ggGrapple = { weapon = "mp_ability_grapple", mods = [], ... }
	file.tacticals.append( ggGrapple )

	// stim
	GunGameWeapon ggStim = { weapon = "mp_ability_heal", mods = [], ... }
	file.tacticals.append( ggStim )

	// awall
	GunGameWeapon ggCunt = { weapon = "mp_weapon_deployable_cover", mods = [], ... }
	file.tacticals.append( ggCunt )

	// phase shift
	GunGameWeapon ggPhase = { weapon = "mp_ability_shifter", mods = [], ... }
	file.tacticals.append( ggPhase )

	// holo
	GunGameWeapon ggHolo = { weapon = "mp_ability_holopilot", mods = [], ... }
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



array<GunGameWeapon> function GetRandomGunGameWeapons()
{
	return file.weapons
}

array<GunGameWeapon> function GetRandomOrdnance()
{
	return file.ordnance
}

array<GunGameWeapon> function GetRandomTacticals()
{
	return file.tacticals
}