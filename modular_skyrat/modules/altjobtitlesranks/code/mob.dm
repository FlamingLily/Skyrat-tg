/mob/living
	/// used to hold alt titles because apparently a round-start player applies post-equip before there's a goddamn client in the mob AAAAAAAAAAAAAAAAA
	var/alt_title_holder
	/// Holds the rank for examine "Doctor Walker", "Officer Jones" etc.
	var/examine_rank
	/// Holds the entire name to be displayed on examine
	var/examine_rank_displaying = FALSE

/mob/living/carbon/human/proc/get_voice_title()
	if(!examine_rank || !examine_rank_displaying || (GetVoice() != real_name)) // If youre disguised, there's no rank, or if it's disabled, you can't display an examine rank.
		return FALSE
	var/list/last_name = splittext(real_name, " ")
	var/titled_name = "[examine_rank] [last_name[last_name.len]]"
	if(name == titled_name)
		return titled_name

/mob/living/verb/toggle_displaying_title()
	set category = "IC"
	set name = "Toggle displaying rank"
	set desc = "This disables or enables ranks displayed before a users' name on examine."

	examine_rank_displaying = !examine_rank_displaying
	to_chat(usr, span_notice("You will [examine_rank_displaying ? "now" : "no longer"] be recognised as \a [examine_rank]"))

/mob/living/proc/get_visible_name()
	if(examine_rank_displaying && examine_rank)
		return "[examine_rank] [name]"
	else
		return name

/mob/living/carbon/human/get_visible_name()
	var/face_name = get_face_name("")
	var/id_name = get_id_name("")
	var/list/last_name = splittext(real_name, " ")
	if(name_override)
		return name_override
	if(face_name)
		if(face_name == real_name && examine_rank_displaying)
			return "[examine_rank] [last_name[last_name.len]]"
		if(id_name && (id_name != face_name))
			return "[face_name] (as [id_name])"
		return face_name
	if(id_name)
		return id_name
	return "Unknown"
