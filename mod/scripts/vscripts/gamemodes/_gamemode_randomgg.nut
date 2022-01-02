global function GamemodeRandomGG_Init

struct {

} file

void function GamemodeRandomGG_Init()
{
    SetSpawnpointGamemodeOverride( FFA )

	SetShouldUseRoundWinningKillReplay( true )
	SetLoadoutGracePeriodEnabled( false ) // prevent modifying loadouts with grace period
	SetWeaponDropsEnabled( false )
	Riff_ForceTitanAvailability( eTitanAvailability.Never )
	Riff_ForceBoostAvailability( eBoostAvailability.Disabled )
	ClassicMP_ForceDisableEpilogue( true )

	AddCallback_OnClientConnected( RandomInitPlayer )
	AddCallback_OnPlayerKilled( RandomOnPlayerKilled )
	AddCallback_OnPlayerRespawned( UpdateLoadout )

}

void function RandomInitPlayer( entity player )
{
	UpdateLoadout( player )
	//thread RandomInitPlayer_Threaded( player )

}

void function RandomInitPlayer_Threaded( entity player )
{
	// bit of a hack, need to rework earnmeter code to have better support for completely disabling it
	// rn though this just waits for earnmeter code to set the mode before we set it back
	WaitFrame()
	if ( IsValid( player ) )
		PlayerEarnMeter_SetMode( player, eEarnMeterMode.DISABLED )
}

void function RandomOnPlayerKilled( entity victim, entity attacker, var damageInfo )
{
	if ( !victim.IsPlayer() || GetGameState() != eGameState.Playing )
	{
		return
	}

	if ( !attacker.IsPlayer() )
	{
		string message = victim.GetPlayerName() + " got themselves killed."
				foreach ( entity player in GetPlayerArray() )
					SendHudMessage( player, message, -1, 0.4, 255, 0, 0, 0, 0, 3, 0.15 )

			if ( GameRules_GetTeamScore( victim.GetTeam() ) != 0 )
				{

					victim.SetPlayerGameStat( PGS_ASSAULT_SCORE, victim.GetPlayerGameStat( PGS_ASSAULT_SCORE ) - 1 )
					AddTeamScore( victim.GetTeam(), -1 ) // lost a point

				}

			return
	}

	if ( attacker.IsPlayer() )
	{

		if (victim == attacker)
		{
			string message = victim.GetPlayerName() + " killed themselves."
				foreach ( entity player in GetPlayerArray() )
					SendHudMessage( player, message, -1, 0.4, 255, 0, 0, 0, 0, 3, 0.15 )

			if ( GameRules_GetTeamScore( victim.GetTeam() ) != 0 )
				{

					victim.SetPlayerGameStat( PGS_ASSAULT_SCORE, victim.GetPlayerGameStat( PGS_ASSAULT_SCORE ) - 1 )
					AddTeamScore( victim.GetTeam(), -1 ) // lost a point

				}

			return
		}

		{
			attacker.SetPlayerGameStat( PGS_ASSAULT_SCORE, attacker.GetPlayerGameStat( PGS_ASSAULT_SCORE ) + 1 )
			AddTeamScore( attacker.GetTeam(), 1 )

			UpdateLoadout( attacker )
		}

		if ( DamageInfo_GetDamageSourceIdentifier( damageInfo ) == eDamageSourceId.human_execution )
		{
			string message = victim.GetPlayerName() + " got outplayed by an execution."
			foreach ( entity player in GetPlayerArray() )
				SendHudMessage( player, message, -1, 0.4, 255, 0, 0, 0, 0, 3, 0.15 )

			if ( GameRules_GetTeamScore( victim.GetTeam() ) != 0 )
			{

				victim.SetPlayerGameStat( PGS_ASSAULT_SCORE, victim.GetPlayerGameStat( PGS_ASSAULT_SCORE ) - 1 )
				AddTeamScore( victim.GetTeam(), -1 ) // lost a point

			}
		}
	}
}

void function UpdateLoadout( entity player )
{
	if (IsAlive(player) && player != null && player.IsPlayer()) {

		array<FiestaWeapon> weapons = GetRandomFiestaWeapons()
		FiestaWeapon newweapon = weapons[ RandomInt( weapons.len() ) ]
		weapons.remove(weapons.find(newweapon)) // prevent duplicate weapons
		FiestaWeapon newweapon2 = weapons[ RandomInt( weapons.len() ) ]

		array<FiestaWeapon> ordnances = GetRandomOrdnance()
		FiestaWeapon ordnance = ordnances[ RandomInt( ordnances.len() ) ]

		array<FiestaWeapon> tacticals = GetRandomTacticals()
		FiestaWeapon tactical = tacticals[ RandomInt( tacticals.len() ) ]

		foreach ( entity weapon in player.GetMainWeapons() )
			player.TakeWeaponNow( weapon.GetWeaponClassName() )

		foreach ( entity weapon in player.GetOffhandWeapons() )
			player.TakeWeaponNow( weapon.GetWeaponClassName() )


		player.GiveWeapon( newweapon.weapon, newweapon.mods )
		player.GiveWeapon( newweapon2.weapon, newweapon2.mods )

		player.GiveOffhandWeapon( ordnance.weapon, OFFHAND_ORDNANCE )
		player.GiveOffhandWeapon( tactical.weapon, OFFHAND_SPECIAL )
		player.GiveOffhandWeapon( "melee_pilot_emptyhanded", OFFHAND_MELEE )
	}
}

void function OnWinnerDetermined()
{
	SetRespawnsEnabled( false )
	SetKillcamsEnabled( false )
}