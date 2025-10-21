--
-- Copper(mod) create for add oxidation and others SereXmotsatt
--

oxide_ptn_1_t = 'copper_oxide_pattern_1.png^[hsl:-20:-50:-40'
oxide_ptn_2_t = 'copper_oxide_pattern_2.png^[hsl:-20:-50:-40'
oxide_ptn_3_t = 'copper_oxide_pattern_3.png^[hsl:-20:-50:-40'

oxide_ptn_metal_bars_1 = 'copper_metal_bars_side_oxide_pattern_1.png^[hsl:-20:-50:-40'
oxide_ptn_metal_bars_2 = 'copper_metal_bars_side_oxide_pattern_2.png^[hsl:-20:-50:-40'
oxide_ptn_metal_bars_3 = 'copper_metal_bars_side_oxide_pattern_3.png^[hsl:-20:-50:-40'

stairsslab_tco1 = {default.blockauto..'^[hsl'..ccoppert..'^'..oxide_ptn_1_t,
				  default.blockauto..'^[hsl'..ccoppert..'^'..oxide_ptn_1_t,
				  default.blockauto_side..'^[hsl'..ccoppert..'^'..oxide_ptn_1_t}
				  
stairsslab_tco2 = {default.blockauto..'^[hsl'..ccoppert..'^'..oxide_ptn_2_t,
				  default.blockauto..'^[hsl'..ccoppert..'^'..oxide_ptn_2_t,
				  default.blockauto_side..'^[hsl'..ccoppert..'^'..oxide_ptn_2_t}
				  
stairsslab_tco3 = {default.blockauto..'^[hsl'..ccoppert..'^'..oxide_ptn_3_t,
				  default.blockauto..'^[hsl'..ccoppert..'^'..oxide_ptn_3_t,
				  default.blockauto_side..'^[hsl'..ccoppert..'^'..oxide_ptn_3_t}

ladder_oxide_ptn_1_t = 'copper_ladder_oxide_pattern_1.png^[hsl:-20:-50:-40'
ladder_oxide_ptn_2_t = 'copper_ladder_oxide_pattern_2.png^[hsl:-20:-50:-40'
ladder_oxide_ptn_3_t = 'copper_ladder_oxide_pattern_3.png^[hsl:-20:-50:-40'

fence_oxide_ptn_1_t = 'copper_fence_oxide_pattern_1.png^[hsl:-20:-50:-40'
fence_oxide_ptn_2_t = 'copper_fence_oxide_pattern_2.png^[hsl:-20:-50:-40'
fence_oxide_ptn_3_t = 'copper_fence_oxide_pattern_3.png^[hsl:-20:-50:-40'

uploadfile('nodes')
uploadfile('abm')
