
# You can do funky things with the custom_tooltip property, e.g. see defensive_stations_tracking_add
# If you have "defensive_stations_tracking_add = 10", the game will localise the custom_tooltip with
# $VARIABLE$ set to 10. You can then format it in the loc string in several ways, via $VARIABLE|<stuff>$
# These are the formatting options available:
#  %: multiply by 100 and add "%"
#  0-9: number of decimals to cut off at
#  =: show + if the value is positive
#  +: show green if positive and red if negative
#  -: show red if positive and green if negative
#  W/B/G/R/b/g/c/C/L/T/H/Y: various colour codes
#  _: hide if zero
#  *: apply SI Units (I don't know what this is, sorry)
#  (10): multiply value by x (where x is 10 here - you can specify any number)

# Loc example:
#  my_loc_key: "Give $VARIABLE|=+$ shoes and $VARIABLE|=+(3)$ gloves"
