// Bola launcher
/obj/item/gun/energy/bolalauncher
	name = "Cyborg energy bola launcher"
	desc = "A launcher for energy bolas, installed in police cyborgs and used for self defense."
	icon = 'icons/obj/guns/energy.dmi'
	icon_state = "dragnet"
	cell_type = /obj/item/stock_parts/cell
	ammo_type = list(/obj/item/ammo_casing/energy/cyborgbola)
	modifystate = FALSE
	w_class = WEIGHT_CLASS_NORMAL
	can_flashlight = FALSE
	ammo_x_offset = 1
	can_charge = FALSE
	use_cyborg_cell = TRUE

/obj/item/gun/energy/bolalauncher/emp_act()
	return

/obj/item/ammo_casing/energy/cyborgbola
	projectile_type = /obj/projectile/energy/trap/cyborg
	select_name = "bola"
	harmful = FALSE
// Mobile consoles
/obj/item/borg_console
	/// Used to determine what console is used on attack_self
	var/internal_console

/obj/item/borg_console/medical
	name = "Cyborg Medical Console Uplink"
	desc = "An internal device used to remotely access the station's medical records."
	icon = 'icons/obj/library.dmi'
	icon_state = "book8"

/obj/item/borg_console/medical/Initialize()
	. = ..()
	internal_console = new /obj/machinery/computer/med_data(src)

/obj/item/borg_console/medical/attack_self(mob/user, modifiers)
	. = ..()


/obj/item/borg_console/security
	name = "Cyborg Security Console Uplink"
	desc = "An internal device used to remotely access the station's security records."
	icon = 'icons/obj/library.dmi'
	icon_state = "bookSpaceLaw"

/obj/item/borg_console/secure_data/Initialize()
	. = ..()
	internal_console = new /obj/machinery/computer/secure_data(src)


/obj/item/borg_console/cameras
	name = "Cyborg Camera Console Uplink"
	desc = "An internal device used to remotely access the station's camera network."
	icon = 'icons/obj/library.dmi'
	icon_state = "bookDetective"

/obj/item/borg_console/security/Initialize()
	. = ..()
	internal_console = new /obj/machinery/computer/security(src)
