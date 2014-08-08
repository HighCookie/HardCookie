//-----------------------------------------------------
Msg("Activating Hard 12\n");


DirectorOptions <-
{
	ActiveChallenge = 1

	cm_SpecialRespawnInterval = 5
	cm_MaxSpecials = 12
	cm_BaseSpecialLimit = 3

	DominatorLimit = 12

	weaponsToRemove =
	{
		weapon_adrenaline = 0
		weapon_defibrillator = 0
		//weapon_first_aid_kit = 0 
	}

	weaponsToConvert = 
	{
		weapon_first_aid_kit = "weapon_pain_pills"
	}

	function ConvertWeaponSpawn( classname )
	{
		if ( classname in weaponsToConvert )
		{
			return weaponsToConvert[classname];
		}
	}

	function AllowWeaponSpawn( classname )
	{
		if ( classname in weaponsToRemove )
		{
			return false;
		}
		return true;
	}	

	function ShouldAvoidItem( classname )
	{
		if ( classname in weaponsToRemove )
		{
			return true;
		}
		return false;
	}
}
