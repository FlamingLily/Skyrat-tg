/datum/design/stasisbag
	name = "Stasis Body Bag"
	desc = "A stasis body bag, powered by cryogenic stasis technology. It can hold only one body, but it prevents decay."
	id = "stasisbag"
	build_type = PROTOLATHE | AWAY_LATHE
	materials = list(/datum/material/iron = 3000, /datum/material/plasma = 2000, /datum/material/diamond = 1000)
	build_path = /obj/item/bodybag/stasis
	category = list("Medical Designs")
	departmental_flags = DEPARTMENTAL_FLAG_MEDICAL | DEPARTMENTAL_FLAG_SCIENCE
