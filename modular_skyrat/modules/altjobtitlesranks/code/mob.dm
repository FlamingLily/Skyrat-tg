/mob/living
	/// used to hold alt titles because apparently a round-start player applies post-equip before there's a goddamn client in the mob AAAAAAAAAAAAAAAAA
	var/alt_title_holder
	/// Holds the rank for examine "Doctor Walker", "Officer Jones" etc.
	var/examine_rank
	/// Holds the entire name to be displayed on examine
	var/examine_rank_displaying = TRUE

/mob/living/proc/get_examine_rank_name()
	if(!examine_rank || !examine_rank_displaying)
		return real_name
	if(examine_rank == "Inmate")
		return "Inmate-[rand(100, 999)]"
	var/list/split_name = splittext(real_name, " ")
	return "[examine_rank] [split_name[split_name.len]]"

/mob/living/silicon/get_examine_rank_name()
	if(!examine_rank)
		return real_name
	return "[examine_rank] [real_name]"

/mob/living/verb/toggle_displaying_rank()
	set category = "IC"
	set name = "Toggle displaying rank"
	set desc = "This disables or enables ranks displayed before a users' name on examine."

	examine_rank_displaying = !examine_rank_displaying
