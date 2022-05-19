# On Actions
# -----------------------
#
# On Actions are lists of events that get triggered automatically whenever a determinate action occours.
# For example, we have On Actions for when you survey a planet (on_survey), when a starship gets destroyed (on_starbase_destroyed), 
# or you win a space battle (on_space_battle_won).
# We also have "pulse" On Actions happening every X days (on_colony_X_year_pulse, on_monthly_pulse_country, etc).
#
# Every time an On Action gets fired, it will:
# - Go through every single event in its events = {}, exclude the ones that trigger false, and fire all the other events
# - Go through every single event in its random_events = {} block, exclude the ones that trigger false, roll weights and fire one random valid event
#
#
# GOOD PRACTICES FOR EVENTS FIRED BY ON ACTIONS
# -----------------------
# For planet, system, starbase, leader and pop events, it's recommended using pre_triggers 
# (fast triggers that are checked before normal ones) to improve performance of long on Actions. 
# See events/000_added_pre_triggers_to_planet_events.txt for information and examples.
#
# Unlike random_list = {}, random_events = {} don't support weight modifiers, 
# but you can add a weight_multiplier = {} block to the event itself:
#
# weight_multiplier = {
# 	factor = 1					# Default multiplier value
# 	modifier = {
# 		factor = X				# Multiply by X if the triggers below are true
# 		trigger_name = value 
# 	}
# }
#
# New On Actions need to be implemented in code and can't be created from script.
#
#
#  EXAMPLE
# -----------------------
# on_action_name = {
# 	events = {
# 		# Events within this block repeat every single time the on_action happens
#		
# 	}
# 	random_events = {
# 		# One  every single time the on_action happens
# 		200 = 0					# Chance of no events happening 
# 		10 = event_name.01
# 		10 = event_name.02
# 	}
# }
