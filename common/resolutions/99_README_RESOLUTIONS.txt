# Example Resolution Type

#example_resolution = {
#	icon = "name of the icon key"
#	resources = {}				# cost and category
#	target = yes/no				# if this resolution requires a target country
#	harmful = yes/no			# if the AI should consider this harmful when choosing target
#	modifier = {}				# modifier to be applied to all community members if passed
#	fire_and_forget = yes/no	# if "yes", the resolution will not be added to the list of active/passed resolutions. Mainly used for repeal resolutions. Default: no
#	triggered_modifier = {}		# triggered modifier to be applied; scope is country
#	effect = {}					# effect to be applied if passed; scope is proposer unless there is a target country, in which case scope is target country, with proposer in 'from' scope
#	fail_effects = {}			# effect to be applied if failed; scope is proposer unless there is a target country, in which case scope is target country, with proposer in 'from' scope
#	potential = {}				# scope is country
#	allow = {}					# scope is country
#	active = {}					# conditions under which this resolution remains active; scope is country
#
#	ai_weight = {}				# ai weight modifiers, scope is country. 'from' scope is the target country for targeted resolutions
#	NOTE: all ai_weight modifiers are multiplicative. The end result is also multiplied with a factor based on the opinion towards the proposer and/or target,
#	see RESOLUTION_TARGET_OPINION_MIN_FACTOR etc. in 00_defines.txt. Also see RESOLUTION_VOTE_SUPPORT_THRESHOLD etc. for balancing the values.
#
#	breach = {}					# conditions under which a country would be 'in breach' of this resolution; scope is country
#	valid_target = {}			# scope is country
#}

# NOTE: Remember to add Resolutions to a Resolution Category!
