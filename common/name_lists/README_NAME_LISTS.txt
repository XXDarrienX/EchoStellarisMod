# selectable = {}						Is this namelist available in empire creation? (no scope)
# randomized = no						Can this namelist be picked when creating a country with a random namelist? (default = yes)
# alias = "Human"						Alternative name by which the namelist can be referred to in script. Can be defined multiple times.
# trigger = {}							Can this namelist be picked when creating a country with a random namelist? (this = country)
# category = "Humanoid"					Category used by the name_list_category trigger.
# customize_random_override = HUM1		If specified, the random name button for species/homeworld/home system in empire creation will use species_names with the specified namelist instead of this namelist.
# should_name_home_system_planets = no	During galaxy generation, should non-home planets in the country's home system use names from planet_names? (default = yes)
#
# ship_names = {						Names for ships.
#	generic = {}						Can be used for any ship size. If both generic and size-specific names exist, 50% chance of using either list.
#	corvette = {}						Names used for a specific ship size.
# }
# ship_class_names = {					Names for ship classes. If not available, fall back to ship_names.
#	generic = {}						Can be used for any ship size. If both generic and size-specific names exist, 50% chance of using either list.
#	corvette = {}						Names used for a specific ship size.
# }
# fleet_names = {						Names for military fleets.
#	random_names = {}					If possible, pick one of these names that aren't already used by the country's fleets.
#	sequential_name = KEY				If unable to use random_names, use this name with a number.
# }
# army_names = {						Names for armies.
#	generic = {							Used if there are no type-specific names.
#		random_names = {}				If possible, pick one of these names that aren't already used by the country's armies.
#		sequential_name = KEY			If unable to use random_names, use this name with a number.
#	}
#	defense_army = {}					Names used for a specific army type. Same members as generic.
# }
# planet_names = {						Names for planets.
#	generic = {							Can be used for any planet class. If both generic and class-specific names exist, 50% chance of using either list.
#		names = {}
#	}
#	pc_desert = {						Names used for a specific planet class.
#		names = {}
#	}
# }
# character_names = {					Names for characters of species with this namelist.
#	default = {							A namelist culture. When generating a name, we first randomly select a namelist culture to use.
#		A name can be a full name by itself or a first name + a second name.
#		If both full names and combined names are possible, 50% chance of using one or the other.
#
#		For male/female characters, the corresponding gender-specific list is used if not empty, otherwise the non-gendered list is used.
#		For characters with indeterminate gender, gender-specific names are used if available (if both genders are available, one is picked randomly), otherwise the non-gendered list is used.
#
#		full_names = {}
#		full_names_female = {}
#		full_names_male = {}
#
#		first_names = {}
#		first_names_female = {}
#		first_names_male = {}
#
#		second_names = {}
#		second_names_female = {}
#		second_names_male = {}
#
#		Regnal names are used instead of regular first/second names when generating rulers and heirs if the government type has use_regnal_names = yes.
#		regnal_first_names = {}
#		regnal_first_names_female = {}
#		regnal_first_names_male = {}
#		regnal_second_names = {}
#
#		If using a regnal name and the following is false, some loc will only show the first name. (default = no)
#		use_full_regnal_name = yes
#		use_full_regnal_name_male = yes
#		use_full_regnal_name_female = yes
#
#		weight = 20						Weight for selecting this namelist culture. (default = 1)
#	}
# }
