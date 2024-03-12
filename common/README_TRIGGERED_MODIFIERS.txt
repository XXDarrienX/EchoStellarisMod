# key = KEY									Loc key used for the modifier's name.
# potential = {}							Trigger that determines whether the modifier is applied.
# modifier = {}								Modifiers applied if potential is true.
# mult = {}									Multiplier for the modifier values.
# multiplier = {}							Alternative for "mult".
#
# In some tooltips, by default triggered modifiers are shown only if the potential trigger is true.
# The following variables override this behavior but currently only for leader traits and Galcom resolutions.
#
# show_if_not_potential = yes				If potential is false, the trigger and modifier will be shown in the tooltip (the modifier will be grayed out).
# not_potential_override_text_key = KEY		Localization shown instead of the trigger if it is false (only used if show_if_not_potential = yes).
#
# Variables other than the ones listed here are read as members of modifier (so modifiers can be listed outside the modifier block).