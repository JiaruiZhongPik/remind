
*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/02_welfare/ineqSeg/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/02_welfare/ineqSeg/declarations.gms"
$Ifi "%phase%" == "datainput" $include "./modules/02_welfare/ineqSeg/datainput.gms"
$Ifi "%phase%" == "equations" $include "./modules/02_welfare/ineqSeg/equations.gms"
$Ifi "%phase%" == "preloop" $include "./modules/02_welfare/ineqSeg/preloop.gms"
$Ifi "%phase%" == "bounds" $include "./modules/02_welfare/ineqSeg/bounds.gms"
$Ifi "%phase%" == "presolve" $include "./modules/02_welfare/ineqSeg/presolve.gms"
$Ifi "%phase%" == "solve" $include "./modules/02_welfare/ineqSeg/solve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/02_welfare/ineqSeg/postsolve.gms"
$Ifi "%phase%" == "output" $include "./modules/02_welfare/ineqSeg/output.gms"
*######################## R SECTION END (PHASES) ###############################
