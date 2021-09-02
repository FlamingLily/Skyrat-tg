/datum/job/proc/announce_head(mob/living/carbon/human/H, channels) //tells the given channel that the given mob is the new department head. See communications.dm for valid channels.
	if(H && GLOB.announcement_systems.len)
		if(H.alt_title_holder)
			//timer because these should come after the captain announcement
			SSticker.OnRoundstart(CALLBACK(GLOBAL_PROC, .proc/_addtimer, CALLBACK(pick(GLOB.announcement_systems), /obj/machinery/announcement_system/proc/announce, "NEWHEAD", H.real_name, H.alt_title_holder, channels), 1))
		else
			SSticker.OnRoundstart(CALLBACK(GLOBAL_PROC, .proc/_addtimer, CALLBACK(pick(GLOB.announcement_systems), /obj/machinery/announcement_system/proc/announce, "NEWHEAD", H.real_name, H.job, channels), 1))

//Fleet Command/NCV Titan
/datum/job/fleetmaster
	alt_titles = list("Fleet Admiral", "Fleet Commander")
	examine_rank = "Admiral"

/datum/job/nanotrasen_representative
	alt_titles = list("Nanotrasen Diplomat", "Central Command Representative")
	examine_rank = "Representative"

/datum/job/operations_inspector
	alt_titles = list("Fleet Command Representative", "Command Inspector")
	examine_rank = "Inspector"

/datum/job/bridge_officer
	alt_titles = list("Helm Officer", "Operations Officer", "Weapons Officer")
	examine_rank = "Lieutenant"

/datum/job/deck_crew
	alt_titles = list("Deckhand", "Shuttlecraft Pilot")
	examine_rank = "Crewman"

/datum/job/blueshield
	alt_titles = list("Command Bodyguard", "Executive Protection Agent", "Personal Protection Specialist")
	examine_rank = "Sergeant"

//Command
/datum/job/captain
	alt_titles = list("Station Commander", "Commanding Officer", "Site Manager")
	examine_rank = "Captain"

/datum/job/head_of_personnel
	alt_titles = list("Executive Officer", "Employment Officer", "Crew Supervisor")
	examine_rank = "Commander"

/datum/job/head_of_security
	alt_titles = list("Security Commander", "Chief Constable", "Chief of Security", "Sheriff")
	examine_rank = "Commander"

/datum/job/chief_engineer
	alt_titles = list("Engineering Foreman")
	examine_rank = "Foreman"

/datum/job/research_director
	alt_titles = list("Silicon Administrator", "Lead Researcher", "Biorobotics Director", "Research Supervisor", "Chief Science Officer")
	examine_rank = "Director"

/datum/job/quartermaster
	alt_titles = list("Deck Chief", "Cargo Foreman")
	examine_rank = "Quartermaster"

/datum/job/chief_medical_officer
	alt_titles = list("Medical Director")
	examine_rank = "Doctor"

//Engineering
/datum/job/station_engineer
	alt_titles = list("Emergency Damage Control Technician", "Electrician", "Engine Technician", "EVA Technician", "Engineer")

/datum/job/atmospheric_technician
	alt_titles = list("Life Support Technician", "Emergency Fire Technician")

//Medical
/datum/job/doctor
	alt_titles = list("Surgeon", "Nurse")
	examine_rank = "Doctor"

/datum/job/paramedic
	alt_titles = list("Emergency Medical Technician", "Search and Rescue Technician")

/datum/job/virologist
	alt_titles = list("Pathologist")
	examine_rank = "Doctor"

/datum/job/chemist
	alt_titles = list("Pharmacist", "Pharmacologist")
	examine_rank = "Doctor"

//Science
/datum/job/scientist
	alt_titles = list("Circuitry Designer", "Xenobiologist", "Cytologist", "Plasma Researcher", "Anomalist", "Lab Technician", "Xenoarchaeologist")
	examine_rank = "Doctor"

/datum/job/roboticist
	alt_titles = list("Biomechanical Technician", "Mechatronic Engineer")

/datum/job/geneticist
	alt_titles = list("Mutation Researcher")
	examine_rank = "Doctor"

/datum/job/expeditionary_trooper // taken from chesify's classes update. miss 'em
	alt_titles = list("Vanguard Medic", "Vanguard Technician", "Vanguard Pointman", "Vanguard Marksman")
	examine_rank = "Corporal"

//Cargo
/datum/job/cargo_technician
	alt_titles = list("Deck Worker", "Mailman")

/datum/job/shaft_miner
	alt_titles = list("Excavator")

//Service
/datum/job/bartender
	alt_titles = list("Mixologist", "Barkeeper")

/datum/job/cook
	alt_titles = list("Chef", "Butcher", "Culinary Artist", "Sous-Chef")

/datum/job/janitor
	alt_titles = list("Custodian", "Custodial Technicial", "Sanitation Technician", "Maid")

/datum/job/curator
	alt_titles = list("Librarian", "Journalist", "Archivist")

/datum/job/psychologist
	alt_titles = list("Psychiatrist", "Therapist", "Counsellor")
	examine_rank = "Counsellor"

/datum/job/lawyer
	alt_titles = list("Internal Affairs Agent", "Human Resources Agent", "Defence Attorney", "Public Defender", "Barrister", "Prosecutor")

/datum/job/chaplain
	alt_titles = list("Priest", "Preacher")
	examine_rank = "Reverend"

/datum/job/mime
	alt_titles = list("Pantomimist")

/datum/job/clown
	alt_titles = list("Jester")

/datum/job/botanist
	alt_titles = list("Hydroponicist", "Gardener", "Botanical Researcher", "Herbalist")

//Security
/datum/job/warden
	alt_titles = list("Brig Sergeant", "Dispatch Officer", "Brig Governor", "Jailer")
	examine_rank = "Sergeant"

/datum/job/detective
	alt_titles = list("Forensic Technician", "Private Investigator", "Forensic Scientist")

/datum/job/security_officer
	alt_titles = list("Security Operative", "Peacekeeper")
	examine_rank = "Officer"

/datum/job/security_sergeant
	alt_titles = list("Security Squad Leader", "Security Task Force Leader", "Security Fireteam Leader", "Security Enforcer")
	examine_rank = "Sergeant"

/datum/job/security_medic
	alt_titles = list("Field Medic", "Security Corpsman", "Brig Physician")
	examine_rank = "Officer"

/datum/job/junior_officer
	alt_titles = list("Station Police", "Civil Protection Officer", "Parole Officer")
	examine_rank = "Constable"

/datum/job/brigoff
	alt_titles = list("Brig Officer", "Prison Guard")
	examine_rank = "Officer"

//Civillian
/datum/job/prisoner
	alt_titles = list("Low Risk Prisoner", "High Risk Prisoner", "Extreme Risk Prisoner", "Protective Custody Prisoner")
	examine_rank = "Inmate"

/datum/job/assistant
	alt_titles = list("Civilian", "Tourist", "Businessman", "Trader", "Entertainer", "Off-Duty Staff", "Freelancer")

//Silicon
/datum/job/ai
	alt_titles = list("Station Intelligence", "Automated Overseer")
	examine_rank = "Intelligence Core"

/datum/job/cyborg
	alt_titles = list("Robot", "Android")
	examine_rank = "Silicon Unit"
