/* Generated by Yosys 0.7 (git sha1 61f6811, i686-w64-mingw32.static-gcc 4.9.3 -Os) */

module \$paramod\FA_nbit\n=1 (A, B, Cin, S, Cout);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  input A;
  input B;
  input Cin;
  output Cout;
  output S;
  NAND _20_ (
    .A(_13_),
    .B(_12_),
    .Y(_15_)
  );
  NOT _21_ (
    .A(_12_),
    .Y(_17_)
  );
  NOT _22_ (
    .A(_13_),
    .Y(_18_)
  );
  NOR _23_ (
    .A(_18_),
    .B(_17_),
    .Y(_19_)
  );
  NOR _24_ (
    .A(_13_),
    .B(_12_),
    .Y(_04_)
  );
  NOR _25_ (
    .A(_04_),
    .B(_19_),
    .Y(_05_)
  );
  NAND _26_ (
    .A(_05_),
    .B(_03_),
    .Y(_06_)
  );
  NAND _27_ (
    .A(_06_),
    .B(_15_),
    .Y(_14_)
  );
  NOT _28_ (
    .A(_03_),
    .Y(_07_)
  );
  NAND _29_ (
    .A(_18_),
    .B(_17_),
    .Y(_08_)
  );
  NAND _30_ (
    .A(_08_),
    .B(_15_),
    .Y(_09_)
  );
  NOR _31_ (
    .A(_09_),
    .B(_07_),
    .Y(_10_)
  );
  NOR _32_ (
    .A(_05_),
    .B(_03_),
    .Y(_11_)
  );
  NOR _33_ (
    .A(_11_),
    .B(_10_),
    .Y(_16_)
  );
  assign _03_ = B;
  assign _12_ = A;
  assign _13_ = Cin;
  assign Cout = _14_;
  assign S = _16_;
endmodule

module \$paramod\FA_nbit\n=2 (A, B, Cin, S, Cout);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  input [1:0] A;
  input [1:0] B;
  input Cin;
  output Cout;
  output [1:0] S;
  NOT _35_ (
    .A(_28_),
    .Y(_34_)
  );
  NAND _36_ (
    .A(_06_),
    .B(_05_),
    .Y(_08_)
  );
  NOT _37_ (
    .A(_05_),
    .Y(_09_)
  );
  NOT _38_ (
    .A(_06_),
    .Y(_11_)
  );
  NAND _39_ (
    .A(_11_),
    .B(_09_),
    .Y(_12_)
  );
  NAND _40_ (
    .A(_12_),
    .B(_08_),
    .Y(_13_)
  );
  NOR _41_ (
    .A(_13_),
    .B(_34_),
    .Y(_14_)
  );
  NOR _42_ (
    .A(_11_),
    .B(_09_),
    .Y(_15_)
  );
  NOR _43_ (
    .A(_06_),
    .B(_05_),
    .Y(_16_)
  );
  NOR _44_ (
    .A(_16_),
    .B(_15_),
    .Y(_17_)
  );
  NOR _45_ (
    .A(_17_),
    .B(_28_),
    .Y(_18_)
  );
  NOR _46_ (
    .A(_18_),
    .B(_14_),
    .Y(_31_)
  );
  NOR _47_ (
    .A(_14_),
    .B(_15_),
    .Y(_19_)
  );
  NOR _48_ (
    .A(_33_),
    .B(_32_),
    .Y(_20_)
  );
  NAND _49_ (
    .A(_33_),
    .B(_32_),
    .Y(_21_)
  );
  NOT _50_ (
    .A(_21_),
    .Y(_22_)
  );
  NOR _51_ (
    .A(_22_),
    .B(_20_),
    .Y(_23_)
  );
  NOT _52_ (
    .A(_23_),
    .Y(_24_)
  );
  NOR _53_ (
    .A(_24_),
    .B(_19_),
    .Y(_25_)
  );
  NAND _54_ (
    .A(_17_),
    .B(_28_),
    .Y(_26_)
  );
  NAND _55_ (
    .A(_26_),
    .B(_08_),
    .Y(_27_)
  );
  NOR _56_ (
    .A(_23_),
    .B(_27_),
    .Y(_29_)
  );
  NOR _57_ (
    .A(_29_),
    .B(_25_),
    .Y(_07_)
  );
  NAND _58_ (
    .A(_23_),
    .B(_27_),
    .Y(_30_)
  );
  NAND _59_ (
    .A(_30_),
    .B(_21_),
    .Y(_10_)
  );
  assign _05_ = B[0];
  assign _06_ = A[0];
  assign _28_ = Cin;
  assign S[0] = _31_;
  assign _32_ = B[1];
  assign _33_ = A[1];
  assign S[1] = _07_;
  assign Cout = _10_;
endmodule

module \$paramod\FA_nbit\n=3 (A, B, Cin, S, Cout);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  wire _39_;
  wire _40_;
  wire _41_;
  wire _42_;
  wire _43_;
  wire _44_;
  wire _45_;
  wire _46_;
  wire _47_;
  wire _48_;
  wire _49_;
  wire _50_;
  wire _51_;
  wire _52_;
  wire _53_;
  input [2:0] A;
  input [2:0] B;
  input Cin;
  output Cout;
  output [2:0] S;
  NOT _54_ (
    .A(_33_),
    .Y(_13_)
  );
  NOT _55_ (
    .A(_09_),
    .Y(_15_)
  );
  NOT _56_ (
    .A(_10_),
    .Y(_16_)
  );
  NAND _57_ (
    .A(_16_),
    .B(_15_),
    .Y(_17_)
  );
  NAND _58_ (
    .A(_10_),
    .B(_09_),
    .Y(_18_)
  );
  NAND _59_ (
    .A(_18_),
    .B(_17_),
    .Y(_20_)
  );
  NOR _60_ (
    .A(_20_),
    .B(_13_),
    .Y(_21_)
  );
  NOR _61_ (
    .A(_10_),
    .B(_09_),
    .Y(_23_)
  );
  NOR _62_ (
    .A(_16_),
    .B(_15_),
    .Y(_24_)
  );
  NOR _63_ (
    .A(_24_),
    .B(_23_),
    .Y(_25_)
  );
  NOR _64_ (
    .A(_25_),
    .B(_33_),
    .Y(_26_)
  );
  NOR _65_ (
    .A(_26_),
    .B(_21_),
    .Y(_43_)
  );
  NOR _66_ (
    .A(_21_),
    .B(_24_),
    .Y(_27_)
  );
  NOT _67_ (
    .A(_52_),
    .Y(_28_)
  );
  NOT _68_ (
    .A(_53_),
    .Y(_29_)
  );
  NOR _69_ (
    .A(_29_),
    .B(_28_),
    .Y(_30_)
  );
  NOR _70_ (
    .A(_53_),
    .B(_52_),
    .Y(_31_)
  );
  NOR _71_ (
    .A(_31_),
    .B(_30_),
    .Y(_32_)
  );
  NOT _72_ (
    .A(_32_),
    .Y(_34_)
  );
  NOR _73_ (
    .A(_34_),
    .B(_27_),
    .Y(_35_)
  );
  NAND _74_ (
    .A(_25_),
    .B(_33_),
    .Y(_36_)
  );
  NAND _75_ (
    .A(_36_),
    .B(_18_),
    .Y(_37_)
  );
  NOR _76_ (
    .A(_32_),
    .B(_37_),
    .Y(_38_)
  );
  NOR _77_ (
    .A(_38_),
    .B(_35_),
    .Y(_11_)
  );
  NOR _78_ (
    .A(_35_),
    .B(_30_),
    .Y(_39_)
  );
  NOR _79_ (
    .A(_14_),
    .B(_12_),
    .Y(_40_)
  );
  NAND _80_ (
    .A(_14_),
    .B(_12_),
    .Y(_41_)
  );
  NOT _81_ (
    .A(_41_),
    .Y(_42_)
  );
  NOR _82_ (
    .A(_42_),
    .B(_40_),
    .Y(_44_)
  );
  NOT _83_ (
    .A(_44_),
    .Y(_45_)
  );
  NOR _84_ (
    .A(_45_),
    .B(_39_),
    .Y(_46_)
  );
  NOT _85_ (
    .A(_30_),
    .Y(_47_)
  );
  NAND _86_ (
    .A(_32_),
    .B(_37_),
    .Y(_48_)
  );
  NAND _87_ (
    .A(_48_),
    .B(_47_),
    .Y(_49_)
  );
  NOR _88_ (
    .A(_44_),
    .B(_49_),
    .Y(_50_)
  );
  NOR _89_ (
    .A(_50_),
    .B(_46_),
    .Y(_19_)
  );
  NAND _90_ (
    .A(_44_),
    .B(_49_),
    .Y(_51_)
  );
  NAND _91_ (
    .A(_51_),
    .B(_41_),
    .Y(_22_)
  );
  assign _09_ = B[0];
  assign _10_ = A[0];
  assign _33_ = Cin;
  assign S[0] = _43_;
  assign _52_ = B[1];
  assign _53_ = A[1];
  assign S[1] = _11_;
  assign _12_ = B[2];
  assign _14_ = A[2];
  assign S[2] = _19_;
  assign Cout = _22_;
endmodule

module \$paramod\FA_nbit\n=4 (A, B, Cin, S, Cout);
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
  input [3:0] A;
  input [3:0] B;
  input Cin;
  output Cout;
  output [3:0] S;
  NOT _073_ (
    .A(_039_),
    .Y(_020_)
  );
  NAND _074_ (
    .A(_016_),
    .B(_015_),
    .Y(_022_)
  );
  NOT _075_ (
    .A(_015_),
    .Y(_024_)
  );
  NOT _076_ (
    .A(_016_),
    .Y(_026_)
  );
  NAND _077_ (
    .A(_026_),
    .B(_024_),
    .Y(_027_)
  );
  NAND _078_ (
    .A(_027_),
    .B(_022_),
    .Y(_028_)
  );
  NOR _079_ (
    .A(_028_),
    .B(_020_),
    .Y(_029_)
  );
  NOR _080_ (
    .A(_026_),
    .B(_024_),
    .Y(_031_)
  );
  NOR _081_ (
    .A(_016_),
    .B(_015_),
    .Y(_032_)
  );
  NOR _082_ (
    .A(_032_),
    .B(_031_),
    .Y(_033_)
  );
  NOR _083_ (
    .A(_033_),
    .B(_039_),
    .Y(_034_)
  );
  NOR _084_ (
    .A(_034_),
    .B(_029_),
    .Y(_049_)
  );
  NOR _085_ (
    .A(_029_),
    .B(_031_),
    .Y(_035_)
  );
  NOR _086_ (
    .A(_070_),
    .B(_059_),
    .Y(_037_)
  );
  NAND _087_ (
    .A(_070_),
    .B(_059_),
    .Y(_038_)
  );
  NOT _088_ (
    .A(_038_),
    .Y(_040_)
  );
  NOR _089_ (
    .A(_040_),
    .B(_037_),
    .Y(_041_)
  );
  NOT _090_ (
    .A(_041_),
    .Y(_042_)
  );
  NOR _091_ (
    .A(_042_),
    .B(_035_),
    .Y(_043_)
  );
  NAND _092_ (
    .A(_033_),
    .B(_039_),
    .Y(_044_)
  );
  NAND _093_ (
    .A(_044_),
    .B(_022_),
    .Y(_045_)
  );
  NOR _094_ (
    .A(_041_),
    .B(_045_),
    .Y(_046_)
  );
  NOR _095_ (
    .A(_046_),
    .B(_043_),
    .Y(_017_)
  );
  NOR _096_ (
    .A(_043_),
    .B(_040_),
    .Y(_047_)
  );
  NAND _097_ (
    .A(_019_),
    .B(_018_),
    .Y(_048_)
  );
  NOT _098_ (
    .A(_048_),
    .Y(_050_)
  );
  NOR _099_ (
    .A(_019_),
    .B(_018_),
    .Y(_051_)
  );
  NOR _100_ (
    .A(_051_),
    .B(_050_),
    .Y(_052_)
  );
  NOT _101_ (
    .A(_052_),
    .Y(_053_)
  );
  NOR _102_ (
    .A(_053_),
    .B(_047_),
    .Y(_054_)
  );
  NAND _103_ (
    .A(_041_),
    .B(_045_),
    .Y(_055_)
  );
  NAND _104_ (
    .A(_055_),
    .B(_038_),
    .Y(_056_)
  );
  NOR _105_ (
    .A(_052_),
    .B(_056_),
    .Y(_057_)
  );
  NOR _106_ (
    .A(_057_),
    .B(_054_),
    .Y(_021_)
  );
  NOR _107_ (
    .A(_054_),
    .B(_050_),
    .Y(_058_)
  );
  NOT _108_ (
    .A(_023_),
    .Y(_060_)
  );
  NOT _109_ (
    .A(_025_),
    .Y(_061_)
  );
  NOR _110_ (
    .A(_061_),
    .B(_060_),
    .Y(_062_)
  );
  NOR _111_ (
    .A(_025_),
    .B(_023_),
    .Y(_063_)
  );
  NOR _112_ (
    .A(_063_),
    .B(_062_),
    .Y(_064_)
  );
  NOT _113_ (
    .A(_064_),
    .Y(_065_)
  );
  NOR _114_ (
    .A(_065_),
    .B(_058_),
    .Y(_066_)
  );
  NAND _115_ (
    .A(_052_),
    .B(_056_),
    .Y(_067_)
  );
  NAND _116_ (
    .A(_067_),
    .B(_048_),
    .Y(_068_)
  );
  NOR _117_ (
    .A(_064_),
    .B(_068_),
    .Y(_069_)
  );
  NOR _118_ (
    .A(_069_),
    .B(_066_),
    .Y(_030_)
  );
  NOT _119_ (
    .A(_062_),
    .Y(_071_)
  );
  NAND _120_ (
    .A(_064_),
    .B(_068_),
    .Y(_072_)
  );
  NAND _121_ (
    .A(_072_),
    .B(_071_),
    .Y(_036_)
  );
  assign _015_ = B[0];
  assign _016_ = A[0];
  assign _039_ = Cin;
  assign S[0] = _049_;
  assign _059_ = B[1];
  assign _070_ = A[1];
  assign S[1] = _017_;
  assign _018_ = B[2];
  assign _019_ = A[2];
  assign S[2] = _021_;
  assign _023_ = B[3];
  assign _025_ = A[3];
  assign S[3] = _030_;
  assign Cout = _036_;
endmodule

module \$paramod\FA_nbit\n=5 (A, B, Cin, S, Cout);
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
  input [4:0] A;
  input [4:0] B;
  input Cin;
  output Cout;
  output [4:0] S;
  NOT _088_ (
    .A(_040_),
    .Y(_026_)
  );
  NAND _089_ (
    .A(_019_),
    .B(_018_),
    .Y(_027_)
  );
  NOT _090_ (
    .A(_018_),
    .Y(_028_)
  );
  NOT _091_ (
    .A(_019_),
    .Y(_029_)
  );
  NAND _092_ (
    .A(_029_),
    .B(_028_),
    .Y(_030_)
  );
  NAND _093_ (
    .A(_030_),
    .B(_027_),
    .Y(_031_)
  );
  NOR _094_ (
    .A(_031_),
    .B(_026_),
    .Y(_033_)
  );
  NOR _095_ (
    .A(_029_),
    .B(_028_),
    .Y(_035_)
  );
  NOR _096_ (
    .A(_019_),
    .B(_018_),
    .Y(_037_)
  );
  NOR _097_ (
    .A(_037_),
    .B(_035_),
    .Y(_038_)
  );
  NOR _098_ (
    .A(_038_),
    .B(_040_),
    .Y(_039_)
  );
  NOR _099_ (
    .A(_039_),
    .B(_033_),
    .Y(_053_)
  );
  NOR _100_ (
    .A(_033_),
    .B(_035_),
    .Y(_041_)
  );
  NOR _101_ (
    .A(_073_),
    .B(_063_),
    .Y(_042_)
  );
  NAND _102_ (
    .A(_073_),
    .B(_063_),
    .Y(_044_)
  );
  NOT _103_ (
    .A(_044_),
    .Y(_045_)
  );
  NOR _104_ (
    .A(_045_),
    .B(_042_),
    .Y(_047_)
  );
  NOT _105_ (
    .A(_047_),
    .Y(_048_)
  );
  NOR _106_ (
    .A(_048_),
    .B(_041_),
    .Y(_049_)
  );
  NAND _107_ (
    .A(_038_),
    .B(_040_),
    .Y(_050_)
  );
  NAND _108_ (
    .A(_050_),
    .B(_027_),
    .Y(_051_)
  );
  NOR _109_ (
    .A(_047_),
    .B(_051_),
    .Y(_052_)
  );
  NOR _110_ (
    .A(_052_),
    .B(_049_),
    .Y(_020_)
  );
  NOR _111_ (
    .A(_049_),
    .B(_045_),
    .Y(_054_)
  );
  NOR _112_ (
    .A(_022_),
    .B(_021_),
    .Y(_055_)
  );
  NAND _113_ (
    .A(_022_),
    .B(_021_),
    .Y(_056_)
  );
  NOT _114_ (
    .A(_056_),
    .Y(_057_)
  );
  NOR _115_ (
    .A(_057_),
    .B(_055_),
    .Y(_058_)
  );
  NOT _116_ (
    .A(_058_),
    .Y(_059_)
  );
  NOR _117_ (
    .A(_059_),
    .B(_054_),
    .Y(_060_)
  );
  NAND _118_ (
    .A(_047_),
    .B(_051_),
    .Y(_061_)
  );
  NAND _119_ (
    .A(_061_),
    .B(_044_),
    .Y(_062_)
  );
  NOR _120_ (
    .A(_058_),
    .B(_062_),
    .Y(_064_)
  );
  NOR _121_ (
    .A(_064_),
    .B(_060_),
    .Y(_023_)
  );
  NOR _122_ (
    .A(_060_),
    .B(_057_),
    .Y(_065_)
  );
  NOR _123_ (
    .A(_025_),
    .B(_024_),
    .Y(_066_)
  );
  NAND _124_ (
    .A(_025_),
    .B(_024_),
    .Y(_067_)
  );
  NOT _125_ (
    .A(_067_),
    .Y(_068_)
  );
  NOR _126_ (
    .A(_068_),
    .B(_066_),
    .Y(_069_)
  );
  NAND _127_ (
    .A(_069_),
    .B(_065_),
    .Y(_070_)
  );
  NAND _128_ (
    .A(_058_),
    .B(_062_),
    .Y(_071_)
  );
  NAND _129_ (
    .A(_071_),
    .B(_056_),
    .Y(_072_)
  );
  NOT _130_ (
    .A(_069_),
    .Y(_074_)
  );
  NAND _131_ (
    .A(_074_),
    .B(_072_),
    .Y(_075_)
  );
  NAND _132_ (
    .A(_075_),
    .B(_070_),
    .Y(_032_)
  );
  NOR _133_ (
    .A(_036_),
    .B(_034_),
    .Y(_076_)
  );
  NAND _134_ (
    .A(_036_),
    .B(_034_),
    .Y(_077_)
  );
  NOT _135_ (
    .A(_077_),
    .Y(_078_)
  );
  NOR _136_ (
    .A(_078_),
    .B(_076_),
    .Y(_079_)
  );
  NOT _137_ (
    .A(_079_),
    .Y(_080_)
  );
  NOR _138_ (
    .A(_066_),
    .B(_065_),
    .Y(_081_)
  );
  NOR _139_ (
    .A(_081_),
    .B(_068_),
    .Y(_082_)
  );
  NOR _140_ (
    .A(_082_),
    .B(_080_),
    .Y(_083_)
  );
  NOR _141_ (
    .A(_068_),
    .B(_072_),
    .Y(_084_)
  );
  NOR _142_ (
    .A(_084_),
    .B(_066_),
    .Y(_085_)
  );
  NOR _143_ (
    .A(_085_),
    .B(_079_),
    .Y(_086_)
  );
  NOR _144_ (
    .A(_086_),
    .B(_083_),
    .Y(_043_)
  );
  NAND _145_ (
    .A(_085_),
    .B(_079_),
    .Y(_087_)
  );
  NAND _146_ (
    .A(_087_),
    .B(_077_),
    .Y(_046_)
  );
  assign _018_ = B[0];
  assign _019_ = A[0];
  assign _040_ = Cin;
  assign S[0] = _053_;
  assign _063_ = B[1];
  assign _073_ = A[1];
  assign S[1] = _020_;
  assign _021_ = B[2];
  assign _022_ = A[2];
  assign S[2] = _023_;
  assign _024_ = B[3];
  assign _025_ = A[3];
  assign S[3] = _032_;
  assign _034_ = B[4];
  assign _036_ = A[4];
  assign S[4] = _043_;
  assign Cout = _046_;
endmodule

module \$paramod\FA_nbit\n=6 (A, B, Cin, S, Cout);
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
  input [5:0] A;
  input [5:0] B;
  input Cin;
  output Cout;
  output [5:0] S;
  NOT _114_ (
    .A(_045_),
    .Y(_033_)
  );
  NOT _115_ (
    .A(_025_),
    .Y(_034_)
  );
  NOT _116_ (
    .A(_026_),
    .Y(_035_)
  );
  NAND _117_ (
    .A(_035_),
    .B(_034_),
    .Y(_037_)
  );
  NAND _118_ (
    .A(_026_),
    .B(_025_),
    .Y(_039_)
  );
  NAND _119_ (
    .A(_039_),
    .B(_037_),
    .Y(_041_)
  );
  NOR _120_ (
    .A(_041_),
    .B(_033_),
    .Y(_042_)
  );
  NOR _121_ (
    .A(_026_),
    .B(_025_),
    .Y(_043_)
  );
  NOR _122_ (
    .A(_035_),
    .B(_034_),
    .Y(_044_)
  );
  NOR _123_ (
    .A(_044_),
    .B(_043_),
    .Y(_046_)
  );
  NOR _124_ (
    .A(_046_),
    .B(_045_),
    .Y(_047_)
  );
  NOR _125_ (
    .A(_047_),
    .B(_042_),
    .Y(_059_)
  );
  NOR _126_ (
    .A(_042_),
    .B(_044_),
    .Y(_050_)
  );
  NOT _127_ (
    .A(_070_),
    .Y(_052_)
  );
  NOT _128_ (
    .A(_080_),
    .Y(_053_)
  );
  NOR _129_ (
    .A(_053_),
    .B(_052_),
    .Y(_054_)
  );
  NOR _130_ (
    .A(_080_),
    .B(_070_),
    .Y(_055_)
  );
  NOR _131_ (
    .A(_055_),
    .B(_054_),
    .Y(_057_)
  );
  NOT _132_ (
    .A(_057_),
    .Y(_058_)
  );
  NOR _133_ (
    .A(_058_),
    .B(_050_),
    .Y(_060_)
  );
  NAND _134_ (
    .A(_046_),
    .B(_045_),
    .Y(_061_)
  );
  NAND _135_ (
    .A(_061_),
    .B(_039_),
    .Y(_062_)
  );
  NOR _136_ (
    .A(_057_),
    .B(_062_),
    .Y(_063_)
  );
  NOR _137_ (
    .A(_063_),
    .B(_060_),
    .Y(_027_)
  );
  NOR _138_ (
    .A(_060_),
    .B(_054_),
    .Y(_065_)
  );
  NAND _139_ (
    .A(_029_),
    .B(_028_),
    .Y(_066_)
  );
  NOT _140_ (
    .A(_066_),
    .Y(_067_)
  );
  NOR _141_ (
    .A(_029_),
    .B(_028_),
    .Y(_068_)
  );
  NOR _142_ (
    .A(_068_),
    .B(_067_),
    .Y(_069_)
  );
  NOT _143_ (
    .A(_069_),
    .Y(_071_)
  );
  NOR _144_ (
    .A(_071_),
    .B(_065_),
    .Y(_072_)
  );
  NOT _145_ (
    .A(_054_),
    .Y(_073_)
  );
  NAND _146_ (
    .A(_057_),
    .B(_062_),
    .Y(_074_)
  );
  NAND _147_ (
    .A(_074_),
    .B(_073_),
    .Y(_075_)
  );
  NOR _148_ (
    .A(_069_),
    .B(_075_),
    .Y(_076_)
  );
  NOR _149_ (
    .A(_076_),
    .B(_072_),
    .Y(_030_)
  );
  NOR _150_ (
    .A(_072_),
    .B(_067_),
    .Y(_077_)
  );
  NOR _151_ (
    .A(_032_),
    .B(_031_),
    .Y(_078_)
  );
  NAND _152_ (
    .A(_032_),
    .B(_031_),
    .Y(_079_)
  );
  NOT _153_ (
    .A(_079_),
    .Y(_081_)
  );
  NOR _154_ (
    .A(_081_),
    .B(_078_),
    .Y(_082_)
  );
  NAND _155_ (
    .A(_082_),
    .B(_077_),
    .Y(_083_)
  );
  NAND _156_ (
    .A(_069_),
    .B(_075_),
    .Y(_084_)
  );
  NAND _157_ (
    .A(_084_),
    .B(_066_),
    .Y(_085_)
  );
  NOT _158_ (
    .A(_082_),
    .Y(_086_)
  );
  NAND _159_ (
    .A(_086_),
    .B(_085_),
    .Y(_087_)
  );
  NAND _160_ (
    .A(_087_),
    .B(_083_),
    .Y(_036_)
  );
  NOT _161_ (
    .A(_038_),
    .Y(_088_)
  );
  NOT _162_ (
    .A(_040_),
    .Y(_089_)
  );
  NOR _163_ (
    .A(_089_),
    .B(_088_),
    .Y(_090_)
  );
  NOR _164_ (
    .A(_040_),
    .B(_038_),
    .Y(_091_)
  );
  NOR _165_ (
    .A(_091_),
    .B(_090_),
    .Y(_092_)
  );
  NOT _166_ (
    .A(_092_),
    .Y(_093_)
  );
  NOR _167_ (
    .A(_078_),
    .B(_077_),
    .Y(_094_)
  );
  NOR _168_ (
    .A(_094_),
    .B(_081_),
    .Y(_095_)
  );
  NOR _169_ (
    .A(_095_),
    .B(_093_),
    .Y(_096_)
  );
  NOR _170_ (
    .A(_081_),
    .B(_085_),
    .Y(_097_)
  );
  NOR _171_ (
    .A(_097_),
    .B(_078_),
    .Y(_098_)
  );
  NOR _172_ (
    .A(_098_),
    .B(_092_),
    .Y(_099_)
  );
  NOR _173_ (
    .A(_099_),
    .B(_096_),
    .Y(_048_)
  );
  NOR _174_ (
    .A(_096_),
    .B(_090_),
    .Y(_100_)
  );
  NOT _175_ (
    .A(_049_),
    .Y(_101_)
  );
  NOT _176_ (
    .A(_051_),
    .Y(_102_)
  );
  NOR _177_ (
    .A(_102_),
    .B(_101_),
    .Y(_103_)
  );
  NOR _178_ (
    .A(_051_),
    .B(_049_),
    .Y(_104_)
  );
  NOR _179_ (
    .A(_104_),
    .B(_103_),
    .Y(_105_)
  );
  NOT _180_ (
    .A(_105_),
    .Y(_106_)
  );
  NOR _181_ (
    .A(_106_),
    .B(_100_),
    .Y(_107_)
  );
  NOT _182_ (
    .A(_090_),
    .Y(_108_)
  );
  NAND _183_ (
    .A(_098_),
    .B(_092_),
    .Y(_109_)
  );
  NAND _184_ (
    .A(_109_),
    .B(_108_),
    .Y(_110_)
  );
  NOR _185_ (
    .A(_105_),
    .B(_110_),
    .Y(_111_)
  );
  NOR _186_ (
    .A(_111_),
    .B(_107_),
    .Y(_056_)
  );
  NOT _187_ (
    .A(_103_),
    .Y(_112_)
  );
  NAND _188_ (
    .A(_105_),
    .B(_110_),
    .Y(_113_)
  );
  NAND _189_ (
    .A(_113_),
    .B(_112_),
    .Y(_064_)
  );
  assign _025_ = B[0];
  assign _026_ = A[0];
  assign _045_ = Cin;
  assign S[0] = _059_;
  assign _070_ = B[1];
  assign _080_ = A[1];
  assign S[1] = _027_;
  assign _028_ = B[2];
  assign _029_ = A[2];
  assign S[2] = _030_;
  assign _031_ = B[3];
  assign _032_ = A[3];
  assign S[3] = _036_;
  assign _038_ = B[4];
  assign _040_ = A[4];
  assign S[4] = _048_;
  assign _049_ = B[5];
  assign _051_ = A[5];
  assign S[5] = _056_;
  assign Cout = _064_;
endmodule

module ones_counter_127bit(A, N);
  input [126:0] A;
  output [6:0] N;
  wire [11:0] in_6bit;
  \$paramod\FA_nbit\n=6  fa (
    .A(in_6bit[5:0]),
    .B(in_6bit[11:6]),
    .Cin(A[126]),
    .Cout(N[6]),
    .S(N[5:0])
  );
  ones_counter_63bit \onecounters[0].counter  (
    .A(A[62:0]),
    .N(in_6bit[5:0])
  );
  ones_counter_63bit \onecounters[1].counter  (
    .A(A[125:63]),
    .N(in_6bit[11:6])
  );
endmodule

module ones_counter_15bit(A, N);
  input [14:0] A;
  output [3:0] N;
  wire [5:0] in_3bit;
  \$paramod\FA_nbit\n=3  fa (
    .A(in_3bit[2:0]),
    .B(in_3bit[5:3]),
    .Cin(A[14]),
    .Cout(N[3]),
    .S(N[2:0])
  );
  ones_counter_7bit \onecounters[0].counter  (
    .A(A[6:0]),
    .N(in_3bit[2:0])
  );
  ones_counter_7bit \onecounters[1].counter  (
    .A(A[13:7]),
    .N(in_3bit[5:3])
  );
endmodule

module ones_counter_31bit(A, N);
  input [30:0] A;
  output [4:0] N;
  wire [7:0] in_4bit;
  \$paramod\FA_nbit\n=4  fa (
    .A(in_4bit[3:0]),
    .B(in_4bit[7:4]),
    .Cin(A[30]),
    .Cout(N[4]),
    .S(N[3:0])
  );
  ones_counter_15bit \onecounters[0].counter  (
    .A(A[14:0]),
    .N(in_4bit[3:0])
  );
  ones_counter_15bit \onecounters[1].counter  (
    .A(A[29:15]),
    .N(in_4bit[7:4])
  );
endmodule

module ones_counter_63bit(A, N);
  input [62:0] A;
  output [5:0] N;
  wire [9:0] in_5bit;
  \$paramod\FA_nbit\n=5  fa (
    .A(in_5bit[4:0]),
    .B(in_5bit[9:5]),
    .Cin(A[62]),
    .Cout(N[5]),
    .S(N[4:0])
  );
  ones_counter_31bit \onecounters[0].counter  (
    .A(A[30:0]),
    .N(in_5bit[4:0])
  );
  ones_counter_31bit \onecounters[1].counter  (
    .A(A[61:31]),
    .N(in_5bit[9:5])
  );
endmodule

module ones_counter_7bit(A, N);
  input [6:0] A;
  output [2:0] N;
  wire [3:0] in_2bit;
  \$paramod\FA_nbit\n=1  \FAs[0].fa  (
    .A(A[0]),
    .B(A[1]),
    .Cin(A[2]),
    .Cout(in_2bit[1]),
    .S(in_2bit[0])
  );
  \$paramod\FA_nbit\n=1  \FAs[1].fa  (
    .A(A[3]),
    .B(A[4]),
    .Cin(A[5]),
    .Cout(in_2bit[3]),
    .S(in_2bit[2])
  );
  \$paramod\FA_nbit\n=2  fa (
    .A(in_2bit[1:0]),
    .B(in_2bit[3:2]),
    .Cin(A[6]),
    .Cout(N[2]),
    .S(N[1:0])
  );
endmodule
