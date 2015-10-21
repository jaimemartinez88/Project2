(define (problem strips-log-x-1)
   (:domain ghost)
   (:objects 
p_1_1 p_1_2 p_1_3 p_1_4 p_1_5 p_1_6 p_1_7 p_1_8 p_1_9 p_1_10 p_1_11 p_1_12 p_1_13 p_1_14 p_2_14 p_3_1 p_3_2 p_3_3 p_3_4 p_3_5 p_3_6 p_3_8 p_3_10 p_3_11 p_3_12 p_3_13 p_3_14 p_4_6 p_4_7 p_4_8 p_4_9 p_4_10 p_5_1 p_5_2 p_5_3 p_5_4 p_5_5 p_5_6 p_5_7 p_5_10 p_5_12 p_5_14 p_6_2 p_6_5 p_6_9 p_6_10 p_6_11 p_6_12 p_6_13 p_6_14 p_7_1 p_7_2 p_7_3 p_7_5 p_7_6 p_7_8 p_7_9 p_7_13 p_8_1 p_8_3 p_8_6 p_8_9 p_8_11 p_8_12 p_8_13 p_8_14 p_9_1 p_9_5 p_9_6 p_9_11 p_9_13 p_10_1 p_10_3 p_10_6 p_10_7 p_10_9 p_10_11 p_10_13 p_10_14 p_11_1 p_11_2 p_11_3 p_11_4 p_11_6 p_11_9 p_11_13 p_12_2 p_12_4 p_12_6 p_12_7 p_12_8 p_12_9 p_12_10 p_12_11 p_12_12 p_12_13 p_12_14 p_13_1 p_13_2 p_13_4 p_13_5 p_13_6 p_13_7 p_13_8 p_13_12 p_13_14 p_14_1 p_14_5 p_14_7 p_14_8 p_14_9 p_14_11 p_14_12 p_14_14 p_15_1 p_15_2 p_15_4 p_15_5 p_15_7 p_15_8 p_15_11 p_15_12 p_15_13 p_15_14 p_16_1 p_16_2 p_16_3 p_16_4 p_16_7 p_16_8 p_16_10 p_16_11 p_16_13 p_16_14 p_17_1 p_17_3 p_17_4 p_17_6 p_17_7 p_17_8 p_17_10 p_17_14 p_18_1 p_18_3 p_18_7 p_18_8 p_18_9 p_18_10 p_18_11 p_18_13 p_18_14 p_19_1 p_19_2 p_19_3 p_19_4 p_19_5 p_19_6 p_19_7 p_19_8 p_19_9 p_19_11 p_19_13 p_20_2 p_20_6 p_20_9 p_20_11 p_20_12 p_20_13 p_20_14 p_21_1 p_21_2 p_21_4 p_21_6 p_21_8 p_21_9 p_21_12 p_21_14 p_22_2 p_22_4 p_22_9 p_22_10 p_22_14 p_23_1 p_23_2 p_23_3 p_23_4 p_23_6 p_23_9 p_23_12 p_23_14 p_24_2 p_24_6 p_24_7 p_24_9 p_24_10 p_24_12 p_24_13 p_24_14 p_25_1 p_25_2 p_25_3 p_25_4 p_25_5 p_25_6 p_25_10 p_25_13 p_26_1 p_26_3 p_26_5 p_26_8 p_26_9 p_26_10 p_26_11 p_26_12 p_26_13 p_26_14 p_27_5 p_27_6 p_27_7 p_27_8 p_27_9 p_28_1 p_28_2 p_28_3 p_28_4 p_28_5 p_28_7 p_28_9 p_28_10 p_28_11 p_28_12 p_28_13 p_28_14 p_29_1 p_30_1 p_30_2 p_30_3 p_30_4 p_30_5 p_30_6 p_30_7 p_30_8 p_30_9 p_30_10 p_30_11 p_30_12 p_30_13 p_30_14 - position
   )
   (:init 
(ghost_at p_1_2) (enemy_ghost_at p_17_8) (pacman_at p_16_11) (food_at p_17_6) (food_at p_21_1) (food_at p_21_4) (food_at p_21_6) (food_at p_21_8) (food_at p_21_12) (food_at p_22_4) (food_at p_22_10) (food_at p_23_1) (food_at p_23_6) (food_at p_23_12) (food_at p_24_6) (food_at p_24_7) (food_at p_24_12) (food_at p_26_1) (food_at p_26_3) (food_at p_26_14) (food_at p_28_7) (food_at p_28_13) (food_at p_28_14) (power_at p_25_10) (connected p_1_1 p_1_2) (connected p_3_1 p_3_2) (connected p_5_1 p_5_2) (connected p_7_1 p_8_1) (connected p_7_1 p_7_2) (connected p_8_1 p_7_1) (connected p_8_1 p_9_1) (connected p_9_1 p_8_1) (connected p_9_1 p_10_1) (connected p_10_1 p_9_1) (connected p_10_1 p_11_1) (connected p_11_1 p_10_1) (connected p_11_1 p_11_2) (connected p_13_1 p_14_1) (connected p_13_1 p_13_2) (connected p_14_1 p_13_1) (connected p_14_1 p_15_1) (connected p_15_1 p_14_1) (connected p_15_1 p_16_1) (connected p_15_1 p_15_2) (connected p_16_1 p_15_1) (connected p_16_1 p_17_1) (connected p_16_1 p_16_2) (connected p_17_1 p_16_1) (connected p_17_1 p_18_1) (connected p_18_1 p_17_1) (connected p_18_1 p_19_1) (connected p_19_1 p_18_1) (connected p_19_1 p_19_2) (connected p_21_1 p_21_2) (connected p_23_1 p_23_2) (connected p_25_1 p_26_1) (connected p_25_1 p_25_2) (connected p_26_1 p_25_1) (connected p_28_1 p_29_1) (connected p_28_1 p_28_2) (connected p_29_1 p_28_1) (connected p_29_1 p_30_1) (connected p_30_1 p_29_1) (connected p_30_1 p_30_2) (connected p_1_2 p_1_1) (connected p_1_2 p_1_3) (connected p_3_2 p_3_1) (connected p_3_2 p_3_3) (connected p_5_2 p_5_1) (connected p_5_2 p_6_2) (connected p_5_2 p_5_3) (connected p_6_2 p_5_2) (connected p_6_2 p_7_2) (connected p_7_2 p_6_2) (connected p_7_2 p_7_1) (connected p_7_2 p_7_3) (connected p_11_2 p_11_1) (connected p_11_2 p_12_2) (connected p_11_2 p_11_3) (connected p_12_2 p_11_2) (connected p_12_2 p_13_2) (connected p_13_2 p_12_2) (connected p_13_2 p_13_1) (connected p_15_2 p_15_1) (connected p_15_2 p_16_2) (connected p_16_2 p_15_2) (connected p_16_2 p_16_1) (connected p_16_2 p_16_3) (connected p_19_2 p_19_1) (connected p_19_2 p_20_2) (connected p_19_2 p_19_3) (connected p_20_2 p_19_2) (connected p_20_2 p_21_2) (connected p_21_2 p_20_2) (connected p_21_2 p_21_1) (connected p_21_2 p_22_2) (connected p_22_2 p_21_2) (connected p_22_2 p_23_2) (connected p_23_2 p_22_2) (connected p_23_2 p_23_1) (connected p_23_2 p_24_2) (connected p_23_2 p_23_3) (connected p_24_2 p_23_2) (connected p_24_2 p_25_2) (connected p_25_2 p_24_2) (connected p_25_2 p_25_1) (connected p_25_2 p_25_3) (connected p_28_2 p_28_1) (connected p_28_2 p_28_3) (connected p_30_2 p_30_1) (connected p_30_2 p_30_3) (connected p_1_3 p_1_2) (connected p_1_3 p_1_4) (connected p_3_3 p_3_2) (connected p_3_3 p_3_4) (connected p_5_3 p_5_2) (connected p_5_3 p_5_4) (connected p_7_3 p_7_2) (connected p_7_3 p_8_3) (connected p_8_3 p_7_3) (connected p_10_3 p_11_3) (connected p_11_3 p_10_3) (connected p_11_3 p_11_2) (connected p_11_3 p_11_4) (connected p_16_3 p_16_2) (connected p_16_3 p_17_3) (connected p_16_3 p_16_4) (connected p_17_3 p_16_3) (connected p_17_3 p_18_3) (connected p_17_3 p_17_4) (connected p_18_3 p_17_3) (connected p_18_3 p_19_3) (connected p_19_3 p_18_3) (connected p_19_3 p_19_2) (connected p_19_3 p_19_4) (connected p_23_3 p_23_2) (connected p_23_3 p_23_4) (connected p_25_3 p_25_2) (connected p_25_3 p_26_3) (connected p_25_3 p_25_4) (connected p_26_3 p_25_3) (connected p_28_3 p_28_2) (connected p_28_3 p_28_4) (connected p_30_3 p_30_2) (connected p_30_3 p_30_4) (connected p_1_4 p_1_3) (connected p_1_4 p_1_5) (connected p_3_4 p_3_3) (connected p_3_4 p_3_5) (connected p_5_4 p_5_3) (connected p_5_4 p_5_5) (connected p_11_4 p_11_3) (connected p_11_4 p_12_4) (connected p_12_4 p_11_4) (connected p_12_4 p_13_4) (connected p_13_4 p_12_4) (connected p_13_4 p_13_5) (connected p_15_4 p_16_4) (connected p_15_4 p_15_5) (connected p_16_4 p_15_4) (connected p_16_4 p_16_3) (connected p_16_4 p_17_4) (connected p_17_4 p_16_4) (connected p_17_4 p_17_3) (connected p_19_4 p_19_3) (connected p_19_4 p_19_5) (connected p_21_4 p_22_4) (connected p_22_4 p_21_4) (connected p_22_4 p_23_4) (connected p_23_4 p_22_4) (connected p_23_4 p_23_3) (connected p_25_4 p_25_3) (connected p_25_4 p_25_5) (connected p_28_4 p_28_3) (connected p_28_4 p_28_5) (connected p_30_4 p_30_3) (connected p_30_4 p_30_5) (connected p_1_5 p_1_4) (connected p_1_5 p_1_6) (connected p_3_5 p_3_4) (connected p_3_5 p_3_6) (connected p_5_5 p_5_4) (connected p_5_5 p_6_5) (connected p_5_5 p_5_6) (connected p_6_5 p_5_5) (connected p_6_5 p_7_5) (connected p_7_5 p_6_5) (connected p_7_5 p_7_6) (connected p_9_5 p_9_6) (connected p_13_5 p_13_4) (connected p_13_5 p_14_5) (connected p_13_5 p_13_6) (connected p_14_5 p_13_5) (connected p_14_5 p_15_5) (connected p_15_5 p_14_5) (connected p_15_5 p_15_4) (connected p_19_5 p_19_4) (connected p_19_5 p_19_6) (connected p_25_5 p_25_4) (connected p_25_5 p_26_5) (connected p_25_5 p_25_6) (connected p_26_5 p_25_5) (connected p_26_5 p_27_5) (connected p_27_5 p_26_5) (connected p_27_5 p_28_5) (connected p_27_5 p_27_6) (connected p_28_5 p_27_5) (connected p_28_5 p_28_4) (connected p_30_5 p_30_4) (connected p_30_5 p_30_6) (connected p_1_6 p_1_5) (connected p_1_6 p_1_7) (connected p_3_6 p_3_5) (connected p_3_6 p_4_6) (connected p_4_6 p_3_6) (connected p_4_6 p_5_6) (connected p_4_6 p_4_7) (connected p_5_6 p_4_6) (connected p_5_6 p_5_5) (connected p_5_6 p_5_7) (connected p_7_6 p_7_5) (connected p_7_6 p_8_6) (connected p_8_6 p_7_6) (connected p_8_6 p_9_6) (connected p_9_6 p_8_6) (connected p_9_6 p_9_5) (connected p_9_6 p_10_6) (connected p_10_6 p_9_6) (connected p_10_6 p_11_6) (connected p_10_6 p_10_7) (connected p_11_6 p_10_6) (connected p_11_6 p_12_6) (connected p_12_6 p_11_6) (connected p_12_6 p_13_6) (connected p_12_6 p_12_7) (connected p_13_6 p_12_6) (connected p_13_6 p_13_5) (connected p_13_6 p_13_7) (connected p_17_6 p_17_7) (connected p_19_6 p_19_5) (connected p_19_6 p_20_6) (connected p_19_6 p_19_7) (connected p_20_6 p_19_6) (connected p_20_6 p_21_6) (connected p_21_6 p_20_6) (connected p_23_6 p_24_6) (connected p_24_6 p_23_6) (connected p_24_6 p_25_6) (connected p_24_6 p_24_7) (connected p_25_6 p_24_6) (connected p_25_6 p_25_5) (connected p_27_6 p_27_5) (connected p_27_6 p_27_7) (connected p_30_6 p_30_5) (connected p_30_6 p_30_7) (connected p_1_7 p_1_6) (connected p_1_7 p_1_8) (connected p_4_7 p_4_6) (connected p_4_7 p_5_7) (connected p_4_7 p_4_8) (connected p_5_7 p_4_7) (connected p_5_7 p_5_6) (connected p_10_7 p_10_6) (connected p_12_7 p_12_6) (connected p_12_7 p_13_7) (connected p_12_7 p_12_8) (connected p_13_7 p_12_7) (connected p_13_7 p_13_6) (connected p_13_7 p_14_7) (connected p_13_7 p_13_8) (connected p_14_7 p_13_7) (connected p_14_7 p_15_7) (connected p_14_7 p_14_8) (connected p_15_7 p_14_7) (connected p_15_7 p_16_7) (connected p_15_7 p_15_8) (connected p_16_7 p_15_7) (connected p_16_7 p_17_7) (connected p_16_7 p_16_8) (connected p_17_7 p_16_7) (connected p_17_7 p_17_6) (connected p_17_7 p_18_7) (connected p_17_7 p_17_8) (connected p_18_7 p_17_7) (connected p_18_7 p_19_7) (connected p_18_7 p_18_8) (connected p_19_7 p_18_7) (connected p_19_7 p_19_6) (connected p_19_7 p_19_8) (connected p_24_7 p_24_6) (connected p_27_7 p_27_6) (connected p_27_7 p_28_7) (connected p_27_7 p_27_8) (connected p_28_7 p_27_7) (connected p_30_7 p_30_6) (connected p_30_7 p_30_8) (connected p_1_8 p_1_7) (connected p_1_8 p_1_9) (connected p_3_8 p_4_8) (connected p_4_8 p_3_8) (connected p_4_8 p_4_7) (connected p_4_8 p_4_9) (connected p_7_8 p_7_9) (connected p_12_8 p_12_7) (connected p_12_8 p_13_8) (connected p_12_8 p_12_9) (connected p_13_8 p_12_8) (connected p_13_8 p_13_7) (connected p_13_8 p_14_8) (connected p_14_8 p_13_8) (connected p_14_8 p_14_7) (connected p_14_8 p_15_8) (connected p_14_8 p_14_9) (connected p_15_8 p_14_8) (connected p_15_8 p_15_7) (connected p_15_8 p_16_8) (connected p_16_8 p_15_8) (connected p_16_8 p_16_7) (connected p_16_8 p_17_8) (connected p_17_8 p_16_8) (connected p_17_8 p_17_7) (connected p_17_8 p_18_8) (connected p_18_8 p_17_8) (connected p_18_8 p_18_7) (connected p_18_8 p_19_8) (connected p_18_8 p_18_9) (connected p_19_8 p_18_8) (connected p_19_8 p_19_7) (connected p_19_8 p_19_9) (connected p_21_8 p_21_9) (connected p_26_8 p_27_8) (connected p_26_8 p_26_9) (connected p_27_8 p_26_8) (connected p_27_8 p_27_7) (connected p_27_8 p_27_9) (connected p_30_8 p_30_7) (connected p_30_8 p_30_9) (connected p_1_9 p_1_8) (connected p_1_9 p_1_10) (connected p_4_9 p_4_8) (connected p_4_9 p_4_10) (connected p_6_9 p_7_9) (connected p_6_9 p_6_10) (connected p_7_9 p_6_9) (connected p_7_9 p_7_8) (connected p_7_9 p_8_9) (connected p_8_9 p_7_9) (connected p_10_9 p_11_9) (connected p_11_9 p_10_9) (connected p_11_9 p_12_9) (connected p_12_9 p_11_9) (connected p_12_9 p_12_8) (connected p_12_9 p_12_10) (connected p_14_9 p_14_8) (connected p_18_9 p_18_8) (connected p_18_9 p_19_9) (connected p_18_9 p_18_10) (connected p_19_9 p_18_9) (connected p_19_9 p_19_8) (connected p_19_9 p_20_9) (connected p_20_9 p_19_9) (connected p_20_9 p_21_9) (connected p_21_9 p_20_9) (connected p_21_9 p_21_8) (connected p_21_9 p_22_9) (connected p_22_9 p_21_9) (connected p_22_9 p_23_9) (connected p_22_9 p_22_10) (connected p_23_9 p_22_9) (connected p_23_9 p_24_9) (connected p_24_9 p_23_9) (connected p_24_9 p_24_10) (connected p_26_9 p_26_8) (connected p_26_9 p_27_9) (connected p_26_9 p_26_10) (connected p_27_9 p_26_9) (connected p_27_9 p_27_8) (connected p_27_9 p_28_9) (connected p_28_9 p_27_9) (connected p_28_9 p_28_10) (connected p_30_9 p_30_8) (connected p_30_9 p_30_10) (connected p_1_10 p_1_9) (connected p_1_10 p_1_11) (connected p_3_10 p_4_10) (connected p_3_10 p_3_11) (connected p_4_10 p_3_10) (connected p_4_10 p_4_9) (connected p_4_10 p_5_10) (connected p_5_10 p_4_10) (connected p_5_10 p_6_10) (connected p_6_10 p_5_10) (connected p_6_10 p_6_9) (connected p_6_10 p_6_11) (connected p_12_10 p_12_9) (connected p_12_10 p_12_11) (connected p_16_10 p_17_10) (connected p_16_10 p_16_11) (connected p_17_10 p_16_10) (connected p_17_10 p_18_10) (connected p_18_10 p_17_10) (connected p_18_10 p_18_9) (connected p_18_10 p_18_11) (connected p_22_10 p_22_9) (connected p_24_10 p_24_9) (connected p_24_10 p_25_10) (connected p_25_10 p_24_10) (connected p_25_10 p_26_10) (connected p_26_10 p_25_10) (connected p_26_10 p_26_9) (connected p_26_10 p_26_11) (connected p_28_10 p_28_9) (connected p_28_10 p_28_11) (connected p_30_10 p_30_9) (connected p_30_10 p_30_11) (connected p_1_11 p_1_10) (connected p_1_11 p_1_12) (connected p_3_11 p_3_10) (connected p_3_11 p_3_12) (connected p_6_11 p_6_10) (connected p_6_11 p_6_12) (connected p_8_11 p_9_11) (connected p_8_11 p_8_12) (connected p_9_11 p_8_11) (connected p_9_11 p_10_11) (connected p_10_11 p_9_11) (connected p_12_11 p_12_10) (connected p_12_11 p_12_12) (connected p_14_11 p_15_11) (connected p_14_11 p_14_12) (connected p_15_11 p_14_11) (connected p_15_11 p_16_11) (connected p_15_11 p_15_12) (connected p_16_11 p_15_11) (connected p_16_11 p_16_10) (connected p_18_11 p_18_10) (connected p_18_11 p_19_11) (connected p_19_11 p_18_11) (connected p_19_11 p_20_11) (connected p_20_11 p_19_11) (connected p_20_11 p_20_12) (connected p_26_11 p_26_10) (connected p_26_11 p_26_12) (connected p_28_11 p_28_10) (connected p_28_11 p_28_12) (connected p_30_11 p_30_10) (connected p_30_11 p_30_12) (connected p_1_12 p_1_11) (connected p_1_12 p_1_13) (connected p_3_12 p_3_11) (connected p_3_12 p_3_13) (connected p_5_12 p_6_12) (connected p_6_12 p_5_12) (connected p_6_12 p_6_11) (connected p_6_12 p_6_13) (connected p_8_12 p_8_11) (connected p_8_12 p_8_13) (connected p_12_12 p_12_11) (connected p_12_12 p_13_12) (connected p_12_12 p_12_13) (connected p_13_12 p_12_12) (connected p_13_12 p_14_12) (connected p_14_12 p_13_12) (connected p_14_12 p_14_11) (connected p_14_12 p_15_12) (connected p_15_12 p_14_12) (connected p_15_12 p_15_11) (connected p_15_12 p_15_13) (connected p_20_12 p_20_11) (connected p_20_12 p_21_12) (connected p_20_12 p_20_13) (connected p_21_12 p_20_12) (connected p_23_12 p_24_12) (connected p_24_12 p_23_12) (connected p_24_12 p_24_13) (connected p_26_12 p_26_11) (connected p_26_12 p_26_13) (connected p_28_12 p_28_11) (connected p_28_12 p_28_13) (connected p_30_12 p_30_11) (connected p_30_12 p_30_13) (connected p_1_13 p_1_12) (connected p_1_13 p_1_14) (connected p_3_13 p_3_12) (connected p_3_13 p_3_14) (connected p_6_13 p_6_12) (connected p_6_13 p_7_13) (connected p_6_13 p_6_14) (connected p_7_13 p_6_13) (connected p_7_13 p_8_13) (connected p_8_13 p_7_13) (connected p_8_13 p_8_12) (connected p_8_13 p_9_13) (connected p_8_13 p_8_14) (connected p_9_13 p_8_13) (connected p_9_13 p_10_13) (connected p_10_13 p_9_13) (connected p_10_13 p_11_13) (connected p_10_13 p_10_14) (connected p_11_13 p_10_13) (connected p_11_13 p_12_13) (connected p_12_13 p_11_13) (connected p_12_13 p_12_12) (connected p_12_13 p_12_14) (connected p_15_13 p_15_12) (connected p_15_13 p_16_13) (connected p_15_13 p_15_14) (connected p_16_13 p_15_13) (connected p_16_13 p_16_14) (connected p_18_13 p_19_13) (connected p_18_13 p_18_14) (connected p_19_13 p_18_13) (connected p_19_13 p_20_13) (connected p_20_13 p_19_13) (connected p_20_13 p_20_12) (connected p_20_13 p_20_14) (connected p_24_13 p_24_12) (connected p_24_13 p_25_13) (connected p_24_13 p_24_14) (connected p_25_13 p_24_13) (connected p_25_13 p_26_13) (connected p_26_13 p_25_13) (connected p_26_13 p_26_12) (connected p_26_13 p_26_14) (connected p_28_13 p_28_12) (connected p_28_13 p_28_14) (connected p_30_13 p_30_12) (connected p_30_13 p_30_14) (connected p_1_14 p_1_13) (connected p_1_14 p_2_14) (connected p_2_14 p_1_14) (connected p_2_14 p_3_14) (connected p_3_14 p_2_14) (connected p_3_14 p_3_13) (connected p_5_14 p_6_14) (connected p_6_14 p_5_14) (connected p_6_14 p_6_13) (connected p_8_14 p_8_13) (connected p_10_14 p_10_13) (connected p_12_14 p_12_13) (connected p_12_14 p_13_14) (connected p_13_14 p_12_14) (connected p_13_14 p_14_14) (connected p_14_14 p_13_14) (connected p_14_14 p_15_14) (connected p_15_14 p_14_14) (connected p_15_14 p_15_13) (connected p_15_14 p_16_14) (connected p_16_14 p_15_14) (connected p_16_14 p_16_13) (connected p_16_14 p_17_14) (connected p_17_14 p_16_14) (connected p_17_14 p_18_14) (connected p_18_14 p_17_14) (connected p_18_14 p_18_13) (connected p_20_14 p_20_13) (connected p_20_14 p_21_14) (connected p_21_14 p_20_14) (connected p_21_14 p_22_14) (connected p_22_14 p_21_14) (connected p_22_14 p_23_14) (connected p_23_14 p_22_14) (connected p_23_14 p_24_14) (connected p_24_14 p_23_14) (connected p_24_14 p_24_13) (connected p_26_14 p_26_13) (connected p_28_14 p_28_13) (connected p_30_14 p_30_13) 
   )
   (:goal 
  ( and  
(ghost_at p_30_14)
  )
   )
)