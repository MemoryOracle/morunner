
;; Function int do_something(int) (_Z12do_somethingi, funcdef_no=2415, decl_uid=47837, cgraph_uid=530, symbol_order=559)


Pass statistics:
----------------


Pass statistics:
----------------

int do_something(int) (intD.9 aD.47836)
{
  intD.9 bD.47839;
  intD.9 D.54290;

  bD.47839 = 4;
  D.54290 = aD.47836 + bD.47839;
  goto <D.54291>;
  <D.54291>:
  return D.54290;
}



;; Function int do_something_else(const int*, int) (_Z17do_something_elsePKii, funcdef_no=2416, decl_uid=47842, cgraph_uid=531, symbol_order=560)


Pass statistics:
----------------


Pass statistics:
----------------

int do_something_else(const int*, int) (const intD.9 * const aryD.47840, const intD.9 LEND.47841)
{
  intD.9 iD.47845;
  intD.9 sumD.47844;
  intD.9 D.54298;
  intD.9 D.54297;
  const intD.9 * D.54296;
  long unsigned intD.14 D.54295;
  long unsigned intD.14 D.54294;

  sumD.47844 = 0;
  iD.47845 = 0;
  <D.54292>:
  if (iD.47845 >= LEND.47841) goto <D.47846>; else goto <D.54293>;
  <D.54293>:
  D.54294 = (long unsigned intD.14) iD.47845;
  D.54295 = D.54294 * 4;
  D.54296 = aryD.47840 + D.54295;
  D.54297 = *D.54296;
  sumD.47844 = D.54297 + sumD.47844;
  iD.47845 = iD.47845 + 1;
  goto <D.54292>;
  <D.47846>:
  D.54298 = sumD.47844;
  goto <D.54299>;
  <D.54299>:
  return D.54298;
}



;; Function int* dynamic_copy(const int*, int) (_Z12dynamic_copyPKii, funcdef_no=2417, decl_uid=47850, cgraph_uid=532, symbol_order=561)


Pass statistics:
----------------


Pass statistics:
----------------

int* dynamic_copy(const int*, int) (const intD.9 * const aryD.47848, const intD.9 LEND.47849)
{
  intD.9 * D.54317;
  intD.9 iD.47853;
  intD.9 * cpyD.47852;
  intD.9 * D.54315;
  intD.9 D.54314;
  const intD.9 * D.54313;
  long unsigned intD.14 D.54312;
  long unsigned intD.14 D.54311;
  intD.9 * D.54310;
  long unsigned intD.14 D.54309;
  long unsigned intD.14 D.54308;
  sizetype D.54304;
  sizetype D.54301;
  size_tD.2641 iftmp.0D.54300;

  D.54301 = (sizetype) LEND.47849;
  if (D.54301 <= 2287828610704211968) goto <D.54302>; else goto <D.54303>;
  <D.54302>:
  D.54304 = (sizetype) LEND.47849;
  iftmp.0D.54300 = D.54304 * 4;
  goto <D.54305>;
  <D.54303>:
  # USE = anything 
  # CLB = anything 
  __cxa_throw_bad_array_new_lengthD.47773 ();
  <D.54305>:
  # USE = anything 
  # CLB = anything 
  D.54317 = operator new []D.2586 (iftmp.0D.54300);
  cpyD.47852 = D.54317;
  iD.47853 = 0;
  <D.54306>:
  if (iD.47853 >= LEND.47849) goto <D.47854>; else goto <D.54307>;
  <D.54307>:
  D.54308 = (long unsigned intD.14) iD.47853;
  D.54309 = D.54308 * 4;
  D.54310 = cpyD.47852 + D.54309;
  D.54311 = (long unsigned intD.14) iD.47853;
  D.54312 = D.54311 * 4;
  D.54313 = aryD.47848 + D.54312;
  D.54314 = *D.54313;
  *D.54310 = D.54314;
  iD.47853 = iD.47853 + 1;
  goto <D.54306>;
  <D.47854>:
  D.54315 = cpyD.47852;
  goto <D.54316>;
  <D.54316>:
  return D.54315;
}



;; Function int waste_time() (_Z10waste_timev, funcdef_no=2418, decl_uid=47856, cgraph_uid=533, symbol_order=568)


Pass statistics:
----------------


Pass statistics:
----------------

int waste_time() ()
{
  floatD.38 dD.47861;
  intD.9 cD.47860;
  intD.9 bD.47859;
  intD.9 aD.47858;
  unsigned long D.54348;
  unsigned int D.54347;
  boolD.2579 D.54344;
  boolD.2579 D.54343;
  boolD.2579 D.54342;
  floatD.38 d.4D.54341;
  intD.9 D.54340;
  unsigned long D.54339;
  unsigned int D.54338;
  unsigned long D.54337;
  unsigned int D.54336;
  floatD.38 D.54333;
  floatD.38 d.3D.54332;
  doubleD.39 D.54331;
  doubleD.39 D.54330;
  intD.9 D.54329;
  unsigned long D.54328;
  unsigned long D.54327;
  boolD.2579 D.54324;
  boolD.2579 D.54323;
  boolD.2579 D.54322;
  boolD.2579 D.54321;
  boolD.2579 D.54320;
  intD.9 a.2D.54319;
  intD.9 c.1D.54318;

  aD.47858 = 4;
  bD.47859 = 2;
  cD.47860 = aD.47858 + bD.47859;
  c.1D.54318 = cD.47860;
  a.2D.54319 = aD.47858;
  D.54320 = a.2D.54319 == 0;
  D.54321 = c.1D.54318 == -2147483648;
  D.54322 = a.2D.54319 == -1;
  D.54323 = D.54321 & D.54322;
  D.54324 = D.54320 | D.54323;
  if (D.54324 != 0) goto <D.54325>; else goto <D.54326>;
  <D.54325>:
  D.54327 = (unsigned long) a.2D.54319;
  D.54328 = (unsigned long) c.1D.54318;
  # USE = anything 
  # CLB = anything 
  __ubsan_handle_divrem_overflow_abortD.2070 (&*.Lubsan_data21D.47866, D.54328, D.54327);
  <D.54326>:
  D.54329 = c.1D.54318 / a.2D.54319;
  dD.47861 = (floatD.38) D.54329;
  D.54330 = (doubleD.39) dD.47861;
  D.54331 = D.54330 + 2.1699999999999999289457264239899814128875732421875e+0;
  dD.47861 = (floatD.38) D.54331;
  aD.47858 = 2;
  d.3D.54332 = dD.47861;
  D.54333 = (floatD.38) aD.47858;
  if (D.54333 == 0.0) goto <D.54334>; else goto <D.54335>;
  <D.54334>:
  D.54336 = VIEW_CONVERT_EXPR<unsigned int>(D.54333);
  D.54337 = (unsigned long) D.54336;
  D.54338 = VIEW_CONVERT_EXPR<unsigned int>(d.3D.54332);
  D.54339 = (unsigned long) D.54338;
  # USE = anything 
  # CLB = anything 
  __ubsan_handle_divrem_overflow_abortD.2070 (&*.Lubsan_data22D.47871, D.54339, D.54337);
  <D.54335>:
  dD.47861 = d.3D.54332 / D.54333;
  d.4D.54341 = dD.47861;
  D.54342 = d.4D.54341 u<= -2.147483904e+9;
  D.54343 = d.4D.54341 u>= 2.147483648e+9;
  D.54344 = D.54342 | D.54343;
  if (D.54344 != 0) goto <D.54345>; else goto <D.54346>;
  <D.54345>:
  D.54347 = VIEW_CONVERT_EXPR<unsigned int>(d.4D.54341);
  D.54348 = (unsigned long) D.54347;
  # USE = anything 
  # CLB = anything 
  __ubsan_handle_float_cast_overflow_abortD.2090 (&*.Lubsan_data23D.47875, D.54348);
  <D.54346>:
  D.54340 = (intD.9) d.4D.54341;
  goto <D.54349>;
  # USE = anything 
  # CLB = anything 
  __ubsan_handle_missing_returnD.2054 (&*.Lubsan_data24D.47878);
  <D.54349>:
  return D.54340;
}



;; Function int waste_more_time() (_Z15waste_more_timev, funcdef_no=2419, decl_uid=47879, cgraph_uid=537, symbol_order=574)


Pass statistics:
----------------


Pass statistics:
----------------

int waste_more_time() ()
Eh tree:
   9 must_not_throw
   3 cleanup land:{4,<D.54366>}
     8 must_not_throw
     4 cleanup land:{3,<D.54365>}
       7 must_not_throw
       6 cleanup land:{2,<D.54364>}
       5 must_not_throw
   1 try land:{1,<D.54369>} catch:{lab:<D.54367>;struct exception}
     2 cleanup
{
  struct basic_ostreamD.4270 & D.54363;
  struct exceptionD.4316 eD.47889;
  intD.9 D.54361;
  long unsigned intD.14 D.54360;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54359;
  long unsigned intD.14 D.54358;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54357;
  struct basic_ostreamD.4270 & D.54356;
  const charD.10 * D.54355;
  long unsigned intD.14 D.54354;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54353;
  voidD.45 * D.54352;
  voidD.45 * D.54351;
  voidD.45 * D.54350;
  voidD.45 * D.47884;

  # USE = anything 
  # CLB = anything 
  _Z10waste_timevD.47856 ();
  # USE = anything 
  # CLB = anything 
  D.47884 = __cxa_allocate_exceptionD.47883 (8);
  # USE = anything 
  # CLB = anything 
  _ZNSt9exceptionC1EvD.4325 (D.47884);
  [LP 1] # USE = anything 
  # CLB = anything 
  __cxa_throwD.47882 (D.47884, &_ZTISt9exceptionD.4341, __comp_dtor D.4332);
  <D.54368>:
  # USE = anything 
  # CLB = anything 
  D.54361 = _Z10waste_timevD.47856 ();
  goto <D.54362>;
  # USE = anything 
  # CLB = anything 
  __ubsan_handle_missing_returnD.2054 (&*.Lubsan_data25D.47906);
  <D.54362>:
  return D.54361;
  <D.54369>: [LP 1]
  eh_dispatch 1
  resx 1
  <D.54367>:
  # USE = anything 
  D.54350 = __builtin_eh_pointerD.2560 (1);
  # USE = anything 
  D.54351 = __cxa_get_exception_ptrD.47890 (D.54350);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54351, 2B, 8);
  # USE = anything 
  # CLB = anything 
  _ZNSt9exceptionC1ERKS_D.4375 (&eD.47889, D.54351);
  # USE = anything 
  D.54352 = __builtin_eh_pointerD.2560 (1);
  # USE = anything 
  # CLB = anything 
  __cxa_begin_catchD.23294 (D.54352);
  D.54353 = eD.47889._vptr.exceptionD.4338;
  D.54354 = (long unsigned intD.14) D.54353;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (&eD.47889, D.54354, 179434351102037451, &_ZTISt9exceptionD.4341, 4B);
  # USE = anything 
  # CLB = anything 
  D.54355 = whatD.4323 (&eD.47889);
  [LP 2] # USE = anything 
  # CLB = anything 
  D.54363 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, D.54355);
  D.54356 = D.54363;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54356, 4B, 8);
  D.54357 = D.54356->_vptr.basic_ostreamD.31705;
  D.54358 = (long unsigned intD.14) D.54357;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54356, D.54358, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 2] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54356, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  D.54359 = eD.47889._vptr.exceptionD.4338;
  D.54360 = (long unsigned intD.14) D.54359;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (&eD.47889, D.54360, 179434351102037451, &_ZTISt9exceptionD.4341, 4B);
  # USE = anything 
  # CLB = anything 
  __comp_dtor D.4332 (&eD.47889);
  # USE = anything 
  # CLB = anything 
  __cxa_end_catchD.23293 ();
  eD.47889 = {CLOBBER};
  goto <D.54368>;
  <D.54364>: [LP 2]
  D.54359 = eD.47889._vptr.exceptionD.4338;
  D.54360 = (long unsigned intD.14) D.54359;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (&eD.47889, D.54360, 179434351102037451, &_ZTISt9exceptionD.4341, 4B);
  # USE = anything 
  # CLB = anything 
  __comp_dtor D.4332 (&eD.47889);
  [LP 3] resx 6
  <D.54365>: [LP 3]
  # USE = anything 
  # CLB = anything 
  __cxa_end_catchD.23293 ();
  [LP 4] resx 4
  <D.54366>: [LP 4]
  eD.47889 = {CLOBBER};
  resx 3
}



;; Function std::exception::exception() (_ZNSt9exceptionC2Ev, funcdef_no=20, decl_uid=4327, cgraph_uid=8, symbol_order=12)


Pass statistics:
----------------


Pass statistics:
----------------

std::exception::exception() (struct exceptionD.4316 * const thisD.4328)
Eh tree:
   1 must_not_throw
{
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54371;

  D.54371 = &_ZTVSt9exceptionD.4340 + 16;
  thisD.4328->_vptr.exceptionD.4338 = D.54371;
  return;
}



;; Function constexpr std::exception::exception(const std::exception&) (_ZNSt9exceptionC2ERKS_, funcdef_no=2421, decl_uid=4378, cgraph_uid=535, symbol_order=570)


Pass statistics:
----------------


Pass statistics:
----------------

constexpr std::exception::exception(const std::exception&) (struct exceptionD.4316 * const thisD.4379, const struct exceptionD.4316 & D.4380)
{
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54372;

  D.54372 = &_ZTVSt9exceptionD.4340 + 16;
  thisD.4379->_vptr.exceptionD.4338 = D.54372;
  return;
}



;; Function long unsigned int fact(long unsigned int) (_Z4factm, funcdef_no=2423, decl_uid=47908, cgraph_uid=538, symbol_order=575)


Pass statistics:
----------------


Pass statistics:
----------------

long unsigned int fact(long unsigned int) (const long unsigned intD.14 nD.47907)
{
  long unsigned intD.14 D.54381;
  long unsigned intD.14 D.54378;
  long unsigned intD.14 D.54377;
  long unsigned intD.14 iftmp.5D.54374;
  long unsigned intD.14 D.54373;

  if (nD.47907 != 0) goto <D.54375>; else goto <D.54376>;
  <D.54375>:
  D.54377 = nD.47907 + 18446744073709551615;
  # USE = anything 
  # CLB = anything 
  D.54381 = _Z4factmD.47908 (D.54377);
  D.54378 = D.54381;
  iftmp.5D.54374 = D.54378 * nD.47907;
  goto <D.54379>;
  <D.54376>:
  iftmp.5D.54374 = 1;
  <D.54379>:
  D.54373 = iftmp.5D.54374;
  goto <D.54380>;
  <D.54380>:
  return D.54373;
}



;; Function long unsigned int fib(long unsigned int) (_Z3fibm, funcdef_no=2424, decl_uid=47911, cgraph_uid=539, symbol_order=576)


Pass statistics:
----------------


Pass statistics:
----------------

long unsigned int fib(long unsigned int) (const long unsigned intD.14 nD.47910)
{
  long unsigned intD.14 D.54393;
  long unsigned intD.14 D.54392;
  long unsigned intD.14 xD.47913;
  long unsigned intD.14 D.54390;
  long unsigned intD.14 D.54389;
  long unsigned intD.14 D.54388;
  long unsigned intD.14 D.54387;
  long unsigned intD.14 D.54384;

  if (nD.47910 <= 1) goto <D.54382>; else goto <D.54383>;
  <D.54382>:
  D.54384 = 0;
  goto <D.54391>;
  <D.54383>:
  if (nD.47910 == 2) goto <D.54385>; else goto <D.54386>;
  <D.54385>:
  D.54384 = 1;
  goto <D.54391>;
  <D.54386>:
  D.54387 = nD.47910 + 18446744073709551615;
  # USE = anything 
  # CLB = anything 
  D.54392 = _Z3fibmD.47911 (D.54387);
  D.54388 = D.54392;
  D.54389 = nD.47910 + 18446744073709551614;
  # USE = anything 
  # CLB = anything 
  D.54393 = _Z3fibmD.47911 (D.54389);
  D.54390 = D.54393;
  xD.47913 = D.54388 + D.54390;
  D.54384 = xD.47913;
  goto <D.54391>;
  <D.54391>:
  return D.54384;
}



;; Function void stupid_waste(long unsigned int) (_Z12stupid_wastem, funcdef_no=2425, decl_uid=47915, cgraph_uid=540, symbol_order=577)


Pass statistics:
----------------


Pass statistics:
----------------

void stupid_waste(long unsigned int) (const long unsigned intD.14 nD.47914)
{
  intD.9 * D.54398;
  intD.9 * aD.47917;
  size_tD.2641 iftmp.6D.54394;

  if (nD.47914 <= 2287828610704211968) goto <D.54395>; else goto <D.54396>;
  <D.54395>:
  iftmp.6D.54394 = nD.47914 * 4;
  goto <D.54397>;
  <D.54396>:
  # USE = anything 
  # CLB = anything 
  __cxa_throw_bad_array_new_lengthD.47773 ();
  <D.54397>:
  # USE = anything 
  # CLB = anything 
  D.54398 = _ZnamD.2586 (iftmp.6D.54394);
  aD.47917 = D.54398;
  return;
}



;; Function void really_stupid_waste() (_Z19really_stupid_wastev, funcdef_no=2426, decl_uid=47918, cgraph_uid=541, symbol_order=578)


Pass statistics:
----------------


Pass statistics:
----------------

void really_stupid_waste() ()
{
  intD.9 iD.47920;
  long unsigned intD.14 D.54401;

  iD.47920 = 0;
  <D.54399>:
  if (iD.47920 > 31) goto <D.47921>; else goto <D.54400>;
  <D.54400>:
  D.54401 = (long unsigned intD.14) iD.47920;
  # USE = anything 
  # CLB = anything 
  _Z12stupid_wastemD.47915 (D.54401);
  iD.47920 = iD.47920 + 1;
  goto <D.54399>;
  <D.47921>:
  return;
}



;; Function int main(int, char**) (main, funcdef_no=2427, decl_uid=47925, cgraph_uid=542, symbol_order=579)


Pass statistics:
----------------


Pass statistics:
----------------

int main(int, char**) (intD.9 argcD.47923, charD.10 * * argvD.47924)
Eh tree:
   29 must_not_throw
   1 cleanup land:{1,<D.54729>}
     28 must_not_throw
     2 cleanup land:{3,<D.54727>}
       27 must_not_throw
       11 cleanup land:{7,<D.54725>}
         26 must_not_throw
         15 cleanup land:{14,<D.54723>}
           25 must_not_throw
           16 cleanup land:{10,<D.54721>}
             24 must_not_throw
             19 cleanup land:{11,<D.54719>}
               23 must_not_throw
               20 cleanup land:{13,<D.54675>}
                 22 must_not_throw
                 21 cleanup land:{12,<D.54674>}
             18 must_not_throw
             17 cleanup land:{9,<D.54667>}
         14 cleanup
         13 must_not_throw
         12 cleanup land:{8,<D.54666>}
       10 must_not_throw
       7 cleanup land:{6,<D.54658>}
         9 must_not_throw
         8 cleanup land:{5,<D.54657>}
       6 must_not_throw
       5 cleanup land:{4,<D.54650>}
       3 try land:{2,<D.54653>} catch:{lab:<D.54651>;int}
         4 cleanup
{
  struct basic_ostreamD.4270 & D.54718;
  struct __ostream_typeD.31522 & D.54717;
  struct basic_ostreamD.4270 & D.54716;
  struct __ostream_typeD.31522 & D.54715;
  struct basic_ostreamD.4270 & D.54714;
  struct basic_ostreamD.4270 & D.54713;
  struct basic_ostreamD.4270 & D.54712;
  struct __ostream_typeD.31522 & D.54711;
  struct basic_ostreamD.4270 & D.54710;
  struct __ostream_typeD.31522 & D.54709;
  struct basic_ostreamD.4270 & D.54708;
  struct __ostream_typeD.31522 & D.54707;
  struct basic_ostreamD.4270 & D.54706;
  struct __ostream_typeD.31522 & D.54705;
  struct basic_ostreamD.4270 & D.54704;
  struct __ostream_typeD.31522 & D.54703;
  struct basic_ostreamD.4270 & D.54702;
  struct __ostream_typeD.31522 & D.54701;
  struct basic_ostreamD.4270 & D.54700;
  struct __ostream_typeD.31522 & D.54699;
  struct basic_ostreamD.4270 & D.54698;
  struct __ostream_typeD.31522 & D.54697;
  struct basic_ostreamD.4270 & D.54696;
  struct __ostream_typeD.31522 & D.54695;
  struct basic_ostreamD.4270 & D.54694;
  struct __ostream_typeD.31522 & D.54693;
  struct basic_ostreamD.4270 & D.54692;
  struct __ostream_typeD.31522 & D.54691;
  struct basic_ostreamD.4270 & D.54690;
  struct __ostream_typeD.31522 & D.54689;
  struct basic_ostreamD.4270 & D.54688;
  struct __ostream_typeD.31522 & D.54687;
  struct basic_ostreamD.4270 & D.54686;
  struct __ostream_typeD.31522 & D.54685;
  struct basic_ostreamD.4270 & D.54684;
  struct __ostream_typeD.31522 & D.54683;
  struct basic_ostreamD.4270 & D.54682;
  struct __ostream_typeD.31522 & D.54681;
  struct basic_ostreamD.4270 & D.54680;
  struct __ostream_typeD.31522 & D.54679;
  struct basic_ostreamD.4270 & D.54678;
  struct __ostream_typeD.31522 & D.54677;
  struct basic_ostreamD.4270 & D.54676;
  voidD.45 * D.54673;
  struct basic_ostreamD.4270 & D.54672;
  long unsigned intD.14 D.54671;
  long unsigned intD.14 D.54670;
  intD.9 * D.54669;
  intD.9 * D.54668;
  intD.9 * D.54665;
  intD.9 * D.54664;
  intD.9 * D.54663;
  struct SomeStructD.47731 * D.54662;
  struct __ostream_typeD.31522 & D.54661;
  struct basic_ostreamD.4270 & D.54660;
  charD.10 * D.54659;
  voidD.45 * D.54656;
  intD.9 * D.54655;
  intD.9 * D.54654;
  struct basic_ostreamD.4270 & D.54649;
  struct basic_ostreamD.4270 & D.54648;
  struct basic_ostreamD.4270 & D.54647;
  struct basic_ostreamD.4270 & D.54646;
  intD.9 iD.49705;
  struct SomeChildClassD.47788 * D.49685;
  intD.9 iD.49659;
  intD.9 iD.49657;
  intD.9 iD.49656;
  intD.9 iD.49655;
  intD.9 iD.49654;
  struct SomeClassD.47736 * D.47960;
  struct SomeClassD.47736 * zD.47961;
  struct SomeClassD.47736 * xD.47955;
  intD.9 * appleD.47954;
  const intD.9 SOME_FAKE_VALD.47953;
  volatile intD.9 aD.47952;
  intD.9 eD.47942;
  size_tD.2641 deltaD.49704;
  struct SomeClassD.47736 * oldLocD.49686;
  struct SomeChildClassD.47788 * otherD.49680;
  struct SomeChildClassD.47788 qqqD.49669;
  long unsigned intD.14 someFibD.49663;
  long unsigned intD.14 someFactD.49662;
  intD.9 totalD.49661;
  intD.9 qD.49660;
  intD.9 * array3D.49658;
  intD.9 quantityD.49653;
  struct vectorD.48008 myVectorD.48009;
  struct stringD.3671 catPartyD.48003;
  intD.9 * array4D.48002;
  intD.9 * array2D.48001;
  intD.9 * arrayD.48000;
  struct SomeStructD.47731 * structArrayD.47975;
  const intD.9 INT_ARRAYD.47974;
  const intD.9 COUNTD.47973;
  struct SomeClassD.47736 * yyD.47964;
  charD.10 * yBinD.47963;
  struct fstreamD.4289 fD.47962;
  volatile intD.9 aD.47951;
  const uint64_tD.11150 SIZED.47950;
  struct SomeClassD.47736 yD.47939;
  uint8_tD.11147 xD.47927;
  long unsigned intD.14 D.54644;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54643;
  intD.9 D.54642;
  long unsigned intD.14 D.54641;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54640;
  struct basic_ostreamD.4270 & D.54639;
  long unsigned intD.14 D.54638;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54637;
  struct __ostream_typeD.31522 & D.54636;
  long unsigned intD.14 D.54635;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54634;
  struct basic_ostreamD.4270 & D.54633;
  long unsigned intD.14 D.54632;
  long unsigned intD.14 D.54631;
  long unsigned intD.14 oldLoc.18D.54630;
  long unsigned intD.14 D.54629;
  struct SomeChildClassD.47788 * D.54628;
  long unsigned intD.14 D.54627;
  long unsigned intD.14 D.54626;
  long unsigned intD.14 D.54625;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54624;
  struct __ostream_typeD.31522 & D.54623;
  long unsigned intD.14 D.54622;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54621;
  struct basic_ostreamD.4270 & D.54620;
  struct basic_ostreamD.4270 & D.54619;
  long unsigned intD.14 D.54618;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54617;
  struct basic_ostreamD.4270 & D.54616;
  const voidD.45 * D.54615;
  long unsigned intD.14 D.54614;
  long unsigned intD.14 D.54613;
  long unsigned intD.14 D.54610;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54609;
  struct __ostream_typeD.31522 & D.54608;
  long unsigned intD.14 D.54607;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54606;
  struct basic_ostreamD.4270 & D.54605;
  struct __ostream_typeD.31522 & D.54604;
  long unsigned intD.14 D.54603;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54602;
  struct basic_ostreamD.4270 & D.54601;
  long unsigned intD.14 D.54600;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54599;
  struct __ostream_typeD.31522 & D.54598;
  long unsigned intD.14 D.54597;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54596;
  struct basic_ostreamD.4270 & D.54595;
  struct __ostream_typeD.31522 & D.54594;
  long unsigned intD.14 D.54593;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54592;
  struct basic_ostreamD.4270 & D.54591;
  long unsigned intD.14 D.54590;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54589;
  struct __ostream_typeD.31522 & D.54588;
  long unsigned intD.14 D.54587;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54586;
  struct basic_ostreamD.4270 & D.54585;
  struct __ostream_typeD.31522 & D.54584;
  long unsigned intD.14 D.54583;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54582;
  struct basic_ostreamD.4270 & D.54581;
  long unsigned intD.14 D.54580;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54579;
  struct __ostream_typeD.31522 & D.54578;
  long unsigned intD.14 D.54577;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54576;
  struct basic_ostreamD.4270 & D.54575;
  struct __ostream_typeD.31522 & D.54574;
  long unsigned intD.14 D.54573;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54572;
  struct basic_ostreamD.4270 & D.54571;
  long unsigned intD.14 D.54570;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54569;
  struct __ostream_typeD.31522 & D.54568;
  long unsigned intD.14 D.54567;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54566;
  struct basic_ostreamD.4270 & D.54565;
  struct __ostream_typeD.31522 & D.54564;
  long unsigned intD.14 D.54563;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54562;
  struct basic_ostreamD.4270 & D.54561;
  long unsigned intD.14 D.54560;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54559;
  struct __ostream_typeD.31522 & D.54558;
  long unsigned intD.14 D.54557;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54556;
  struct basic_ostreamD.4270 & D.54555;
  struct __ostream_typeD.31522 & D.54554;
  long unsigned intD.14 D.54553;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54552;
  struct basic_ostreamD.4270 & D.54551;
  long unsigned intD.14 D.54550;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54549;
  struct __ostream_typeD.31522 & D.54548;
  long unsigned intD.14 D.54547;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54546;
  struct basic_ostreamD.4270 & D.54545;
  struct __ostream_typeD.31522 & D.54544;
  long unsigned intD.14 D.54543;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54542;
  struct basic_ostreamD.4270 & D.54541;
  long unsigned intD.14 D.54540;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54539;
  struct __ostream_typeD.31522 & D.54538;
  long unsigned intD.14 D.54537;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54536;
  struct basic_ostreamD.4270 & D.54535;
  struct __ostream_typeD.31522 & D.54534;
  long unsigned intD.14 D.54533;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54532;
  struct basic_ostreamD.4270 & D.54531;
  long unsigned intD.14 D.54530;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54529;
  struct __ostream_typeD.31522 & D.54528;
  long unsigned intD.14 D.54527;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54526;
  struct basic_ostreamD.4270 & D.54525;
  long unsigned intD.14 D.54524;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54523;
  struct __ostream_typeD.31522 & D.54522;
  long unsigned intD.14 D.54521;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54520;
  struct basic_ostreamD.4270 & D.54519;
  struct SomeChildClassD.47788 * D.54517;
  sizetype D.54513;
  sizetype D.54512;
  long intD.12 D.54511;
  struct SomeChildClassD.47788 * D.54508;
  long intD.12 D.49684;
  struct SomeChildClassD.47788 * D.49683;
  struct SomeChildClassD.47788 * D.49682;
  struct SomeChildClassD.47788 * retval.17D.54505;
  voidD.45 * D.49681;
  long unsigned intD.14 D.54504;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54503;
  struct basic_ostreamD.4270 & D.54502;
  boolD.2579 D.54500;
  boolD.2579 retval.16D.54499;
  intD.9 D.54497;
  intD.9 * D.54496;
  long unsigned intD.14 D.54495;
  long unsigned intD.14 D.54494;
  intD.9 * D.54491;
  long unsigned intD.14 D.54490;
  long unsigned intD.14 D.54489;
  intD.9 * D.54488;
  long unsigned intD.14 D.54487;
  long unsigned intD.14 D.54486;
  struct SomeStructD.47731 * D.54483;
  long unsigned intD.14 D.54482;
  long unsigned intD.14 D.54481;
  struct SomeStructD.47731 * D.54480;
  long unsigned intD.14 D.54479;
  long unsigned intD.14 D.54478;
  struct SomeStructD.47731 * D.54477;
  long unsigned intD.14 D.54476;
  long unsigned intD.14 D.54475;
  intD.9 i.15D.54470;
  intD.9 i.14D.54469;
  intD.9 i.13D.54467;
  struct allocatorD.3669 * D.54465;
  struct allocatorD.3669 D.48005;
  long unsigned intD.14 D.54464;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54463;
  struct __ostream_typeD.31522 & D.54462;
  long unsigned intD.14 D.54461;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54460;
  struct basic_ostreamD.4270 & D.54459;
  doubleD.39 D.54458;
  struct SomeClassD.47736 * yy.12D.54457;
  long unsigned intD.14 D.54456;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54455;
  long unsigned intD.14 D.54454;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54453;
  _Ios_OpenmodeD.25281 D.54452;
  long unsigned intD.14 D.54451;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54450;
  long unsigned intD.14 D.54449;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54448;
  long unsigned intD.14 D.54447;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54446;
  _Ios_OpenmodeD.25281 D.54445;
  _Ios_OpenmodeD.25281 D.54444;
  long unsigned intD.14 D.54443;
  struct SomeClassD.47736 * D.54441;
  sizetype D.54437;
  sizetype D.54436;
  long intD.12 D.54435;
  struct SomeClassD.47736 * D.54432;
  long intD.12 D.47959;
  struct SomeClassD.47736 * D.47958;
  struct SomeClassD.47736 * D.47957;
  struct SomeClassD.47736 * retval.11D.54429;
  voidD.45 * D.47956;
  sizetype D.54425;
  intD.9 a.10D.54424;
  size_tD.2641 iftmp.9D.54423;
  sizetype D.54419;
  intD.9 a.8D.54418;
  size_tD.2641 iftmp.7D.54417;
  long unsigned intD.14 D.54416;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54415;
  struct basic_ostreamD.4270 & D.54414;
  long unsigned intD.14 D.54413;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54412;
  struct basic_ostreamD.4270 & D.54411;
  intD.9 * D.54410;
  voidD.45 * D.54409;
  register intD.9 * D.47943;
  voidD.45 * D.47940;
  long unsigned intD.14 D.54408;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54407;
  long unsigned intD.14 D.54406;
  intD.9 (*__vtbl_ptr_typeD.2582) () * D.54405;
  struct basic_ostreamD.4270 & D.54404;
  struct basic_ostreamD.4270 & D.54403;
  intD.9 D.54402;

  xD.47927 = 2;
  D.54402 = (intD.9) xD.47927;
  [LP 1] # USE = anything 
  # CLB = anything 
  D.54646 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "current val for x: ");
  D.54403 = D.54646;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54403, 2B, 8);
  [LP 1] # USE = anything 
  # CLB = anything 
  D.54647 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_hD.31776 (D.54403, D.54402);
  D.54404 = D.54647;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54404, 4B, 8);
  D.54405 = D.54404->_vptr.basic_ostreamD.31705;
  D.54406 = (long unsigned intD.14) D.54405;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54404, D.54406, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 1] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54404, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  [LP 1] # USE = anything 
  # CLB = anything 
  _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "enter new val for x: ");
  D.54407 = _ZSt4coutD.38443._vptr.basic_ostreamD.31705;
  D.54408 = (long unsigned intD.14) D.54407;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (&_ZSt4coutD.38443, D.54408, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 1] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (&_ZSt4coutD.38443, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  [LP 1] # USE = anything 
  # CLB = anything 
  _ZN9SomeClassC1EvD.47757 (&yD.47939);
  # USE = anything 
  # CLB = anything 
  D.47940 = __cxa_allocate_exceptionD.47883 (4);
  MEM[(intD.9 *)D.47940] = 4;
  [LP 2] # USE = anything 
  # CLB = anything 
  __cxa_throwD.47882 (D.47940, &_ZTIiD.47941, 0B);
  <D.54652>:
  # USE = anything 
  # CLB = anything 
  _ZN9SomeClass5set_cEdD.47755 (&yD.47939, 2.1699999999999999289457264239899814128875732421875e+0);
  SIZED.47950 = 32;
  aD.47951 = 5;
  aD.47952 = 14;
  SOME_FAKE_VALD.47953 = 302;
  a.8D.54418 = aD.47952;
  D.54419 = (sizetype) a.8D.54418;
  if (D.54419 <= 2287828610704211968) goto <D.54420>; else goto <D.54421>;
  <D.54420>:
  iftmp.7D.54417 = D.54419 * 4;
  goto <D.54422>;
  <D.54421>:
  [LP 3] # USE = anything 
  # CLB = anything 
  __cxa_throw_bad_array_new_lengthD.47773 ();
  <D.54422>:
  [LP 3] # USE = anything 
  # CLB = anything 
  D.54654 = _ZnamD.2586 (iftmp.7D.54417);
  appleD.47954 = D.54654;
  a.10D.54424 = aD.47952;
  D.54425 = (sizetype) a.10D.54424;
  if (D.54425 <= 2287828610704211968) goto <D.54426>; else goto <D.54427>;
  <D.54426>:
  iftmp.9D.54423 = D.54425 * 4;
  goto <D.54428>;
  <D.54427>:
  [LP 3] # USE = anything 
  # CLB = anything 
  __cxa_throw_bad_array_new_lengthD.47773 ();
  <D.54428>:
  [LP 3] # USE = anything 
  # CLB = anything 
  D.54655 = _ZnamD.2586 (iftmp.9D.54423);
  appleD.47954 = D.54655;
  [LP 3] # USE = anything 
  # CLB = anything 
  D.54656 = _ZnamD.2586 (168);
  D.47956 = D.54656;
  MEM[(sizetype *)D.47956] = 5;
  D.47957 = D.47956 + 8;
  D.47958 = D.47957;
  D.47959 = 4;
  <D.54430>:
  if (D.47959 == -1) goto <D.49728>; else goto <D.54431>;
  <D.54431>:
  D.54432 = D.47958;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54432, 5B, 8);
  [LP 5] # USE = anything 
  # CLB = anything 
  _ZN9SomeClassC1EvD.47757 (D.54432);
  D.47958 = D.47958 + 32;
  D.47959 = D.47959 - 1;
  goto <D.54430>;
  <D.49728>:
  retval.11D.54429 = D.47957;
  xD.47955 = D.47956 + 8;
  D.54443 = 160;
  # USE = anything 
  # CLB = anything 
  zD.47961 = mallocD.1429 (D.54443);
  [LP 3] # USE = anything 
  # CLB = anything 
  _ZNSt13basic_fstreamIcSt11char_traitsIcEEC1EvD.37807 (&fD.47962);
  # USE = anything 
  # CLB = anything 
  D.54444 = _ZStorSt13_Ios_OpenmodeS_D.25295 (4, 16);
  # USE = anything 
  # CLB = anything 
  D.54445 = _ZStorSt13_Ios_OpenmodeS_D.25295 (D.54444, 32);
  D.54446 = fD.47962._vptr.basic_istreamD.32642;
  D.54447 = (long unsigned intD.14) D.54446;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (&fD.47962, D.54447, 15810722753637113251, &_ZTISt13basic_fstreamIcSt11char_traitsIcEED.37832, 4B);
  [LP 7] # USE = anything 
  # CLB = anything 
  _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_OpenmodeD.37753 (&fD.47962, "y.bin", D.54445);
  yBinD.47963 = &yD.47939;
  D.54448 = fD.47962.D.37827.D.33742._vptr.basic_ostreamD.31705;
  D.54449 = (long unsigned intD.14) D.54448;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (&fD.47962.D.37827.D.33742, D.54449, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 7] # USE = anything 
  # CLB = anything 
  writeD.31593 (&fD.47962.D.37827.D.33742, yBinD.47963, 32);
  D.54450 = fD.47962._vptr.basic_istreamD.32642;
  D.54451 = (long unsigned intD.14) D.54450;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (&fD.47962, D.54451, 15810722753637113251, &_ZTISt13basic_fstreamIcSt11char_traitsIcEED.37832, 4B);
  [LP 7] # USE = anything 
  # CLB = anything 
  _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEvD.37761 (&fD.47962);
  [LP 7] # USE = anything 
  # CLB = anything 
  D.54659 = _ZnamD.2586 (32);
  yBinD.47963 = D.54659;
  # USE = anything 
  # CLB = anything 
  D.54452 = _ZStorSt13_Ios_OpenmodeS_D.25295 (4, 8);
  D.54453 = fD.47962._vptr.basic_istreamD.32642;
  D.54454 = (long unsigned intD.14) D.54453;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (&fD.47962, D.54454, 15810722753637113251, &_ZTISt13basic_fstreamIcSt11char_traitsIcEED.37832, 4B);
  [LP 7] # USE = anything 
  # CLB = anything 
  _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_OpenmodeD.37753 (&fD.47962, "y.bin", D.54452);
  D.54455 = fD.47962.D.37827.D.33741._vptr.basic_istreamD.32642;
  D.54456 = (long unsigned intD.14) D.54455;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (&fD.47962.D.37827.D.33741, D.54456, 18446735408732843172, &_ZTISiD.32647, 4B);
  [LP 7] # USE = anything 
  # CLB = anything 
  readD.32536 (&fD.47962.D.37827.D.33741, yBinD.47963, 32);
  yyD.47964 = yBinD.47963;
  yy.12D.54457 = yyD.47964;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (yy.12D.54457, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54458 = _ZN9SomeClass5get_cEvD.47752 (yy.12D.54457);
  [LP 7] # USE = anything 
  # CLB = anything 
  D.54660 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "yy->get_c() = ");
  D.54459 = D.54660;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54459, 4B, 8);
  D.54460 = D.54459->_vptr.basic_ostreamD.31705;
  D.54461 = (long unsigned intD.14) D.54460;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54459, D.54461, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 7] # USE = anything 
  # CLB = anything 
  D.54661 = _ZNSolsEdD.31571 (D.54459, D.54458);
  D.54462 = D.54661;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54462, 4B, 8);
  D.54463 = D.54462->_vptr.basic_ostreamD.31705;
  D.54464 = (long unsigned intD.14) D.54463;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54462, D.54464, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 7] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54462, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  COUNTD.47973 = 12;
  INT_ARRAYD.47974 = 20;
  [LP 7] # USE = anything 
  # CLB = anything 
  D.54662 = _ZnamD.2586 (144);
  structArrayD.47975 = D.54662;
  [LP 7] # USE = anything 
  # CLB = anything 
  D.54663 = _ZnamD.2586 (80);
  arrayD.48000 = D.54663;
  [LP 7] # USE = anything 
  # CLB = anything 
  D.54664 = _ZnamD.2586 (80);
  array2D.48001 = D.54664;
  [LP 7] # USE = anything 
  # CLB = anything 
  D.54665 = operator newD.2585 (4);
  array4D.48002 = D.54665;
  # USE = anything 
  # CLB = anything 
  _ZNSaIcEC1EvD.13067 (&D.48005);
  D.54465 = &D.48005;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54465, 2B, 0);
  [LP 8] # USE = anything 
  # CLB = anything 
  __comp_ctor D.18161 (&catPartyD.48003, "hello world!", D.54465);
  # USE = anything 
  # CLB = anything 
  _ZNSaIcED1EvD.13071 (&D.48005);
  D.48005 = {CLOBBER};
  # USE = anything 
  # CLB = anything 
  _ZNSt6vectorIiSaIiEEC1EvD.49589 (&myVectorD.48009);
  quantityD.49653 = 32;
  iD.49654 = 0;
  <D.54466>:
  i.13D.54467 = iD.49654;
  if (i.13D.54467 >= quantityD.49653) goto <D.49746>; else goto <D.54468>;
  <D.54468>:
  [LP 9] # USE = anything 
  # CLB = anything 
  _ZNSt6vectorIiSaIiEE9push_backERKiD.49188 (&myVectorD.48009, &iD.49654);
  i.14D.54469 = iD.49654;
  i.15D.54470 = i.14D.54469 + 1;
  iD.49654 = i.15D.54470;
  goto <D.54466>;
  <D.49746>:
  iD.49654 = {CLOBBER};
  iD.49655 = 0;
  <D.54471>:
  if (iD.49655 >= quantityD.49653) goto <D.49750>; else goto <D.54472>;
  <D.54472>:
  [LP 10] # USE = anything 
  # CLB = anything 
  _Z19really_stupid_wastevD.47918 ();
  iD.49655 = iD.49655 + 1;
  goto <D.54471>;
  <D.49750>:
  iD.49656 = 0;
  <D.54473>:
  if (iD.49656 > 11) goto <D.49752>; else goto <D.54474>;
  <D.54474>:
  D.54475 = (long unsigned intD.14) iD.49656;
  D.54476 = D.54475 * 12;
  D.54477 = structArrayD.47975 + D.54476;
  D.54477->aD.47733 = 2;
  D.54478 = (long unsigned intD.14) iD.49656;
  D.54479 = D.54478 * 12;
  D.54480 = structArrayD.47975 + D.54479;
  D.54480->bD.47734 = 4;
  D.54481 = (long unsigned intD.14) iD.49656;
  D.54482 = D.54481 * 12;
  D.54483 = structArrayD.47975 + D.54482;
  D.54483->cD.47735 = 13;
  iD.49656 = iD.49656 + 1;
  goto <D.54473>;
  <D.49752>:
  iD.49657 = 0;
  <D.54484>:
  if (iD.49657 > 19) goto <D.49754>; else goto <D.54485>;
  <D.54485>:
  D.54486 = (long unsigned intD.14) iD.49657;
  D.54487 = D.54486 * 4;
  D.54488 = arrayD.48000 + D.54487;
  *D.54488 = 14;
  D.54489 = (long unsigned intD.14) iD.49657;
  D.54490 = D.54489 * 4;
  D.54491 = array2D.48001 + D.54490;
  *D.54491 = 14;
  iD.49657 = iD.49657 + 1;
  goto <D.54484>;
  <D.49754>:
  [LP 10] # USE = anything 
  # CLB = anything 
  D.54668 = _ZnamD.2586 (80);
  array3D.49658 = D.54668;
  iD.49659 = 0;
  <D.54492>:
  if (iD.49659 > 19) goto <D.49756>; else goto <D.54493>;
  <D.54493>:
  D.54494 = (long unsigned intD.14) iD.49659;
  D.54495 = D.54494 * 4;
  D.54496 = array3D.49658 + D.54495;
  *D.54496 = iD.49659;
  iD.49659 = iD.49659 + 1;
  goto <D.54492>;
  <D.49756>:
  D.54497 = *arrayD.48000;
  # USE = anything 
  # CLB = anything 
  qD.49660 = _Z12do_somethingiD.47837 (D.54497);
  # USE = anything 
  # CLB = anything 
  totalD.49661 = _Z17do_something_elsePKiiD.47842 (arrayD.48000, 20);
  # USE = anything 
  # CLB = anything 
  operator deleteD.2589 (array4D.48002, 4);
  [LP 10] # USE = anything 
  # CLB = anything 
  D.54669 = _Z12dynamic_copyPKiiD.47850 (arrayD.48000, 20);
  array4D.48002 = D.54669;
  [LP 10] # USE = anything 
  # CLB = anything 
  D.54670 = _Z4factmD.47908 (6);
  someFactD.49662 = D.54670;
  [LP 10] # USE = anything 
  # CLB = anything 
  D.54671 = _Z3fibmD.47911 (8);
  someFibD.49663 = D.54671;
  <D.54498>:
  # USE = anything 
  # CLB = anything 
  D.54500 = _ZNKSt6vectorIiSaIiEE5emptyEvD.49156 (&myVectorD.48009);
  retval.16D.54499 = ~D.54500;
  if (retval.16D.54499 != 0) goto <D.54501>; else goto <D.49758>;
  <D.54501>:
  # USE = anything 
  # CLB = anything 
  _ZNSt6vectorIiSaIiEE8pop_backEvD.49203 (&myVectorD.48009);
  goto <D.54498>;
  <D.49758>:
  [LP 10] # USE = anything 
  # CLB = anything 
  D.54672 = _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_ED.22932 (&_ZSt4coutD.38443, &catPartyD.48003);
  D.54502 = D.54672;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54502, 4B, 8);
  D.54503 = D.54502->_vptr.basic_ostreamD.31705;
  D.54504 = (long unsigned intD.14) D.54503;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54502, D.54504, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 10] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54502, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  [LP 10] # USE = anything 
  # CLB = anything 
  _Z15waste_more_timevD.47879 ();
  [LP 10] # USE = anything 
  # CLB = anything 
  _ZN14SomeChildClassC1EvD.47798 (&qqqD.49669);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54673 = _ZnamD.2586 (11208);
  D.49681 = D.54673;
  MEM[(sizetype *)D.49681] = 200;
  D.49682 = D.49681 + 8;
  D.49683 = D.49682;
  D.49684 = 199;
  <D.54506>:
  if (D.49684 == -1) goto <D.49765>; else goto <D.54507>;
  <D.54507>:
  D.54508 = D.49683;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54508, 5B, 8);
  [LP 12] # USE = anything 
  # CLB = anything 
  _ZN14SomeChildClassC1EvD.47798 (D.54508);
  D.49683 = D.49683 + 56;
  D.49684 = D.49684 - 1;
  goto <D.54506>;
  <D.49765>:
  retval.17D.54505 = D.49682;
  otherD.49680 = D.49681 + 8;
  oldLocD.49686 = otherD.49680;
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54676 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "sizeof SomeClass is ");
  D.54519 = D.54676;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54519, 4B, 8);
  D.54520 = D.54519->_vptr.basic_ostreamD.31705;
  D.54521 = (long unsigned intD.14) D.54520;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54519, D.54521, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54677 = _ZNSolsEmD.31547 (D.54519, 32);
  D.54522 = D.54677;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54522, 4B, 8);
  D.54523 = D.54522->_vptr.basic_ostreamD.31705;
  D.54524 = (long unsigned intD.14) D.54523;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54522, D.54524, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54522, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54678 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "sizeof SomeChildClass is ");
  D.54525 = D.54678;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54525, 4B, 8);
  D.54526 = D.54525->_vptr.basic_ostreamD.31705;
  D.54527 = (long unsigned intD.14) D.54526;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54525, D.54527, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54679 = _ZNSolsEmD.31547 (D.54525, 56);
  D.54528 = D.54679;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54528, 4B, 8);
  D.54529 = D.54528->_vptr.basic_ostreamD.31705;
  D.54530 = (long unsigned intD.14) D.54529;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54528, D.54530, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54528, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54680 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "offset of a ");
  D.54531 = D.54680;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54531, 4B, 8);
  D.54532 = D.54531->_vptr.basic_ostreamD.31705;
  D.54533 = (long unsigned intD.14) D.54532;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54531, D.54533, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54681 = _ZNSolsEmD.31547 (D.54531, 0);
  D.54534 = D.54681;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54534, 2B, 8);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54682 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (D.54534, " ");
  D.54535 = D.54682;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54535, 4B, 8);
  D.54536 = D.54535->_vptr.basic_ostreamD.31705;
  D.54537 = (long unsigned intD.14) D.54536;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54535, D.54537, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54683 = _ZNSolsEmD.31547 (D.54535, 0);
  D.54538 = D.54683;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54538, 4B, 8);
  D.54539 = D.54538->_vptr.basic_ostreamD.31705;
  D.54540 = (long unsigned intD.14) D.54539;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54538, D.54540, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54538, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54684 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "offset of b ");
  D.54541 = D.54684;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54541, 4B, 8);
  D.54542 = D.54541->_vptr.basic_ostreamD.31705;
  D.54543 = (long unsigned intD.14) D.54542;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54541, D.54543, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54685 = _ZNSolsEmD.31547 (D.54541, 4);
  D.54544 = D.54685;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54544, 2B, 8);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54686 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (D.54544, " ");
  D.54545 = D.54686;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54545, 4B, 8);
  D.54546 = D.54545->_vptr.basic_ostreamD.31705;
  D.54547 = (long unsigned intD.14) D.54546;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54545, D.54547, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54687 = _ZNSolsEmD.31547 (D.54545, 4);
  D.54548 = D.54687;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54548, 4B, 8);
  D.54549 = D.54548->_vptr.basic_ostreamD.31705;
  D.54550 = (long unsigned intD.14) D.54549;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54548, D.54550, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54548, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54688 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "offset of c ");
  D.54551 = D.54688;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54551, 4B, 8);
  D.54552 = D.54551->_vptr.basic_ostreamD.31705;
  D.54553 = (long unsigned intD.14) D.54552;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54551, D.54553, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54689 = _ZNSolsEmD.31547 (D.54551, 8);
  D.54554 = D.54689;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54554, 2B, 8);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54690 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (D.54554, " ");
  D.54555 = D.54690;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54555, 4B, 8);
  D.54556 = D.54555->_vptr.basic_ostreamD.31705;
  D.54557 = (long unsigned intD.14) D.54556;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54555, D.54557, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54691 = _ZNSolsEmD.31547 (D.54555, 8);
  D.54558 = D.54691;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54558, 4B, 8);
  D.54559 = D.54558->_vptr.basic_ostreamD.31705;
  D.54560 = (long unsigned intD.14) D.54559;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54558, D.54560, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54558, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54692 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "offset of d ");
  D.54561 = D.54692;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54561, 4B, 8);
  D.54562 = D.54561->_vptr.basic_ostreamD.31705;
  D.54563 = (long unsigned intD.14) D.54562;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54561, D.54563, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54693 = _ZNSolsEmD.31547 (D.54561, 16);
  D.54564 = D.54693;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54564, 2B, 8);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54694 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (D.54564, " ");
  D.54565 = D.54694;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54565, 4B, 8);
  D.54566 = D.54565->_vptr.basic_ostreamD.31705;
  D.54567 = (long unsigned intD.14) D.54566;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54565, D.54567, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54695 = _ZNSolsEmD.31547 (D.54565, 16);
  D.54568 = D.54695;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54568, 4B, 8);
  D.54569 = D.54568->_vptr.basic_ostreamD.31705;
  D.54570 = (long unsigned intD.14) D.54569;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54568, D.54570, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54568, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54696 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "offset of e ");
  D.54571 = D.54696;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54571, 4B, 8);
  D.54572 = D.54571->_vptr.basic_ostreamD.31705;
  D.54573 = (long unsigned intD.14) D.54572;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54571, D.54573, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54697 = _ZNSolsEmD.31547 (D.54571, 24);
  D.54574 = D.54697;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54574, 2B, 8);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54698 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (D.54574, " ");
  D.54575 = D.54698;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54575, 4B, 8);
  D.54576 = D.54575->_vptr.basic_ostreamD.31705;
  D.54577 = (long unsigned intD.14) D.54576;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54575, D.54577, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54699 = _ZNSolsEmD.31547 (D.54575, 24);
  D.54578 = D.54699;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54578, 4B, 8);
  D.54579 = D.54578->_vptr.basic_ostreamD.31705;
  D.54580 = (long unsigned intD.14) D.54579;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54578, D.54580, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54578, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54700 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "offset of e ");
  D.54581 = D.54700;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54581, 4B, 8);
  D.54582 = D.54581->_vptr.basic_ostreamD.31705;
  D.54583 = (long unsigned intD.14) D.54582;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54581, D.54583, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54701 = _ZNSolsEmD.31547 (D.54581, 24);
  D.54584 = D.54701;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54584, 2B, 8);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54702 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (D.54584, " ");
  D.54585 = D.54702;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54585, 4B, 8);
  D.54586 = D.54585->_vptr.basic_ostreamD.31705;
  D.54587 = (long unsigned intD.14) D.54586;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54585, D.54587, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54703 = _ZNSolsEmD.31547 (D.54585, 32);
  D.54588 = D.54703;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54588, 4B, 8);
  D.54589 = D.54588->_vptr.basic_ostreamD.31705;
  D.54590 = (long unsigned intD.14) D.54589;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54588, D.54590, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54588, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54704 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "offset of e ");
  D.54591 = D.54704;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54591, 4B, 8);
  D.54592 = D.54591->_vptr.basic_ostreamD.31705;
  D.54593 = (long unsigned intD.14) D.54592;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54591, D.54593, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54705 = _ZNSolsEmD.31547 (D.54591, 24);
  D.54594 = D.54705;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54594, 2B, 8);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54706 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (D.54594, " ");
  D.54595 = D.54706;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54595, 4B, 8);
  D.54596 = D.54595->_vptr.basic_ostreamD.31705;
  D.54597 = (long unsigned intD.14) D.54596;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54595, D.54597, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54707 = _ZNSolsEmD.31547 (D.54595, 40);
  D.54598 = D.54707;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54598, 4B, 8);
  D.54599 = D.54598->_vptr.basic_ostreamD.31705;
  D.54600 = (long unsigned intD.14) D.54599;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54598, D.54600, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54598, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54708 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "offset of e ");
  D.54601 = D.54708;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54601, 4B, 8);
  D.54602 = D.54601->_vptr.basic_ostreamD.31705;
  D.54603 = (long unsigned intD.14) D.54602;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54601, D.54603, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54709 = _ZNSolsEmD.31547 (D.54601, 24);
  D.54604 = D.54709;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54604, 2B, 8);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54710 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (D.54604, " ");
  D.54605 = D.54710;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54605, 4B, 8);
  D.54606 = D.54605->_vptr.basic_ostreamD.31705;
  D.54607 = (long unsigned intD.14) D.54606;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54605, D.54607, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54711 = _ZNSolsEmD.31547 (D.54605, 48);
  D.54608 = D.54711;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54608, 4B, 8);
  D.54609 = D.54608->_vptr.basic_ostreamD.31705;
  D.54610 = (long unsigned intD.14) D.54609;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54608, D.54610, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54608, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  deltaD.49704 = 0;
  iD.49705 = 0;
  <D.54611>:
  if (iD.49705 > 19) goto <D.49815>; else goto <D.54612>;
  <D.54612>:
  D.54613 = (long unsigned intD.14) iD.49705;
  D.54614 = D.54613 * 56;
  D.54615 = otherD.49680 + D.54614;
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54712 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "&other[");
  D.54616 = D.54712;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54616, 4B, 8);
  D.54617 = D.54616->_vptr.basic_ostreamD.31705;
  D.54618 = (long unsigned intD.14) D.54617;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54616, D.54618, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54713 = operator<<D.31559 (D.54616, iD.49705);
  D.54619 = D.54713;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54619, 2B, 8);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54714 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (D.54619, "]  = ");
  D.54620 = D.54714;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54620, 4B, 8);
  D.54621 = D.54620->_vptr.basic_ostreamD.31705;
  D.54622 = (long unsigned intD.14) D.54621;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54620, D.54622, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54715 = _ZNSolsEPKvD.31580 (D.54620, D.54615);
  D.54623 = D.54715;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54623, 4B, 8);
  D.54624 = D.54623->_vptr.basic_ostreamD.31705;
  D.54625 = (long unsigned intD.14) D.54624;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54623, D.54625, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54623, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  D.54626 = (long unsigned intD.14) iD.49705;
  D.54627 = D.54626 * 56;
  D.54628 = otherD.49680 + D.54627;
  D.54629 = (long unsigned intD.14) D.54628;
  oldLoc.18D.54630 = (long unsigned intD.14) oldLocD.49686;
  deltaD.49704 = D.54629 - oldLoc.18D.54630;
  D.54631 = (long unsigned intD.14) iD.49705;
  D.54632 = D.54631 * 56;
  oldLocD.49686 = otherD.49680 + D.54632;
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54716 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "delta = ");
  D.54633 = D.54716;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54633, 4B, 8);
  D.54634 = D.54633->_vptr.basic_ostreamD.31705;
  D.54635 = (long unsigned intD.14) D.54634;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54633, D.54635, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54717 = _ZNSolsEmD.31547 (D.54633, deltaD.49704);
  D.54636 = D.54717;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54636, 4B, 8);
  D.54637 = D.54636->_vptr.basic_ostreamD.31705;
  D.54638 = (long unsigned intD.14) D.54637;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54636, D.54638, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54636, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  iD.49705 = iD.49705 + 1;
  goto <D.54611>;
  <D.49815>:
  [LP 11] # USE = anything 
  # CLB = anything 
  D.54718 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "made it ");
  D.54639 = D.54718;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54639, 4B, 8);
  D.54640 = D.54639->_vptr.basic_ostreamD.31705;
  D.54641 = (long unsigned intD.14) D.54640;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54639, D.54641, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 11] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54639, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  D.54642 = 0;
  goto <D.54720>;
  <D.54720>:
  # USE = anything 
  # CLB = anything 
  _ZN14SomeChildClassD1EvD.47802 (&qqqD.49669);
  goto <D.54722>;
  <D.54722>:
  # USE = anything 
  # CLB = anything 
  _ZNSt6vectorIiSaIiEED1EvD.49593 (&myVectorD.48009);
  goto <D.54724>;
  <D.54724>:
  # USE = anything 
  # CLB = anything 
  _ZNSsD1EvD.18217 (&catPartyD.48003);
  goto <D.54726>;
  <D.54726>:
  D.54643 = fD.47962._vptr.basic_istreamD.32642;
  D.54644 = (long unsigned intD.14) D.54643;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (&fD.47962, D.54644, 15810722753637113251, &_ZTISt13basic_fstreamIcSt11char_traitsIcEED.37832, 4B);
  # USE = anything 
  # CLB = anything 
  _ZNSt13basic_fstreamIcSt11char_traitsIcEED1EvD.37819 (&fD.47962);
  goto <D.54728>;
  <D.54728>:
  # USE = anything 
  # CLB = anything 
  _ZN9SomeClassD1EvD.47761 (&yD.47939);
  goto <D.54730>;
  <D.54730>:
  yD.47939 = {CLOBBER};
  fD.47962 = {CLOBBER};
  catPartyD.48003 = {CLOBBER};
  myVectorD.48009 = {CLOBBER};
  qqqD.49669 = {CLOBBER};
  goto <D.54645>;
  D.54642 = 0;
  goto <D.54645>;
  <D.54645>:
  return D.54642;
  <D.54653>: [LP 2]
  eh_dispatch 3
  [LP 3] resx 3
  <D.54651>:
  # USE = anything 
  D.54409 = __builtin_eh_pointerD.2560 (3);
  # USE = anything 
  # CLB = anything 
  D.47943 = __cxa_begin_catchD.23294 (D.54409);
  D.54410 = D.47943;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54410, 2B, 4);
  eD.47942 = *D.54410;
  [LP 4] # USE = anything 
  # CLB = anything 
  D.54648 = _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKcD.31788 (&_ZSt4coutD.38443, "I got a ");
  D.54411 = D.54648;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54411, 4B, 8);
  D.54412 = D.54411->_vptr.basic_ostreamD.31705;
  D.54413 = (long unsigned intD.14) D.54412;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54411, D.54413, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 4] # USE = anything 
  # CLB = anything 
  D.54649 = operator<<D.31559 (D.54411, eD.47942);
  D.54414 = D.54649;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54414, 4B, 8);
  D.54415 = D.54414->_vptr.basic_ostreamD.31705;
  D.54416 = (long unsigned intD.14) D.54415;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (D.54414, D.54416, 18446735435037687197, &_ZTISoD.31714, 4B);
  [LP 4] # USE = anything 
  # CLB = anything 
  _ZNSolsEPFRSoS_ED.31535 (D.54414, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_D.31745);
  # USE = anything 
  # CLB = anything 
  __cxa_end_catchD.23293 ();
  goto <D.54652>;
  <D.54650>: [LP 4]
  # USE = anything 
  # CLB = anything 
  __cxa_end_catchD.23293 ();
  [LP 3] resx 5
  <D.54657>: [LP 5]
  if (D.47957 != 0B) goto <D.54433>; else goto <D.54434>;
  <D.54433>:
  D.54435 = 4 - D.47959;
  D.54436 = (sizetype) D.54435;
  D.54437 = D.54436 * 32;
  D.47960 = D.47957 + D.54437;
  <D.54438>:
  if (D.47960 == D.47957) goto <D.54439>; else goto <D.54440>;
  <D.54440>:
  D.47960 = D.47960 + 18446744073709551584;
  D.54441 = D.47960;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54441, 4B, 8);
  # USE = anything 
  # CLB = anything 
  _ZN9SomeClassD1EvD.47761 (D.54441);
  goto <D.54438>;
  <D.54439>:
  goto <D.54442>;
  <D.54434>:
  <D.54442>:
  [LP 6] resx 8
  <D.54658>: [LP 6]
  # USE = anything 
  # CLB = anything 
  operator delete []D.2590 (D.47956, 168);
  [LP 3] resx 7
  <D.54666>: [LP 8]
  # USE = anything 
  # CLB = anything 
  _ZNSaIcED1EvD.13071 (&D.48005);
  D.48005 = {CLOBBER};
  [LP 7] resx 12
  <D.54667>: [LP 9]
  iD.49654 = {CLOBBER};
  [LP 10] resx 17
  <D.54674>: [LP 12]
  if (D.49682 != 0B) goto <D.54509>; else goto <D.54510>;
  <D.54509>:
  D.54511 = 199 - D.49684;
  D.54512 = (sizetype) D.54511;
  D.54513 = D.54512 * 56;
  D.49685 = D.49682 + D.54513;
  <D.54514>:
  if (D.49685 == D.49682) goto <D.54515>; else goto <D.54516>;
  <D.54516>:
  D.49685 = D.49685 + 18446744073709551560;
  D.54517 = D.49685;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54517, 4B, 8);
  # USE = anything 
  # CLB = anything 
  _ZN14SomeChildClassD1EvD.47802 (D.54517);
  goto <D.54514>;
  <D.54515>:
  goto <D.54518>;
  <D.54510>:
  <D.54518>:
  [LP 13] resx 21
  <D.54675>: [LP 13]
  # USE = anything 
  # CLB = anything 
  operator delete []D.2590 (D.49681, 11208);
  [LP 11] resx 20
  <D.54719>: [LP 11]
  # USE = anything 
  # CLB = anything 
  _ZN14SomeChildClassD1EvD.47802 (&qqqD.49669);
  [LP 10] resx 19
  <D.54721>: [LP 10]
  # USE = anything 
  # CLB = anything 
  _ZNSt6vectorIiSaIiEED1EvD.49593 (&myVectorD.48009);
  [LP 14] resx 16
  <D.54723>: [LP 14]
  # USE = anything 
  # CLB = anything 
  _ZNSsD1EvD.18217 (&catPartyD.48003);
  [LP 7] resx 15
  <D.54725>: [LP 7]
  D.54643 = fD.47962._vptr.basic_istreamD.32642;
  D.54644 = (long unsigned intD.14) D.54643;
  # USE = anything 
  # CLB = anything 
  UBSAN_VPTR (&fD.47962, D.54644, 15810722753637113251, &_ZTISt13basic_fstreamIcSt11char_traitsIcEED.37832, 4B);
  # USE = anything 
  # CLB = anything 
  _ZNSt13basic_fstreamIcSt11char_traitsIcEED1EvD.37819 (&fD.47962);
  [LP 3] resx 11
  <D.54727>: [LP 3]
  # USE = anything 
  # CLB = anything 
  _ZN9SomeClassD1EvD.47761 (&yD.47939);
  [LP 1] resx 2
  <D.54729>: [LP 1]
  yD.47939 = {CLOBBER};
  fD.47962 = {CLOBBER};
  catPartyD.48003 = {CLOBBER};
  myVectorD.48009 = {CLOBBER};
  qqqD.49669 = {CLOBBER};
  resx 1
}



;; Function SomeClass::SomeClass() (_ZN9SomeClassC2Ev, funcdef_no=2400, decl_uid=47759, cgraph_uid=515, symbol_order=544)


Pass statistics:
----------------


Pass statistics:
----------------

SomeClass::SomeClass() (struct SomeClassD.47736 * const thisD.47760)
{
  voidD.45 * D.54732;
  voidD.45 * D.54731;

  thisD.47760->aD.47738 = 1;
  thisD.47760->bD.47739 = 2;
  thisD.47760->cD.47740 = 3.140000000000000124344978758017532527446746826171875e+0;
  # USE = anything 
  # CLB = anything 
  D.54732 = _ZnamD.2586 (20);
  D.54731 = D.54732;
  thisD.47760->dD.47741 = D.54731;
  thisD.47760->eD.47742 = 2.1700000762939453125e+0;
  return;
}



;; Function constexpr std::_Ios_Openmode std::operator|(std::_Ios_Openmode, std::_Ios_Openmode) (_ZStorSt13_Ios_OpenmodeS_, funcdef_no=1025, decl_uid=25295, cgraph_uid=328, symbol_order=339)


Pass statistics:
----------------


Pass statistics:
----------------

constexpr std::_Ios_Openmode std::operator|(std::_Ios_Openmode, std::_Ios_Openmode) (_Ios_OpenmodeD.25281 __aD.25293, _Ios_OpenmodeD.25281 __bD.25294)
{
  intD.9 D.54736;
  intD.9 __b.20D.54735;
  intD.9 __a.19D.54734;
  _Ios_OpenmodeD.25281 D.54733;

  __a.19D.54734 = (intD.9) __aD.25293;
  __b.20D.54735 = (intD.9) __bD.25294;
  D.54736 = __a.19D.54734 | __b.20D.54735;
  D.54733 = (_Ios_OpenmodeD.25281) D.54736;
  goto <D.54737>;
  <D.54737>:
  return D.54733;
}



;; Function double SomeClass::get_c() (_ZN9SomeClass5get_cEv, funcdef_no=2407, decl_uid=47752, cgraph_uid=522, symbol_order=551)


Pass statistics:
----------------


Pass statistics:
----------------

double SomeClass::get_c() (struct SomeClassD.47736 * const thisD.47753)
{
  doubleD.39 D.54738;

  D.54738 = thisD.47753->cD.47740;
  goto <D.54739>;
  <D.54739>:
  return D.54738;
}



;; Function std::allocator< <template-parameter-1-1> >::allocator() [with _Tp = char] (_ZNSaIcEC2Ev, funcdef_no=2483, decl_uid=13069, cgraph_uid=598, symbol_order=637)


Pass statistics:
----------------


Pass statistics:
----------------

std::allocator< <template-parameter-1-1> >::allocator() [with _Tp = char] (struct allocatorD.3669 * const thisD.13070)
Eh tree:
   1 allowed_exceptions filter :0 types:
     2 cleanup
{
  voidD.45 * D.54740;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.13070, 5B, 0);
  # USE = anything 
  # CLB = anything 
  _ZN9__gnu_cxx13new_allocatorIcEC2EvD.13005 (thisD.13070);
  return;
}



;; Function __gnu_cxx::new_allocator<_Tp>::new_allocator() [with _Tp = char] (_ZN9__gnu_cxx13new_allocatorIcEC2Ev, funcdef_no=2621, decl_uid=13005, cgraph_uid=736, symbol_order=777)


Pass statistics:
----------------


Pass statistics:
----------------

__gnu_cxx::new_allocator<_Tp>::new_allocator() [with _Tp = char] (struct new_allocatorD.12909 * const thisD.13006)
Eh tree:
   1 must_not_throw
{
  return;
}



;; Function std::vector<_Tp, _Alloc>::vector() [with _Tp = int; _Alloc = std::allocator<int>] (_ZNSt6vectorIiSaIiEEC2Ev, funcdef_no=2579, decl_uid=49591, cgraph_uid=694, symbol_order=735)


Pass statistics:
----------------


Pass statistics:
----------------

std::vector<_Tp, _Alloc>::vector() [with _Tp = int; _Alloc = std::allocator<int>] (struct vectorD.48008 * const thisD.49592)
Eh tree:
   1 must_not_throw
{
  struct _Vector_baseD.48010 * D.54742;
  struct _Vector_baseD.48010 * D.54741;

  D.54741 = &thisD.49592->D.49599;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54741, 5B, 8);
  [MNT 1] # USE = anything 
  # CLB = anything 
  _ZNSt12_Vector_baseIiSaIiEEC2EvD.48971 (D.54741);
  return;
}



;; Function std::_Vector_base<_Tp, _Alloc>::_Vector_base() [with _Tp = int; _Alloc = std::allocator<int>] (_ZNSt12_Vector_baseIiSaIiEEC2Ev, funcdef_no=2701, decl_uid=48971, cgraph_uid=816, symbol_order=857)


Pass statistics:
----------------


Pass statistics:
----------------

std::_Vector_base<_Tp, _Alloc>::_Vector_base() [with _Tp = int; _Alloc = std::allocator<int>] (struct _Vector_baseD.48010 * const thisD.48972)
Eh tree:
   1 cleanup
{
  struct _Vector_implD.48851 * D.54744;
  struct _Vector_implD.48851 * D.54743;

  D.54743 = &thisD.48972->_M_implD.48884;
  # USE = anything 
  # CLB = anything 
  _ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1EvD.48912 (D.54743);
  return;
}



;; Function std::_Vector_base<_Tp, _Alloc>::_Vector_impl::_Vector_impl() [with _Tp = int; _Alloc = std::allocator<int>] (_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, funcdef_no=2766, decl_uid=48914, cgraph_uid=881, symbol_order=922)


Pass statistics:
----------------


Pass statistics:
----------------

std::_Vector_base<_Tp, _Alloc>::_Vector_impl::_Vector_impl() [with _Tp = int; _Alloc = std::allocator<int>] (struct _Vector_implD.48851 * const thisD.48915)
Eh tree:
   1 cleanup
{
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.48915, 5B, 0);
  # USE = anything 
  # CLB = anything 
  _ZNSaIiEC2EvD.48179 (thisD.48915);
  thisD.48915->_M_startD.48886 = 0B;
  thisD.48915->_M_finishD.48887 = 0B;
  thisD.48915->_M_end_of_storageD.48888 = 0B;
  return;
}



;; Function std::allocator< <template-parameter-1-1> >::allocator() [with _Tp = int] (_ZNSaIiEC2Ev, funcdef_no=2798, decl_uid=48179, cgraph_uid=913, symbol_order=957)


Pass statistics:
----------------


Pass statistics:
----------------

std::allocator< <template-parameter-1-1> >::allocator() [with _Tp = int] (struct allocatorD.48007 * const thisD.48180)
Eh tree:
   1 allowed_exceptions filter :0 types:
     2 cleanup
{
  voidD.45 * D.54745;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.48180, 5B, 0);
  # USE = anything 
  # CLB = anything 
  _ZN9__gnu_cxx13new_allocatorIiEC2EvD.48115 (thisD.48180);
  return;
}



;; Function __gnu_cxx::new_allocator<_Tp>::new_allocator() [with _Tp = int] (_ZN9__gnu_cxx13new_allocatorIiEC2Ev, funcdef_no=2826, decl_uid=48115, cgraph_uid=941, symbol_order=989)


Pass statistics:
----------------


Pass statistics:
----------------

__gnu_cxx::new_allocator<_Tp>::new_allocator() [with _Tp = int] (struct new_allocatorD.48019 * const thisD.48116)
Eh tree:
   1 must_not_throw
{
  return;
}



;; Function void std::vector<_Tp, _Alloc>::push_back(const value_type&) [with _Tp = int; _Alloc = std::allocator<int>; std::vector<_Tp, _Alloc>::value_type = int] (_ZNSt6vectorIiSaIiEE9push_backERKi, funcdef_no=2584, decl_uid=49188, cgraph_uid=699, symbol_order=740)


Pass statistics:
----------------


Pass statistics:
----------------

void std::vector<_Tp, _Alloc>::push_back(const value_type&) [with _Tp = int; _Alloc = std::allocator<int>; std::vector<_Tp, _Alloc>::value_type = int] (struct vectorD.48008 * const thisD.49189, const value_typeD.48985 & __xD.49190)
{
  intD.9 * D.54753;
  intD.9 * D.54752;
  struct _Vector_implD.48851 * D.54751;
  intD.9 * D.54750;
  intD.9 * D.54747;
  intD.9 * D.54746;

  D.54746 = thisD.49189->D.49599._M_implD.48884._M_finishD.48887;
  D.54747 = thisD.49189->D.49599._M_implD.48884._M_end_of_storageD.48888;
  if (D.54746 != D.54747) goto <D.54748>; else goto <D.54749>;
  <D.54748>:
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__xD.49190, 2B, 4);
  D.54750 = thisD.49189->D.49599._M_implD.48884._M_finishD.48887;
  D.54751 = &thisD.49189->D.49599._M_implD.48884;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54751, 2B, 0);
  # USE = anything 
  # CLB = anything 
  _ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS0_PT_DpOS5_D.51131 (D.54751, D.54750, __xD.49190);
  D.54752 = thisD.49189->D.49599._M_implD.48884._M_finishD.48887;
  D.54753 = D.54752 + 4;
  thisD.49189->D.49599._M_implD.48884._M_finishD.48887 = D.54753;
  goto <D.54754>;
  <D.54749>:
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__xD.49190, 2B, 4);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.49189, 4B, 8);
  # USE = anything 
  # CLB = anything 
  _ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_D.51149 (thisD.49189, __xD.49190);
  <D.54754>:
  return;
}



;; Function static decltype (_S_construct(__a, __p, (forward<_Args>)(std::allocator_traits::construct::__args)...)) std::allocator_traits<_Alloc>::construct(_Alloc&, _Tp*, _Args&& ...) [with _Tp = int; _Args = {const int&}; _Alloc = std::allocator<int>; decltype (_S_construct(__a, __p, (forward<_Args>)(std::allocator_traits::construct::__args)...)) = <type error>] (_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS0_PT_DpOS5_, funcdef_no=2708, decl_uid=51131, cgraph_uid=824, symbol_order=865)


Pass statistics:
----------------


Pass statistics:
----------------

static decltype (_S_construct(__a, __p, (forward<_Args>)(std::allocator_traits::construct::__args)...)) std::allocator_traits<_Alloc>::construct(_Alloc&, _Tp*, _Args&& ...) [with _Tp = int; _Args = {const int&}; _Alloc = std::allocator<int>; decltype (_S_construct(__a, __p, (forward<_Args>)(std::allocator_traits::construct::__args)...)) = <type error>] (struct allocatorD.48007 & __aD.51132, intD.9 * __pD.51133, const intD.9 & __args#0D.51134)
{
  const intD.9 & D.54755;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__args#0D.51134, 2B, 4);
  # USE = anything 
  # CLB = anything 
  D.54755 = _ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeED.50909 (__args#0D.51134);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54755, 2B, 4);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__aD.51132, 2B, 0);
  # USE = anything 
  # CLB = anything 
  _ZNSt16allocator_traitsISaIiEE12_S_constructIiJRKiEEENSt9enable_ifIXsrSt6__and_IJNS1_18__construct_helperIT_JDpT0_EE4typeEEE5valueEvE4typeERS0_PS8_DpOS9_D.51127 (__aD.51132, __pD.51133, D.54755);
  return;
}



;; Function constexpr _Tp&& std::forward(typename std::remove_reference<_From>::type&) [with _Tp = const int&; typename std::remove_reference<_From>::type = const int] (_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, funcdef_no=2709, decl_uid=50909, cgraph_uid=823, symbol_order=864)


Pass statistics:
----------------


Pass statistics:
----------------

constexpr _Tp&& std::forward(typename std::remove_reference<_From>::type&) [with _Tp = const int&; typename std::remove_reference<_From>::type = const int] (const typeD.50907 & __tD.50910)
Eh tree:
   1 must_not_throw
{
  const intD.9 & D.54759;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__tD.50910, 2B, 4);
  D.54759 = __tD.50910;
  goto <D.54760>;
  <D.54760>:
  return D.54759;
}



;; Function static std::_Require<typename std::allocator_traits<_Alloc>::__construct_helper<_Tp, _Args>::type> std::allocator_traits<_Alloc>::_S_construct(_Alloc&, _Tp*, _Args&& ...) [with _Tp = int; _Args = {const int&}; _Alloc = std::allocator<int>; std::_Require<typename std::allocator_traits<_Alloc>::__construct_helper<_Tp, _Args>::type> = void] (_ZNSt16allocator_traitsISaIiEE12_S_constructIiJRKiEEENSt9enable_ifIXsrSt6__and_IJNS1_18__construct_helperIT_JDpT0_EE4typeEEE5valueEvE4typeERS0_PS8_DpOS9_, funcdef_no=2773, decl_uid=51127, cgraph_uid=888, symbol_order=929)


Pass statistics:
----------------


Pass statistics:
----------------

static std::_Require<typename std::allocator_traits<_Alloc>::__construct_helper<_Tp, _Args>::type> std::allocator_traits<_Alloc>::_S_construct(_Alloc&, _Tp*, _Args&& ...) [with _Tp = int; _Args = {const int&}; _Alloc = std::allocator<int>; std::_Require<typename std::allocator_traits<_Alloc>::__construct_helper<_Tp, _Args>::type> = void] (struct allocatorD.48007 & __aD.51128, intD.9 * __pD.51129, const intD.9 & __args#0D.51130)
{
  const intD.9 & D.54761;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__args#0D.51130, 2B, 4);
  # USE = anything 
  # CLB = anything 
  D.54761 = _ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeED.50909 (__args#0D.51130);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54761, 2B, 4);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__aD.51128, 4B, 0);
  # USE = anything 
  # CLB = anything 
  _ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_D.51101 (__aD.51128, __pD.51129, D.54761);
  return;
}



;; Function void __gnu_cxx::new_allocator<_Tp>::construct(_Up*, _Args&& ...) [with _Up = int; _Args = {const int&}; _Tp = int] (_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_, funcdef_no=2805, decl_uid=51101, cgraph_uid=920, symbol_order=964)


Pass statistics:
----------------


Pass statistics:
----------------

void __gnu_cxx::new_allocator<_Tp>::construct(_Up*, _Args&& ...) [with _Up = int; _Args = {const int&}; _Tp = int] (struct new_allocatorD.48019 * const thisD.51102, intD.9 * __pD.51103, const intD.9 & __args#0D.51104)
Eh tree:
   1 cleanup
{
  intD.9 * iftmp.21D.54763;
  voidD.45 * D.53158;
  voidD.45 * D.53157;
  const intD.9 & D.54762;
  intD.9 D.53159;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__args#0D.51104, 2B, 4);
  # USE = anything 
  # CLB = anything 
  D.54762 = _ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeED.50909 (__args#0D.51104);
  D.53159 = *D.54762;
  D.53157 = __pD.51103;
  # USE = anything 
  # CLB = anything 
  D.53158 = _ZnwmPvD.12697 (4, D.53157);
  if (D.53158 != 0B) goto <D.54764>; else goto <D.54765>;
  <D.54764>:
  MEM[(intD.9 *)D.53158] = D.53159;
  iftmp.21D.54763 = D.53158;
  goto <D.54766>;
  <D.54765>:
  iftmp.21D.54763 = D.53158;
  <D.54766>:
  return;
}



;; Function void* operator new(std::size_t, void*) (_ZnwmPv, funcdef_no=441, decl_uid=12697, cgraph_uid=177, symbol_order=182)


Pass statistics:
----------------


Pass statistics:
----------------

void* operator new(std::size_t, void*) (size_tD.2641 D.12695, voidD.45 * __pD.12696)
Eh tree:
   1 must_not_throw
{
  voidD.45 * D.54767;

  D.54767 = __pD.12696;
  goto <D.54768>;
  <D.54768>:
  return D.54767;
}



;; Function void std::vector<_Tp, _Alloc>::_M_emplace_back_aux(_Args&& ...) [with _Args = {const int&}; _Tp = int; _Alloc = std::allocator<int>] (_ZNSt6vectorIiSaIiEE19_M_emplace_back_auxIJRKiEEEvDpOT_, funcdef_no=2710, decl_uid=51149, cgraph_uid=825, symbol_order=866)


Pass statistics:
----------------


Pass statistics:
----------------

void std::vector<_Tp, _Alloc>::_M_emplace_back_aux(_Args&& ...) [with _Args = {const int&}; _Tp = int; _Alloc = std::allocator<int>] (struct vectorD.48008 * const thisD.51150, const intD.9 & __args#0D.51151)
Eh tree:
   3 must_not_throw
   2 cleanup land:{2,<D.54808>}
   1 try land:{1,<D.54810>} catch:{lab:<D.54809>;}
{
  intD.9 * D.54807;
  intD.9 * D.54806;
  const size_typeD.48998 D.54805;
  intD.9 * __new_finishD.51700;
  intD.9 * __new_startD.51699;
  const size_typeD.48998 __lenD.51698;
  intD.9 * D.54804;
  long unsigned intD.14 D.54803;
  struct _Vector_baseD.48010 * D.54802;
  intD.9 * D.54801;
  long unsigned intD.14 D.54800;
  long intD.12 D.54799;
  long intD.12 D.54798;
  long intD.12 D.54797;
  intD.9 * D.54796;
  long intD.12 D.54795;
  intD.9 * D.54794;
  intD.9 * D.54793;
  intD.9 * D.54792;
  struct _Tp_alloc_typeD.48012 & D.54791;
  struct _Vector_baseD.48010 * D.54790;
  struct _Vector_baseD.48010 * D.54789;
  struct _Tp_alloc_typeD.48012 & D.54788;
  struct _Vector_baseD.48010 * D.54787;
  struct _Vector_implD.48851 * D.54785;
  intD.9 * D.54784;
  long unsigned intD.14 D.54783;
  long unsigned intD.14 D.54782;
  voidD.45 * D.54779;
  intD.9 * D.54778;
  intD.9 * D.54777;
  struct _Tp_alloc_typeD.48012 & D.54776;
  struct _Vector_baseD.48010 * D.54775;
  struct _Vector_implD.48851 * D.54774;
  intD.9 * D.54773;
  long unsigned intD.14 D.54772;
  long unsigned intD.14 D.54771;
  const intD.9 & D.54770;
  struct _Vector_baseD.48010 * D.54769;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.51150, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54805 = _ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKcD.49474 (thisD.51150, 1, "vector::_M_emplace_back_aux");
  __lenD.51698 = D.54805;
  D.54769 = &thisD.51150->D.49599;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54769, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54806 = _ZNSt12_Vector_baseIiSaIiEE11_M_allocateEmD.48919 (D.54769, __lenD.51698);
  __new_startD.51699 = D.54806;
  __new_finishD.51700 = __new_startD.51699;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__args#0D.51151, 2B, 4);
  # USE = anything 
  # CLB = anything 
  D.54770 = _ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeED.50909 (__args#0D.51151);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54770, 2B, 4);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.51150, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54771 = _ZNKSt6vectorIiSaIiEE4sizeEvD.49141 (thisD.51150);
  D.54772 = D.54771 * 4;
  D.54773 = __new_startD.51699 + D.54772;
  D.54774 = &thisD.51150->D.49599._M_implD.48884;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54774, 2B, 0);
  [LP 1] # USE = anything 
  # CLB = anything 
  _ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEDTcl12_S_constructfp_fp0_spcl7forwardIT0_Efp1_EEERS0_PT_DpOS5_D.51131 (D.54774, D.54773, D.54770);
  __new_finishD.51700 = 0B;
  D.54775 = &thisD.51150->D.49599;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54775, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54776 = _ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEvD.48853 (D.54775);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54776, 2B, 0);
  D.54777 = thisD.51150->D.49599._M_implD.48884._M_finishD.48887;
  D.54778 = thisD.51150->D.49599._M_implD.48884._M_startD.48886;
  [LP 1] # USE = anything 
  # CLB = anything 
  D.54807 = _ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_D.51701 (D.54778, D.54777, __new_startD.51699, D.54776);
  __new_finishD.51700 = D.54807;
  __new_finishD.51700 = __new_finishD.51700 + 4;
  D.54790 = &thisD.51150->D.49599;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54790, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54791 = _ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEvD.48853 (D.54790);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54791, 2B, 0);
  D.54792 = thisD.51150->D.49599._M_implD.48884._M_finishD.48887;
  D.54793 = thisD.51150->D.49599._M_implD.48884._M_startD.48886;
  # USE = anything 
  # CLB = anything 
  _ZSt8_DestroyIPiiEvT_S1_RSaIT0_ED.50884 (D.54793, D.54792, D.54791);
  D.54794 = thisD.51150->D.49599._M_implD.48884._M_end_of_storageD.48888;
  D.54795 = (long intD.12) D.54794;
  D.54796 = thisD.51150->D.49599._M_implD.48884._M_startD.48886;
  D.54797 = (long intD.12) D.54796;
  D.54798 = D.54795 - D.54797;
  D.54799 = D.54798 /[ex] 4;
  D.54800 = (long unsigned intD.14) D.54799;
  D.54801 = thisD.51150->D.49599._M_implD.48884._M_startD.48886;
  D.54802 = &thisD.51150->D.49599;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54802, 4B, 8);
  # USE = anything 
  # CLB = anything 
  _ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPimD.48922 (D.54802, D.54801, D.54800);
  thisD.51150->D.49599._M_implD.48884._M_startD.48886 = __new_startD.51699;
  thisD.51150->D.49599._M_implD.48884._M_finishD.48887 = __new_finishD.51700;
  D.54803 = __lenD.51698 * 4;
  D.54804 = __new_startD.51699 + D.54803;
  thisD.51150->D.49599._M_implD.48884._M_end_of_storageD.48888 = D.54804;
  return;
  <D.54810>: [LP 1]
  eh_dispatch 1
  resx 1
  <D.54809>:
  # USE = anything 
  D.54779 = __builtin_eh_pointerD.2560 (1);
  # USE = anything 
  # CLB = anything 
  __cxa_begin_catchD.23294 (D.54779);
  if (__new_finishD.51700 == 0B) goto <D.54780>; else goto <D.54781>;
  <D.54780>:
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.51150, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54782 = _ZNKSt6vectorIiSaIiEE4sizeEvD.49141 (thisD.51150);
  D.54783 = D.54782 * 4;
  D.54784 = __new_startD.51699 + D.54783;
  D.54785 = &thisD.51150->D.49599._M_implD.48884;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54785, 2B, 0);
  [LP 2] # USE = anything 
  # CLB = anything 
  _ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_D.51276 (D.54785, D.54784);
  goto <D.54786>;
  <D.54781>:
  D.54787 = &thisD.51150->D.49599;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54787, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54788 = _ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEvD.48853 (D.54787);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54788, 2B, 0);
  [LP 2] # USE = anything 
  # CLB = anything 
  _ZSt8_DestroyIPiiEvT_S1_RSaIT0_ED.50884 (__new_startD.51699, __new_finishD.51700, D.54788);
  <D.54786>:
  D.54789 = &thisD.51150->D.49599;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54789, 4B, 8);
  [LP 2] # USE = anything 
  # CLB = anything 
  _ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPimD.48922 (D.54789, __new_startD.51699, __lenD.51698);
  [LP 2] # USE = anything 
  # CLB = anything 
  __cxa_rethrowD.51706 ();
  <D.54808>: [LP 2]
  [MNT 3] # USE = anything 
  # CLB = anything 
  __cxa_end_catchD.23293 ();
  resx 2
}



;; Function std::vector<_Tp, _Alloc>::size_type std::vector<_Tp, _Alloc>::_M_check_len(std::vector<_Tp, _Alloc>::size_type, const char*) const [with _Tp = int; _Alloc = std::allocator<int>; std::vector<_Tp, _Alloc>::size_type = long unsigned int] (_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, funcdef_no=2774, decl_uid=49474, cgraph_uid=890, symbol_order=932)


Pass statistics:
----------------


Pass statistics:
----------------

std::vector<_Tp, _Alloc>::size_type std::vector<_Tp, _Alloc>::_M_check_len(std::vector<_Tp, _Alloc>::size_type, const char*) const [with _Tp = int; _Alloc = std::allocator<int>; std::vector<_Tp, _Alloc>::size_type = long unsigned int] (const struct vectorD.48008 * const thisD.49475, size_typeD.48998 __nD.49476, const charD.10 * __sD.49477)
Eh tree:
   1 cleanup
{
  const size_typeD.48998 __lenD.52166;
  long unsigned intD.14 D.54831;
  long unsigned intD.14 D.54829;
  size_typeD.48998 iftmp.25D.54825;
  size_typeD.48998 D.54824;
  long unsigned intD.14 D.54823;
  const long unsigned intD.14 & D.54822;
  const long unsigned intD.14 * D.54821;
  long unsigned intD.14 D.54820;
  const long unsigned intD.14 D.52170;
  long unsigned intD.14 D.54819;
  const charD.10 * __s.24D.54818;
  long unsigned intD.14 __n.23D.54815;
  long unsigned intD.14 D.54814;
  long unsigned intD.14 D.54813;
  long unsigned intD.14 D.54812;
  boolD.2579 retval.22D.54811;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.49475, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54812 = _ZNKSt6vectorIiSaIiEE8max_sizeEvD.49143 (thisD.49475);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.49475, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54813 = _ZNKSt6vectorIiSaIiEE4sizeEvD.49141 (thisD.49475);
  D.54814 = D.54812 - D.54813;
  __n.23D.54815 = __nD.49476;
  retval.22D.54811 = D.54814 < __n.23D.54815;
  if (retval.22D.54811 != 0) goto <D.54816>; else goto <D.54817>;
  <D.54816>:
  __s.24D.54818 = __sD.49477;
  # USE = anything 
  # CLB = anything 
  __throw_length_errorD.4693 (__s.24D.54818);
  <D.54817>:
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.49475, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54819 = _ZNKSt6vectorIiSaIiEE4sizeEvD.49141 (thisD.49475);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.49475, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54820 = _ZNKSt6vectorIiSaIiEE4sizeEvD.49141 (thisD.49475);
  D.52170 = D.54820;
  D.54821 = &D.52170;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54821, 2B, 8);
  # USE = anything 
  # CLB = anything 
  D.54822 = _ZSt3maxImERKT_S2_S2_D.52167 (D.54821, &__nD.49476);
  D.54823 = *D.54822;
  __lenD.52166 = D.54819 + D.54823;
  D.52170 = {CLOBBER};
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.49475, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54829 = _ZNKSt6vectorIiSaIiEE4sizeEvD.49141 (thisD.49475);
  if (D.54829 > __lenD.52166) goto <D.54826>; else goto <D.54830>;
  <D.54830>:
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.49475, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54831 = _ZNKSt6vectorIiSaIiEE8max_sizeEvD.49143 (thisD.49475);
  if (D.54831 < __lenD.52166) goto <D.54826>; else goto <D.54827>;
  <D.54826>:
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.49475, 4B, 8);
  # USE = anything 
  # CLB = anything 
  iftmp.25D.54825 = _ZNKSt6vectorIiSaIiEE8max_sizeEvD.49143 (thisD.49475);
  goto <D.54828>;
  <D.54827>:
  iftmp.25D.54825 = __lenD.52166;
  <D.54828>:
  D.54824 = iftmp.25D.54825;
  goto <D.54832>;
  # USE = anything 
  # CLB = anything 
  __ubsan_handle_missing_returnD.2054 (&*.Lubsan_data30D.52186);
  <D.54832>:
  return D.54824;
}



;; Function constexpr const _Tp& std::max(const _Tp&, const _Tp&) [with _Tp = long unsigned int] (_ZSt3maxImERKT_S2_S2_, funcdef_no=2775, decl_uid=52167, cgraph_uid=889, symbol_order=930)


Pass statistics:
----------------


Pass statistics:
----------------

constexpr const _Tp& std::max(const _Tp&, const _Tp&) [with _Tp = long unsigned int] (const long unsigned intD.14 & __aD.52168, const long unsigned intD.14 & __bD.52169)
{
  const long unsigned intD.14 & D.54837;
  long unsigned intD.14 D.54834;
  long unsigned intD.14 D.54833;

  D.54833 = *__aD.52168;
  D.54834 = *__bD.52169;
  if (D.54833 < D.54834) goto <D.54835>; else goto <D.54836>;
  <D.54835>:
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__bD.52169, 2B, 8);
  D.54837 = __bD.52169;
  goto <D.54838>;
  <D.54836>:
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__aD.52168, 2B, 8);
  D.54837 = __aD.52168;
  goto <D.54838>;
  <D.54838>:
  return D.54837;
}



;; Function std::vector<_Tp, _Alloc>::size_type std::vector<_Tp, _Alloc>::max_size() const [with _Tp = int; _Alloc = std::allocator<int>; std::vector<_Tp, _Alloc>::size_type = long unsigned int] (_ZNKSt6vectorIiSaIiEE8max_sizeEv, funcdef_no=2806, decl_uid=49143, cgraph_uid=921, symbol_order=965)


Pass statistics:
----------------


Pass statistics:
----------------

std::vector<_Tp, _Alloc>::size_type std::vector<_Tp, _Alloc>::max_size() const [with _Tp = int; _Alloc = std::allocator<int>; std::vector<_Tp, _Alloc>::size_type = long unsigned int] (const struct vectorD.48008 * const thisD.49144)
Eh tree:
   1 must_not_throw
{
  const struct _Tp_alloc_typeD.48012 & D.54842;
  const struct _Vector_baseD.48010 * D.54841;
  const struct _Vector_baseD.48010 * D.54840;
  size_typeD.48998 D.54839;

  D.54840 = &thisD.49144->D.49599;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54840, 4B, 8);
  D.54841 = &thisD.49144->D.49599;
  # USE = anything 
  # CLB = anything 
  D.54842 = _ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEvD.48855 (D.54841);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54842, 2B, 0);
  # USE = anything 
  # CLB = anything 
  D.54839 = _ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_D.48721 (D.54842);
  goto <D.54843>;
  <D.54843>:
  return D.54839;
}



;; Function const _Tp_alloc_type& std::_Vector_base<_Tp, _Alloc>::_M_get_Tp_allocator() const [with _Tp = int; _Alloc = std::allocator<int>; std::_Vector_base<_Tp, _Alloc>::_Tp_alloc_type = std::allocator<int>] (_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, funcdef_no=2830, decl_uid=48855, cgraph_uid=945, symbol_order=993)


Pass statistics:
----------------


Pass statistics:
----------------

const _Tp_alloc_type& std::_Vector_base<_Tp, _Alloc>::_M_get_Tp_allocator() const [with _Tp = int; _Alloc = std::allocator<int>; std::_Vector_base<_Tp, _Alloc>::_Tp_alloc_type = std::allocator<int>] (const struct _Vector_baseD.48010 * const thisD.48856)
Eh tree:
   1 must_not_throw
{
  const struct _Vector_implD.48851 * D.54845;
  const struct _Tp_alloc_typeD.48012 & D.54844;

  D.54845 = &thisD.48856->_M_implD.48884;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54845, 2B, 0);
  D.54844 = &thisD.48856->_M_implD.48884;
  goto <D.54846>;
  <D.54846>:
  return D.54844;
}



;; Function static std::allocator_traits<_Alloc>::size_type std::allocator_traits<_Alloc>::max_size(const _Alloc&) [with _Alloc = std::allocator<int>; std::allocator_traits<_Alloc>::size_type = long unsigned int] (_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, funcdef_no=2829, decl_uid=48721, cgraph_uid=944, symbol_order=992)


Pass statistics:
----------------


Pass statistics:
----------------

static std::allocator_traits<_Alloc>::size_type std::allocator_traits<_Alloc>::max_size(const _Alloc&) [with _Alloc = std::allocator<int>; std::allocator_traits<_Alloc>::size_type = long unsigned int] (const struct allocatorD.48007 & __aD.48722)
Eh tree:
   1 must_not_throw
{
  size_typeD.48351 D.54847;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__aD.48722, 2B, 0);
  # USE = anything 
  # CLB = anything 
  D.54847 = _ZNSt16allocator_traitsISaIiEE11_S_max_sizeIKS0_vEEmRT_iD.53849 (__aD.48722, 0);
  goto <D.54848>;
  <D.54848>:
  return D.54847;
}



;; Function static std::allocator_traits<_Alloc>::size_type std::allocator_traits<_Alloc>::_S_max_size(_Alloc2&, int) [with _Alloc2 = const std::allocator<int>; <template-parameter-2-2> = void; _Alloc = std::allocator<int>; std::allocator_traits<_Alloc>::size_type = long unsigned int] (_ZNSt16allocator_traitsISaIiEE11_S_max_sizeIKS0_vEEmRT_i, funcdef_no=2855, decl_uid=53849, cgraph_uid=970, symbol_order=1021)


Pass statistics:
----------------


Pass statistics:
----------------

static std::allocator_traits<_Alloc>::size_type std::allocator_traits<_Alloc>::_S_max_size(_Alloc2&, int) [with _Alloc2 = const std::allocator<int>; <template-parameter-2-2> = void; _Alloc = std::allocator<int>; std::allocator_traits<_Alloc>::size_type = long unsigned int] (const struct allocatorD.48007 & __aD.53850, intD.9 D.53851)
{
  size_typeD.48351 D.54849;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__aD.53850, 4B, 0);
  # USE = anything 
  # CLB = anything 
  D.54849 = _ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEvD.48073 (__aD.53850);
  goto <D.54850>;
  <D.54850>:
  return D.54849;
}



;; Function __gnu_cxx::new_allocator<_Tp>::size_type __gnu_cxx::new_allocator<_Tp>::max_size() const [with _Tp = int; __gnu_cxx::new_allocator<_Tp>::size_type = long unsigned int] (_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv, funcdef_no=2856, decl_uid=48073, cgraph_uid=971, symbol_order=1022)


Pass statistics:
----------------


Pass statistics:
----------------

__gnu_cxx::new_allocator<_Tp>::size_type __gnu_cxx::new_allocator<_Tp>::max_size() const [with _Tp = int; __gnu_cxx::new_allocator<_Tp>::size_type = long unsigned int] (const struct new_allocatorD.48019 * const thisD.48074)
Eh tree:
   1 must_not_throw
{
  size_typeD.48021 D.54851;

  D.54851 = 4611686018427387903;
  goto <D.54852>;
  <D.54852>:
  return D.54851;
}



;; Function std::_Vector_base<_Tp, _Alloc>::pointer std::_Vector_base<_Tp, _Alloc>::_M_allocate(std::size_t) [with _Tp = int; _Alloc = std::allocator<int>; std::_Vector_base<_Tp, _Alloc>::pointer = int*; std::size_t = long unsigned int] (_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, funcdef_no=2776, decl_uid=48919, cgraph_uid=891, symbol_order=933)


Pass statistics:
----------------


Pass statistics:
----------------

std::_Vector_base<_Tp, _Alloc>::pointer std::_Vector_base<_Tp, _Alloc>::_M_allocate(std::size_t) [with _Tp = int; _Alloc = std::allocator<int>; std::_Vector_base<_Tp, _Alloc>::pointer = int*; std::size_t = long unsigned int] (struct _Vector_baseD.48010 * const thisD.48920, size_tD.2641 __nD.48921)
{
  intD.9 * D.54860;
  struct _Vector_implD.48851 * D.54857;
  intD.9 * iftmp.26D.54854;
  intD.9 * D.54853;

  if (__nD.48921 != 0) goto <D.54855>; else goto <D.54856>;
  <D.54855>:
  D.54857 = &thisD.48920->_M_implD.48884;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54857, 2B, 0);
  # USE = anything 
  # CLB = anything 
  D.54860 = _ZNSt16allocator_traitsISaIiEE8allocateERS0_mD.48678 (D.54857, __nD.48921);
  iftmp.26D.54854 = D.54860;
  goto <D.54858>;
  <D.54856>:
  iftmp.26D.54854 = 0B;
  <D.54858>:
  D.54853 = iftmp.26D.54854;
  goto <D.54859>;
  <D.54859>:
  return D.54853;
}



;; Function static std::allocator_traits<_Alloc>::pointer std::allocator_traits<_Alloc>::allocate(_Alloc&, std::allocator_traits<_Alloc>::size_type) [with _Alloc = std::allocator<int>; std::allocator_traits<_Alloc>::pointer = int*; std::allocator_traits<_Alloc>::size_type = long unsigned int] (_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, funcdef_no=2807, decl_uid=48678, cgraph_uid=922, symbol_order=966)


Pass statistics:
----------------


Pass statistics:
----------------

static std::allocator_traits<_Alloc>::pointer std::allocator_traits<_Alloc>::allocate(_Alloc&, std::allocator_traits<_Alloc>::size_type) [with _Alloc = std::allocator<int>; std::allocator_traits<_Alloc>::pointer = int*; std::allocator_traits<_Alloc>::size_type = long unsigned int] (struct allocatorD.48007 & __aD.48679, size_typeD.48351 __nD.48680)
{
  intD.9 * D.54863;
  intD.9 * D.54861;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__aD.48679, 4B, 0);
  # USE = anything 
  # CLB = anything 
  D.54863 = _ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKvD.48065 (__aD.48679, __nD.48680, 0B);
  D.54861 = D.54863;
  goto <D.54862>;
  <D.54862>:
  return D.54861;
}



;; Function _Tp* __gnu_cxx::new_allocator<_Tp>::allocate(__gnu_cxx::new_allocator<_Tp>::size_type, const void*) [with _Tp = int; __gnu_cxx::new_allocator<_Tp>::pointer = int*; __gnu_cxx::new_allocator<_Tp>::size_type = long unsigned int] (_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv, funcdef_no=2831, decl_uid=48065, cgraph_uid=946, symbol_order=994)


Pass statistics:
----------------


Pass statistics:
----------------

_Tp* __gnu_cxx::new_allocator<_Tp>::allocate(__gnu_cxx::new_allocator<_Tp>::size_type, const void*) [with _Tp = int; __gnu_cxx::new_allocator<_Tp>::pointer = int*; __gnu_cxx::new_allocator<_Tp>::size_type = long unsigned int] (struct new_allocatorD.48019 * const thisD.48066, size_typeD.48021 __nD.48067, const voidD.45 * D.48068)
{
  intD.9 * D.54871;
  long unsigned intD.14 D.54869;
  intD.9 * D.54868;
  long unsigned intD.14 D.54865;
  boolD.2579 retval.27D.54864;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.48066, 4B, 0);
  # USE = anything 
  # CLB = anything 
  D.54865 = _ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEvD.48073 (thisD.48066);
  retval.27D.54864 = D.54865 < __nD.48067;
  if (retval.27D.54864 != 0) goto <D.54866>; else goto <D.54867>;
  <D.54866>:
  # USE = anything 
  # CLB = anything 
  __throw_bad_allocD.4683 ();
  <D.54867>:
  D.54869 = __nD.48067 * 4;
  # USE = anything 
  # CLB = anything 
  D.54871 = _ZnwmD.2585 (D.54869);
  D.54868 = D.54871;
  goto <D.54870>;
  <D.54870>:
  return D.54868;
}



;; Function _ForwardIterator std::__uninitialized_move_if_noexcept_a(_InputIterator, _InputIterator, _ForwardIterator, _Allocator&) [with _InputIterator = int*; _ForwardIterator = int*; _Allocator = std::allocator<int>] (_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_, funcdef_no=2778, decl_uid=51701, cgraph_uid=893, symbol_order=935)


Pass statistics:
----------------


Pass statistics:
----------------

_ForwardIterator std::__uninitialized_move_if_noexcept_a(_InputIterator, _InputIterator, _ForwardIterator, _Allocator&) [with _InputIterator = int*; _ForwardIterator = int*; _Allocator = std::allocator<int>] (intD.9 * __firstD.51702, intD.9 * __lastD.51703, intD.9 * __resultD.51704, struct allocatorD.48007 & __allocD.51705)
{
  intD.9 * D.54876;
  struct move_iteratorD.52392 D.54874;
  struct move_iteratorD.52392 D.54873;
  intD.9 * D.54872;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__allocD.51705, 2B, 0);
  # USE = anything 
  # CLB = anything 
  D.54873 = _ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_D.52397 (__lastD.51703);
  # USE = anything 
  # CLB = anything 
  D.54874 = _ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_D.52397 (__firstD.51702);
  # USE = anything 
  # CLB = anything 
  D.54876 = _ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_ED.52509 (D.54874, D.54873, __resultD.51704, __allocD.51705);
  D.54872 = D.54876;
  goto <D.54875>;
  <D.54875>:
  return D.54872;
}



;; Function _ReturnType std::__make_move_if_noexcept_iterator(_Iterator) [with _Iterator = int*; _ReturnType = std::move_iterator<int*>] (_ZSt32__make_move_if_noexcept_iteratorIPiSt13move_iteratorIS0_EET0_T_, funcdef_no=2808, decl_uid=52397, cgraph_uid=923, symbol_order=967)


Pass statistics:
----------------


Pass statistics:
----------------

_ReturnType std::__make_move_if_noexcept_iterator(_Iterator) [with _Iterator = int*; _ReturnType = std::move_iterator<int*>] (intD.9 * __iD.52398)
Eh tree:
   1 cleanup
{
  struct move_iteratorD.52392 D.53167;
  struct move_iteratorD.52392 D.54877;

  # USE = anything 
  # CLB = anything 
  _ZNSt13move_iteratorIPiEC1ES0_D.52487 (&D.53167, __iD.52398);
  D.54877 = D.53167;
  goto <D.54879>;
  <D.54879>:
  D.53167 = {CLOBBER};
  goto <D.54878>;
  <D.54878>:
  return D.54877;
}



;; Function std::move_iterator<_Iterator>::move_iterator(std::move_iterator<_Iterator>::iterator_type) [with _Iterator = int*; std::move_iterator<_Iterator>::iterator_type = int*] (_ZNSt13move_iteratorIPiEC2ES0_, funcdef_no=2833, decl_uid=52490, cgraph_uid=948, symbol_order=996)


Pass statistics:
----------------


Pass statistics:
----------------

std::move_iterator<_Iterator>::move_iterator(std::move_iterator<_Iterator>::iterator_type) [with _Iterator = int*; std::move_iterator<_Iterator>::iterator_type = int*] (struct move_iteratorD.52392 * const thisD.52491, intD.9 * __iD.52492)
{
  thisD.52491->_M_currentD.52400 = __iD.52492;
  return;
}



;; Function _ForwardIterator std::__uninitialized_copy_a(_InputIterator, _InputIterator, _ForwardIterator, std::allocator<_Tp>&) [with _InputIterator = std::move_iterator<int*>; _ForwardIterator = int*; _Tp = int] (_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E, funcdef_no=2809, decl_uid=52509, cgraph_uid=924, symbol_order=968)


Pass statistics:
----------------


Pass statistics:
----------------

_ForwardIterator std::__uninitialized_copy_a(_InputIterator, _InputIterator, _ForwardIterator, std::allocator<_Tp>&) [with _InputIterator = std::move_iterator<int*>; _ForwardIterator = int*; _Tp = int] (struct move_iteratorD.52392 __firstD.52510, struct move_iteratorD.52392 __lastD.52511, intD.9 * __resultD.52512, struct allocatorD.48007 & D.52513)
{
  intD.9 * D.54882;
  intD.9 * D.54880;

  # USE = anything 
  # CLB = anything 
  D.54882 = _ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_D.53169 (__firstD.52510, __lastD.52511, __resultD.52512);
  D.54880 = D.54882;
  goto <D.54881>;
  <D.54881>:
  return D.54880;
}



;; Function _ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = std::move_iterator<int*>; _ForwardIterator = int*] (_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_, funcdef_no=2835, decl_uid=53169, cgraph_uid=950, symbol_order=999)


Pass statistics:
----------------


Pass statistics:
----------------

_ForwardIterator std::uninitialized_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = std::move_iterator<int*>; _ForwardIterator = int*] (struct move_iteratorD.52392 __firstD.53170, struct move_iteratorD.52392 __lastD.53171, intD.9 * __resultD.53172)
{
  intD.9 * D.54885;
  const boolD.2579 __assignableD.53876;
  intD.9 * D.54883;

  __assignableD.53876 = 1;
  # USE = anything 
  # CLB = anything 
  D.54885 = _ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_D.53942 (__firstD.53170, __lastD.53171, __resultD.53172);
  D.54883 = D.54885;
  goto <D.54884>;
  # USE = anything 
  # CLB = anything 
  __ubsan_handle_missing_returnD.2054 (&*.Lubsan_data35D.53950);
  <D.54884>:
  return D.54883;
}



;; Function static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = std::move_iterator<int*>; _ForwardIterator = int*] (_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_, funcdef_no=2857, decl_uid=53942, cgraph_uid=972, symbol_order=1023)


Pass statistics:
----------------


Pass statistics:
----------------

static _ForwardIterator std::__uninitialized_copy<true>::__uninit_copy(_InputIterator, _InputIterator, _ForwardIterator) [with _InputIterator = std::move_iterator<int*>; _ForwardIterator = int*] (struct move_iteratorD.52392 __firstD.53943, struct move_iteratorD.52392 __lastD.53944, intD.9 * __resultD.53945)
{
  intD.9 * D.54888;
  intD.9 * D.54886;

  # USE = anything 
  # CLB = anything 
  D.54888 = _ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_D.54013 (__firstD.53943, __lastD.53944, __resultD.53945);
  D.54886 = D.54888;
  goto <D.54887>;
  <D.54887>:
  return D.54886;
}



;; Function _OI std::copy(_II, _II, _OI) [with _II = std::move_iterator<int*>; _OI = int*] (_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_, funcdef_no=2867, decl_uid=54013, cgraph_uid=982, symbol_order=1033)


Pass statistics:
----------------


Pass statistics:
----------------

_OI std::copy(_II, _II, _OI) [with _II = std::move_iterator<int*>; _OI = int*] (struct move_iteratorD.52392 __firstD.54014, struct move_iteratorD.52392 __lastD.54015, intD.9 * __resultD.54016)
{
  intD.9 * D.54895;
  intD.9 * D.54894;
  intD.9 * D.54893;
  intD.9 * D.54891;
  intD.9 * D.54890;
  intD.9 * D.54889;

  # USE = anything 
  # CLB = anything 
  D.54893 = _ZSt12__miter_baseISt13move_iteratorIPiEENSt11_Miter_baseIT_E13iterator_typeES4_D.54049 (__lastD.54015);
  D.54890 = D.54893;
  # USE = anything 
  # CLB = anything 
  D.54894 = _ZSt12__miter_baseISt13move_iteratorIPiEENSt11_Miter_baseIT_E13iterator_typeES4_D.54049 (__firstD.54014);
  D.54891 = D.54894;
  # USE = anything 
  # CLB = anything 
  D.54895 = _ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_D.54053 (D.54891, D.54890, __resultD.54016);
  D.54889 = D.54895;
  goto <D.54892>;
  <D.54892>:
  return D.54889;
}



;; Function typename std::_Miter_base<_Iterator>::iterator_type std::__miter_base(_Iterator) [with _Iterator = std::move_iterator<int*>; typename std::_Miter_base<_Iterator>::iterator_type = int*] (_ZSt12__miter_baseISt13move_iteratorIPiEENSt11_Miter_baseIT_E13iterator_typeES4_, funcdef_no=2868, decl_uid=54049, cgraph_uid=983, symbol_order=1034)


Pass statistics:
----------------


Pass statistics:
----------------

typename std::_Miter_base<_Iterator>::iterator_type std::__miter_base(_Iterator) [with _Iterator = std::move_iterator<int*>; typename std::_Miter_base<_Iterator>::iterator_type = int*] (struct move_iteratorD.52392 __itD.54050)
{
  intD.9 * D.54898;
  intD.9 * D.54896;

  # USE = anything 
  # CLB = anything 
  D.54898 = _ZNSt10_Iter_baseISt13move_iteratorIPiELb1EE7_S_baseES2_D.54045 (__itD.54050);
  D.54896 = D.54898;
  goto <D.54897>;
  <D.54897>:
  return D.54896;
}



;; Function static std::_Iter_base<_Iterator, true>::iterator_type std::_Iter_base<_Iterator, true>::_S_base(_Iterator) [with _Iterator = std::move_iterator<int*>; std::_Iter_base<_Iterator, true>::iterator_type = int*] (_ZNSt10_Iter_baseISt13move_iteratorIPiELb1EE7_S_baseES2_, funcdef_no=2870, decl_uid=54045, cgraph_uid=985, symbol_order=1036)


Pass statistics:
----------------


Pass statistics:
----------------

static std::_Iter_base<_Iterator, true>::iterator_type std::_Iter_base<_Iterator, true>::_S_base(_Iterator) [with _Iterator = std::move_iterator<int*>; std::_Iter_base<_Iterator, true>::iterator_type = int*] (struct move_iteratorD.52392 __itD.54046)
{
  intD.9 * D.54899;

  # USE = anything 
  # CLB = anything 
  D.54899 = _ZNKSt13move_iteratorIPiE4baseEvD.52448 (&__itD.54046);
  goto <D.54900>;
  <D.54900>:
  return D.54899;
}



;; Function std::move_iterator<_Iterator>::iterator_type std::move_iterator<_Iterator>::base() const [with _Iterator = int*; std::move_iterator<_Iterator>::iterator_type = int*] (_ZNKSt13move_iteratorIPiE4baseEv, funcdef_no=2873, decl_uid=52448, cgraph_uid=988, symbol_order=1040)


Pass statistics:
----------------


Pass statistics:
----------------

std::move_iterator<_Iterator>::iterator_type std::move_iterator<_Iterator>::base() const [with _Iterator = int*; std::move_iterator<_Iterator>::iterator_type = int*] (const struct move_iteratorD.52392 * const thisD.52449)
{
  intD.9 * D.54901;

  D.54901 = thisD.52449->_M_currentD.52400;
  goto <D.54902>;
  <D.54902>:
  return D.54901;
}



;; Function _OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = true; _II = int*; _OI = int*] (_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_, funcdef_no=2869, decl_uid=54053, cgraph_uid=984, symbol_order=1035)


Pass statistics:
----------------


Pass statistics:
----------------

_OI std::__copy_move_a2(_II, _II, _OI) [with bool _IsMove = true; _II = int*; _OI = int*] (intD.9 * __firstD.54054, intD.9 * __lastD.54055, intD.9 * __resultD.54056)
{
  intD.9 * D.54911;
  intD.9 * D.54910;
  intD.9 * D.54909;
  intD.9 * D.54908;
  intD.9 * D.54906;
  intD.9 * D.54905;
  intD.9 * D.54904;
  intD.9 * D.54903;

  # USE = anything 
  # CLB = anything 
  D.54908 = _ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_D.54074 (__resultD.54056);
  D.54904 = D.54908;
  # USE = anything 
  # CLB = anything 
  D.54909 = _ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_D.54074 (__lastD.54055);
  D.54905 = D.54909;
  # USE = anything 
  # CLB = anything 
  D.54910 = _ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_D.54074 (__firstD.54054);
  D.54906 = D.54910;
  # USE = anything 
  # CLB = anything 
  D.54911 = _ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_D.54076 (D.54906, D.54905, D.54904);
  D.54903 = D.54911;
  goto <D.54907>;
  <D.54907>:
  return D.54903;
}



;; Function typename std::_Niter_base<_Iterator>::iterator_type std::__niter_base(_Iterator) [with _Iterator = int*; typename std::_Niter_base<_Iterator>::iterator_type = int*] (_ZSt12__niter_baseIPiENSt11_Niter_baseIT_E13iterator_typeES2_, funcdef_no=2871, decl_uid=54074, cgraph_uid=986, symbol_order=1037)


Pass statistics:
----------------


Pass statistics:
----------------

typename std::_Niter_base<_Iterator>::iterator_type std::__niter_base(_Iterator) [with _Iterator = int*; typename std::_Niter_base<_Iterator>::iterator_type = int*] (intD.9 * __itD.54075)
{
  intD.9 * D.54912;

  # USE = anything 
  # CLB = anything 
  D.54912 = _ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_D.54070 (__itD.54075);
  goto <D.54913>;
  <D.54913>:
  return D.54912;
}



;; Function static std::_Iter_base<_Iterator, _HasBase>::iterator_type std::_Iter_base<_Iterator, _HasBase>::_S_base(_Iterator) [with _Iterator = int*; bool _HasBase = false; std::_Iter_base<_Iterator, _HasBase>::iterator_type = int*] (_ZNSt10_Iter_baseIPiLb0EE7_S_baseES0_, funcdef_no=2874, decl_uid=54070, cgraph_uid=989, symbol_order=1041)


Pass statistics:
----------------


Pass statistics:
----------------

static std::_Iter_base<_Iterator, _HasBase>::iterator_type std::_Iter_base<_Iterator, _HasBase>::_S_base(_Iterator) [with _Iterator = int*; bool _HasBase = false; std::_Iter_base<_Iterator, _HasBase>::iterator_type = int*] (intD.9 * __itD.54071)
{
  intD.9 * D.54914;

  D.54914 = __itD.54071;
  goto <D.54915>;
  <D.54915>:
  return D.54914;
}



;; Function _OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = true; _II = int*; _OI = int*] (_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_, funcdef_no=2872, decl_uid=54076, cgraph_uid=987, symbol_order=1039)


Pass statistics:
----------------


Pass statistics:
----------------

_OI std::__copy_move_a(_II, _II, _OI) [with bool _IsMove = true; _II = int*; _OI = int*] (intD.9 * __firstD.54077, intD.9 * __lastD.54078, intD.9 * __resultD.54079)
{
  const boolD.2579 __simpleD.54087;
  intD.9 * D.54916;

  __simpleD.54087 = 1;
  # USE = anything 
  # CLB = anything 
  D.54916 = _ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_D.54112 (__firstD.54077, __lastD.54078, __resultD.54079);
  goto <D.54917>;
  # USE = anything 
  # CLB = anything 
  __ubsan_handle_missing_returnD.2054 (&*.Lubsan_data36D.54118);
  <D.54917>:
  return D.54916;
}



;; Function static _Tp* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(const _Tp*, const _Tp*, _Tp*) [with _Tp = int; bool _IsMove = true] (_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, funcdef_no=2875, decl_uid=54112, cgraph_uid=990, symbol_order=1042)


Pass statistics:
----------------


Pass statistics:
----------------

static _Tp* std::__copy_move<_IsMove, true, std::random_access_iterator_tag>::__copy_m(const _Tp*, const _Tp*, _Tp*) [with _Tp = int; bool _IsMove = true] (const intD.9 * __firstD.54113, const intD.9 * __lastD.54114, intD.9 * __resultD.54115)
{
  const ptrdiff_tD.2642 _NumD.54157;
  long unsigned intD.14 D.54928;
  long unsigned intD.14 _Num.31D.54927;
  intD.9 * D.54926;
  long unsigned intD.14 D.54924;
  long unsigned intD.14 _Num.30D.54923;
  long intD.12 D.54920;
  long intD.12 __first.29D.54919;
  long intD.12 __last.28D.54918;

  __last.28D.54918 = (long intD.12) __lastD.54114;
  __first.29D.54919 = (long intD.12) __firstD.54113;
  D.54920 = __last.28D.54918 - __first.29D.54919;
  _NumD.54157 = D.54920 /[ex] 4;
  if (_NumD.54157 != 0) goto <D.54921>; else goto <D.54922>;
  <D.54921>:
  _Num.30D.54923 = (long unsigned intD.14) _NumD.54157;
  D.54924 = _Num.30D.54923 * 4;
  # USE = anything 
  # CLB = anything 
  memmoveD.997 (__resultD.54115, __firstD.54113, D.54924);
  goto <D.54925>;
  <D.54922>:
  <D.54925>:
  _Num.31D.54927 = (long unsigned intD.14) _NumD.54157;
  D.54928 = _Num.31D.54927 * 4;
  D.54926 = __resultD.54115 + D.54928;
  goto <D.54929>;
  <D.54929>:
  return D.54926;
}



;; Function std::vector<_Tp, _Alloc>::size_type std::vector<_Tp, _Alloc>::size() const [with _Tp = int; _Alloc = std::allocator<int>; std::vector<_Tp, _Alloc>::size_type = long unsigned int] (_ZNKSt6vectorIiSaIiEE4sizeEv, funcdef_no=2777, decl_uid=49141, cgraph_uid=892, symbol_order=934)


Pass statistics:
----------------


Pass statistics:
----------------

std::vector<_Tp, _Alloc>::size_type std::vector<_Tp, _Alloc>::size() const [with _Tp = int; _Alloc = std::allocator<int>; std::vector<_Tp, _Alloc>::size_type = long unsigned int] (const struct vectorD.48008 * const thisD.49142)
Eh tree:
   1 must_not_throw
{
  long intD.12 D.54936;
  long intD.12 D.54935;
  long intD.12 D.54934;
  intD.9 * D.54933;
  long intD.12 D.54932;
  intD.9 * D.54931;
  size_typeD.48998 D.54930;

  D.54931 = thisD.49142->D.49599._M_implD.48884._M_finishD.48887;
  D.54932 = (long intD.12) D.54931;
  D.54933 = thisD.49142->D.49599._M_implD.48884._M_startD.48886;
  D.54934 = (long intD.12) D.54933;
  D.54935 = D.54932 - D.54934;
  D.54936 = D.54935 /[ex] 4;
  D.54930 = (size_typeD.48998) D.54936;
  goto <D.54937>;
  <D.54937>:
  return D.54930;
}



;; Function static void std::allocator_traits<_Alloc>::destroy(_Alloc&, _Tp*) [with _Tp = int; _Alloc = std::allocator<int>] (_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_, funcdef_no=2714, decl_uid=51276, cgraph_uid=829, symbol_order=870)


Pass statistics:
----------------


Pass statistics:
----------------

static void std::allocator_traits<_Alloc>::destroy(_Alloc&, _Tp*) [with _Tp = int; _Alloc = std::allocator<int>] (struct allocatorD.48007 & __aD.51277, intD.9 * __pD.51278)
{
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__aD.51277, 2B, 0);
  # USE = anything 
  # CLB = anything 
  _ZNSt16allocator_traitsISaIiEE10_S_destroyIiEENSt9enable_ifIXsrSt6__and_IJNS1_16__destroy_helperIT_E4typeEEE5valueEvE4typeERS0_PS6_D.51792 (__aD.51277, __pD.51278);
  return;
}



;; Function static std::_Require<typename std::allocator_traits<_Alloc>::__destroy_helper<_Tp>::type> std::allocator_traits<_Alloc>::_S_destroy(_Alloc&, _Tp*) [with _Tp = int; _Alloc = std::allocator<int>; std::_Require<typename std::allocator_traits<_Alloc>::__destroy_helper<_Tp>::type> = void] (_ZNSt16allocator_traitsISaIiEE10_S_destroyIiEENSt9enable_ifIXsrSt6__and_IJNS1_16__destroy_helperIT_E4typeEEE5valueEvE4typeERS0_PS6_, funcdef_no=2783, decl_uid=51792, cgraph_uid=898, symbol_order=940)


Pass statistics:
----------------


Pass statistics:
----------------

static std::_Require<typename std::allocator_traits<_Alloc>::__destroy_helper<_Tp>::type> std::allocator_traits<_Alloc>::_S_destroy(_Alloc&, _Tp*) [with _Tp = int; _Alloc = std::allocator<int>; std::_Require<typename std::allocator_traits<_Alloc>::__destroy_helper<_Tp>::type> = void] (struct allocatorD.48007 & __aD.51793, intD.9 * __pD.51794)
{
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__aD.51793, 4B, 0);
  # USE = anything 
  # CLB = anything 
  _ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_D.51783 (__aD.51793, __pD.51794);
  return;
}



;; Function void __gnu_cxx::new_allocator<_Tp>::destroy(_Up*) [with _Up = int; _Tp = int] (_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_, funcdef_no=2810, decl_uid=51783, cgraph_uid=925, symbol_order=969)


Pass statistics:
----------------


Pass statistics:
----------------

void __gnu_cxx::new_allocator<_Tp>::destroy(_Up*) [with _Up = int; _Tp = int] (struct new_allocatorD.48019 * const thisD.51784, intD.9 * __pD.51785)
{
  GIMPLE_NOP
  return;
}



;; Function std::_Vector_base<_Tp, _Alloc>::_Tp_alloc_type& std::_Vector_base<_Tp, _Alloc>::_M_get_Tp_allocator() [with _Tp = int; _Alloc = std::allocator<int>; std::_Vector_base<_Tp, _Alloc>::_Tp_alloc_type = std::allocator<int>] (_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, funcdef_no=2706, decl_uid=48853, cgraph_uid=821, symbol_order=862)


Pass statistics:
----------------


Pass statistics:
----------------

std::_Vector_base<_Tp, _Alloc>::_Tp_alloc_type& std::_Vector_base<_Tp, _Alloc>::_M_get_Tp_allocator() [with _Tp = int; _Alloc = std::allocator<int>; std::_Vector_base<_Tp, _Alloc>::_Tp_alloc_type = std::allocator<int>] (struct _Vector_baseD.48010 * const thisD.48854)
Eh tree:
   1 must_not_throw
{
  struct _Vector_implD.48851 * D.54939;
  struct _Tp_alloc_typeD.48012 & D.54938;

  D.54939 = &thisD.48854->_M_implD.48884;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54939, 2B, 0);
  D.54938 = D.54939;
  goto <D.54940>;
  <D.54940>:
  return D.54938;
}



;; Function void std::_Destroy(_ForwardIterator, _ForwardIterator, std::allocator<_T2>&) [with _ForwardIterator = int*; _Tp = int] (_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, funcdef_no=2707, decl_uid=50884, cgraph_uid=822, symbol_order=863)


Pass statistics:
----------------


Pass statistics:
----------------

void std::_Destroy(_ForwardIterator, _ForwardIterator, std::allocator<_T2>&) [with _ForwardIterator = int*; _Tp = int] (intD.9 * __firstD.50885, intD.9 * __lastD.50886, struct allocatorD.48007 & D.50887)
{
  # USE = anything 
  # CLB = anything 
  _ZSt8_DestroyIPiEvT_S1_D.51685 (__firstD.50885, __lastD.50886);
  return;
}



;; Function void std::_Destroy(_ForwardIterator, _ForwardIterator) [with _ForwardIterator = int*] (_ZSt8_DestroyIPiEvT_S1_, funcdef_no=2772, decl_uid=51685, cgraph_uid=887, symbol_order=928)


Pass statistics:
----------------


Pass statistics:
----------------

void std::_Destroy(_ForwardIterator, _ForwardIterator) [with _ForwardIterator = int*] (intD.9 * __firstD.51686, intD.9 * __lastD.51687)
{
  # USE = anything 
  # CLB = anything 
  _ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_D.52158 (__firstD.51686, __lastD.51687);
  return;
}



;; Function static void std::_Destroy_aux<true>::__destroy(_ForwardIterator, _ForwardIterator) [with _ForwardIterator = int*] (_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, funcdef_no=2804, decl_uid=52158, cgraph_uid=919, symbol_order=963)


Pass statistics:
----------------


Pass statistics:
----------------

static void std::_Destroy_aux<true>::__destroy(_ForwardIterator, _ForwardIterator) [with _ForwardIterator = int*] (intD.9 * D.52159, intD.9 * D.52160)
{
  GIMPLE_NOP
  return;
}



;; Function void std::_Vector_base<_Tp, _Alloc>::_M_deallocate(std::_Vector_base<_Tp, _Alloc>::pointer, std::size_t) [with _Tp = int; _Alloc = std::allocator<int>; std::_Vector_base<_Tp, _Alloc>::pointer = int*; std::size_t = long unsigned int] (_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, funcdef_no=2771, decl_uid=48922, cgraph_uid=886, symbol_order=927)


Pass statistics:
----------------


Pass statistics:
----------------

void std::_Vector_base<_Tp, _Alloc>::_M_deallocate(std::_Vector_base<_Tp, _Alloc>::pointer, std::size_t) [with _Tp = int; _Alloc = std::allocator<int>; std::_Vector_base<_Tp, _Alloc>::pointer = int*; std::size_t = long unsigned int] (struct _Vector_baseD.48010 * const thisD.48923, intD.9 * __pD.48924, size_tD.2641 __nD.48925)
{
  struct _Vector_implD.48851 * D.54943;

  if (__pD.48924 != 0B) goto <D.54941>; else goto <D.54942>;
  <D.54941>:
  D.54943 = &thisD.48923->_M_implD.48884;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54943, 2B, 0);
  # USE = anything 
  # CLB = anything 
  _ZNSt16allocator_traitsISaIiEE10deallocateERS0_PimD.48685 (D.54943, __pD.48924, __nD.48925);
  goto <D.54944>;
  <D.54942>:
  <D.54944>:
  return;
}



;; Function static void std::allocator_traits<_Alloc>::deallocate(_Alloc&, std::allocator_traits<_Alloc>::pointer, std::allocator_traits<_Alloc>::size_type) [with _Alloc = std::allocator<int>; std::allocator_traits<_Alloc>::pointer = int*; std::allocator_traits<_Alloc>::size_type = long unsigned int] (_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, funcdef_no=2803, decl_uid=48685, cgraph_uid=918, symbol_order=962)


Pass statistics:
----------------


Pass statistics:
----------------

static void std::allocator_traits<_Alloc>::deallocate(_Alloc&, std::allocator_traits<_Alloc>::pointer, std::allocator_traits<_Alloc>::size_type) [with _Alloc = std::allocator<int>; std::allocator_traits<_Alloc>::pointer = int*; std::allocator_traits<_Alloc>::size_type = long unsigned int] (struct allocatorD.48007 & __aD.48686, intD.9 * __pD.48687, size_typeD.48351 __nD.48688)
{
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__aD.48686, 4B, 0);
  # USE = anything 
  # CLB = anything 
  _ZN9__gnu_cxx13new_allocatorIiE10deallocateEPimD.48069 (__aD.48686, __pD.48687, __nD.48688);
  return;
}



;; Function void __gnu_cxx::new_allocator<_Tp>::deallocate(__gnu_cxx::new_allocator<_Tp>::pointer, __gnu_cxx::new_allocator<_Tp>::size_type) [with _Tp = int; __gnu_cxx::new_allocator<_Tp>::pointer = int*; __gnu_cxx::new_allocator<_Tp>::size_type = long unsigned int] (_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim, funcdef_no=2828, decl_uid=48069, cgraph_uid=943, symbol_order=991)


Pass statistics:
----------------


Pass statistics:
----------------

void __gnu_cxx::new_allocator<_Tp>::deallocate(__gnu_cxx::new_allocator<_Tp>::pointer, __gnu_cxx::new_allocator<_Tp>::size_type) [with _Tp = int; __gnu_cxx::new_allocator<_Tp>::pointer = int*; __gnu_cxx::new_allocator<_Tp>::size_type = long unsigned int] (struct new_allocatorD.48019 * const thisD.48070, intD.9 * __pD.48071, size_typeD.48021 D.48072)
{
  # USE = anything 
  # CLB = anything 
  operator deleteD.2587 (__pD.48071);
  return;
}



;; Function bool std::vector<_Tp, _Alloc>::empty() const [with _Tp = int; _Alloc = std::allocator<int>] (_ZNKSt6vectorIiSaIiEE5emptyEv, funcdef_no=2585, decl_uid=49156, cgraph_uid=700, symbol_order=741)


Pass statistics:
----------------


Pass statistics:
----------------

bool std::vector<_Tp, _Alloc>::empty() const [with _Tp = int; _Alloc = std::allocator<int>] (const struct vectorD.48008 * const thisD.49157)
Eh tree:
   1 must_not_throw
{
  struct const_iteratorD.48992 * D.54947;
  struct const_iteratorD.48992 D.51250;
  struct const_iteratorD.48992 * D.54946;
  struct const_iteratorD.48992 D.51260;
  boolD.2579 D.54945;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.49157, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.51260 = _ZNKSt6vectorIiSaIiEE3endEvD.49123 (thisD.49157);
  D.54946 = &D.51260;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54946, 2B, 8);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.49157, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.51250 = _ZNKSt6vectorIiSaIiEE5beginEvD.49119 (thisD.49157);
  D.54947 = &D.51250;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54947, 2B, 8);
  # USE = anything 
  # CLB = anything 
  D.54945 = _ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_D.51264 (D.54947, D.54946);
  goto <D.54949>;
  <D.54949>:
  D.51250 = {CLOBBER};
  goto <D.54950>;
  <D.54950>:
  D.51260 = {CLOBBER};
  goto <D.54948>;
  <D.54948>:
  return D.54945;
}



;; Function std::vector<_Tp, _Alloc>::const_iterator std::vector<_Tp, _Alloc>::end() const [with _Tp = int; _Alloc = std::allocator<int>; std::vector<_Tp, _Alloc>::const_iterator = __gnu_cxx::__normal_iterator<const int*, std::vector<int> >; typename __gnu_cxx::__alloc_traits<typename std::_Vector_base<_Tp, _Alloc>::_Tp_alloc_type>::const_pointer = const int*] (_ZNKSt6vectorIiSaIiEE3endEv, funcdef_no=2712, decl_uid=49123, cgraph_uid=827, symbol_order=868)


Pass statistics:
----------------


Pass statistics:
----------------

std::vector<_Tp, _Alloc>::const_iterator std::vector<_Tp, _Alloc>::end() const [with _Tp = int; _Alloc = std::allocator<int>; std::vector<_Tp, _Alloc>::const_iterator = __gnu_cxx::__normal_iterator<const int*, std::vector<int> >; typename __gnu_cxx::__alloc_traits<typename std::_Vector_base<_Tp, _Alloc>::_Tp_alloc_type>::const_pointer = const int*] (const struct vectorD.48008 * const thisD.49124)
Eh tree:
   1 must_not_throw
{
  const intD.9 * const * D.54953;
  intD.9 * D.54952;
  const intD.9 * const D.51755;
  struct const_iteratorD.48992 D.51756;
  struct const_iteratorD.48992 D.54951;

  D.54952 = thisD.49124->D.49599._M_implD.48884._M_finishD.48887;
  D.51755 = D.54952;
  D.54953 = &D.51755;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54953, 2B, 8);
  # USE = anything 
  # CLB = anything 
  _ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_D.51239 (&D.51756, D.54953);
  D.54951 = D.51756;
  goto <D.54955>;
  <D.54955>:
  D.51756 = {CLOBBER};
  goto <D.54956>;
  <D.54956>:
  D.51755 = {CLOBBER};
  goto <D.54954>;
  <D.54954>:
  return D.54951;
}



;; Function __gnu_cxx::__normal_iterator<_Iterator, _Container>::__normal_iterator(const _Iterator&) [with _Iterator = const int*; _Container = std::vector<int>] (_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, funcdef_no=2780, decl_uid=51242, cgraph_uid=895, symbol_order=937)


Pass statistics:
----------------


Pass statistics:
----------------

__gnu_cxx::__normal_iterator<_Iterator, _Container>::__normal_iterator(const _Iterator&) [with _Iterator = const int*; _Container = std::vector<int>] (struct __normal_iteratorD.48993 * const thisD.51243, const intD.9 * const & __iD.51244)
Eh tree:
   1 must_not_throw
{
  const intD.9 * D.54957;

  D.54957 = *__iD.51244;
  thisD.51243->_M_currentD.51158 = D.54957;
  return;
}



;; Function std::vector<_Tp, _Alloc>::const_iterator std::vector<_Tp, _Alloc>::begin() const [with _Tp = int; _Alloc = std::allocator<int>; std::vector<_Tp, _Alloc>::const_iterator = __gnu_cxx::__normal_iterator<const int*, std::vector<int> >; typename __gnu_cxx::__alloc_traits<typename std::_Vector_base<_Tp, _Alloc>::_Tp_alloc_type>::const_pointer = const int*] (_ZNKSt6vectorIiSaIiEE5beginEv, funcdef_no=2711, decl_uid=49119, cgraph_uid=826, symbol_order=867)


Pass statistics:
----------------


Pass statistics:
----------------

std::vector<_Tp, _Alloc>::const_iterator std::vector<_Tp, _Alloc>::begin() const [with _Tp = int; _Alloc = std::allocator<int>; std::vector<_Tp, _Alloc>::const_iterator = __gnu_cxx::__normal_iterator<const int*, std::vector<int> >; typename __gnu_cxx::__alloc_traits<typename std::_Vector_base<_Tp, _Alloc>::_Tp_alloc_type>::const_pointer = const int*] (const struct vectorD.48008 * const thisD.49120)
Eh tree:
   1 must_not_throw
{
  const intD.9 * const * D.54960;
  intD.9 * D.54959;
  const intD.9 * const D.51742;
  struct const_iteratorD.48992 D.51743;
  struct const_iteratorD.48992 D.54958;

  D.54959 = thisD.49120->D.49599._M_implD.48884._M_startD.48886;
  D.51742 = D.54959;
  D.54960 = &D.51742;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54960, 2B, 8);
  # USE = anything 
  # CLB = anything 
  _ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_D.51239 (&D.51743, D.54960);
  D.54958 = D.51743;
  goto <D.54962>;
  <D.54962>:
  D.51743 = {CLOBBER};
  goto <D.54963>;
  <D.54963>:
  D.51742 = {CLOBBER};
  goto <D.54961>;
  <D.54961>:
  return D.54958;
}



;; Function bool __gnu_cxx::operator==(const __gnu_cxx::__normal_iterator<_Iterator, _Container>&, const __gnu_cxx::__normal_iterator<_Iterator, _Container>&) [with _Iterator = const int*; _Container = std::vector<int>] (_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_, funcdef_no=2713, decl_uid=51264, cgraph_uid=828, symbol_order=869)


Pass statistics:
----------------


Pass statistics:
----------------

bool __gnu_cxx::operator==(const __gnu_cxx::__normal_iterator<_Iterator, _Container>&, const __gnu_cxx::__normal_iterator<_Iterator, _Container>&) [with _Iterator = const int*; _Container = std::vector<int>] (const struct __normal_iteratorD.48993 & __lhsD.51265, const struct __normal_iteratorD.48993 & __rhsD.51266)
Eh tree:
   1 must_not_throw
{
  const intD.9 * D.54968;
  const intD.9 * const & D.54967;
  const intD.9 * D.54966;
  const intD.9 * const & D.54965;
  boolD.2579 D.54964;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__lhsD.51265, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54965 = _ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEvD.51229 (__lhsD.51265);
  D.54966 = *D.54965;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (__rhsD.51266, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54967 = _ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEvD.51229 (__rhsD.51266);
  D.54968 = *D.54967;
  D.54964 = D.54966 == D.54968;
  goto <D.54969>;
  <D.54969>:
  return D.54964;
}



;; Function const _Iterator& __gnu_cxx::__normal_iterator<_Iterator, _Container>::base() const [with _Iterator = const int*; _Container = std::vector<int>] (_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, funcdef_no=2782, decl_uid=51229, cgraph_uid=897, symbol_order=939)


Pass statistics:
----------------


Pass statistics:
----------------

const _Iterator& __gnu_cxx::__normal_iterator<_Iterator, _Container>::base() const [with _Iterator = const int*; _Container = std::vector<int>] (const struct __normal_iteratorD.48993 * const thisD.51230)
Eh tree:
   1 must_not_throw
{
  const intD.9 * const * D.54971;
  const intD.9 * const & D.54970;

  D.54971 = &thisD.51230->_M_currentD.51158;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54971, 2B, 8);
  D.54970 = &thisD.51230->_M_currentD.51158;
  goto <D.54972>;
  <D.54972>:
  return D.54970;
}



;; Function void std::vector<_Tp, _Alloc>::pop_back() [with _Tp = int; _Alloc = std::allocator<int>] (_ZNSt6vectorIiSaIiEE8pop_backEv, funcdef_no=2586, decl_uid=49203, cgraph_uid=701, symbol_order=742)


Pass statistics:
----------------


Pass statistics:
----------------

void std::vector<_Tp, _Alloc>::pop_back() [with _Tp = int; _Alloc = std::allocator<int>] (struct vectorD.48008 * const thisD.49204)
Eh tree:
   1 must_not_throw
{
  struct _Vector_implD.48851 * D.54976;
  intD.9 * D.54975;
  intD.9 * D.54974;
  intD.9 * D.54973;

  D.54973 = thisD.49204->D.49599._M_implD.48884._M_finishD.48887;
  D.54974 = D.54973 + 18446744073709551612;
  thisD.49204->D.49599._M_implD.48884._M_finishD.48887 = D.54974;
  D.54975 = thisD.49204->D.49599._M_implD.48884._M_finishD.48887;
  D.54976 = &thisD.49204->D.49599._M_implD.48884;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54976, 2B, 0);
  [MNT 1] # USE = anything 
  # CLB = anything 
  _ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_D.51276 (D.54976, D.54975);
  return;
}



;; Function SomeChildClass::SomeChildClass() (_ZN14SomeChildClassC2Ev, funcdef_no=2410, decl_uid=47800, cgraph_uid=525, symbol_order=554)


Pass statistics:
----------------


Pass statistics:
----------------

SomeChildClass::SomeChildClass() (struct SomeChildClassD.47788 * const thisD.47801)
Eh tree:
   2 must_not_throw
   1 cleanup land:{1,<D.54981>}
{
  voidD.45 * D.54980;
  struct SomeClassD.47736 * D.54979;
  voidD.45 * D.54978;
  struct SomeClassD.47736 * D.54977;

  D.54977 = &thisD.47801->D.47808;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54977, 5B, 8);
  # USE = anything 
  # CLB = anything 
  _ZN9SomeClassC2EvD.47759 (D.54977);
  [LP 1] # USE = anything 
  # CLB = anything 
  D.54980 = _ZnamD.2586 (32);
  D.54978 = D.54980;
  thisD.47801->xD.47790 = D.54978;
  thisD.47801->yD.47791 = 2;
  thisD.47801->zD.47792 = 7.230000000000000426325641456060111522674560546875e+0;
  return;
  <D.54981>: [LP 1]
  D.54979 = &thisD.47801->D.47808;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54979, 4B, 8);
  # USE = anything 
  # CLB = anything 
  _ZN9SomeClassD2EvD.47764 (D.54979);
  resx 1
}



;; Function SomeClass::~SomeClass() (_ZN9SomeClassD2Ev, funcdef_no=2403, decl_uid=47764, cgraph_uid=518, symbol_order=547)


Pass statistics:
----------------


Pass statistics:
----------------

SomeClass::~SomeClass() (struct SomeClassD.47736 * const thisD.47765)
Eh tree:
   1 must_not_throw
{
  intD.9 * D.54985;
  intD.9 * D.54982;

  D.54982 = thisD.47765->dD.47741;
  if (D.54982 != 0B) goto <D.54983>; else goto <D.54984>;
  <D.54983>:
  D.54985 = thisD.47765->dD.47741;
  # USE = anything 
  # CLB = anything 
  operator delete []D.2588 (D.54985);
  goto <D.54986>;
  <D.54984>:
  <D.54986>:
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.47765, 2B, 8);
  MEM[(struct  &)thisD.47765] = {CLOBBER};
  <D.47781>:
  return;
}



;; Function void SomeClass::set_c(double) (_ZN9SomeClass5set_cEd, funcdef_no=2408, decl_uid=47755, cgraph_uid=523, symbol_order=552)


Pass statistics:
----------------


Pass statistics:
----------------

void SomeClass::set_c(double) (struct SomeClassD.47736 * const thisD.47756, doubleD.39 _cD.47754)
{
  thisD.47756->cD.47740 = _cD.47754;
  return;
}



;; Function std::allocator< <template-parameter-1-1> >::~allocator() [with _Tp = char] (_ZNSaIcED2Ev, funcdef_no=2486, decl_uid=13074, cgraph_uid=601, symbol_order=640)


Pass statistics:
----------------


Pass statistics:
----------------

std::allocator< <template-parameter-1-1> >::~allocator() [with _Tp = char] (struct allocatorD.3669 * const thisD.13075)
Eh tree:
   1 allowed_exceptions filter :0 types:
     2 cleanup
       3 cleanup
{
  voidD.45 * D.54987;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.13075, 4B, 0);
  # USE = anything 
  # CLB = anything 
  _ZN9__gnu_cxx13new_allocatorIcED2EvD.13010 (thisD.13075);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.13075, 2B, 0);
  MEM[(struct  &)thisD.13075] = {CLOBBER};
  <D.50283>:
  return;
}



;; Function __gnu_cxx::new_allocator<_Tp>::~new_allocator() [with _Tp = char] (_ZN9__gnu_cxx13new_allocatorIcED2Ev, funcdef_no=2624, decl_uid=13010, cgraph_uid=739, symbol_order=780)


Pass statistics:
----------------


Pass statistics:
----------------

__gnu_cxx::new_allocator<_Tp>::~new_allocator() [with _Tp = char] (struct new_allocatorD.12909 * const thisD.13011)
Eh tree:
   1 must_not_throw
{
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.13011, 2B, 0);
  MEM[(struct  &)thisD.13011] = {CLOBBER};
  <D.51385>:
  return;
}



;; Function SomeChildClass::~SomeChildClass() (_ZN14SomeChildClassD2Ev, funcdef_no=2413, decl_uid=47805, cgraph_uid=528, symbol_order=557)


Pass statistics:
----------------


Pass statistics:
----------------

SomeChildClass::~SomeChildClass() (struct SomeChildClassD.47788 * const thisD.47806)
Eh tree:
   1 must_not_throw
{
  struct SomeClassD.47736 * D.54993;
  intD.9 * D.54991;
  intD.9 * D.54988;

  D.54988 = thisD.47806->xD.47790;
  if (D.54988 != 0B) goto <D.54989>; else goto <D.54990>;
  <D.54989>:
  D.54991 = thisD.47806->xD.47790;
  # USE = anything 
  # CLB = anything 
  _ZdaPvD.2588 (D.54991);
  goto <D.54992>;
  <D.54990>:
  <D.54992>:
  D.54993 = &thisD.47806->D.47808;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54993, 4B, 8);
  # USE = anything 
  # CLB = anything 
  _ZN9SomeClassD2EvD.47764 (D.54993);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.47806, 2B, 8);
  MEM[(struct  &)thisD.47806] = {CLOBBER};
  <D.47833>:
  return;
}



;; Function std::vector<_Tp, _Alloc>::~vector() [with _Tp = int; _Alloc = std::allocator<int>] (_ZNSt6vectorIiSaIiEED2Ev, funcdef_no=2582, decl_uid=49596, cgraph_uid=697, symbol_order=738)


Pass statistics:
----------------


Pass statistics:
----------------

std::vector<_Tp, _Alloc>::~vector() [with _Tp = int; _Alloc = std::allocator<int>] (struct vectorD.48008 * const thisD.49597)
Eh tree:
   1 must_not_throw
{
  struct _Vector_baseD.48010 * D.54998;
  intD.9 * D.54997;
  intD.9 * D.54996;
  struct _Tp_alloc_typeD.48012 & D.54995;
  struct _Vector_baseD.48010 * D.54994;

  D.54994 = &thisD.49597->D.49599;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54994, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.54995 = _ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEvD.48853 (D.54994);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54995, 2B, 0);
  D.54996 = thisD.49597->D.49599._M_implD.48884._M_finishD.48887;
  D.54997 = thisD.49597->D.49599._M_implD.48884._M_startD.48886;
  [MNT 1] # USE = anything 
  # CLB = anything 
  _ZSt8_DestroyIPiiEvT_S1_RSaIT0_ED.50884 (D.54997, D.54996, D.54995);
  D.54998 = &thisD.49597->D.49599;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.54998, 4B, 8);
  # USE = anything 
  # CLB = anything 
  _ZNSt12_Vector_baseIiSaIiEED2EvD.48976 (D.54998);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.49597, 2B, 8);
  MEM[(struct  &)thisD.49597] = {CLOBBER};
  <D.50898>:
  return;
}



;; Function std::_Vector_base<_Tp, _Alloc>::~_Vector_base() [with _Tp = int; _Alloc = std::allocator<int>] (_ZNSt12_Vector_baseIiSaIiEED2Ev, funcdef_no=2704, decl_uid=48976, cgraph_uid=819, symbol_order=860)


Pass statistics:
----------------


Pass statistics:
----------------

std::_Vector_base<_Tp, _Alloc>::~_Vector_base() [with _Tp = int; _Alloc = std::allocator<int>] (struct _Vector_baseD.48010 * const thisD.48977)
Eh tree:
   1 must_not_throw
{
  struct _Vector_implD.48851 * D.55007;
  intD.9 * D.55006;
  long unsigned intD.14 D.55005;
  long intD.12 D.55004;
  long intD.12 D.55003;
  long intD.12 D.55002;
  intD.9 * D.55001;
  long intD.12 D.55000;
  intD.9 * D.54999;

  D.54999 = thisD.48977->_M_implD.48884._M_end_of_storageD.48888;
  D.55000 = (long intD.12) D.54999;
  D.55001 = thisD.48977->_M_implD.48884._M_startD.48886;
  D.55002 = (long intD.12) D.55001;
  D.55003 = D.55000 - D.55002;
  D.55004 = D.55003 /[ex] 4;
  D.55005 = (long unsigned intD.14) D.55004;
  D.55006 = thisD.48977->_M_implD.48884._M_startD.48886;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.48977, 4B, 8);
  [MNT 1] # USE = anything 
  # CLB = anything 
  _ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPimD.48922 (thisD.48977, D.55006, D.55005);
  D.55007 = &thisD.48977->_M_implD.48884;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.55007, 4B, 8);
  # USE = anything 
  # CLB = anything 
  _ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1EvD.50863 (D.55007);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.48977, 2B, 8);
  MEM[(struct  &)thisD.48977] = {CLOBBER};
  <D.51679>:
  return;
}



;; Function std::_Vector_base<int, std::allocator<int> >::_Vector_impl::~_Vector_impl() (_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, funcdef_no=2699, decl_uid=50866, cgraph_uid=813, symbol_order=854)


Pass statistics:
----------------


Pass statistics:
----------------

std::_Vector_base<int, std::allocator<int> >::_Vector_impl::~_Vector_impl() (struct _Vector_implD.48851 * const thisD.50867)
Eh tree:
   1 cleanup
     2 cleanup
{
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.50867, 4B, 0);
  # USE = anything 
  # CLB = anything 
  _ZNSaIiED2EvD.48184 (thisD.50867);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.50867, 2B, 8);
  MEM[(struct  &)thisD.50867] = {CLOBBER};
  <D.51665>:
  return;
}



;; Function std::allocator< <template-parameter-1-1> >::~allocator() [with _Tp = int] (_ZNSaIiED2Ev, funcdef_no=2769, decl_uid=48184, cgraph_uid=884, symbol_order=925)


Pass statistics:
----------------


Pass statistics:
----------------

std::allocator< <template-parameter-1-1> >::~allocator() [with _Tp = int] (struct allocatorD.48007 * const thisD.48185)
Eh tree:
   1 allowed_exceptions filter :0 types:
     2 cleanup
       3 cleanup
{
  voidD.45 * D.55008;

  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.48185, 4B, 0);
  # USE = anything 
  # CLB = anything 
  _ZN9__gnu_cxx13new_allocatorIiED2EvD.48120 (thisD.48185);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.48185, 2B, 0);
  MEM[(struct  &)thisD.48185] = {CLOBBER};
  <D.52142>:
  return;
}



;; Function __gnu_cxx::new_allocator<_Tp>::~new_allocator() [with _Tp = int] (_ZN9__gnu_cxx13new_allocatorIiED2Ev, funcdef_no=2801, decl_uid=48120, cgraph_uid=916, symbol_order=960)


Pass statistics:
----------------


Pass statistics:
----------------

__gnu_cxx::new_allocator<_Tp>::~new_allocator() [with _Tp = int] (struct new_allocatorD.48019 * const thisD.48121)
Eh tree:
   1 must_not_throw
{
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.48121, 2B, 0);
  MEM[(struct  &)thisD.48121] = {CLOBBER};
  <D.53126>:
  return;
}



;; Function std::basic_string<_CharT, _Traits, _Alloc>::~basic_string() [with _CharT = char; _Traits = std::char_traits<char>; _Alloc = std::allocator<char>] (_ZNSsD2Ev, funcdef_no=2442, decl_uid=18220, cgraph_uid=557, symbol_order=595)


Pass statistics:
----------------


Pass statistics:
----------------

std::basic_string<_CharT, _Traits, _Alloc>::~basic_string() [with _CharT = char; _Traits = std::char_traits<char>; _Alloc = std::allocator<char>] (struct basic_stringD.3670 * const thisD.18221)
Eh tree:
   1 must_not_throw
{
  struct _Alloc_hiderD.17371 * D.55011;
  struct _RepD.17370 * D.55010;
  struct allocator_typeD.17354 * D.55009;
  struct allocator_typeD.17354 D.49971;

  # USE = anything 
  # CLB = anything 
  D.49971 = _ZNKSs13get_allocatorEvD.17988 (thisD.18221); [return slot optimization]
  D.55009 = &D.49971;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.55009, 2B, 0);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.18221, 4B, 8);
  # USE = anything 
  # CLB = anything 
  D.55010 = _ZNKSs6_M_repEvD.17394 (thisD.18221);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.55010, 4B, 8);
  # USE = anything 
  # CLB = anything 
  _ZNSs4_Rep10_M_disposeERKSaIcED.22912 (D.55010, D.55009);
  # USE = anything 
  # CLB = anything 
  _ZNSaIcED1EvD.13071 (&D.49971);
  D.49971 = {CLOBBER};
  D.55011 = &thisD.18221->_M_dataplusD.17373;
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (D.55011, 4B, 8);
  # USE = anything 
  # CLB = anything 
  _ZNSs12_Alloc_hiderD1EvD.49947 (D.55011);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.18221, 2B, 8);
  MEM[(struct  &)thisD.18221] = {CLOBBER};
  <D.49972>:
  return;
}



;; Function std::basic_string<char>::_Alloc_hider::~_Alloc_hider() (_ZNSs12_Alloc_hiderD2Ev, funcdef_no=2440, decl_uid=49950, cgraph_uid=554, symbol_order=592)


Pass statistics:
----------------


Pass statistics:
----------------

std::basic_string<char>::_Alloc_hider::~_Alloc_hider() (struct _Alloc_hiderD.17371 * const thisD.49951)
Eh tree:
   1 cleanup
     2 cleanup
{
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.49951, 4B, 0);
  # USE = anything 
  # CLB = anything 
  _ZNSaIcED2EvD.13074 (thisD.49951);
  # USE = anything 
  # CLB = anything 
  UBSAN_NULL (thisD.49951, 2B, 8);
  MEM[(struct  &)thisD.49951] = {CLOBBER};
  <D.49959>:
  return;
}



;; Function void __static_initialization_and_destruction_0(int, int) (_Z41__static_initialization_and_destruction_0ii, funcdef_no=2876, decl_uid=54167, cgraph_uid=991, symbol_order=1093)


Pass statistics:
----------------


Pass statistics:
----------------

void __static_initialization_and_destruction_0(int, int) (intD.9 __initialize_pD.54168, intD.9 __priorityD.54169)
{
  if (__initialize_pD.54168 == 1) goto <D.55012>; else goto <D.55013>;
  <D.55012>:
  if (__priorityD.54169 == 65535) goto <D.55014>; else goto <D.55015>;
  <D.55014>:
  # USE = anything 
  # CLB = anything 
  __comp_ctor D.25533 (&_ZStL8__ioinitD.38450);
  # USE = anything 
  # CLB = anything 
  __cxa_atexitD.54171 (__comp_dtor D.25537, &_ZStL8__ioinitD.38450, &__dso_handleD.54172);
  goto <D.55016>;
  <D.55015>:
  <D.55016>:
  goto <D.55017>;
  <D.55013>:
  <D.55017>:
  return;
}



;; Function (static initializers for src/main/theTest.cpp) (_GLOBAL__sub_I__Z12do_somethingi, funcdef_no=2877, decl_uid=54177, cgraph_uid=992, symbol_order=1229)


Pass statistics:
----------------


Pass statistics:
----------------

(static initializers for src/main/theTest.cpp) ()
{
  # USE = anything 
  # CLB = anything 
  _Z41__static_initialization_and_destruction_0iiD.54167 (1, 65535);
  return;
}



;; Function <built-in> (_GLOBAL__sub_I_65535_0__Z12do_somethingi, funcdef_no=2878, decl_uid=55452, cgraph_uid=554, symbol_order=1376)


Pass statistics:
----------------


Pass statistics:
----------------

<built-in> ()
{
  # USE = anything 
  # CLB = anything 
  __gcov_initD.55451 (&*.LPBX0D.55450);
  return;
}


