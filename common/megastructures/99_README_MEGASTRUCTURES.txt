#my_piquant_megastructure = {
#	entity = "bawling_pink_rainbow_graphics"
#	construction_entity = "bawling_pink_rainbow_graphics_construction"
#	construction_scale = 1.02       # default: 1.0. Changes the size of construction_entity.
#	portrait = "GFX_my_piquant_megastructure_background"
#	hide_name = yes / no			# default: no. Replaces the megastructure name on the system view nameplate with "NAMEPLATE_EMPTY_STRING"
#	upgrade_desc = default|hide		# default: 'default'. Use 'hide' to hide to hide this stage from the upgrade list.
#	upgrade_from = {
#		my_flamboyant_megastructure
#	}
#	prerequisites = { "tech" }		# required technologies
#	potential = {}					# trigger, scope: country
#	possible = {}					# trigger, scope: galactic object, from: country
#	build_time = 5					# days
#	victory_score = 1000			# Victory score for the player who owns that megastructure
#	build_cost = {
#		minerals = 8
#		energy = 13
#		influence = 21
#	}
#	monthly_production = {
#		energy = 34
#	}
#	maintenance = {
#		energy = 10
#	}
#	country_modifier = {}
#
#	placement_rules = {
#		planet_possible = {}		# trigger, scope: planet
#	}
#
#	on_build_start = {}				# effects, scope: galactic object, from: country, fromfrom: megastructure instance (when upgrading existing megastructure)
#	on_build_cancel = {}			# effects, scope: galactic object, from: country
#	on_build_complete = {}			# effects, scope: galactic object, from: country, fromfrom: megastructure instance
#
#	starbase = level_type			# AI will use this starbase level type to evaluate economical value
#	ai_weight = {					# scope = country, default = 100
#		modifier = {
#			weight = 0
#			NOT = {
#				has_ethic = ethic_militarist
#			}
#		}
#	}
#
#	construction_blocks_and_blocked_by = none # default multi_stage_type,	#use none				if construction can not block and can not be blocked by any constructions, 
#																			#use self_type			if construction blocks and blocked by same type of constructions, 
#																			#use multi_stage_type	if construction blocks and blocked by multi-stage constructions
#
#	is_ruined_orbital_ring = yes			# default = no
#	scales_with_planet = yes				# default = no
#	use_planet_resource = yes			    # default = no; decides if the megastructure will mine the underlying resources if its on top of a planet/star
#   show_in_outliner = no                   # default = yes
#   outliner_trigger = {}                   # an extra trigger to allow scripted reasons to hide the megastructure. if defined both show_in_outliner and this trigger need to be true for the megastructure to show in the outliner. scope: megastructure
#}
