/obj/item/robot_model/forensic
	name = "forensic robot module"
	basic_modules = list(
	/obj/item/assembly/flash/cyborg,
	// Bola Launcher
	// Records Console sec+med
	// Remote camera console, as well?
	/obj/item/pinpointer/crew,
	/obj/item/detective_scanner,
	/obj/item/holosign_creator/security, // Not the peacekeeper holosign creator, as that is anti-combat, more than anti-people
	/obj/item/toy/crayon/white,
	// Cigarette dispenser
	// Evidence Bag
	// Pen&paper?
	/obj/item/extinguisher/mini)
	radio_channels = list(RADIO_CHANNEL_SECURITY)
	emag_modules = list(/obj/item/gun/energy/disabler/cyborg) // Emag them to make them into a real secborg :^) (I wanted to just give them the detective's revolver, but that's a bit much)
	cyborg_base_icon = "sec" // This is intended to replace them, sure it might be a lil' confusing, but I'm also not a spriter
	model_select_icon = "security"
	hat_offset = 3

/obj/item/robot_model/forensic/do_transform_animation()
	..()
	to_chat(loc, span_userdanger("You are NOT a security officer, nor are you a security cyborg. You exist to assist detectives and officers in forensic investigations and interrogations. Do NOT perform arrests."))
