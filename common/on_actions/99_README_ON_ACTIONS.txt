# On Actions
# -----------------------
#
# On Actions are lists of events that get triggered automatically whenever a certain action occurs. For example, we have On Actions for when you survey a planet (on_survey), when a starship gets destroyed (on_starbase_destroyed), or you win a space battle (on_space_battle_won). We also have "pulse" On Actions which occur at regular periods of time (on_colony_X_year_pulse, on_monthly_pulse_country, etc).
#
# Every time an On Action gets fired, it will:
# - Go through every single event in its events = {}, exclude the ones that trigger false, and fire all the other events
# - Go through every single event in its random_events = {} block, exclude the ones that trigger false, roll weights and fire one random valid event
#
#
# GOOD PRACTICES FOR EVENTS FIRED BY ON ACTIONS
# -----------------------
# For planet, system, starbase, leader and pop events, it's recommended to use pre_triggers (fast triggers that are checked before normal ones) to improve performance. See events/000_added_pre_triggers_to_planet_events.txt for information and examples.
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
# Custom on actions can be defined in script and triggered by the `fire_on_action = { on_action = your_on_action_here }` effect. 
#
#
#  EXAMPLE
# -----------------------
# on_action_name = {
# 	events = {
# 		# Events within this block may fire every time the on_action occurs
# 	}
# 	random_events = {
# 		# One valid event is chosen every time the on_action occurs
# 		200 = 0					# Chance of no events firing
# 		10 = event_name.01
# 		10 = event_name.02
# 	}
# }
