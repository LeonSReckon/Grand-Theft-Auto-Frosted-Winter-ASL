// GTA Frosted Winter Autosplitter v1.0 3/31/2026
// Supports RTA
// Pointers and Script by LeonSReckon

state("gta3")
{
	byte Strt  : 0x22FCEC;  // Starting Value
	byte Start : 0x4F3195;  // Another Starting Value
	byte Text  : 0x445098;
	int Mission: 0x540768;  // Mission Counter
	int Rampage: 0x4E287C;  // Rampage Counter
	int Package: 0x5413A4;  // Package Counter
	int Bonus  : 0x4622B4;  // Bonus Counter
	int Mistery: 0x4622C0;  // Mistery Counter
	int Body   : 0x4622B8;  // Body Counter
	int Terror : 0x4F2C8C;  // Terrorists Counter
	int USJ    : 0x485B74;  // Unique Stunt Jumps Counter
	int Days   : 0x4F2BB8;  // In-Game Days Counter
}


startup
{
	
    // Splits
	settings.Add("Split Type", true, "Split Type");
	settings.CurrentDefaultParent = "Split Type";
	settings.Add("Mission", true, "Mission");
	settings.Add("Rampage", true, "Rampage");
	settings.Add("Collectibles", true, "Collectibles");
	settings.Add("Unique Stunt Jump", true, "Unique Stunt Jump");
	settings.CurrentDefaultParent = null;
	settings.CurrentDefaultParent = "Collectibles";
	settings.Add("Packages", true, "Packages");
	settings.Add("Bonus", true, "Bonus");
	settings.Add("Mistery", true, "Mistery");
	settings.Add("BodyCast", true, "BodyCast");
	settings.Add("Terrorist ", true, "Terrorist ");
	settings.CurrentDefaultParent = null;

}

start
{
    return current.Text == 1 && current.Strt == 0;
}

split 
{
	if(settings ["Mission"]){
		if(current.Mission > old.Mission){
		return true;
		}
	}
	
	if(settings ["Rampage"]){
		if(current.Rampage > old.Rampage){
		return true;
		}
	}
	
	if(settings ["Unique Stunt Jump"]){
		if(current.USJ > old.USJ){
		return true;
		}
	}
	
	if(settings ["Packages"]){
		if(current.Package > old.Package){
		return true;
		}
	}
	
	if(settings ["Bonus"]){
		if(current.Bonus > old.Bonus){
		return true;
		}
	}
	
	if(settings ["Mistery"]){
		if(current.Mistery > old.Mistery){
		return true;
		}
	}
	
	if(settings ["BodyCast"]){
		if(current.Body > old.Body){
		return true;
		}
	}
	
	if(settings ["Terrorist"]){
		if(current.Terror > old.Terror){
		return true;
		}
	}
}

reset
{
    return current.Text == 1 && current.Strt == 0 && old.Strt == 1;
}