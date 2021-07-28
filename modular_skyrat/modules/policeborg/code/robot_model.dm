/obj/item/robot_model/police
	name = "police robot module"
	basic_modules = list(
	/obj/item/assembly/flash/cyborg,
	/obj/item/gun/energy/bolalauncher,
	/obj/item/borg_console/medical,
	/obj/item/borg_console/security,
	/obj/item/borg_console/camera,
	/obj/item/pinpointer/crew,
	/obj/item/holosign_creator/security, // Not the peacekeeper holosign creator, as that is anti-combat, more than anti-people
	/obj/item/toy/crayon/white,
	// Cigarette dispenser
	// Evidence Bag
	// Pen&paper?
	//Gun rack
	/obj/item/extinguisher/mini)
	radio_channels = list(RADIO_CHANNEL_SECURITY)
	emag_modules = list(/obj/item/gun/energy/disabler/cyborg) // Emag them to make them into a real secborg :^) (I wanted to just give them the detective's revolver, but that's a bit much)
	cyborg_base_icon = "sec" // This is intended to replace them, sure it might be a lil' confusing at first, but I'm also not a spriter
	model_select_icon = "security"
	hat_offset = 3

/obj/item/robot_model/police/do_transform_animation()
	..()
	to_chat(loc, span_userdanger("You are NOT a security officer, nor are you a security cyborg. You are an assistant for the security force and detectives, and your Bola Launcher exists solely to defend yourself. Do NOT perform arrests."))
