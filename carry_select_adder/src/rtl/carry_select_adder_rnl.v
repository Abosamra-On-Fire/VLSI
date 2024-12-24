module carry_select_adder_rnl (cin,
    cout,
    a,
    b,
    sum);
 input cin;
 output cout;
 input [31:0] a;
 input [31:0] b;
 output [31:0] sum;

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
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;

 sky130_fd_sc_hd__nand2_1 _172_ (.A(net1),
    .B(net33),
    .Y(_171_));
 sky130_fd_sc_hd__and3_1 _173_ (.A(net65),
    .B(net1),
    .C(net33),
    .X(_000_));
 sky130_fd_sc_hd__or3_1 _174_ (.A(net65),
    .B(net1),
    .C(net33),
    .X(_001_));
 sky130_fd_sc_hd__o21ai_2 _175_ (.A1(net1),
    .A2(net33),
    .B1(net65),
    .Y(_002_));
 sky130_fd_sc_hd__nand2_1 _176_ (.A(_171_),
    .B(_002_),
    .Y(_003_));
 sky130_fd_sc_hd__a31o_1 _177_ (.A1(_171_),
    .A2(_001_),
    .A3(_002_),
    .B1(_000_),
    .X(net67));
 sky130_fd_sc_hd__nand2_1 _178_ (.A(net12),
    .B(net44),
    .Y(_004_));
 sky130_fd_sc_hd__inv_2 _179_ (.A(_004_),
    .Y(_005_));
 sky130_fd_sc_hd__nor2_1 _180_ (.A(net12),
    .B(net44),
    .Y(_006_));
 sky130_fd_sc_hd__nor2_1 _181_ (.A(_005_),
    .B(_006_),
    .Y(_007_));
 sky130_fd_sc_hd__xor2_1 _182_ (.A(_003_),
    .B(_007_),
    .X(net78));
 sky130_fd_sc_hd__nand2_1 _183_ (.A(net23),
    .B(net55),
    .Y(_008_));
 sky130_fd_sc_hd__inv_2 _184_ (.A(_008_),
    .Y(_009_));
 sky130_fd_sc_hd__nor2_1 _185_ (.A(net23),
    .B(net55),
    .Y(_010_));
 sky130_fd_sc_hd__nor2_1 _186_ (.A(_009_),
    .B(_010_),
    .Y(_011_));
 sky130_fd_sc_hd__a31o_1 _187_ (.A1(_171_),
    .A2(_002_),
    .A3(_004_),
    .B1(_006_),
    .X(_012_));
 sky130_fd_sc_hd__xnor2_1 _188_ (.A(_011_),
    .B(_012_),
    .Y(net89));
 sky130_fd_sc_hd__nand2_1 _189_ (.A(net26),
    .B(net58),
    .Y(_013_));
 sky130_fd_sc_hd__nor2_1 _190_ (.A(net26),
    .B(net58),
    .Y(_014_));
 sky130_fd_sc_hd__or2_1 _191_ (.A(net26),
    .B(net58),
    .X(_015_));
 sky130_fd_sc_hd__nand2_1 _192_ (.A(_013_),
    .B(_015_),
    .Y(_016_));
 sky130_fd_sc_hd__a311o_1 _193_ (.A1(_171_),
    .A2(_002_),
    .A3(_004_),
    .B1(_006_),
    .C1(_010_),
    .X(_017_));
 sky130_fd_sc_hd__nand2_1 _194_ (.A(_008_),
    .B(_017_),
    .Y(_018_));
 sky130_fd_sc_hd__xnor2_1 _195_ (.A(_016_),
    .B(_018_),
    .Y(net92));
 sky130_fd_sc_hd__nand2_1 _196_ (.A(net27),
    .B(net59),
    .Y(_019_));
 sky130_fd_sc_hd__nor2_1 _197_ (.A(net27),
    .B(net59),
    .Y(_020_));
 sky130_fd_sc_hd__or2_1 _198_ (.A(net27),
    .B(net59),
    .X(_021_));
 sky130_fd_sc_hd__nand2_1 _199_ (.A(_019_),
    .B(_021_),
    .Y(_022_));
 sky130_fd_sc_hd__a31o_1 _200_ (.A1(_008_),
    .A2(_013_),
    .A3(_017_),
    .B1(_014_),
    .X(_023_));
 sky130_fd_sc_hd__xor2_1 _201_ (.A(_022_),
    .B(_023_),
    .X(net93));
 sky130_fd_sc_hd__nand2_1 _202_ (.A(net28),
    .B(net60),
    .Y(_024_));
 sky130_fd_sc_hd__inv_2 _203_ (.A(_024_),
    .Y(_025_));
 sky130_fd_sc_hd__nor2_1 _204_ (.A(net28),
    .B(net60),
    .Y(_026_));
 sky130_fd_sc_hd__or2_1 _205_ (.A(_025_),
    .B(_026_),
    .X(_027_));
 sky130_fd_sc_hd__a311o_1 _206_ (.A1(_008_),
    .A2(_013_),
    .A3(_017_),
    .B1(_020_),
    .C1(_014_),
    .X(_028_));
 sky130_fd_sc_hd__nand2_1 _207_ (.A(_019_),
    .B(_028_),
    .Y(_029_));
 sky130_fd_sc_hd__xnor2_1 _208_ (.A(_027_),
    .B(_029_),
    .Y(net94));
 sky130_fd_sc_hd__nand2_1 _209_ (.A(net29),
    .B(net61),
    .Y(_030_));
 sky130_fd_sc_hd__nor2_1 _210_ (.A(net29),
    .B(net61),
    .Y(_031_));
 sky130_fd_sc_hd__or2_1 _211_ (.A(net29),
    .B(net61),
    .X(_032_));
 sky130_fd_sc_hd__nand2_1 _212_ (.A(_030_),
    .B(_032_),
    .Y(_033_));
 sky130_fd_sc_hd__a31o_1 _213_ (.A1(_019_),
    .A2(_024_),
    .A3(_028_),
    .B1(_026_),
    .X(_034_));
 sky130_fd_sc_hd__xor2_1 _214_ (.A(_033_),
    .B(_034_),
    .X(net95));
 sky130_fd_sc_hd__nand2_1 _215_ (.A(net30),
    .B(net62),
    .Y(_035_));
 sky130_fd_sc_hd__inv_2 _216_ (.A(_035_),
    .Y(_036_));
 sky130_fd_sc_hd__nor2_1 _217_ (.A(net30),
    .B(net62),
    .Y(_037_));
 sky130_fd_sc_hd__or2_1 _218_ (.A(_036_),
    .B(_037_),
    .X(_038_));
 sky130_fd_sc_hd__a311o_1 _219_ (.A1(_019_),
    .A2(_024_),
    .A3(_028_),
    .B1(_031_),
    .C1(_026_),
    .X(_039_));
 sky130_fd_sc_hd__nand2_1 _220_ (.A(_030_),
    .B(_039_),
    .Y(_040_));
 sky130_fd_sc_hd__xnor2_1 _221_ (.A(_038_),
    .B(_040_),
    .Y(net96));
 sky130_fd_sc_hd__nand2_1 _222_ (.A(net31),
    .B(net63),
    .Y(_041_));
 sky130_fd_sc_hd__nor2_1 _223_ (.A(net31),
    .B(net63),
    .Y(_042_));
 sky130_fd_sc_hd__or2_1 _224_ (.A(net31),
    .B(net63),
    .X(_043_));
 sky130_fd_sc_hd__nand2_1 _225_ (.A(_041_),
    .B(_043_),
    .Y(_044_));
 sky130_fd_sc_hd__a31o_1 _226_ (.A1(_030_),
    .A2(_035_),
    .A3(_039_),
    .B1(_037_),
    .X(_045_));
 sky130_fd_sc_hd__xor2_1 _227_ (.A(_044_),
    .B(_045_),
    .X(net97));
 sky130_fd_sc_hd__nand2_1 _228_ (.A(net32),
    .B(net64),
    .Y(_046_));
 sky130_fd_sc_hd__inv_2 _229_ (.A(_046_),
    .Y(_047_));
 sky130_fd_sc_hd__nor2_1 _230_ (.A(net32),
    .B(net64),
    .Y(_048_));
 sky130_fd_sc_hd__or2_1 _231_ (.A(_047_),
    .B(_048_),
    .X(_049_));
 sky130_fd_sc_hd__a311o_1 _232_ (.A1(_030_),
    .A2(_035_),
    .A3(_039_),
    .B1(_042_),
    .C1(_037_),
    .X(_050_));
 sky130_fd_sc_hd__nand2_1 _233_ (.A(_041_),
    .B(_050_),
    .Y(_051_));
 sky130_fd_sc_hd__xnor2_1 _234_ (.A(_049_),
    .B(_051_),
    .Y(net98));
 sky130_fd_sc_hd__nand2_1 _235_ (.A(net2),
    .B(net34),
    .Y(_052_));
 sky130_fd_sc_hd__nor2_1 _236_ (.A(net2),
    .B(net34),
    .Y(_053_));
 sky130_fd_sc_hd__or2_1 _237_ (.A(net2),
    .B(net34),
    .X(_054_));
 sky130_fd_sc_hd__nand2_1 _238_ (.A(_052_),
    .B(_054_),
    .Y(_055_));
 sky130_fd_sc_hd__a31o_1 _239_ (.A1(_041_),
    .A2(_046_),
    .A3(_050_),
    .B1(_048_),
    .X(_056_));
 sky130_fd_sc_hd__xor2_1 _240_ (.A(_055_),
    .B(_056_),
    .X(net68));
 sky130_fd_sc_hd__nand2_1 _241_ (.A(net3),
    .B(net35),
    .Y(_057_));
 sky130_fd_sc_hd__inv_2 _242_ (.A(_057_),
    .Y(_058_));
 sky130_fd_sc_hd__nor2_1 _243_ (.A(net3),
    .B(net35),
    .Y(_059_));
 sky130_fd_sc_hd__or2_1 _244_ (.A(_058_),
    .B(_059_),
    .X(_060_));
 sky130_fd_sc_hd__a311o_1 _245_ (.A1(_041_),
    .A2(_046_),
    .A3(_050_),
    .B1(_053_),
    .C1(_048_),
    .X(_061_));
 sky130_fd_sc_hd__nand2_1 _246_ (.A(_052_),
    .B(_061_),
    .Y(_062_));
 sky130_fd_sc_hd__xnor2_1 _247_ (.A(_060_),
    .B(_062_),
    .Y(net69));
 sky130_fd_sc_hd__nand2_1 _248_ (.A(net4),
    .B(net36),
    .Y(_063_));
 sky130_fd_sc_hd__nor2_1 _249_ (.A(net4),
    .B(net36),
    .Y(_064_));
 sky130_fd_sc_hd__or2_1 _250_ (.A(net4),
    .B(net36),
    .X(_065_));
 sky130_fd_sc_hd__nand2_1 _251_ (.A(_063_),
    .B(_065_),
    .Y(_066_));
 sky130_fd_sc_hd__a31o_1 _252_ (.A1(_052_),
    .A2(_057_),
    .A3(_061_),
    .B1(_059_),
    .X(_067_));
 sky130_fd_sc_hd__xor2_1 _253_ (.A(_066_),
    .B(_067_),
    .X(net70));
 sky130_fd_sc_hd__nand2_1 _254_ (.A(net5),
    .B(net37),
    .Y(_068_));
 sky130_fd_sc_hd__inv_2 _255_ (.A(_068_),
    .Y(_069_));
 sky130_fd_sc_hd__nor2_1 _256_ (.A(net5),
    .B(net37),
    .Y(_070_));
 sky130_fd_sc_hd__or2_1 _257_ (.A(_069_),
    .B(_070_),
    .X(_071_));
 sky130_fd_sc_hd__a311o_1 _258_ (.A1(_052_),
    .A2(_057_),
    .A3(_061_),
    .B1(_064_),
    .C1(_059_),
    .X(_072_));
 sky130_fd_sc_hd__nand2_1 _259_ (.A(_063_),
    .B(_072_),
    .Y(_073_));
 sky130_fd_sc_hd__xnor2_1 _260_ (.A(_071_),
    .B(_073_),
    .Y(net71));
 sky130_fd_sc_hd__nand2_1 _261_ (.A(net6),
    .B(net38),
    .Y(_074_));
 sky130_fd_sc_hd__nor2_1 _262_ (.A(net6),
    .B(net38),
    .Y(_075_));
 sky130_fd_sc_hd__or2_1 _263_ (.A(net6),
    .B(net38),
    .X(_076_));
 sky130_fd_sc_hd__nand2_1 _264_ (.A(_074_),
    .B(_076_),
    .Y(_077_));
 sky130_fd_sc_hd__a31o_1 _265_ (.A1(_063_),
    .A2(_068_),
    .A3(_072_),
    .B1(_070_),
    .X(_078_));
 sky130_fd_sc_hd__xor2_1 _266_ (.A(_077_),
    .B(_078_),
    .X(net72));
 sky130_fd_sc_hd__nand2_1 _267_ (.A(net7),
    .B(net39),
    .Y(_079_));
 sky130_fd_sc_hd__inv_2 _268_ (.A(_079_),
    .Y(_080_));
 sky130_fd_sc_hd__nor2_1 _269_ (.A(net7),
    .B(net39),
    .Y(_081_));
 sky130_fd_sc_hd__or2_1 _270_ (.A(_080_),
    .B(_081_),
    .X(_082_));
 sky130_fd_sc_hd__a311o_1 _271_ (.A1(_063_),
    .A2(_068_),
    .A3(_072_),
    .B1(_075_),
    .C1(_070_),
    .X(_083_));
 sky130_fd_sc_hd__nand2_1 _272_ (.A(_074_),
    .B(_083_),
    .Y(_084_));
 sky130_fd_sc_hd__xnor2_1 _273_ (.A(_082_),
    .B(_084_),
    .Y(net73));
 sky130_fd_sc_hd__nand2_1 _274_ (.A(net8),
    .B(net40),
    .Y(_085_));
 sky130_fd_sc_hd__nor2_1 _275_ (.A(net8),
    .B(net40),
    .Y(_086_));
 sky130_fd_sc_hd__or2_1 _276_ (.A(net8),
    .B(net40),
    .X(_087_));
 sky130_fd_sc_hd__nand2_1 _277_ (.A(_085_),
    .B(_087_),
    .Y(_088_));
 sky130_fd_sc_hd__a31o_1 _278_ (.A1(_074_),
    .A2(_079_),
    .A3(_083_),
    .B1(_081_),
    .X(_089_));
 sky130_fd_sc_hd__xor2_1 _279_ (.A(_088_),
    .B(_089_),
    .X(net74));
 sky130_fd_sc_hd__nand2_1 _280_ (.A(net9),
    .B(net41),
    .Y(_090_));
 sky130_fd_sc_hd__nor2_1 _281_ (.A(net9),
    .B(net41),
    .Y(_091_));
 sky130_fd_sc_hd__or2_1 _282_ (.A(net9),
    .B(net41),
    .X(_092_));
 sky130_fd_sc_hd__a311o_1 _283_ (.A1(_074_),
    .A2(_079_),
    .A3(_083_),
    .B1(_086_),
    .C1(_081_),
    .X(_093_));
 sky130_fd_sc_hd__a22oi_1 _284_ (.A1(_090_),
    .A2(_092_),
    .B1(_093_),
    .B2(_085_),
    .Y(_094_));
 sky130_fd_sc_hd__and4_1 _285_ (.A(_085_),
    .B(_090_),
    .C(_092_),
    .D(_093_),
    .X(_095_));
 sky130_fd_sc_hd__or2_1 _286_ (.A(_094_),
    .B(_095_),
    .X(net75));
 sky130_fd_sc_hd__nand2_1 _287_ (.A(net10),
    .B(net42),
    .Y(_096_));
 sky130_fd_sc_hd__nor2_1 _288_ (.A(net10),
    .B(net42),
    .Y(_097_));
 sky130_fd_sc_hd__or2_1 _289_ (.A(net10),
    .B(net42),
    .X(_098_));
 sky130_fd_sc_hd__nand2_1 _290_ (.A(_096_),
    .B(_098_),
    .Y(_099_));
 sky130_fd_sc_hd__a31o_1 _291_ (.A1(_085_),
    .A2(_090_),
    .A3(_093_),
    .B1(_091_),
    .X(_100_));
 sky130_fd_sc_hd__xor2_1 _292_ (.A(_099_),
    .B(_100_),
    .X(net76));
 sky130_fd_sc_hd__nand2_1 _293_ (.A(net11),
    .B(net43),
    .Y(_101_));
 sky130_fd_sc_hd__nor2_1 _294_ (.A(net11),
    .B(net43),
    .Y(_102_));
 sky130_fd_sc_hd__or2_1 _295_ (.A(net11),
    .B(net43),
    .X(_103_));
 sky130_fd_sc_hd__nand2_1 _296_ (.A(_101_),
    .B(_103_),
    .Y(_104_));
 sky130_fd_sc_hd__a311o_1 _297_ (.A1(_085_),
    .A2(_090_),
    .A3(_093_),
    .B1(_097_),
    .C1(_091_),
    .X(_105_));
 sky130_fd_sc_hd__nand2_1 _298_ (.A(_096_),
    .B(_105_),
    .Y(_106_));
 sky130_fd_sc_hd__xnor2_1 _299_ (.A(_104_),
    .B(_106_),
    .Y(net77));
 sky130_fd_sc_hd__nand2_1 _300_ (.A(net13),
    .B(net45),
    .Y(_107_));
 sky130_fd_sc_hd__inv_2 _301_ (.A(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__nor2_1 _302_ (.A(net13),
    .B(net45),
    .Y(_109_));
 sky130_fd_sc_hd__nor2_1 _303_ (.A(_108_),
    .B(_109_),
    .Y(_110_));
 sky130_fd_sc_hd__a31o_1 _304_ (.A1(_096_),
    .A2(_101_),
    .A3(_105_),
    .B1(_102_),
    .X(_111_));
 sky130_fd_sc_hd__xnor2_1 _305_ (.A(_110_),
    .B(_111_),
    .Y(net79));
 sky130_fd_sc_hd__nand2_1 _306_ (.A(net14),
    .B(net46),
    .Y(_112_));
 sky130_fd_sc_hd__nor2_1 _307_ (.A(net14),
    .B(net46),
    .Y(_113_));
 sky130_fd_sc_hd__or2_1 _308_ (.A(net14),
    .B(net46),
    .X(_114_));
 sky130_fd_sc_hd__nand2_1 _309_ (.A(_112_),
    .B(_114_),
    .Y(_115_));
 sky130_fd_sc_hd__a311o_1 _310_ (.A1(_096_),
    .A2(_101_),
    .A3(_105_),
    .B1(_109_),
    .C1(_102_),
    .X(_116_));
 sky130_fd_sc_hd__nand2_1 _311_ (.A(_107_),
    .B(_116_),
    .Y(_117_));
 sky130_fd_sc_hd__xnor2_1 _312_ (.A(_115_),
    .B(_117_),
    .Y(net80));
 sky130_fd_sc_hd__nand2_1 _313_ (.A(net15),
    .B(net47),
    .Y(_118_));
 sky130_fd_sc_hd__inv_2 _314_ (.A(_118_),
    .Y(_119_));
 sky130_fd_sc_hd__nor2_1 _315_ (.A(net15),
    .B(net47),
    .Y(_120_));
 sky130_fd_sc_hd__nor2_1 _316_ (.A(_119_),
    .B(_120_),
    .Y(_121_));
 sky130_fd_sc_hd__a31o_1 _317_ (.A1(_107_),
    .A2(_112_),
    .A3(_116_),
    .B1(_113_),
    .X(_122_));
 sky130_fd_sc_hd__xnor2_1 _318_ (.A(_121_),
    .B(_122_),
    .Y(net81));
 sky130_fd_sc_hd__nand2_1 _319_ (.A(net16),
    .B(net48),
    .Y(_123_));
 sky130_fd_sc_hd__nor2_1 _320_ (.A(net16),
    .B(net48),
    .Y(_124_));
 sky130_fd_sc_hd__or2_1 _321_ (.A(net16),
    .B(net48),
    .X(_125_));
 sky130_fd_sc_hd__nand2_1 _322_ (.A(_123_),
    .B(_125_),
    .Y(_126_));
 sky130_fd_sc_hd__a311o_1 _323_ (.A1(_107_),
    .A2(_112_),
    .A3(_116_),
    .B1(_120_),
    .C1(_113_),
    .X(_127_));
 sky130_fd_sc_hd__nand2_1 _324_ (.A(_118_),
    .B(_127_),
    .Y(_128_));
 sky130_fd_sc_hd__xnor2_1 _325_ (.A(_126_),
    .B(_128_),
    .Y(net82));
 sky130_fd_sc_hd__nand2_1 _326_ (.A(net17),
    .B(net49),
    .Y(_129_));
 sky130_fd_sc_hd__inv_2 _327_ (.A(_129_),
    .Y(_130_));
 sky130_fd_sc_hd__nor2_1 _328_ (.A(net17),
    .B(net49),
    .Y(_131_));
 sky130_fd_sc_hd__nor2_1 _329_ (.A(_130_),
    .B(_131_),
    .Y(_132_));
 sky130_fd_sc_hd__a31o_1 _330_ (.A1(_118_),
    .A2(_123_),
    .A3(_127_),
    .B1(_124_),
    .X(_133_));
 sky130_fd_sc_hd__xnor2_1 _331_ (.A(_132_),
    .B(_133_),
    .Y(net83));
 sky130_fd_sc_hd__nand2_1 _332_ (.A(net18),
    .B(net50),
    .Y(_134_));
 sky130_fd_sc_hd__nor2_1 _333_ (.A(net18),
    .B(net50),
    .Y(_135_));
 sky130_fd_sc_hd__or2_1 _334_ (.A(net18),
    .B(net50),
    .X(_136_));
 sky130_fd_sc_hd__nand2_1 _335_ (.A(_134_),
    .B(_136_),
    .Y(_137_));
 sky130_fd_sc_hd__a311o_1 _336_ (.A1(_118_),
    .A2(_123_),
    .A3(_127_),
    .B1(_131_),
    .C1(_124_),
    .X(_138_));
 sky130_fd_sc_hd__nand2_1 _337_ (.A(_129_),
    .B(_138_),
    .Y(_139_));
 sky130_fd_sc_hd__xnor2_1 _338_ (.A(_137_),
    .B(_139_),
    .Y(net84));
 sky130_fd_sc_hd__nand2_1 _339_ (.A(net19),
    .B(net51),
    .Y(_140_));
 sky130_fd_sc_hd__nor2_1 _340_ (.A(net19),
    .B(net51),
    .Y(_141_));
 sky130_fd_sc_hd__or2_1 _341_ (.A(net19),
    .B(net51),
    .X(_142_));
 sky130_fd_sc_hd__nand2_1 _342_ (.A(_140_),
    .B(_142_),
    .Y(_143_));
 sky130_fd_sc_hd__a31o_1 _343_ (.A1(_129_),
    .A2(_134_),
    .A3(_138_),
    .B1(_135_),
    .X(_144_));
 sky130_fd_sc_hd__xor2_1 _344_ (.A(_143_),
    .B(_144_),
    .X(net85));
 sky130_fd_sc_hd__nand2_1 _345_ (.A(net20),
    .B(net52),
    .Y(_145_));
 sky130_fd_sc_hd__nor2_1 _346_ (.A(net20),
    .B(net52),
    .Y(_146_));
 sky130_fd_sc_hd__or2_1 _347_ (.A(net20),
    .B(net52),
    .X(_147_));
 sky130_fd_sc_hd__nand2_1 _348_ (.A(_145_),
    .B(_147_),
    .Y(_148_));
 sky130_fd_sc_hd__a311o_1 _349_ (.A1(_129_),
    .A2(_134_),
    .A3(_138_),
    .B1(_141_),
    .C1(_135_),
    .X(_149_));
 sky130_fd_sc_hd__nand2_1 _350_ (.A(_140_),
    .B(_149_),
    .Y(_150_));
 sky130_fd_sc_hd__xnor2_1 _351_ (.A(_148_),
    .B(_150_),
    .Y(net86));
 sky130_fd_sc_hd__nand2_1 _352_ (.A(net21),
    .B(net53),
    .Y(_151_));
 sky130_fd_sc_hd__inv_2 _353_ (.A(_151_),
    .Y(_152_));
 sky130_fd_sc_hd__nor2_1 _354_ (.A(net21),
    .B(net53),
    .Y(_153_));
 sky130_fd_sc_hd__nor2_1 _355_ (.A(_152_),
    .B(_153_),
    .Y(_154_));
 sky130_fd_sc_hd__a31o_1 _356_ (.A1(_140_),
    .A2(_145_),
    .A3(_149_),
    .B1(_146_),
    .X(_155_));
 sky130_fd_sc_hd__xnor2_1 _357_ (.A(_154_),
    .B(_155_),
    .Y(net87));
 sky130_fd_sc_hd__nand2_1 _358_ (.A(net22),
    .B(net54),
    .Y(_156_));
 sky130_fd_sc_hd__nor2_1 _359_ (.A(net22),
    .B(net54),
    .Y(_157_));
 sky130_fd_sc_hd__or2_1 _360_ (.A(net22),
    .B(net54),
    .X(_158_));
 sky130_fd_sc_hd__nand2_1 _361_ (.A(_156_),
    .B(_158_),
    .Y(_159_));
 sky130_fd_sc_hd__a21oi_1 _362_ (.A1(_151_),
    .A2(_155_),
    .B1(_153_),
    .Y(_160_));
 sky130_fd_sc_hd__xnor2_1 _363_ (.A(_159_),
    .B(_160_),
    .Y(net88));
 sky130_fd_sc_hd__nand2_1 _364_ (.A(net24),
    .B(net56),
    .Y(_161_));
 sky130_fd_sc_hd__nor2_1 _365_ (.A(net24),
    .B(net56),
    .Y(_162_));
 sky130_fd_sc_hd__or2_1 _366_ (.A(net24),
    .B(net56),
    .X(_163_));
 sky130_fd_sc_hd__nand2_1 _367_ (.A(_161_),
    .B(_163_),
    .Y(_164_));
 sky130_fd_sc_hd__a211o_1 _368_ (.A1(_151_),
    .A2(_155_),
    .B1(_157_),
    .C1(_153_),
    .X(_165_));
 sky130_fd_sc_hd__nand2_1 _369_ (.A(_156_),
    .B(_165_),
    .Y(_166_));
 sky130_fd_sc_hd__xnor2_1 _370_ (.A(_164_),
    .B(_166_),
    .Y(net90));
 sky130_fd_sc_hd__and2_1 _371_ (.A(net25),
    .B(net57),
    .X(_167_));
 sky130_fd_sc_hd__or2_1 _372_ (.A(net25),
    .B(net57),
    .X(_168_));
 sky130_fd_sc_hd__nand2b_1 _373_ (.A_N(_167_),
    .B(_168_),
    .Y(_169_));
 sky130_fd_sc_hd__a31oi_2 _374_ (.A1(_156_),
    .A2(_161_),
    .A3(_165_),
    .B1(_162_),
    .Y(_170_));
 sky130_fd_sc_hd__xnor2_1 _375_ (.A(_169_),
    .B(_170_),
    .Y(net91));
 sky130_fd_sc_hd__o21a_1 _376_ (.A1(_167_),
    .A2(_170_),
    .B1(_168_),
    .X(net66));
 sky130_fd_sc_hd__buf_1 input1 (.A(a[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(a[10]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(a[11]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(a[12]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(a[13]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(a[14]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(a[15]),
    .X(net7));
 sky130_fd_sc_hd__buf_1 input8 (.A(a[16]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(a[17]),
    .X(net9));
 sky130_fd_sc_hd__buf_1 input10 (.A(a[18]),
    .X(net10));
 sky130_fd_sc_hd__buf_1 input11 (.A(a[19]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(a[1]),
    .X(net12));
 sky130_fd_sc_hd__buf_1 input13 (.A(a[20]),
    .X(net13));
 sky130_fd_sc_hd__buf_1 input14 (.A(a[21]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(a[22]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(a[23]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 input17 (.A(a[24]),
    .X(net17));
 sky130_fd_sc_hd__buf_1 input18 (.A(a[25]),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_1 input19 (.A(a[26]),
    .X(net19));
 sky130_fd_sc_hd__buf_1 input20 (.A(a[27]),
    .X(net20));
 sky130_fd_sc_hd__clkbuf_1 input21 (.A(a[28]),
    .X(net21));
 sky130_fd_sc_hd__buf_1 input22 (.A(a[29]),
    .X(net22));
 sky130_fd_sc_hd__clkbuf_1 input23 (.A(a[2]),
    .X(net23));
 sky130_fd_sc_hd__buf_1 input24 (.A(a[30]),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_1 input25 (.A(a[31]),
    .X(net25));
 sky130_fd_sc_hd__buf_1 input26 (.A(a[3]),
    .X(net26));
 sky130_fd_sc_hd__buf_1 input27 (.A(a[4]),
    .X(net27));
 sky130_fd_sc_hd__clkbuf_1 input28 (.A(a[5]),
    .X(net28));
 sky130_fd_sc_hd__buf_1 input29 (.A(a[6]),
    .X(net29));
 sky130_fd_sc_hd__clkbuf_1 input30 (.A(a[7]),
    .X(net30));
 sky130_fd_sc_hd__buf_1 input31 (.A(a[8]),
    .X(net31));
 sky130_fd_sc_hd__clkbuf_1 input32 (.A(a[9]),
    .X(net32));
 sky130_fd_sc_hd__buf_1 input33 (.A(b[0]),
    .X(net33));
 sky130_fd_sc_hd__buf_1 input34 (.A(b[10]),
    .X(net34));
 sky130_fd_sc_hd__clkbuf_1 input35 (.A(b[11]),
    .X(net35));
 sky130_fd_sc_hd__buf_1 input36 (.A(b[12]),
    .X(net36));
 sky130_fd_sc_hd__clkbuf_1 input37 (.A(b[13]),
    .X(net37));
 sky130_fd_sc_hd__buf_1 input38 (.A(b[14]),
    .X(net38));
 sky130_fd_sc_hd__clkbuf_1 input39 (.A(b[15]),
    .X(net39));
 sky130_fd_sc_hd__buf_1 input40 (.A(b[16]),
    .X(net40));
 sky130_fd_sc_hd__buf_1 input41 (.A(b[17]),
    .X(net41));
 sky130_fd_sc_hd__buf_1 input42 (.A(b[18]),
    .X(net42));
 sky130_fd_sc_hd__buf_1 input43 (.A(b[19]),
    .X(net43));
 sky130_fd_sc_hd__clkbuf_1 input44 (.A(b[1]),
    .X(net44));
 sky130_fd_sc_hd__clkbuf_1 input45 (.A(b[20]),
    .X(net45));
 sky130_fd_sc_hd__buf_1 input46 (.A(b[21]),
    .X(net46));
 sky130_fd_sc_hd__clkbuf_1 input47 (.A(b[22]),
    .X(net47));
 sky130_fd_sc_hd__buf_1 input48 (.A(b[23]),
    .X(net48));
 sky130_fd_sc_hd__clkbuf_1 input49 (.A(b[24]),
    .X(net49));
 sky130_fd_sc_hd__buf_1 input50 (.A(b[25]),
    .X(net50));
 sky130_fd_sc_hd__buf_1 input51 (.A(b[26]),
    .X(net51));
 sky130_fd_sc_hd__buf_1 input52 (.A(b[27]),
    .X(net52));
 sky130_fd_sc_hd__clkbuf_1 input53 (.A(b[28]),
    .X(net53));
 sky130_fd_sc_hd__buf_1 input54 (.A(b[29]),
    .X(net54));
 sky130_fd_sc_hd__clkbuf_1 input55 (.A(b[2]),
    .X(net55));
 sky130_fd_sc_hd__buf_1 input56 (.A(b[30]),
    .X(net56));
 sky130_fd_sc_hd__clkbuf_1 input57 (.A(b[31]),
    .X(net57));
 sky130_fd_sc_hd__buf_1 input58 (.A(b[3]),
    .X(net58));
 sky130_fd_sc_hd__buf_1 input59 (.A(b[4]),
    .X(net59));
 sky130_fd_sc_hd__clkbuf_1 input60 (.A(b[5]),
    .X(net60));
 sky130_fd_sc_hd__buf_1 input61 (.A(b[6]),
    .X(net61));
 sky130_fd_sc_hd__clkbuf_1 input62 (.A(b[7]),
    .X(net62));
 sky130_fd_sc_hd__buf_1 input63 (.A(b[8]),
    .X(net63));
 sky130_fd_sc_hd__clkbuf_1 input64 (.A(b[9]),
    .X(net64));
 sky130_fd_sc_hd__buf_1 input65 (.A(cin),
    .X(net65));
 sky130_fd_sc_hd__buf_2 output66 (.A(net66),
    .X(cout));
 sky130_fd_sc_hd__buf_2 output67 (.A(net67),
    .X(sum[0]));
 sky130_fd_sc_hd__buf_2 output68 (.A(net68),
    .X(sum[10]));
 sky130_fd_sc_hd__buf_2 output69 (.A(net69),
    .X(sum[11]));
 sky130_fd_sc_hd__buf_2 output70 (.A(net70),
    .X(sum[12]));
 sky130_fd_sc_hd__buf_2 output71 (.A(net71),
    .X(sum[13]));
 sky130_fd_sc_hd__buf_2 output72 (.A(net72),
    .X(sum[14]));
 sky130_fd_sc_hd__buf_2 output73 (.A(net73),
    .X(sum[15]));
 sky130_fd_sc_hd__buf_2 output74 (.A(net74),
    .X(sum[16]));
 sky130_fd_sc_hd__buf_2 output75 (.A(net75),
    .X(sum[17]));
 sky130_fd_sc_hd__buf_2 output76 (.A(net76),
    .X(sum[18]));
 sky130_fd_sc_hd__buf_2 output77 (.A(net77),
    .X(sum[19]));
 sky130_fd_sc_hd__buf_2 output78 (.A(net78),
    .X(sum[1]));
 sky130_fd_sc_hd__buf_2 output79 (.A(net79),
    .X(sum[20]));
 sky130_fd_sc_hd__buf_2 output80 (.A(net80),
    .X(sum[21]));
 sky130_fd_sc_hd__buf_2 output81 (.A(net81),
    .X(sum[22]));
 sky130_fd_sc_hd__buf_2 output82 (.A(net82),
    .X(sum[23]));
 sky130_fd_sc_hd__buf_2 output83 (.A(net83),
    .X(sum[24]));
 sky130_fd_sc_hd__buf_2 output84 (.A(net84),
    .X(sum[25]));
 sky130_fd_sc_hd__buf_2 output85 (.A(net85),
    .X(sum[26]));
 sky130_fd_sc_hd__buf_2 output86 (.A(net86),
    .X(sum[27]));
 sky130_fd_sc_hd__buf_2 output87 (.A(net87),
    .X(sum[28]));
 sky130_fd_sc_hd__buf_2 output88 (.A(net88),
    .X(sum[29]));
 sky130_fd_sc_hd__buf_2 output89 (.A(net89),
    .X(sum[2]));
 sky130_fd_sc_hd__buf_2 output90 (.A(net90),
    .X(sum[30]));
 sky130_fd_sc_hd__buf_2 output91 (.A(net91),
    .X(sum[31]));
 sky130_fd_sc_hd__buf_2 output92 (.A(net92),
    .X(sum[3]));
 sky130_fd_sc_hd__buf_2 output93 (.A(net93),
    .X(sum[4]));
 sky130_fd_sc_hd__buf_2 output94 (.A(net94),
    .X(sum[5]));
 sky130_fd_sc_hd__buf_2 output95 (.A(net95),
    .X(sum[6]));
 sky130_fd_sc_hd__buf_2 output96 (.A(net96),
    .X(sum[7]));
 sky130_fd_sc_hd__buf_2 output97 (.A(net97),
    .X(sum[8]));
 sky130_fd_sc_hd__buf_2 output98 (.A(net98),
    .X(sum[9]));
endmodule
