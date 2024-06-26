/// Approach(start, end, shift);

/****************************************
 Increments a value by a given shift but 
 never beyond the end value
 ****************************************/
function approach(argument0, argument1, argument2){
	if (argument0 < argument1)
	    return min(argument0 + argument2, argument1); 
	else
	    return max(argument0 - argument2, argument1);
}
