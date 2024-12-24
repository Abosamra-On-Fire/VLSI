/* Generated by Yosys 0.46 (git sha1 e97731b9dda91fa5fa53ed87df7c34163ba59a41, clang++ 17.0.6 -fPIC -O3) */

module BypassAdder_s(A, B, Cin, Sum, Cout);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  input [31:0] A;
  wire [31:0] A;
  input [31:0] B;
  wire [31:0] B;
  wire \BLOCKS[0].RCA.FA0.S ;
  wire \BLOCKS[0].RCA.gen_full_adders[1].FA.S ;
  wire \BLOCKS[0].RCA.gen_full_adders[2].FA.S ;
  wire \BLOCKS[0].RCA.gen_full_adders[3].FA.S ;
  wire \BLOCKS[1].RCA.FA0.S ;
  wire \BLOCKS[1].RCA.gen_full_adders[1].FA.S ;
  wire \BLOCKS[1].RCA.gen_full_adders[2].FA.S ;
  wire \BLOCKS[1].RCA.gen_full_adders[3].FA.S ;
  wire \BLOCKS[2].RCA.FA0.S ;
  wire \BLOCKS[2].RCA.gen_full_adders[1].FA.S ;
  wire \BLOCKS[2].RCA.gen_full_adders[2].FA.S ;
  wire \BLOCKS[2].RCA.gen_full_adders[3].FA.S ;
  wire \BLOCKS[3].RCA.FA0.S ;
  wire \BLOCKS[3].RCA.gen_full_adders[1].FA.S ;
  wire \BLOCKS[3].RCA.gen_full_adders[2].FA.S ;
  wire \BLOCKS[3].RCA.gen_full_adders[3].FA.S ;
  wire \BLOCKS[4].RCA.FA0.S ;
  wire \BLOCKS[4].RCA.gen_full_adders[1].FA.S ;
  wire \BLOCKS[4].RCA.gen_full_adders[2].FA.S ;
  wire \BLOCKS[4].RCA.gen_full_adders[3].FA.S ;
  wire \BLOCKS[5].RCA.FA0.S ;
  wire \BLOCKS[5].RCA.gen_full_adders[1].FA.S ;
  wire \BLOCKS[5].RCA.gen_full_adders[2].FA.S ;
  wire \BLOCKS[5].RCA.gen_full_adders[3].FA.S ;
  wire \BLOCKS[6].RCA.FA0.S ;
  wire \BLOCKS[6].RCA.gen_full_adders[1].FA.S ;
  wire \BLOCKS[6].RCA.gen_full_adders[2].FA.S ;
  wire \BLOCKS[6].RCA.gen_full_adders[3].FA.S ;
  wire \BLOCKS[7].RCA.FA0.S ;
  wire \BLOCKS[7].RCA.gen_full_adders[1].FA.S ;
  wire \BLOCKS[7].RCA.gen_full_adders[2].FA.S ;
  wire \BLOCKS[7].RCA.gen_full_adders[3].FA.S ;
  input Cin;
  wire Cin;
  output Cout;
  wire Cout;
  output [31:0] Sum;
  wire [31:0] Sum;
  sky130_fd_sc_hd__and2_2 _128_ (
    .A(B[31]),
    .B(A[31]),
    .X(_127_)
  );
  sky130_fd_sc_hd__nor2_2 _129_ (
    .A(B[31]),
    .B(A[31]),
    .Y(_000_)
  );
  sky130_fd_sc_hd__nor2_2 _130_ (
    .A(_127_),
    .B(_000_),
    .Y(_001_)
  );
  sky130_fd_sc_hd__and2_2 _131_ (
    .A(B[30]),
    .B(A[30]),
    .X(_002_)
  );
  sky130_fd_sc_hd__nor2_2 _132_ (
    .A(B[30]),
    .B(A[30]),
    .Y(_003_)
  );
  sky130_fd_sc_hd__nor2_2 _133_ (
    .A(_002_),
    .B(_003_),
    .Y(_004_)
  );
  sky130_fd_sc_hd__and2_2 _134_ (
    .A(B[29]),
    .B(A[29]),
    .X(_005_)
  );
  sky130_fd_sc_hd__nor2_2 _135_ (
    .A(B[29]),
    .B(A[29]),
    .Y(_006_)
  );
  sky130_fd_sc_hd__nor2_2 _136_ (
    .A(_005_),
    .B(_006_),
    .Y(_007_)
  );
  sky130_fd_sc_hd__nand2_2 _137_ (
    .A(B[28]),
    .B(A[28]),
    .Y(_008_)
  );
  sky130_fd_sc_hd__or2_2 _138_ (
    .A(B[28]),
    .B(A[28]),
    .X(_009_)
  );
  sky130_fd_sc_hd__nand2_2 _139_ (
    .A(_008_),
    .B(_009_),
    .Y(_010_)
  );
  sky130_fd_sc_hd__and2_2 _140_ (
    .A(B[27]),
    .B(A[27]),
    .X(_011_)
  );
  sky130_fd_sc_hd__nor2_2 _141_ (
    .A(B[27]),
    .B(A[27]),
    .Y(_012_)
  );
  sky130_fd_sc_hd__nor2_2 _142_ (
    .A(_011_),
    .B(_012_),
    .Y(_013_)
  );
  sky130_fd_sc_hd__nand2_2 _143_ (
    .A(B[26]),
    .B(A[26]),
    .Y(_014_)
  );
  sky130_fd_sc_hd__or2_2 _144_ (
    .A(B[26]),
    .B(A[26]),
    .X(_015_)
  );
  sky130_fd_sc_hd__nand2_2 _145_ (
    .A(_014_),
    .B(_015_),
    .Y(_016_)
  );
  sky130_fd_sc_hd__nand2_2 _146_ (
    .A(B[25]),
    .B(A[25]),
    .Y(_017_)
  );
  sky130_fd_sc_hd__or2_2 _147_ (
    .A(B[25]),
    .B(A[25]),
    .X(_018_)
  );
  sky130_fd_sc_hd__nand2_2 _148_ (
    .A(_017_),
    .B(_018_),
    .Y(_019_)
  );
  sky130_fd_sc_hd__nand2_2 _149_ (
    .A(B[24]),
    .B(A[24]),
    .Y(_020_)
  );
  sky130_fd_sc_hd__or2_2 _150_ (
    .A(B[24]),
    .B(A[24]),
    .X(_021_)
  );
  sky130_fd_sc_hd__nand2_2 _151_ (
    .A(_020_),
    .B(_021_),
    .Y(_022_)
  );
  sky130_fd_sc_hd__and2_2 _152_ (
    .A(B[23]),
    .B(A[23]),
    .X(_023_)
  );
  sky130_fd_sc_hd__nor2_2 _153_ (
    .A(B[23]),
    .B(A[23]),
    .Y(_024_)
  );
  sky130_fd_sc_hd__nor2_2 _154_ (
    .A(_023_),
    .B(_024_),
    .Y(_025_)
  );
  sky130_fd_sc_hd__nand2_2 _155_ (
    .A(B[22]),
    .B(A[22]),
    .Y(_026_)
  );
  sky130_fd_sc_hd__or2_2 _156_ (
    .A(B[22]),
    .B(A[22]),
    .X(_027_)
  );
  sky130_fd_sc_hd__nand2_2 _157_ (
    .A(_026_),
    .B(_027_),
    .Y(_028_)
  );
  sky130_fd_sc_hd__nand2_2 _158_ (
    .A(B[21]),
    .B(A[21]),
    .Y(_029_)
  );
  sky130_fd_sc_hd__or2_2 _159_ (
    .A(B[21]),
    .B(A[21]),
    .X(_030_)
  );
  sky130_fd_sc_hd__nand2_2 _160_ (
    .A(_029_),
    .B(_030_),
    .Y(_031_)
  );
  sky130_fd_sc_hd__nand2_2 _161_ (
    .A(B[20]),
    .B(A[20]),
    .Y(_032_)
  );
  sky130_fd_sc_hd__or2_2 _162_ (
    .A(B[20]),
    .B(A[20]),
    .X(_033_)
  );
  sky130_fd_sc_hd__nand2_2 _163_ (
    .A(_032_),
    .B(_033_),
    .Y(_034_)
  );
  sky130_fd_sc_hd__and2_2 _164_ (
    .A(B[19]),
    .B(A[19]),
    .X(_035_)
  );
  sky130_fd_sc_hd__nor2_2 _165_ (
    .A(B[19]),
    .B(A[19]),
    .Y(_036_)
  );
  sky130_fd_sc_hd__nor2_2 _166_ (
    .A(_035_),
    .B(_036_),
    .Y(_037_)
  );
  sky130_fd_sc_hd__nand2_2 _167_ (
    .A(B[18]),
    .B(A[18]),
    .Y(_038_)
  );
  sky130_fd_sc_hd__or2_2 _168_ (
    .A(B[18]),
    .B(A[18]),
    .X(_039_)
  );
  sky130_fd_sc_hd__nand2_2 _169_ (
    .A(_038_),
    .B(_039_),
    .Y(_040_)
  );
  sky130_fd_sc_hd__nand2_2 _170_ (
    .A(B[17]),
    .B(A[17]),
    .Y(_041_)
  );
  sky130_fd_sc_hd__or2_2 _171_ (
    .A(B[17]),
    .B(A[17]),
    .X(_042_)
  );
  sky130_fd_sc_hd__nand2_2 _172_ (
    .A(_041_),
    .B(_042_),
    .Y(_043_)
  );
  sky130_fd_sc_hd__nand2_2 _173_ (
    .A(B[16]),
    .B(A[16]),
    .Y(_044_)
  );
  sky130_fd_sc_hd__or2_2 _174_ (
    .A(B[16]),
    .B(A[16]),
    .X(_045_)
  );
  sky130_fd_sc_hd__nand2_2 _175_ (
    .A(_044_),
    .B(_045_),
    .Y(_046_)
  );
  sky130_fd_sc_hd__and2_2 _176_ (
    .A(B[15]),
    .B(A[15]),
    .X(_047_)
  );
  sky130_fd_sc_hd__nor2_2 _177_ (
    .A(B[15]),
    .B(A[15]),
    .Y(_048_)
  );
  sky130_fd_sc_hd__nor2_2 _178_ (
    .A(_047_),
    .B(_048_),
    .Y(_049_)
  );
  sky130_fd_sc_hd__nand2_2 _179_ (
    .A(B[14]),
    .B(A[14]),
    .Y(_050_)
  );
  sky130_fd_sc_hd__or2_2 _180_ (
    .A(B[14]),
    .B(A[14]),
    .X(_051_)
  );
  sky130_fd_sc_hd__nand2_2 _181_ (
    .A(_050_),
    .B(_051_),
    .Y(_052_)
  );
  sky130_fd_sc_hd__nand2_2 _182_ (
    .A(B[13]),
    .B(A[13]),
    .Y(_053_)
  );
  sky130_fd_sc_hd__or2_2 _183_ (
    .A(B[13]),
    .B(A[13]),
    .X(_054_)
  );
  sky130_fd_sc_hd__nand2_2 _184_ (
    .A(_053_),
    .B(_054_),
    .Y(_055_)
  );
  sky130_fd_sc_hd__nand2_2 _185_ (
    .A(B[12]),
    .B(A[12]),
    .Y(_056_)
  );
  sky130_fd_sc_hd__or2_2 _186_ (
    .A(B[12]),
    .B(A[12]),
    .X(_057_)
  );
  sky130_fd_sc_hd__nand2_2 _187_ (
    .A(_056_),
    .B(_057_),
    .Y(_058_)
  );
  sky130_fd_sc_hd__and2_2 _188_ (
    .A(B[11]),
    .B(A[11]),
    .X(_059_)
  );
  sky130_fd_sc_hd__nor2_2 _189_ (
    .A(B[11]),
    .B(A[11]),
    .Y(_060_)
  );
  sky130_fd_sc_hd__nor2_2 _190_ (
    .A(_059_),
    .B(_060_),
    .Y(_061_)
  );
  sky130_fd_sc_hd__nand2_2 _191_ (
    .A(B[10]),
    .B(A[10]),
    .Y(_062_)
  );
  sky130_fd_sc_hd__or2_2 _192_ (
    .A(B[10]),
    .B(A[10]),
    .X(_063_)
  );
  sky130_fd_sc_hd__nand2_2 _193_ (
    .A(_062_),
    .B(_063_),
    .Y(_064_)
  );
  sky130_fd_sc_hd__nand2_2 _194_ (
    .A(B[9]),
    .B(A[9]),
    .Y(_065_)
  );
  sky130_fd_sc_hd__or2_2 _195_ (
    .A(B[9]),
    .B(A[9]),
    .X(_066_)
  );
  sky130_fd_sc_hd__nand2_2 _196_ (
    .A(_065_),
    .B(_066_),
    .Y(_067_)
  );
  sky130_fd_sc_hd__nand2_2 _197_ (
    .A(B[8]),
    .B(A[8]),
    .Y(_068_)
  );
  sky130_fd_sc_hd__inv_2 _198_ (
    .A(_068_),
    .Y(_069_)
  );
  sky130_fd_sc_hd__nor2_2 _199_ (
    .A(B[8]),
    .B(A[8]),
    .Y(_070_)
  );
  sky130_fd_sc_hd__nor2_2 _200_ (
    .A(_069_),
    .B(_070_),
    .Y(_071_)
  );
  sky130_fd_sc_hd__nand2_2 _201_ (
    .A(B[7]),
    .B(A[7]),
    .Y(_072_)
  );
  sky130_fd_sc_hd__or2_2 _202_ (
    .A(B[7]),
    .B(A[7]),
    .X(_073_)
  );
  sky130_fd_sc_hd__nand2_2 _203_ (
    .A(_072_),
    .B(_073_),
    .Y(_074_)
  );
  sky130_fd_sc_hd__nand2_2 _204_ (
    .A(B[6]),
    .B(A[6]),
    .Y(_075_)
  );
  sky130_fd_sc_hd__or2_2 _205_ (
    .A(B[6]),
    .B(A[6]),
    .X(_076_)
  );
  sky130_fd_sc_hd__nand2_2 _206_ (
    .A(_075_),
    .B(_076_),
    .Y(_077_)
  );
  sky130_fd_sc_hd__nand2_2 _207_ (
    .A(B[5]),
    .B(A[5]),
    .Y(_078_)
  );
  sky130_fd_sc_hd__or2_2 _208_ (
    .A(B[5]),
    .B(A[5]),
    .X(_079_)
  );
  sky130_fd_sc_hd__nand2_2 _209_ (
    .A(_078_),
    .B(_079_),
    .Y(_080_)
  );
  sky130_fd_sc_hd__nand2_2 _210_ (
    .A(B[4]),
    .B(A[4]),
    .Y(_081_)
  );
  sky130_fd_sc_hd__nand2_2 _211_ (
    .A(B[3]),
    .B(A[3]),
    .Y(_082_)
  );
  sky130_fd_sc_hd__or2_2 _212_ (
    .A(B[3]),
    .B(A[3]),
    .X(_083_)
  );
  sky130_fd_sc_hd__nand2_2 _213_ (
    .A(_082_),
    .B(_083_),
    .Y(_084_)
  );
  sky130_fd_sc_hd__nand2_2 _214_ (
    .A(B[2]),
    .B(A[2]),
    .Y(_085_)
  );
  sky130_fd_sc_hd__or2_2 _215_ (
    .A(B[2]),
    .B(A[2]),
    .X(_086_)
  );
  sky130_fd_sc_hd__nand2_2 _216_ (
    .A(_085_),
    .B(_086_),
    .Y(_087_)
  );
  sky130_fd_sc_hd__nand2_2 _217_ (
    .A(B[1]),
    .B(A[1]),
    .Y(_088_)
  );
  sky130_fd_sc_hd__or2_2 _218_ (
    .A(B[1]),
    .B(A[1]),
    .X(_089_)
  );
  sky130_fd_sc_hd__nand2_2 _219_ (
    .A(_088_),
    .B(_089_),
    .Y(_090_)
  );
  sky130_fd_sc_hd__nand2_2 _220_ (
    .A(B[0]),
    .B(A[0]),
    .Y(_091_)
  );
  sky130_fd_sc_hd__or2_2 _221_ (
    .A(B[0]),
    .B(A[0]),
    .X(_092_)
  );
  sky130_fd_sc_hd__nand2_2 _222_ (
    .A(_091_),
    .B(_092_),
    .Y(_093_)
  );
  sky130_fd_sc_hd__a21bo_2 _223_ (
    .A1(Cin),
    .A2(_092_),
    .B1_N(_091_),
    .X(_094_)
  );
  sky130_fd_sc_hd__a21bo_2 _224_ (
    .A1(_089_),
    .A2(_094_),
    .B1_N(_088_),
    .X(_095_)
  );
  sky130_fd_sc_hd__a21bo_2 _225_ (
    .A1(_086_),
    .A2(_095_),
    .B1_N(_085_),
    .X(_096_)
  );
  sky130_fd_sc_hd__a21bo_2 _226_ (
    .A1(_083_),
    .A2(_096_),
    .B1_N(_082_),
    .X(_097_)
  );
  sky130_fd_sc_hd__or2_2 _227_ (
    .A(B[4]),
    .B(A[4]),
    .X(_098_)
  );
  sky130_fd_sc_hd__nand2_2 _228_ (
    .A(_081_),
    .B(_098_),
    .Y(_099_)
  );
  sky130_fd_sc_hd__a21bo_2 _229_ (
    .A1(_097_),
    .A2(_098_),
    .B1_N(_081_),
    .X(_100_)
  );
  sky130_fd_sc_hd__a21bo_2 _230_ (
    .A1(_079_),
    .A2(_100_),
    .B1_N(_078_),
    .X(_101_)
  );
  sky130_fd_sc_hd__a21bo_2 _231_ (
    .A1(_076_),
    .A2(_101_),
    .B1_N(_075_),
    .X(_102_)
  );
  sky130_fd_sc_hd__a21boi_2 _232_ (
    .A1(_073_),
    .A2(_102_),
    .B1_N(_072_),
    .Y(_103_)
  );
  sky130_fd_sc_hd__o21a_2 _233_ (
    .A1(_070_),
    .A2(_103_),
    .B1(_068_),
    .X(_104_)
  );
  sky130_fd_sc_hd__o21a_2 _234_ (
    .A1(_067_),
    .A2(_104_),
    .B1(_065_),
    .X(_105_)
  );
  sky130_fd_sc_hd__o21ai_2 _235_ (
    .A1(_064_),
    .A2(_105_),
    .B1(_062_),
    .Y(_106_)
  );
  sky130_fd_sc_hd__a21o_2 _236_ (
    .A1(_061_),
    .A2(_106_),
    .B1(_059_),
    .X(_107_)
  );
  sky130_fd_sc_hd__a21bo_2 _237_ (
    .A1(_057_),
    .A2(_107_),
    .B1_N(_056_),
    .X(_108_)
  );
  sky130_fd_sc_hd__a21bo_2 _238_ (
    .A1(_054_),
    .A2(_108_),
    .B1_N(_053_),
    .X(_109_)
  );
  sky130_fd_sc_hd__a21bo_2 _239_ (
    .A1(_051_),
    .A2(_109_),
    .B1_N(_050_),
    .X(_110_)
  );
  sky130_fd_sc_hd__a21o_2 _240_ (
    .A1(_049_),
    .A2(_110_),
    .B1(_047_),
    .X(_111_)
  );
  sky130_fd_sc_hd__a21bo_2 _241_ (
    .A1(_045_),
    .A2(_111_),
    .B1_N(_044_),
    .X(_112_)
  );
  sky130_fd_sc_hd__a21bo_2 _242_ (
    .A1(_042_),
    .A2(_112_),
    .B1_N(_041_),
    .X(_113_)
  );
  sky130_fd_sc_hd__a21bo_2 _243_ (
    .A1(_039_),
    .A2(_113_),
    .B1_N(_038_),
    .X(_114_)
  );
  sky130_fd_sc_hd__a21o_2 _244_ (
    .A1(_037_),
    .A2(_114_),
    .B1(_035_),
    .X(_115_)
  );
  sky130_fd_sc_hd__a21bo_2 _245_ (
    .A1(_033_),
    .A2(_115_),
    .B1_N(_032_),
    .X(_116_)
  );
  sky130_fd_sc_hd__a21bo_2 _246_ (
    .A1(_030_),
    .A2(_116_),
    .B1_N(_029_),
    .X(_117_)
  );
  sky130_fd_sc_hd__a21bo_2 _247_ (
    .A1(_027_),
    .A2(_117_),
    .B1_N(_026_),
    .X(_118_)
  );
  sky130_fd_sc_hd__a21o_2 _248_ (
    .A1(_025_),
    .A2(_118_),
    .B1(_023_),
    .X(_119_)
  );
  sky130_fd_sc_hd__a21bo_2 _249_ (
    .A1(_021_),
    .A2(_119_),
    .B1_N(_020_),
    .X(_120_)
  );
  sky130_fd_sc_hd__a21bo_2 _250_ (
    .A1(_018_),
    .A2(_120_),
    .B1_N(_017_),
    .X(_121_)
  );
  sky130_fd_sc_hd__a21bo_2 _251_ (
    .A1(_015_),
    .A2(_121_),
    .B1_N(_014_),
    .X(_122_)
  );
  sky130_fd_sc_hd__a21o_2 _252_ (
    .A1(_013_),
    .A2(_122_),
    .B1(_011_),
    .X(_123_)
  );
  sky130_fd_sc_hd__a21bo_2 _253_ (
    .A1(_009_),
    .A2(_123_),
    .B1_N(_008_),
    .X(_124_)
  );
  sky130_fd_sc_hd__a21o_2 _254_ (
    .A1(_007_),
    .A2(_124_),
    .B1(_005_),
    .X(_125_)
  );
  sky130_fd_sc_hd__a21o_2 _255_ (
    .A1(_004_),
    .A2(_125_),
    .B1(_002_),
    .X(_126_)
  );
  sky130_fd_sc_hd__a21o_2 _256_ (
    .A1(_001_),
    .A2(_126_),
    .B1(_127_),
    .X(Cout)
  );
  sky130_fd_sc_hd__xnor2_2 _257_ (
    .A(_084_),
    .B(_096_),
    .Y(\BLOCKS[0].RCA.gen_full_adders[3].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _258_ (
    .A(_087_),
    .B(_095_),
    .Y(\BLOCKS[0].RCA.gen_full_adders[2].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _259_ (
    .A(_090_),
    .B(_094_),
    .Y(\BLOCKS[0].RCA.gen_full_adders[1].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _260_ (
    .A(Cin),
    .B(_093_),
    .Y(\BLOCKS[0].RCA.FA0.S )
  );
  sky130_fd_sc_hd__xnor2_2 _261_ (
    .A(_074_),
    .B(_102_),
    .Y(\BLOCKS[1].RCA.gen_full_adders[3].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _262_ (
    .A(_077_),
    .B(_101_),
    .Y(\BLOCKS[1].RCA.gen_full_adders[2].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _263_ (
    .A(_080_),
    .B(_100_),
    .Y(\BLOCKS[1].RCA.gen_full_adders[1].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _264_ (
    .A(_097_),
    .B(_099_),
    .Y(\BLOCKS[1].RCA.FA0.S )
  );
  sky130_fd_sc_hd__xor2_2 _265_ (
    .A(_061_),
    .B(_106_),
    .X(\BLOCKS[2].RCA.gen_full_adders[3].FA.S )
  );
  sky130_fd_sc_hd__xor2_2 _266_ (
    .A(_064_),
    .B(_105_),
    .X(\BLOCKS[2].RCA.gen_full_adders[2].FA.S )
  );
  sky130_fd_sc_hd__xor2_2 _267_ (
    .A(_067_),
    .B(_104_),
    .X(\BLOCKS[2].RCA.gen_full_adders[1].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _268_ (
    .A(_071_),
    .B(_103_),
    .Y(\BLOCKS[2].RCA.FA0.S )
  );
  sky130_fd_sc_hd__xor2_2 _269_ (
    .A(_049_),
    .B(_110_),
    .X(\BLOCKS[3].RCA.gen_full_adders[3].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _270_ (
    .A(_052_),
    .B(_109_),
    .Y(\BLOCKS[3].RCA.gen_full_adders[2].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _271_ (
    .A(_055_),
    .B(_108_),
    .Y(\BLOCKS[3].RCA.gen_full_adders[1].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _272_ (
    .A(_058_),
    .B(_107_),
    .Y(\BLOCKS[3].RCA.FA0.S )
  );
  sky130_fd_sc_hd__xor2_2 _273_ (
    .A(_037_),
    .B(_114_),
    .X(\BLOCKS[4].RCA.gen_full_adders[3].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _274_ (
    .A(_040_),
    .B(_113_),
    .Y(\BLOCKS[4].RCA.gen_full_adders[2].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _275_ (
    .A(_043_),
    .B(_112_),
    .Y(\BLOCKS[4].RCA.gen_full_adders[1].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _276_ (
    .A(_046_),
    .B(_111_),
    .Y(\BLOCKS[4].RCA.FA0.S )
  );
  sky130_fd_sc_hd__xor2_2 _277_ (
    .A(_025_),
    .B(_118_),
    .X(\BLOCKS[5].RCA.gen_full_adders[3].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _278_ (
    .A(_028_),
    .B(_117_),
    .Y(\BLOCKS[5].RCA.gen_full_adders[2].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _279_ (
    .A(_031_),
    .B(_116_),
    .Y(\BLOCKS[5].RCA.gen_full_adders[1].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _280_ (
    .A(_034_),
    .B(_115_),
    .Y(\BLOCKS[5].RCA.FA0.S )
  );
  sky130_fd_sc_hd__xor2_2 _281_ (
    .A(_013_),
    .B(_122_),
    .X(\BLOCKS[6].RCA.gen_full_adders[3].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _282_ (
    .A(_016_),
    .B(_121_),
    .Y(\BLOCKS[6].RCA.gen_full_adders[2].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _283_ (
    .A(_019_),
    .B(_120_),
    .Y(\BLOCKS[6].RCA.gen_full_adders[1].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _284_ (
    .A(_022_),
    .B(_119_),
    .Y(\BLOCKS[6].RCA.FA0.S )
  );
  sky130_fd_sc_hd__xor2_2 _285_ (
    .A(_001_),
    .B(_126_),
    .X(\BLOCKS[7].RCA.gen_full_adders[3].FA.S )
  );
  sky130_fd_sc_hd__xor2_2 _286_ (
    .A(_004_),
    .B(_125_),
    .X(\BLOCKS[7].RCA.gen_full_adders[2].FA.S )
  );
  sky130_fd_sc_hd__xor2_2 _287_ (
    .A(_007_),
    .B(_124_),
    .X(\BLOCKS[7].RCA.gen_full_adders[1].FA.S )
  );
  sky130_fd_sc_hd__xnor2_2 _288_ (
    .A(_010_),
    .B(_123_),
    .Y(\BLOCKS[7].RCA.FA0.S )
  );
  sky130_fd_sc_hd__buf_2 _289_ (
    .A(\BLOCKS[0].RCA.FA0.S ),
    .X(Sum[0])
  );
  sky130_fd_sc_hd__buf_2 _290_ (
    .A(\BLOCKS[0].RCA.gen_full_adders[1].FA.S ),
    .X(Sum[1])
  );
  sky130_fd_sc_hd__buf_2 _291_ (
    .A(\BLOCKS[0].RCA.gen_full_adders[2].FA.S ),
    .X(Sum[2])
  );
  sky130_fd_sc_hd__buf_2 _292_ (
    .A(\BLOCKS[0].RCA.gen_full_adders[3].FA.S ),
    .X(Sum[3])
  );
  sky130_fd_sc_hd__buf_2 _293_ (
    .A(\BLOCKS[1].RCA.FA0.S ),
    .X(Sum[4])
  );
  sky130_fd_sc_hd__buf_2 _294_ (
    .A(\BLOCKS[1].RCA.gen_full_adders[1].FA.S ),
    .X(Sum[5])
  );
  sky130_fd_sc_hd__buf_2 _295_ (
    .A(\BLOCKS[1].RCA.gen_full_adders[2].FA.S ),
    .X(Sum[6])
  );
  sky130_fd_sc_hd__buf_2 _296_ (
    .A(\BLOCKS[1].RCA.gen_full_adders[3].FA.S ),
    .X(Sum[7])
  );
  sky130_fd_sc_hd__buf_2 _297_ (
    .A(\BLOCKS[2].RCA.FA0.S ),
    .X(Sum[8])
  );
  sky130_fd_sc_hd__buf_2 _298_ (
    .A(\BLOCKS[2].RCA.gen_full_adders[1].FA.S ),
    .X(Sum[9])
  );
  sky130_fd_sc_hd__buf_2 _299_ (
    .A(\BLOCKS[2].RCA.gen_full_adders[2].FA.S ),
    .X(Sum[10])
  );
  sky130_fd_sc_hd__buf_2 _300_ (
    .A(\BLOCKS[2].RCA.gen_full_adders[3].FA.S ),
    .X(Sum[11])
  );
  sky130_fd_sc_hd__buf_2 _301_ (
    .A(\BLOCKS[3].RCA.FA0.S ),
    .X(Sum[12])
  );
  sky130_fd_sc_hd__buf_2 _302_ (
    .A(\BLOCKS[3].RCA.gen_full_adders[1].FA.S ),
    .X(Sum[13])
  );
  sky130_fd_sc_hd__buf_2 _303_ (
    .A(\BLOCKS[3].RCA.gen_full_adders[2].FA.S ),
    .X(Sum[14])
  );
  sky130_fd_sc_hd__buf_2 _304_ (
    .A(\BLOCKS[3].RCA.gen_full_adders[3].FA.S ),
    .X(Sum[15])
  );
  sky130_fd_sc_hd__buf_2 _305_ (
    .A(\BLOCKS[4].RCA.FA0.S ),
    .X(Sum[16])
  );
  sky130_fd_sc_hd__buf_2 _306_ (
    .A(\BLOCKS[4].RCA.gen_full_adders[1].FA.S ),
    .X(Sum[17])
  );
  sky130_fd_sc_hd__buf_2 _307_ (
    .A(\BLOCKS[4].RCA.gen_full_adders[2].FA.S ),
    .X(Sum[18])
  );
  sky130_fd_sc_hd__buf_2 _308_ (
    .A(\BLOCKS[4].RCA.gen_full_adders[3].FA.S ),
    .X(Sum[19])
  );
  sky130_fd_sc_hd__buf_2 _309_ (
    .A(\BLOCKS[5].RCA.FA0.S ),
    .X(Sum[20])
  );
  sky130_fd_sc_hd__buf_2 _310_ (
    .A(\BLOCKS[5].RCA.gen_full_adders[1].FA.S ),
    .X(Sum[21])
  );
  sky130_fd_sc_hd__buf_2 _311_ (
    .A(\BLOCKS[5].RCA.gen_full_adders[2].FA.S ),
    .X(Sum[22])
  );
  sky130_fd_sc_hd__buf_2 _312_ (
    .A(\BLOCKS[5].RCA.gen_full_adders[3].FA.S ),
    .X(Sum[23])
  );
  sky130_fd_sc_hd__buf_2 _313_ (
    .A(\BLOCKS[6].RCA.FA0.S ),
    .X(Sum[24])
  );
  sky130_fd_sc_hd__buf_2 _314_ (
    .A(\BLOCKS[6].RCA.gen_full_adders[1].FA.S ),
    .X(Sum[25])
  );
  sky130_fd_sc_hd__buf_2 _315_ (
    .A(\BLOCKS[6].RCA.gen_full_adders[2].FA.S ),
    .X(Sum[26])
  );
  sky130_fd_sc_hd__buf_2 _316_ (
    .A(\BLOCKS[6].RCA.gen_full_adders[3].FA.S ),
    .X(Sum[27])
  );
  sky130_fd_sc_hd__buf_2 _317_ (
    .A(\BLOCKS[7].RCA.FA0.S ),
    .X(Sum[28])
  );
  sky130_fd_sc_hd__buf_2 _318_ (
    .A(\BLOCKS[7].RCA.gen_full_adders[1].FA.S ),
    .X(Sum[29])
  );
  sky130_fd_sc_hd__buf_2 _319_ (
    .A(\BLOCKS[7].RCA.gen_full_adders[2].FA.S ),
    .X(Sum[30])
  );
  sky130_fd_sc_hd__buf_2 _320_ (
    .A(\BLOCKS[7].RCA.gen_full_adders[3].FA.S ),
    .X(Sum[31])
  );
endmodule
