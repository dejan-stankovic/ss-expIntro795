LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY SYNTH;
USE SYNTH.vl_comps.all;

ENTITY WRD_STTS IS PORT (
   SIGNAL CLK, I0, I1, I2, I3, I4, I5, I6, I7, OE: IN STD_LOGIC;
   SIGNAL B0, B1, B2, B3, F0, F1, F2, F3, F4, F5, F6, F7: OUT STD_LOGIC);
END WRD_STTS;

ARCHITECTURE pla OF WRD_STTS IS
   SIGNAL lambda_220, lambda_217, lambda_216, lambda_213, lambda_212,
      lambda_209, lambda_208, lambda_205, lambda_204, lambda_201, lambda_200,
      lambda_197, lambda_196, lambda_193, lambda_192, lambda_189, lambda_188,
      GND, lambda_139, lambda_137, lambda_135, lambda_133, lambda_131,
      lambda_129, lambda_127, lambda_125, lambda_123, lambda_121, lambda_119,
      lambda_117, lambda_115, lambda_113, lambda_111, lambda_109, lambda_107,
      lambda_105, lambda_103, lambda_101, lambda_99, lambda_97, lambda_95,
      lambda_93, F3_J, F2_K, F2_J, F1_K, F1_J, F0_K, COMP: STD_LOGIC;

   BEGIN
      GND <= '0';
      lambda_137 <= (NOT I1) AND (NOT lambda_208);
      lambda_135 <= I0 AND lambda_204 AND (NOT lambda_208) AND lambda_212 AND
         (NOT lambda_216);
      lambda_133 <= I0 AND lambda_204 AND (NOT lambda_208) AND lambda_212;
      lambda_131 <= I0 AND lambda_204 AND lambda_208 AND (NOT lambda_212) AND
         (NOT lambda_216);
      lambda_129 <= I0 AND lambda_204 AND lambda_208 AND (NOT lambda_212) AND
         lambda_216;
      lambda_127 <= I0 AND lambda_204 AND lambda_208 AND lambda_212 AND (NOT
         lambda_216);
      lambda_125 <= I0 AND lambda_204 AND lambda_208 AND lambda_212;
      lambda_123 <= I0 AND lambda_204 AND lambda_208 AND (NOT lambda_216);
      lambda_121 <= I0 AND lambda_204 AND lambda_208 AND lambda_216;
      lambda_119 <= I0 AND lambda_204 AND lambda_208;
      lambda_117 <= I0 AND lambda_204 AND lambda_212 AND lambda_216;
      lambda_115 <= I0 AND (NOT lambda_208);
      lambda_113 <= (NOT lambda_204) AND lambda_208;
      lambda_111 <= (NOT lambda_204) AND lambda_216;
      lambda_109 <= lambda_204 AND (NOT lambda_208);
      lambda_107 <= lambda_204 AND lambda_208;
      lambda_105 <= lambda_204 AND lambda_212;
      lambda_103 <= (NOT lambda_208) AND (NOT lambda_212);
      lambda_101 <= (NOT lambda_208) AND lambda_212 AND (NOT lambda_216);
      lambda_99 <= (NOT lambda_208) AND lambda_216;
      lambda_97 <= lambda_208 AND lambda_212 AND lambda_216;
      lambda_95 <= lambda_208 AND (NOT lambda_216);
      lambda_220 <= lambda_113 OR lambda_111 OR lambda_103;
      F3_J <= lambda_119 OR lambda_117;
      F2_K <= lambda_133 OR lambda_131;
      F2_J <= lambda_125 OR lambda_121;
      F1_K <= lambda_129 OR lambda_127;
      F1_J <= lambda_133 OR lambda_131 OR lambda_117;
      F0_K <= lambda_133 OR lambda_121;
      COMP <= lambda_107 OR lambda_105 OR lambda_101;
      B2 <= NOT (lambda_137 OR lambda_115 OR lambda_113 OR lambda_109 OR
         lambda_103 OR lambda_99);
      B1 <= NOT (lambda_111 OR lambda_95 OR lambda_93);
      B0 <= NOT (lambda_113 OR lambda_111 OR lambda_103 OR lambda_97);
      lambda_217 <= NOT (lambda_216);
      lambda_213 <= NOT (lambda_212);
      lambda_209 <= NOT (lambda_208);
      lambda_205 <= NOT (lambda_204);
      lambda_201 <= NOT (lambda_200);
      lambda_197 <= NOT (lambda_196);
      lambda_193 <= NOT (lambda_192);
      lambda_189 <= NOT (lambda_188);
      lambda_139 <= NOT (I2);
      lambda_93 <= NOT (lambda_212);
      F7 <= lambda_189;
      F6 <= lambda_193;
      F5 <= lambda_197;
      F4 <= lambda_201;
      F3 <= lambda_205;
      F2 <= lambda_209;
      F1 <= lambda_213;
      F0 <= lambda_217;
b_label_0: BLOCK
  signal jktod_0: STD_LOGIC;
BEGIN
  jktod_0 <= ((lambda_123 AND (NOT F0_K)) OR
         (lambda_123 AND (NOT lambda_216)) OR
         (lambda_216 AND (NOT F0_K)));
d_label_0: vl_d_flip_flop generic map (WORD_LENGTH => 1, RESET_VALUE => "0")
      port map (D(0) => jktod_0, CLOCK => CLK, SET => lambda_139, RESET => OPEN, OUTPUT(0) => lambda_216, OUTPUT_BAR => OPEN);
END BLOCK;
b_label_1: BLOCK
  signal jktod_1: STD_LOGIC;
BEGIN
  jktod_1 <= ((F1_J AND (NOT F1_K)) OR
         (F1_J AND (NOT lambda_212)) OR
         (lambda_212 AND (NOT F1_K)));
d_label_1: vl_d_flip_flop generic map (WORD_LENGTH => 1, RESET_VALUE => "0")
      port map (D(0) => jktod_1, CLOCK => CLK, SET => lambda_139, RESET => OPEN, OUTPUT(0) => lambda_212, OUTPUT_BAR => OPEN);
END BLOCK;
b_label_2: BLOCK
  signal jktod_2: STD_LOGIC;
BEGIN
  jktod_2 <= ((F2_J AND (NOT F2_K)) OR
         (F2_J AND (NOT lambda_208)) OR
         (lambda_208 AND (NOT F2_K)));
d_label_2: vl_d_flip_flop generic map (WORD_LENGTH => 1, RESET_VALUE => "0")
      port map (D(0) => jktod_2, CLOCK => CLK, SET => lambda_139, RESET => OPEN, OUTPUT(0) => lambda_208, OUTPUT_BAR => OPEN);
END BLOCK;
b_label_3: BLOCK
  signal jktod_3: STD_LOGIC;
BEGIN
  jktod_3 <= ((F3_J AND (NOT lambda_135)) OR
         (F3_J AND (NOT lambda_204)) OR
         (lambda_204 AND (NOT lambda_135)));
d_label_3: vl_d_flip_flop generic map (WORD_LENGTH => 1, RESET_VALUE => "0")
      port map (D(0) => jktod_3, CLOCK => CLK, SET => lambda_139, RESET => OPEN, OUTPUT(0) => lambda_204, OUTPUT_BAR => OPEN);
END BLOCK;
b_label_4: BLOCK
  signal jktod_4: STD_LOGIC;
BEGIN
  jktod_4 <= ((GND AND (NOT GND)) OR
         (GND AND (NOT lambda_200)) OR
         (lambda_200 AND (NOT GND)));
d_label_4: vl_d_flip_flop generic map (WORD_LENGTH => 1, RESET_VALUE => "0")
      port map (D(0) => jktod_4, CLOCK => CLK, SET => lambda_139, RESET => OPEN, OUTPUT(0) => lambda_200, OUTPUT_BAR => OPEN);
END BLOCK;
b_label_5: BLOCK
  signal jktod_5: STD_LOGIC;
BEGIN
  jktod_5 <= ((GND AND (NOT GND)) OR
         (GND AND (NOT lambda_196)) OR
         (lambda_196 AND (NOT GND)));
d_label_5: vl_d_flip_flop generic map (WORD_LENGTH => 1, RESET_VALUE => "0")
      port map (D(0) => jktod_5, CLOCK => CLK, SET => lambda_139, RESET => OPEN, OUTPUT(0) => lambda_196, OUTPUT_BAR => OPEN);
END BLOCK;
b_label_6: BLOCK
  signal jktod_6: STD_LOGIC;
BEGIN
  jktod_6 <= ((GND AND (NOT GND)) OR
         (GND AND (NOT lambda_192)) OR
         (lambda_192 AND (NOT GND)));
d_label_6: vl_d_flip_flop generic map (WORD_LENGTH => 1, RESET_VALUE => "0")
      port map (D(0) => jktod_6, CLOCK => CLK, SET => lambda_139, RESET => OPEN, OUTPUT(0) => lambda_192, OUTPUT_BAR => OPEN);
END BLOCK;
b_label_7: BLOCK
  signal jktod_7: STD_LOGIC;
BEGIN
  jktod_7 <= ((GND AND (NOT GND)) OR
         (GND AND (NOT lambda_188)) OR
         (lambda_188 AND (NOT GND)));
d_label_7: vl_d_flip_flop generic map (WORD_LENGTH => 1, RESET_VALUE => "0")
      port map (D(0) => jktod_7, CLOCK => CLK, SET => lambda_139, RESET => OPEN, OUTPUT(0) => lambda_188, OUTPUT_BAR => OPEN);
END BLOCK;
tri_label_0: vl_three_state_driver generic map (WORD_LENGTH => 1)
      port map (INPUT(0) => lambda_220, ENABLE => GND, OUTPUT(0) => B3);

END pla;

CONFIGURATION cfg_wrd_stts OF WRD_STTS IS
  FOR pla
  END FOR;
END cfg_wrd_stts;
