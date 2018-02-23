	//////////
	//TCOMMS//
	//////////

/obj/machinery/telecomms/relay/preset/sent
	id = "Patrol Relay"
	network = "senttcommsat"
	autolinkers = list("sentrelay")

/obj/machinery/telecomms/relay/preset/sentalb
	id = "Albatross Relay"
	network = "senttcommsat"
	autolinkers = list("albrelay")

/obj/machinery/telecomms/receiver/preset_sent
	id = "Patrol Receiver"
	network = "senttcommsat"
	autolinkers = list("receiverSent")
	freq_listening = list(ERT_FREQ, MED_FREQ, COMM_FREQ, PUB_FREQ)

/obj/machinery/telecomms/bus/preset_sent1
	id = "Patrol Bus 1"
	network = "senttcommsat"
	freq_listening = list(ERT_FREQ, COMM_FREQ)
	autolinkers = list("processorsent1", "senttroops", "sentcommand")

/obj/machinery/telecomms/bus/preset_sent2
	id = "Patrol Bus 2"
	network = "senttcommsat"
	freq_listening = list(MED_FREQ, PUB_FREQ)
	autolinkers = list("processorsent2", "sentmedical", "sentcommon")

/obj/machinery/telecomms/bus/preset_sent2/New()
	for(var/i = PUBLIC_LOW_FREQ, i < PUBLIC_HIGH_FREQ, i += 2)
		if(i == PUB_FREQ)
			continue
		freq_listening |= i
	..()

/obj/machinery/telecomms/processor/preset_sent1
	id = "Patrol Processor 1"
	network = "senttcommsat"
	autolinkers = list("processorsent1")

/obj/machinery/telecomms/processor/preset_sent2
	id = "Patrol Processor 2"
	network = "senttcommsat"
	autolinkers = list("processorsent2")

/obj/machinery/telecomms/hub/presetsent
	id = "Patrol Hub"
	network = "senttcommsat"
	autolinkers = list("sentHub", "sentrelay", "albrelay", "senttroops", "sentmedical", "sentcommon", "sentcommand",
	 "receiverSent", "broadcasterSent")

 /obj/machinery/telecomms/broadcaster/preset_sent
	id = "Patrol Broadcaster"
	network = "senttcommsat"
	autolinkers = list("broadcasterSent")

/obj/machinery/telecomms/server/presets/sentinel/common
	id = "Patrol Common Server"
	freq_listening = list(PUB_FREQ) // AI Private and Common
	network = "senttcommsat"
	autolinkers = list("sentcommon")

/obj/machinery/telecomms/server/presets/sentinel/command
	id = "Patrol Command Server"
	freq_listening = list(COMM_FREQ)
	network = "senttcommsat"
	autolinkers = list("sentcommand")

/obj/machinery/telecomms/server/presets/sentinel/troops
	id = "Patrol Troops Server"
	freq_listening = list(ERT_FREQ)
	network = "senttcommsat"
	autolinkers = list("senttroops")

/obj/machinery/telecomms/server/presets/sentinel/medical
	id = "Patrol Medical Server"
	freq_listening = list(MED_FREQ)
	network = "senttcommsat"
	autolinkers = list("sentmedical")

	/////////////
	//GUNCABINS//
	/////////////

/obj/structure/closet/secure_closet/guncabinet/patrol
	name = "storm group cabinet"
	req_access = list(access_troopsarm)

/obj/structure/closet/secure_closet/guncabinet/patrol/energy/WillContain()
	return list(
		/obj/item/clothing/accessory/holster/thigh = 6,
		/obj/item/weapon/gun/energy/gun = 6
	)

/obj/structure/closet/secure_closet/guncabinet/patrol/assault/WillContain()
	return list(
		/obj/item/ammo_magazine/a762 = 12,
		/obj/item/weapon/gun/projectile/automatic/z8 = 3
	)

/obj/structure/closet/secure_closet/guncabinet/patrol/carabine/WillContain()
	return list(
		/obj/item/ammo_magazine/c12755 = 3,
		/obj/item/weapon/gun/projectile/automatic/amrcarabine = 1
	)

/obj/structure/closet/secure_closet/guncabinet/patrol/shotgun/WillContain()
	return list(
		/obj/item/clothing/accessory/storage/bandolier/patrol = 2,
		/obj/item/weapon/gun/projectile/shotgun/pump/combat/lethal = 2
	)

		////////
		//SMES//
		////////

/obj/machinery/power/smes/buildable/preset/patrol/engine_main/configure_and_install_coils()
	component_parts += new /obj/item/weapon/smes_coil/super_capacity(src)
	component_parts += new /obj/item/weapon/smes_coil(src)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

/obj/machinery/power/smes/buildable/preset/patrol/shuttle/configure_and_install_coils()
	component_parts += new /obj/item/weapon/smes_coil(src)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

/obj/machinery/power/smes/buildable/preset/patrol/laser/configure_and_install_coils()
	component_parts += new /obj/item/weapon/smes_coil(src)
	component_parts += new /obj/item/weapon/smes_coil(src)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE