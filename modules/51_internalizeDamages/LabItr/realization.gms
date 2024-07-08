*** |  (C) 2006-2024 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of REMIND and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  REMIND License Exception, version 1.0 (see LICENSE file).
*** |  Contact: remind@pik-potsdam.de
*** SOF ./modules/51_internalizeDamages/LabItr/realization.gms

*' @description Based on the analytic expression derived in @Schultes2020 the social cost of carbon corresponding to the labor productivity damages from Dasgupta et al (2021), as calculated in module 50_damages/Labor are calculated. They affect labor directly, so the net effect on output has to be calculated first.

*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "declarations" $include "./modules/51_internalizeDamages/LabItr/declarations.gms"
$Ifi "%phase%" == "datainput" $include "./modules/51_internalizeDamages/LabItr/datainput.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/51_internalizeDamages/LabItr/postsolve.gms"
*######################## R SECTION END (PHASES) ###############################

*** EOF ./modules/51_internalizeDamages/LabItr/realization.gms
