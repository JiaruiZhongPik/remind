
*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/02_welfare/ineqDec/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/02_welfare/ineqDec/declarations.gms"
$Ifi "%phase%" == "datainput" $include "./modules/02_welfare/ineqDec/datainput.gms"
$Ifi "%phase%" == "equations" $include "./modules/02_welfare/ineqDec/equations.gms"
$Ifi "%phase%" == "preloop" $include "./modules/02_welfare/ineqDec/preloop.gms"
$Ifi "%phase%" == "bounds" $include "./modules/02_welfare/ineqDec/bounds.gms"
$Ifi "%phase%" == "presolve" $include "./modules/02_welfare/ineqDec/presolve.gms"
$Ifi "%phase%" == "solve" $include "./modules/02_welfare/ineqDec/solve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/02_welfare/ineqDec/postsolve.gms"
$Ifi "%phase%" == "output" $include "./modules/02_welfare/ineqDec/output.gms"
*######################## R SECTION END (PHASES) ###############################
