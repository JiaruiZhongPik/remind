

*** |  (C) 2006-2023 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of REMIND and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  REMIND License Exception, version 1.0 (see LICENSE file).
*** |  Contact: remind@pik-potsdam.de
*** SOF ./modules/02_welfare/ineqSeg/realization.gms

*' @description
*' To be added

*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "sets" $include "./modules/02_welfare/ineqSeg/sets.gms"
$Ifi "%phase%" == "declarations" $include "./modules/02_welfare/ineqSeg/declarations.gms"
$Ifi "%phase%" == "datainput" $include "./modules/02_welfare/ineqSeg/datainput.gms"
$Ifi "%phase%" == "equations" $include "./modules/02_welfare/ineqSeg/equations.gms"
$Ifi "%phase%" == "preloop" $include "./modules/02_welfare/ineqSeg/preloop.gms"
$Ifi "%phase%" == "bounds" $include "./modules/02_welfare/ineqSeg/bounds.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/02_welfare/ineqSeg/postsolve.gms"
*######################## R SECTION END (PHASES) ###############################

*** EOF ./modules/02_welfare/ineqSeg/realization.gms
