*** |  (C) 2006-2023 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of REMIND and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  REMIND License Exception, version 1.0 (see LICENSE file).
*** |  Contact: remind@pik-potsdam.de
*** SOF ./modules/02_welfare/ineqSeg/datainput.gms

pm_welf(ttot)$(ttot.val ge 2005) = 1;
pm_welf("2060") = 0.9;

*RP* 2012-03-06: Inconvenience costs on seprod
$IFTHEN.INCONV %cm_INCONV_PENALTY% == "on"
p02_inconvpen_lap(ttot,regi,"coaltr")$(ttot.val ge 2005)      = 0.5;   !! In dollar per GJ seprod at 1.000$/cap GDP, or 10$/GJ at 10.000$_GDP/cap
p02_inconvpen_lap(ttot,regi,"biotr")$(ttot.val ge 2005)       = 1.0;   !! In dollar per GJ seprod
p02_inconvpen_lap(ttot,regi,"biotrmod")$(ttot.val ge 2005)    = 0.25;    !! In dollar per GJ seprod. Biotrmod is a mix of wood stoves and automated wood pellets for heating, which has lower air pollution and other discomfort effects
*' Transformation of coal to liquids/gases/H2 brings local pollution, which is less accepted at higher incomes -> use the inconvenience cost channel
p02_inconvpen_lap(ttot,regi,"coalftrec")$(ttot.val ge 2005)   = 0.9;    !! In dollar per GJ seprod
p02_inconvpen_lap(ttot,regi,"coalftcrec")$(ttot.val ge 2005)  = 0.9;    !!  equivalent to 4$/GJ at 40.000$_GDP/cap, or 10$/GJ at 100.000$_GDP/cap
p02_inconvpen_lap(ttot,regi,"coalgas")$(ttot.val ge 2005)   = 0.9;    !!
p02_inconvpen_lap(ttot,regi,"coalh2")$(ttot.val ge 2005)   = 0.9;    !!
p02_inconvpen_lap(ttot,regi,"coalh2c")$(ttot.val ge 2005)  = 0.9;    !!
p02_inconvpen_lap(ttot,regi,te)$(ttot.val ge 2005) = p02_inconvpen_lap(ttot,regi,te) * 4.3 * 1E-4;            !! this is now equivalent to 1$/GJ at 1000$/per Capita in the welfare logarithm
p02_inconvpen_lap(ttot,regi,te)$(ttot.val ge 2005) = p02_inconvpen_lap(ttot,regi,te) * (1/sm_giga_2_non) / sm_GJ_2_TWa; !! conversion util/(GJ/cap) -> util/(TWa/Gcap)
*RP* these values are all calculated on seprod level.
display p02_inconvpen_lap;
$ENDIF.INCONV


*JZ* Additional input for IneqSec
p02_ineqa = 0;                          !!0: no inequality aversion; >0: inequality averse; l 1:not defined yet; Literature suggest 0.7 (Tol, 2010) 


*JZ* hard codded input only for test(WID 2020 world average), needs to be replaced with real data
p02_consShare_seg_pre(ttot, all_regi, "1") = 0.018;
p02_consShare_seg_pre(ttot, all_regi, '2') = 0.036;
p02_consShare_seg_pre(ttot, all_regi, '3') = 0.054;
p02_consShare_seg_pre(ttot, all_regi, '4') = 0.071;
p02_consShare_seg_pre(ttot, all_regi, '5') = 0.091;
p02_consShare_seg_pre(ttot, all_regi, '6') = 0.11;
p02_consShare_seg_pre(ttot, all_regi, '7') = 0.13;
p02_consShare_seg_pre(ttot, all_regi, '8') = 0.15;
p02_consShare_seg_pre(ttot, all_regi, '9') = 0.16;
p02_consShare_seg_pre(ttot, all_regi, '10') = 0.18;

Execute_Loadpoint 'input_ref' p02_cons_ref=vm_cons.l;

* for a policy run, we need to load values coming from the baseline for consumption, tax revenues and energy expenditures:
if ((cm_emiscen ne 1),
*	Execute_Loadpoint 'input_ref' p02_taxrev_redistr0_ref=v02_taxrev_Add.l;
*	Execute_Loadpoint 'input_ref' p02_energyExp_ref=v02_energyExp.l;
*	Execute_Loadpoint 'input_ref' p02_damageFactor_ref=vm_damageFactor.l;
 
* if energy system costs are used:
*    Execute_Loadpoint 'input_ref' p02_energyExp_ref=vm_costEnergySys.l;
   
);


*** EOF ./modules/02_welfare/ineqSeg/datainput.gms

