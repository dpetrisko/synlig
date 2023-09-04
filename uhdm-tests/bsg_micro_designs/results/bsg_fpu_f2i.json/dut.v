/* Generated by Yosys 0.27+9 (git sha1 101d19bb6, gcc 11.2.0-7ubuntu2 -fPIC -Os) */


module \$paramod$05fcaba1de5cb36db1658db7b408110c3bb3b087\bsg_fpu_preprocess (a_i, zero_o, nan_o, sig_nan_o, infty_o, exp_zero_o, man_zero_o, denormal_o, sign_o, exp_o, man_o);
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
  
  input [15:0] a_i;
  wire [15:0] a_i;
  
  output denormal_o;
  wire denormal_o;
  
  output [4:0] exp_o;
  wire [4:0] exp_o;
  
  wire exp_zero;
  
  output exp_zero_o;
  wire exp_zero_o;
  
  output infty_o;
  wire infty_o;
  
  output [9:0] man_o;
  wire [9:0] man_o;
  
  output man_zero_o;
  wire man_zero_o;
  
  wire mantissa_zero;
  
  output nan_o;
  wire nan_o;
  
  output sig_nan_o;
  wire sig_nan_o;
  
  output sign_o;
  wire sign_o;
  
  output zero_o;
  wire zero_o;
  assign _00_ = ~(a_i[1] | a_i[0]);
  assign _01_ = a_i[3] | a_i[2];
  assign _02_ = _00_ & ~(_01_);
  assign _03_ = a_i[5] | a_i[4];
  assign _04_ = a_i[7] | a_i[6];
  assign _05_ = _04_ | _03_;
  assign _06_ = _02_ & ~(_05_);
  assign _07_ = a_i[9] | a_i[8];
  assign man_zero_o = _06_ & ~(_07_);
  assign _08_ = ~a_i[14];
  assign _09_ = a_i[11] | a_i[10];
  assign _10_ = a_i[13] | a_i[12];
  assign _11_ = _10_ | _09_;
  assign exp_zero_o = _08_ & ~(_11_);
  assign _12_ = ~exp_zero_o;
  assign zero_o = man_zero_o & ~(_12_);
  assign _13_ = ~(a_i[11] & a_i[10]);
  assign _14_ = ~(a_i[13] & a_i[12]);
  assign _15_ = _14_ | _13_;
  assign _16_ = _15_ | _08_;
  assign nan_o = ~(_16_ | man_zero_o);
  assign sig_nan_o = nan_o & ~(a_i[9]);
  assign infty_o = man_zero_o & ~(_16_);
  assign denormal_o = ~(_12_ | man_zero_o);
  assign exp_o = a_i[14:10];
  assign exp_zero = exp_zero_o;
  assign man_o = a_i[9:0];
  assign mantissa_zero = man_zero_o;
  assign sign_o = a_i[15];
endmodule

(* top =  1  *)

module bsg_fpu_f2i(a_i, signed_i, z_o, invalid_o);
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
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire _200_;
  wire _201_;
  wire _202_;
  wire _203_;
  wire _204_;
  wire _205_;
  wire _206_;
  wire _207_;
  wire _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire _213_;
  wire _214_;
  wire _215_;
  wire _216_;
  wire _217_;
  wire _218_;
  wire _219_;
  wire _220_;
  wire _221_;
  wire _222_;
  wire _223_;
  wire _224_;
  wire _225_;
  wire _226_;
  wire _227_;
  wire _228_;
  wire _229_;
  wire _230_;
  wire _231_;
  wire _232_;
  wire _233_;
  wire _234_;
  wire _235_;
  wire _236_;
  wire _237_;
  wire _238_;
  wire _239_;
  wire _240_;
  wire _241_;
  wire _242_;
  wire _243_;
  wire _244_;
  wire _245_;
  wire _246_;
  wire _247_;
  wire _248_;
  wire _249_;
  wire _250_;
  wire _251_;
  wire _252_;
  wire _253_;
  wire _254_;
  wire _255_;
  wire _256_;
  wire _257_;
  wire _258_;
  wire _259_;
  wire _260_;
  wire _261_;
  wire _262_;
  wire _263_;
  wire _264_;
  wire _265_;
  wire _266_;
  
  input [15:0] a_i;
  wire [15:0] a_i;
  
  wire [4:0] exp;
  
  wire infty;
  
  output invalid_o;
  wire invalid_o;
  
  wire [9:0] mantissa;
  
  wire nan;
  
  (* unused_bits = "4 5 6 7 8 9 10 11 12 13 14 15" *)
  wire [15:0] preshift;
  
  wire sign;
  
  input signed_i;
  wire signed_i;
  
  output [15:0] z_o;
  wire [15:0] z_o;
  
  wire zero;
  assign _205_ = ~sign;
  assign _206_ = sign & signed_i;
  assign _207_ = ~_206_;
  assign _208_ = mantissa[0] & signed_i;
  assign _209_ = ~(signed_i ^ exp[0]);
  assign _210_ = signed_i ? mantissa[1] : mantissa[0];
  assign _211_ = _209_ ? _208_ : _210_;
  assign _212_ = ~exp[1];
  assign _213_ = exp[1] ^ exp[0];
  assign _214_ = signed_i ? _212_ : _213_;
  assign _215_ = signed_i ? mantissa[2] : mantissa[1];
  assign _216_ = signed_i ? mantissa[3] : mantissa[2];
  assign _217_ = _209_ ? _215_ : _216_;
  assign _218_ = _214_ ? _211_ : _217_;
  assign _219_ = ~signed_i;
  assign _220_ = ~(exp[1] & exp[0]);
  assign _221_ = ~(_220_ ^ exp[2]);
  assign _222_ = exp[2] ^ exp[1];
  assign _223_ = signed_i ? _222_ : _221_;
  assign _224_ = _218_ & ~(_223_);
  assign _225_ = exp[2] & ~(_220_);
  assign _226_ = _225_ ^ exp[3];
  assign _227_ = ~(exp[2] & exp[1]);
  assign _228_ = ~(_227_ ^ exp[3]);
  assign _229_ = signed_i ? _228_ : _226_;
  assign _230_ = signed_i ? mantissa[4] : mantissa[3];
  assign _231_ = signed_i ? mantissa[5] : mantissa[4];
  assign _232_ = _209_ ? _230_ : _231_;
  assign _233_ = signed_i ? mantissa[6] : mantissa[5];
  assign _234_ = signed_i ? mantissa[7] : mantissa[6];
  assign _235_ = _209_ ? _233_ : _234_;
  assign _236_ = _214_ ? _232_ : _235_;
  assign _237_ = signed_i ? mantissa[8] : mantissa[7];
  assign _238_ = signed_i ? mantissa[9] : mantissa[8];
  assign _239_ = _209_ ? _237_ : _238_;
  assign _240_ = signed_i ^ exp[0];
  assign _241_ = mantissa[9] | signed_i;
  assign _242_ = _240_ ? _219_ : _241_;
  assign _243_ = _214_ ? _239_ : _242_;
  assign _244_ = _223_ ? _236_ : _243_;
  assign _245_ = _229_ ? _224_ : _244_;
  assign _246_ = ~exp[4];
  assign _247_ = exp[3] & exp[2];
  assign _248_ = ~(exp[3] & exp[2]);
  assign _249_ = _220_ & ~(_248_);
  assign _250_ = _247_ & ~(_249_);
  assign _251_ = _250_ ^ _246_;
  assign _252_ = exp[3] & ~(_227_);
  assign _253_ = _252_ ^ _246_;
  assign _254_ = signed_i ? _253_ : _251_;
  assign _255_ = _245_ & ~(_254_);
  assign _256_ = _255_ ^ _207_;
  assign _257_ = _256_ ^ sign;
  assign _258_ = exp[1] & exp[0];
  assign _259_ = _258_ & ~(_248_);
  assign _260_ = _246_ & ~(_259_);
  assign _261_ = ~(_260_ | _257_);
  assign _262_ = _250_ & ~(_246_);
  assign _263_ = exp[4] & exp[3];
  assign _264_ = ~(exp[4] & exp[3]);
  assign _265_ = _227_ & ~(_264_);
  assign _266_ = _263_ & ~(_265_);
  assign _000_ = signed_i ? _266_ : _262_;
  assign _001_ = _000_ ? _205_ : _261_;
  assign _002_ = _001_ & ~(zero);
  assign _003_ = signed_i | ~(sign);
  assign _004_ = _003_ & _002_;
  assign _005_ = infty ? _205_ : _004_;
  assign z_o[0] = _005_ | nan;
  assign _006_ = _208_ & ~(_209_);
  assign _007_ = _006_ & ~(_214_);
  assign _008_ = _209_ ? _210_ : _215_;
  assign _009_ = _209_ ? _216_ : _230_;
  assign _010_ = _214_ ? _008_ : _009_;
  assign _011_ = _223_ ? _007_ : _010_;
  assign _012_ = _209_ ? _231_ : _233_;
  assign _013_ = _209_ ? _234_ : _237_;
  assign _014_ = _214_ ? _012_ : _013_;
  assign _015_ = _209_ ? _238_ : _241_;
  assign _016_ = ~(signed_i | exp[0]);
  assign _017_ = _214_ ? _015_ : _016_;
  assign _018_ = _223_ ? _014_ : _017_;
  assign _019_ = _229_ ? _011_ : _018_;
  assign _020_ = _019_ & ~(_254_);
  assign _021_ = _020_ ^ _206_;
  assign _022_ = _256_ | _205_;
  assign _023_ = _022_ ^ _021_;
  assign _024_ = _023_ | _260_;
  assign _025_ = _000_ ? sign : _024_;
  assign _026_ = _025_ | zero;
  assign _027_ = _003_ & ~(_026_);
  assign _028_ = infty ? _205_ : _027_;
  assign z_o[1] = _028_ | nan;
  assign _029_ = _211_ & ~(_214_);
  assign _030_ = _214_ ? _217_ : _232_;
  assign _031_ = _223_ ? _029_ : _030_;
  assign _032_ = _214_ ? _235_ : _239_;
  assign _033_ = _242_ & _214_;
  assign _034_ = _223_ ? _032_ : _033_;
  assign _035_ = _229_ ? _031_ : _034_;
  assign _036_ = _035_ & ~(_254_);
  assign _037_ = _036_ ^ _207_;
  assign _038_ = _021_ & ~(_022_);
  assign _039_ = _038_ ^ _037_;
  assign _040_ = _039_ | _260_;
  assign _041_ = _000_ ? sign : _040_;
  assign _042_ = _041_ | zero;
  assign _043_ = _003_ & ~(_042_);
  assign _044_ = infty ? _205_ : _043_;
  assign z_o[2] = _044_ | nan;
  assign _045_ = _214_ ? _006_ : _008_;
  assign _046_ = _214_ ? _009_ : _012_;
  assign _047_ = _223_ ? _045_ : _046_;
  assign _048_ = _214_ ? _013_ : _015_;
  assign _049_ = _016_ & _214_;
  assign _050_ = _223_ ? _048_ : _049_;
  assign _051_ = _229_ ? _047_ : _050_;
  assign _052_ = _051_ & ~(_254_);
  assign _053_ = _052_ ^ _207_;
  assign _054_ = _038_ & ~(_037_);
  assign _055_ = _054_ ^ _053_;
  assign _056_ = _055_ | _260_;
  assign _057_ = _000_ ? sign : _056_;
  assign _058_ = _057_ | zero;
  assign _059_ = _003_ & ~(_058_);
  assign _060_ = infty ? _205_ : _059_;
  assign z_o[3] = _060_ | nan;
  assign _061_ = _223_ ? _218_ : _236_;
  assign _062_ = _243_ & _223_;
  assign _063_ = _229_ ? _061_ : _062_;
  assign _064_ = _063_ & ~(_254_);
  assign _065_ = _064_ ^ _207_;
  assign _066_ = _053_ | _037_;
  assign _067_ = _038_ & ~(_066_);
  assign _068_ = _067_ ^ _065_;
  assign _069_ = _068_ | _260_;
  assign _070_ = _000_ ? sign : _069_;
  assign _071_ = _070_ | zero;
  assign _072_ = _003_ & ~(_071_);
  assign _073_ = infty ? _205_ : _072_;
  assign z_o[4] = _073_ | nan;
  assign _074_ = _223_ ? _010_ : _014_;
  assign _075_ = _017_ & _223_;
  assign _076_ = _229_ ? _074_ : _075_;
  assign _077_ = _076_ & ~(_254_);
  assign _078_ = _077_ ^ _207_;
  assign _079_ = _067_ & ~(_065_);
  assign _080_ = _079_ ^ _078_;
  assign _081_ = _080_ | _260_;
  assign _082_ = _000_ ? sign : _081_;
  assign _083_ = _082_ | zero;
  assign _084_ = _003_ & ~(_083_);
  assign _085_ = infty ? _205_ : _084_;
  assign z_o[5] = _085_ | nan;
  assign _086_ = _223_ ? _030_ : _032_;
  assign _087_ = _033_ & _223_;
  assign _088_ = _229_ ? _086_ : _087_;
  assign _089_ = _088_ & ~(_254_);
  assign _090_ = _089_ ^ _207_;
  assign _091_ = ~_090_;
  assign _092_ = _066_ | ~(_038_);
  assign _093_ = _078_ | _065_;
  assign _094_ = _093_ | _092_;
  assign _095_ = _094_ ^ _091_;
  assign _096_ = _095_ | _260_;
  assign _097_ = _000_ ? sign : _096_;
  assign _098_ = _097_ | zero;
  assign _099_ = _003_ & ~(_098_);
  assign _100_ = infty ? _205_ : _099_;
  assign z_o[6] = _100_ | nan;
  assign _101_ = _223_ ? _046_ : _048_;
  assign _102_ = _049_ & _223_;
  assign _103_ = _229_ ? _101_ : _102_;
  assign _104_ = _103_ & ~(_254_);
  assign _105_ = _104_ ^ _207_;
  assign _106_ = _091_ & ~(_094_);
  assign _107_ = _106_ ^ _105_;
  assign _108_ = _107_ | _260_;
  assign _109_ = _000_ ? sign : _108_;
  assign _110_ = _109_ | zero;
  assign _111_ = _003_ & ~(_110_);
  assign _112_ = infty ? _205_ : _111_;
  assign z_o[7] = _112_ | nan;
  assign _113_ = _244_ & _229_;
  assign _114_ = _113_ & ~(_254_);
  assign _115_ = _114_ ^ _207_;
  assign _116_ = _105_ | _090_;
  assign _117_ = _116_ | _093_;
  assign _118_ = _067_ & ~(_117_);
  assign _119_ = _118_ ^ _115_;
  assign _120_ = _119_ | _260_;
  assign _121_ = _000_ ? sign : _120_;
  assign _122_ = _121_ | zero;
  assign _123_ = _003_ & ~(_122_);
  assign _124_ = infty ? _205_ : _123_;
  assign z_o[8] = _124_ | nan;
  assign _125_ = _018_ & _229_;
  assign _126_ = _125_ & ~(_254_);
  assign _127_ = _126_ ^ _207_;
  assign _128_ = _118_ & ~(_115_);
  assign _129_ = _128_ ^ _127_;
  assign _130_ = _129_ | _260_;
  assign _131_ = _000_ ? sign : _130_;
  assign _132_ = _131_ | zero;
  assign _133_ = _003_ & ~(_132_);
  assign _134_ = infty ? _205_ : _133_;
  assign z_o[9] = _134_ | nan;
  assign _135_ = _034_ & _229_;
  assign _136_ = _135_ & ~(_254_);
  assign _137_ = _136_ ^ _207_;
  assign _138_ = ~_137_;
  assign _139_ = _127_ | _115_;
  assign _140_ = _139_ | ~(_118_);
  assign _141_ = _140_ ^ _138_;
  assign _142_ = _141_ | _260_;
  assign _143_ = _000_ ? sign : _142_;
  assign _144_ = _143_ | zero;
  assign _145_ = _003_ & ~(_144_);
  assign _146_ = infty ? _205_ : _145_;
  assign z_o[10] = _146_ | nan;
  assign _147_ = _050_ & _229_;
  assign _148_ = _147_ & ~(_254_);
  assign _149_ = _148_ ^ _207_;
  assign _150_ = _138_ & ~(_140_);
  assign _151_ = _150_ ^ _149_;
  assign _152_ = _151_ | _260_;
  assign _153_ = _000_ ? sign : _152_;
  assign _154_ = _153_ | zero;
  assign _155_ = _003_ & ~(_154_);
  assign _156_ = infty ? _205_ : _155_;
  assign z_o[11] = _156_ | nan;
  assign _157_ = _062_ & _229_;
  assign _158_ = _157_ & ~(_254_);
  assign _159_ = _158_ ^ _207_;
  assign _160_ = _149_ | _137_;
  assign _161_ = _160_ | _139_;
  assign _162_ = _118_ & ~(_161_);
  assign _163_ = _162_ ^ _159_;
  assign _164_ = _163_ | _260_;
  assign _165_ = _000_ ? sign : _164_;
  assign _166_ = _165_ | zero;
  assign _167_ = _003_ & ~(_166_);
  assign _168_ = infty ? _205_ : _167_;
  assign z_o[12] = _168_ | nan;
  assign _169_ = _075_ & _229_;
  assign _170_ = _169_ & ~(_254_);
  assign _171_ = _170_ ^ _207_;
  assign _172_ = _162_ & ~(_159_);
  assign _173_ = _172_ ^ _171_;
  assign _174_ = _173_ | _260_;
  assign _175_ = _000_ ? sign : _174_;
  assign _176_ = _175_ | zero;
  assign _177_ = _003_ & ~(_176_);
  assign _178_ = infty ? _205_ : _177_;
  assign z_o[13] = _178_ | nan;
  assign _179_ = _087_ & _229_;
  assign _180_ = _179_ & ~(_254_);
  assign _181_ = _180_ ^ _207_;
  assign _182_ = ~_181_;
  assign _183_ = _171_ | _159_;
  assign _184_ = _183_ | ~(_162_);
  assign _185_ = _184_ ^ _182_;
  assign _186_ = _185_ | _260_;
  assign _187_ = _000_ ? sign : _186_;
  assign _188_ = _187_ | zero;
  assign _189_ = _003_ & ~(_188_);
  assign _190_ = infty ? _205_ : _189_;
  assign z_o[14] = _190_ | nan;
  assign _191_ = _102_ & _229_;
  assign _192_ = _191_ & ~(_254_);
  assign _193_ = _192_ ^ _207_;
  assign _194_ = _182_ & ~(_184_);
  assign _195_ = _194_ ^ _193_;
  assign _196_ = _195_ | _260_;
  assign _197_ = _000_ ? _205_ : _196_;
  assign _198_ = _197_ | zero;
  assign _199_ = _003_ & ~(_198_);
  assign _200_ = ~(sign ^ signed_i);
  assign _201_ = infty ? _200_ : _199_;
  assign z_o[15] = nan ? _219_ : _201_;
  assign _202_ = _000_ & ~(zero);
  assign _203_ = _202_ | ~(_003_);
  assign _204_ = _203_ | infty;
  assign invalid_o = _204_ | nan;
  (* module_not_derived = 32'd1 *)
  
  \$paramod$05fcaba1de5cb36db1658db7b408110c3bb3b087\bsg_fpu_preprocess  preprocess (
    .a_i(a_i),
    .exp_o(exp),
    .infty_o(infty),
    .man_o(mantissa),
    .nan_o(nan),
    .sign_o(sign),
    .zero_o(zero)
  );
  assign preshift[3:0] = 4'h0;
endmodule

