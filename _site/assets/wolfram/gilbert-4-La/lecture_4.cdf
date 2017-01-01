(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.4' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     94205,       1858]
NotebookOptionsPosition[     93475,       1811]
NotebookOutlinePosition[     93996,       1834]
CellTagsIndexPosition[     93953,       1831]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Understanding LA factorization", "Subsubsection", "PluginEmbeddedContent"],

Cell[TextData[{
 "Professor Gilbert gives an example on lecture 4 at the beginning which is \
about elementry matrix. \n      ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["E", "21"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 "         A\t           U\t\t\n",
 Cell[BoxData[
  RowBox[{
   RowBox[{"(", "   ", GridBox[{
      {"   "},
      {" "}
     }], "   ", ")"}], 
   TagBox[
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {"2", "1"},
       {"8", "7"}
      },
      GridBoxAlignment->{
       "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
        "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.7]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
    Function[BoxForm`e$, 
     MatrixForm[BoxForm`e$]]]}]],
  CellChangeTimes->{3.6829341783372183`*^9}],
 "=  ",
 Cell[BoxData[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {"2", "1"},
      {"0", "3"}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]]],
  CellChangeTimes->{3.682934291838839*^9}],
 "\nWhat is ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["E", 
    RowBox[{"21", "?"}]], TraditionalForm]],
  FormatType->"TraditionalForm"],
 "(it produces same effect as row operation)    \n      ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["E", "21"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 "         A\t           U\t\n",
 Cell[BoxData[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {"1", "0"},
      {
       RowBox[{"-", "4"}], "1"}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]]],
  CellChangeTimes->{3.682934291838839*^9, 3.68293437475292*^9}],
 Cell[BoxData[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {"2", "1"},
      {"8", "7"}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]]],
  CellChangeTimes->{3.6829341783372183`*^9}],
 "=",
 Cell[BoxData[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {"2", "1"},
      {"0", "3"}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]]],
  CellChangeTimes->{3.682934291838839*^9}],
 "\nLet\[CloseCurlyQuote]s explore a little about the effect of ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["E", "21"], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ". It is an elementary matrix that produces shearing effect. "
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 StyleBox[
  GraphicsBox[
   TagBox[RasterBox[CompressedData["
1:eJzsvQdYFde/sPu/3zn3fuee77vPc8/znHsOJmo09g5I7L0XxBI1tthij71h
b4hiwd4oNsSODRWpgii9d6T33tmwYcPmvWtvUDEaY6pJ/uv1WQkzs2et38xe
s+adNWtmt5y/atKi//GPf/xj3b+J/0yaZzx47dp5m7/+f8XElJXrli5euXDB
6JXrFy5euLbX/H8RM2P/j3/8Y5b4/L+Kv5FIJBKJRCKRSCQSiUQikUgkEolE
IpFIJBKJRCKRSCQSiUQikUgkEolEIpFIJBKJRCKRSCQSiUQikUgkEolEIpFI
JBKJRCKRSCQSiUQikUgkEolEIpFIJBKJRCL5hahVNVRWVVFVXUtdXd2nDkci
kUgkEomEyuwgJlteYMAxi/cnGx+SFdWoqcb93hUMT9bPX/84hiJlzet88qOf
Mems9XvyOM/WW8+IKqiiRv12eetdX4o8at+KJ9X/MRPPWP1oPDYxBVTUvOtR
akUOjx3uMfaEBX3Nz9DvyDlmXXiEe2oJ1bW/jXcp8+NxsrXGZNcutm/fyzmb
x0Rll6JSa/JXE//iAdYW1jyPL6LqNypTIpFIJBLJX5/yRGeab97BP5Zven/a
aEd4cQXqymS+32PC/1pRP/8/Nt0mTMx/ZUsxbhdosn7Le/LYzH+uN0X3oAPh
pUpKkt1ovmWndtnIK0HkVtS8FU+M0wU+W7/1R+PZ5p1BieoHLqMu4qKFFXqb
dvKvK9589t/X7KbDvsu4ZSqoVv+6/aRIcmX+jAn06a5Lh3btaNe2A7r6vRg6
ypCbAalUqhTcWz2W/mL5kacvKf+1BUokEolEIvnboMoNx+zWHbbdtGP6ph0N
PrWdqRbX2HL1Jptv+ZBZUU1uxBM6Gm/nf7x2nz1cjCugsqEfJ9rp/GtPmnjx
ERfcvbj01JFvhVvV57mPa8lF5CU28i2bn/Atk0tsuf2APXfs2Wd3nz03H+OR
UU7V211i5Ec9wUDE/i9inbEXHbkdFsoh66P8x+rNIp9tHAzIouw9fWIfj5In
e4zo1Kopg+Zs4fpDNzzd7Fg/ugOtmuow67QHBYpibi3Up+MXOpi7RJKdkUxK
UiJ5xVXUqn/ohyoU5aWUlSlQq9/nZWqUinKxvIyKqhrUb90XVYt/deKfkvyc
ApQ1minNF6mktLSMUoVSlCddTyKRSCSSPxN1NZXkFRWTW1zM8ztn+e91mj6q
g9yITyejsIicYgUq4QeuNsf4rzWb3+prmm4fQ0Flvfw09qSdfunklStRVJZz
2+IQ/7la8/kdWMcWkJvw8b61zDOZ5IIS8ktKKSgR/y8W/vHKLxpRmZ/KQ38f
zjx2JyCrWDigigSv23y+cZs2n10intIf9on9LBRcXaJPB+FSc80fklNShbq2
kozIF7i5ehCWWoiqtozbS+p9q8ekaYwZM4qRw4czZqwRd0NStV6kITvSgfWz
ZzDecCzjDMcxf8clovIreKWDqb7C42ZPZ4KhoVhuiJHReIxP2JMt9qdalcrp
BXOZanyYs4emMnnCLJ4nZxHlfol5M6ZiONYQQ0MjJiwxxy02G6XULolEIpFI
/nTEOr9ynYM8ziql+pWiKNMwNtnL/16xiVk215iwfgf/t+ae4t6HRJZUojmt
N/akgSevYnLjHnutL/LVlu38n2K95ia2+OYrKE76eN8adOoq22ztMLlqx1Zr
Ox4mFaF8z7ioOnUtVVVKSstzeGBvj9llWwbt28//XCX8cONZ7FNLqPpV7qHk
7urudGyhQ+ceAxk3ZyOHL97meWA0OeXCvbQhKV77VpPmzZm8cBmzBrWiZVMd
Rpk8ILesCkWSA99+PYzWzYayaocZG2YNo2O3Hgxdc52UYiWq/EBmTRhK66a9
WWi8hyP7jTHq1YpO3Xpi4ZVERXkk67p3pWWbTuh2+pymn03G8dltJhsOoHnX
qWw9cJTtC0ag102XftuuEJJZ9o6bSiQSiUQi+bS8cZ0DPMp441tFL13ounkH
/2P5Ye4np3HlpCn/uWoT/1hlhl1KkbYfpbEn/fua7fz3+p381+ot2nt8mnlz
H4WTp6ylLPnjfUuTz/+3bgf/JdJ/rt7Bbt+MD/dTKZOZtfcATddu418axnE1
P+5CTGkVv66rR02270WMOrelmY7Gp9rQWe8rBgwaxthx87jll0Sl6k3/1swd
lgS/TCLWYb/wolZ8MfYQsXlFuB8cR+dWTZlpcouY1BwyY11Y0a2T8KevuBma
hiInlDOHTTA/70RsaioZmS+5srYbHVrqYOIYRVlZeL1viRgGLTDBzjmMjKAr
dO/aTsS0licBL4mP8sHZ0QnXsCSKK1W/aqslEolEIpH89rzft2p4dvM4/71W
cy/RjFMvfDh0YA//sbJ+LPz3zgkUCeFq7EkdD15hl509e27YMtx4O/8m3Kfp
7mPYJRaTn+D68eO3Np5kmaUtq6xsWHnOhhuxhVR86Lk/dRG3njhhfu8+i/eZ
8L+FE/678UHWeSRSUl374+t9BOqqEmICPLhhdZItK+cx2KAFzT4T7qXTnB4D
dxOSmcWNJd21vrVXuGVptRpFzDUMugkXGm1GTG4O15bV35Ps2mco44zGM9Fo
JN2/aE5T4U97HaMpVSiIcLnKjlWTmTzJCCMjQwbpN6f55xrfimzkWyO57BVH
mUpNZdxdUUZ7EUc3Bg8fw7hxY5kuvpdbz2OFb9X89IZJJBKJRCL5Q3mvb6ky
2b13L/+Ptr9oKy12mNF87Rb+taHf6r8OORNfWkVUI0/a9CKJ1MJS8osL8H58
Hp0N9fPnP44hNcb5jW9dC/3w+K2n8cRlF5CZV0BGboH2/RM/HHqu8cGkiECu
P7Znv30gqbmFFJaWkJbszYQtu/g3kY/+WU+yyqt/1b5RKUvJyy+lrLiQrPRk
IkP9eWCxhU5tWwnXmcSTuFSuLqrv3zJ1iqJM+Fb5K98acoDYnGyuNIwBm7ll
P1ZWllhZnufypcvY2FwlNKuE3LDrzJwwlK69xrJh30nuPnbAetPXdGjV7G3f
GridsOxS7bOh6soCXO1OsXjaUFo2bypi0aF5q3b0HLAWx5A0lPKGokQikUgk
fyre51uKRHf0Nu/U3hfsuOUAQ3cfYsTu/bRbubneudYc5XFmGaFP3njSnLu+
BCakEhUfzunTBxqeE9zEtAfRpDTyLd3D97nrF4x7UKhIQbhHpBD4yAqdhvdK
LLrrhWdYNH6R0fiK5BUWQVxRZcP7rl5Rh+9dC7pv38V/Gx/ggEcUmcVFhD2/
S8eN9c9TGlj6kP0rfKsy1ZXv5nzDmDHreRZfQHVD+bmBV9DvInxKx5CHsSnY
NviW1o0a+9ZAjW/lc6dhDNiWm/5kFRRTWpqLo9U+dh+4TGS+gqjrq9Ft34KO
yy4RlpyHsrqIB1sn0qllU8ycoykrj6j3LUORX1659h6poiiHmGBPvAJC8Pbx
xeOhNRP6GdBcZzQXn0ZR/uu69SQSiUQikfzGvOtbagLvnEVnnWbc+XnsIhOI
SssgJi0duyvH+U/tPcatbHmWjJ+99Wvf+s/NZnQ1PYru3oPavrD6MVymXIjN
Jy/Oleab633r39ea0HbnATrsOiiS+P++Rzy6dYb/bvCt/9q8n067D9Nlz2E6
i9RJuN6RoOx33u1QlOBGs4Y8P9t2mK8OnqTb9j38XyvrPW+TVzIlv+J9WLXC
c1brd6GlThv6Dx/D8h2mHDTdwOQxA/iiWVM6zjhKTG4utovr+6/e71ulJDvu
Qq9jK/T6DWeP1VUuHlvOqL66dB60h9CsUmLsNgrfaskXurM4fuUO1ibTGN69
Nc0+a8IqGz+Ki8Pe8a1ou9VMNRrGqLHbuWrvyO0L+xjcoyuf6czi1rMEKmX/
lkQikUgkfypiXIVvae/9mQvfKqO6tpCz+/bxHys20f+iD5mKN+OvC6Ke0LTh
Pam9rL1xv2vxo+8p7WFyFjOPCLIra6hI96bfll2v70c2Ts3NnuBw++zr/q33
pf3Bme/4Vl1NOW7+7iw23cv/Wtn4Xa2HWfvYh4QSJb/qde91VaR6OXBo5TTa
tGzOl+060KlDaz7/rBMzVx7AMTwdZU0Zd1fr07FFR069SEChqnvjW6OFH+WW
U12exUOL7XRs24qOut3R7/IlXUfP5ZR9OMXKGioLgjkwdyBtmrdG16AHehNW
YH5kPR3atWLSARfyxfIf+lZ51nPMF42ibYtOGPTsTU+xvFvPCWw79oTkvIpf
+ZyARCKRSCSS35qK4mx8k5J5Fp9BYZXm9werSU9OxSs+iah8xVv38WqVJfgm
p4jPJhGQWUxxfha+icna6R+m8PQcCitV2rFX6uoywsV6nu/5XEBGMUUiH58f
yUeT0hXV73WnmioFaelpeETH8jgskkcRL/FIzCBL896q36KPp7aK/LQEAnxf
4OrigrOzG8+9A0hIz6eqVmM1tRQkBhHgF0R2WX2ZtRW5BAcF4BOZRqWq/sZe
ZXEWQX5e2jzc3DwIiErUjmuvD1FFbmIE3s9ccXJ0xCMsWThWJoGBAUSmFqFS
lZMYHIhfo/w06+QnRxPg87w+T1d3/IOiyS5UUPObbLhEIpFIJBLJ22je115T
WyvS79SzUyfyr6kRqfaXv9uqIY/aH4lRXVsj3Er1g/fKf3ye8me6JRKJRCKR
SCQSiUQikUgkEolEIpFIJBKJRCKRSCSSvwaqWjX5CgU5ZeUyySSTTDLJJJNM
vzoVKiqoVcsn5BuTVFDE2juPmG9rJ5NMMskkk0wyyfSr0+4nrmSXln9qxflT
kV1axmE3T3Y+dpFJJplkkkkmmWT61cnihR9FFZWfWnH+VGjem6Dp+8ssKZVJ
JplkkkkmmWT61Sm/XCHvJ0okEolEIpFIJBKJRCKRSCQSiUQikUgkEolEIpFI
JBKJ5M+BKgeHS2c5e8ScI+YnOWlhiZWVFadPH8VsvzknDptz9Wkciqran87r
N0BdFIvlrjVMm7yAFfsuEpqr+Z3sP6Toj0OZyuWN81i2+xrxJZX8MXtF8nug
yo/khrUlJ8+cw1LU+TNnjnH0whPis0v5M1W5D6EuSeTmsV3MnbaApTvO4Bmf
i/JHgq/f3oucPHYUG8cQckurfkGJKiIcb2B19iQWFhZYi3126NRNwjMKKM8K
4prlOZG/+ev9qPpAThU5UVw4toONZhYEp5R8VNnZsV4c3bWNxYuXsdp4FyYm
pljdeoBfcukv2BbJ346qIiJcL7Nt/fcs/n4Z2/fswvTAKeydvMn7UGX8NUWW
5hL0xIaDR8UxcckGt4j83znPOsrz03h67RTHzpzCwsoa20d+vHUE1FVTkBHB
LasznLIQx+RZK647RqD81ZEJ1EoywpwxW7GEfVe8kEfez6Aqhu9HDGTJ7vO4
utmxZMhAeujqsvX8Xdwcb7K6fx++OexGXnn17x+LOodLc6bQu900du81Rq9X
f5Zc9KWooub3L/tHUfHCfAG2AUkohPhVJtxh5FcdaNl+BE8Sc6n6q5yYJe9Q
V11Kcqgzq6cY0VvU+QHz93LHK45SpeqX/xb5H4k6n7sblzKi8xQ2bFzHgGHD
mXPkIQn5jVrVimRObbLAMySVCmUpzy5sxGiIAWN33iAqS/ELCq2jNCMEiyWT
GGbQDb0By7Cy9yevoooaZSFhzmf52nAdFneCKKj48H7MDbTFeJoebUYv46xr
otZxK9L8uWv/CMfQd89ZRfGuHN0orsOMj+LoE4L/s8dsWjGbwd9t43pgzi/Y
FsnfCyWh1yz5fsoSNp++i19oIO53TrBs+gy2HbIjS3MKq60gwf8Zh7dcIfM3
8i+1SvhHuCuHV46g16jJ7HyY+LvnWVNVQvTTK6wd2RVd0XaNnr4Yx5SKN8vL
s/C8uVOcy7vSrc9IJm+9SmTWT11HqilKCuHxyU1v5fXOpypyeHFzF51atmbM
rE3E/iYS909CRRALZ+znRXgaipIQVut3paWODrsfh1NQUkSAxTx6mjmRUfIH
+FZtHMbdu/Klzhzs3V3Yu2Y9Np7Cc6o/ndQkeVhg1LMtB1zEebi6Thyumdyx
PMqhs3fEPqn8y/SDSN5PXWUMu42G0UHU+YFrrQnNKP1ruJaG2mQOThhBJ50p
WN+4x5Gdu7B+GESu4tX1SSlux5czrMskrntGoRAbFnd/NyN6tmfIpitEZP4S
3xLUlWK/aRy9W+vQ57uT+CcWNRwHdVQXB7Jm4Vk8A9NQ/cSOrC54yVM7K05f
eUxoejk1ZSnYHdvIN0t3ct0v+wefVhFhf4S5A/qycvd1UsXpQF2tIMzxOIt2
7ea4R+Yv2xbJ3wdlBjf3rqbHwDnssw+nStTHqrJ07uw046zJFdKUFeTGe7J/
2kjGT9hF4m94GV+RFcX1raNo22M4W+/E/QF5qilJCeTc0j40EW1Xi24DWWjh
19CfrKYg3ovD0ztrl7U2GMraqxE/eTxWFqZhf2oVEyaM5178j0tUXW0VmS/9
sT52DBt7bxTyJPjxqNJwc49FUSm+qapI1nWv9y0TxyjKhOdUZ/pw0Gwfew8e
5LD5Reztr2GycibbTzmQV15IhOs19m02ZvHkyazeeQL38GyqVFVE2lty9NhJ
sc4pbG0t2TTzexat2I1TRDbKGuHR8S84uHYVi1dvYY/Jdk4+CMLziin927fi
c50OLNpkyp3nMeSWKXj5/DbbVy1n0YIF7LF4TFqpEnV5EnYWxzhmfhhbB0/c
bpoze+YSLO/c5tjhE5gfNueivTP3LpjyrXD/FftuEJEYxc2D65i5eAH7LjqS
pajSnifyRSzn9u9lw+LFLFq9m4sOIRQrVWS/sGLa6F40b/oZBgNncMw+CJ+b
1iL//ezed4mofAU1dSriX9i9E58yOxDL4yfr47jrwL2ze/l2Wn0cLwsqqf3L
nNT/5lTHsX/8cDqKOj98w2UiM4qIc7vBuZPmHDI/x9WrVuxaPJ8lS3eI+hhC
gKMNqxevYulac1xDMqgQjZi6PB2P25bs2rKCJUsWYHLChpCUQm3fp/Za8IE1
m9auYMGCFZidsMTm8nV8YjMoLUrF8eIh1q9YwortJ/CIyqSy5t2KocgK5eqh
rawSeS8wNschMBWFqpoYR0sm9talmU47Zn6/GVvnINIKK6nRtn8qfM9vYEqv
1rT4vBVjJq7k+rM4gm6ZMLJXB/ot2Y/16QMsm7+MtSY2hKYVattjzbb8dEwV
PNlhRN+2Yp+t1+yzRu+Qroxmx6JL+AYlEy32403L4xwUbYCl5VkOb93F9/PW
c/rmU5LSE3n+8AaH9phy8vJ9QqKiuWdhwuBuHWnVvjeTFpnj6Jfc6H5kFYGi
fZiu+wVd9Uawdp81fkn54hoxicCIUEI19yPVFSQFO3Js03oWiHIOnb+Ond09
nj7zIyk5gic3LDloas7tR64EeruK2MzZZ27Jw+cRlIhzSFasD9eO72P1vHks
W7aR8w+8ycjJJtT9HmfND2Bpe5tH9jcw27qebUevEZFdSEa0B2fMNrNg2WoO
2dgTm/MLHVby66lIxmb393T9sgPdRy3mwEU3cTyUUfgyjpRoUfedbTizeABd
W3xOh44DWGdyiZCMYnJivbhweDsrVixg1frN2Dj4kVWQT7j7Te2YmpNnz3D5
2kVMxPK1W/bwKDBde96oLs8n6KElaxdM4+sZczDUa0M74UY7tG5US3l+Ak42
xzFeupQl385nv9UDotMKyH7phbX5fk5aWHPHwZGrJ7azaJUpbnFFP5Hn25Rn
JuNyaguLls6gSdM2DJm2hfAiNXVVBUR62TJ37nxmj2hfv/7deO061Yoiwtzt
2GdszIolK9iw1xLX0HQURem4WW2gj147WrTqyIR5Wzh/1/49ce7lwfNgXC8e
ZZ+ZOWcv3CMwwJ2TJgcwP3YGa6vbPA/wwfbIIczPXCI055eMWfgbI3yhUrhW
XV3dD3wrUutbiHYoO8yebwf2QbezHr16GtDhy89p13UJTx6YM2lUX+aY3eLZ
4wtM6duPQUOMCUovIifMjq8H9qVr564YzDdl79LJdOnUhT5zLpCcm8TpGePp
PucwTi+CuWfalwFmj/GyP4lupzbCyXuw89wtwrMVRD86yBRRxlLzm3g+tmDA
kBGM3GpHakEB7seX0r+HLga9+9NvZGeaNW/BkO23sN29kH499NDv2QeTk4f4
bkQXOnUxYOjwuRwV7ek3XTqhq9ebK+IavKIyiX3TjfhqziFcnrliOqUv/fsN
5rJo6/NTXrBlXGdaNdXByPgsPi/zSPe6zLDB/ejWdRZOCaJePzr03viSc7Jw
OrqsPo4evdkh6u2sPp3p2MmAY+7xlH/CPjtJIxr7ltYdSimOdWbp12NEfe+G
wbztbFs9l35fGdCz/2BWmOzHeNE4eurrMnnfPV7mFuFrsZqpgyaJ8+19Hlhu
YtyoIcwwu0tcTj4vjq9h6kBd1h27hL2tOV+PG053/Vlce+KB9eqljNZbwfmr
Dzg6bypff3MQz5jct8Y8qXKCMF4+E4PpW7jy0J59E75m3KC53PWOI9b7BqMG
GojjRY81+6zwTcxv5EZ1ZATeZN4gA3E867HW7AphaUXE3DfV+lbLjmKd3duY
L+pu9y76mNi9ILskk5sbv//JmD7oWxVR7PjuEj7i2MqPdeTk1kV8JdoA3TFz
mb90JVOH96Hb8OWcux9EmMt5Vk0bwNCFO7ntn0jQg2PMHNSBVn2+ZuMZJ+Iz
ixuNj1ST5nWVlRP0xfZ+TtuOugwaPpktBy4SlJhHtUpJvNtFtkztLa6nNnD1
wSPM96xj0Ffj2H30DmnF2bie2c7U7p35bvtRvKNCsd6znL6dR7Dl6H3iEn05
tX2O8LyNWFy7hdnaBQzpOY1jF1wIdLVlzTeD0O3+Fb2HGNBJtzV6UzZw6MwZ
9i8ZwbItW7ly7ay4XpvKztNXSC2Xx/YnQV2Cu+U2DDvo0ERcY3TS68vImSs5
etOT9GIl+QlePDq5Bj2dFvToN5Or7iEkRPtyZtEovp68nluO9pxY/zV9jeZy
+EkkCb63WD20M1279Wec0QZ2rJ1L97bdmbH0FPFFhQQ8OcfgXv0ZOmQhhw6a
MVW0Ia/cqLo0nac2mxhjNIkd5+2xO7OLobrDWLz6PNGxgZxeaSjy1RVtSm8M
+reldY8xrLP1+WCeP6Q0IwWfq2e4ectafK4JHXuNYd/DBMpSo3E4sZEjV2zY
M77Zm/XVlSQE2vPd2ElM2XEZZzsrlg3R5esFq3mWlE2Ywymm6unQXr8fG6yc
CA7wfm+cq6zdcLqwjW7d+jFllileEb6cEJ/r3KW3aC924uLuwNE5Ruy97UOR
HHDz47zPtwR1ijBW6Helhc5Ajt95wuNr1ljauBP6aI/wo1YstPSiKMuHhfqd
xWeMcBBeoiwNY6l+FzE9klPPIkj1skC/S1uaDDxAVJI380Q5X3Tqw+Zz9/H1
uscj4dgl+f58p9eZL3RGczc0mTJFArvG9RO+M1i4UTqVJaEsEHl+0a4HV/3T
CLywCt12LUSea7nj5oSNxVlueafgb71CO7/H0uMEJ6YJL5tHlzbNGbTyPJHJ
KVhN16N9Mx32OUdTVhbFas02z7EksTCLCzP1tctMnaIoVRZwdYEeHb7QYZd9
CEVKNbUlQXyniUHHkCcRfmw1/On4eiwwJzA+FYe94+ncqinTjrpTUP47Dd6U
/Dze8a1y6iqi2Wk0jHY6g9hz+xlx/tcYN+QrmujN44ZrCAE3NjOsR1uGiM9H
ZBTgIr7Xfu2Hc/ZJOCkBVxk3WDjOiN24B/tj9s1IOn0+CCvXMPLjHjFhRC+a
9FnLvQc2TB/Zl+Y6i7j+wI1DE0bQ7Yv+nHMJo+T1fQ4VwTbLGKLfgj6inQ4V
1zGBZ9cyuFsnppvdITrZn03jhtBWZwgWDgHkK2tQN+qKqlXEsHuc5l7pEKyc
QkS+ahLt92l9S2/2LhwDY3E9uZCB3Vowfsd1QgMfMXvUT8Wk4ad8y1rrW6qK
GO39nZ46+szZZIlPkDO7V0yiSdfpmNgEkuxvx7qpPTGYup7rvplk+d1m3ZSe
6E9ew2WvNO1vXzRGpSgg8Mkl5kwYpL1PovGudp30WWJyloDYMCxMF4tjVZ+V
e2xJKUnn1j5N2T1Yv+8mWVVKgq6aMEOcT6asM8MvIx07s7X0FsvXieXRka5s
XzyK4d9t5UlgCNdNVmCg05O1+24R7HWX9cLjmnQzZMWBS9y7d5Ord+w4vG0t
Q1u3ZY6xGa7P7mD83UiGzN/Ko8jC36mySj6MmrKcGB4J5xo/oFt9HWnWii49
JnPgvBtZpRlEuFxgtE4bho3bTGRZFTnR7uwZ25ahhtvxT0nG4exymrbryzc7
HUiMcGbbEB10+4zgxMNQXjhYMkKnLSOMdoj2PBqbTWNoKVxs0Sl3MmL9Obto
0Gu3URYmce/YPLr1G8VJtxginCwYotNOrLuLwASxrvFYmrTSZ+jiozgJP7l8
6TqP3H0/mOcPKc1Iwk+4lk9sCNZLR9C0uR4T557Gw9WN/d+eJDDQlV0jG/ma
WkG0xxUMO/dnwhFXksOcWN9bh57Dx3E3rojMsCdsFtv71VBDbkYWifzfH6d7
VBphTlYMFvtiuNgX0cXFhApPnNr+c1q36YbhtDmYWDzUOq68jfMBfsS33sw3
xFG4VEV5KSXlSiqL03h46SibNi5nimibOzdvxucaD4kV15uVUQ3rGOGUlIci
5joG3dppfSsmM41rW8fT4cumtNftydARI7joGoWiPPytcqorI1nSXeN5DXmW
h/G91uF02C9cyf/ianTbC98acpDonFLKSkpQiHNOtO1a7fzRJo7kllUTc7V+
2nCvE3ll5Vxb0l3rUNptVCqIcrjKzu0bmTxlAr3bN6dZk1fbX8btJfp0/KLe
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
e8oyNMKYt4jICYn7g9OnT6OmutrRq0L03Ary8xEcHCxlLlu7fu0a3NzccOrU
Kek1W1qerDkhrs/5c+ewZ88e7Nu3D3l5eTZfrxce8xYROaH29nZpX1BeVubo
VSF6bhkZGbh69Sqqqqps/lq+ly/jxIkTUrZra2uTan49Tq1Wo6GhAZmZmTh/
/jySk5Ntvl4vPOYtInJCzFvkSuyZt/yuX4efn9+Dfxs17VBkxeBmYDhySx+t
F9zU2Cgty7xlB8xbROSEmLfIlTgyb1lMPUg7uQ9rF2/HrfxWPHzLGfOWHQ0h
bxl7u1GWGQrvMxdwKzoHSr2d1vEes0GLOkUe4hNlGOilmbeIRjfmLXIljsxb
gArR+zdi15rdyGx9tLgq85YdDTJvmbRtSAs8gbnz3RGeGIvL+9dj+bpAKO1S
p80CVVslbhx2wyfjp2Pu1hAMdMcS8xbR6Ma8Ra7Eoee3tOU4sWU3Nm3xQnxS
PPyuBSGjuAZ6C/OWXQ0qbxnQXBCNnZ9/gZ980qDWdaMo7CIWvPc1TmXYtsb8
faY+LaoyQ+Cx6GtMXhSEge6oZd4iGt2Yt8iVODJvqcsjsHn/QWzzDsCRwyew
4UAgKlru1lll3rKjQeQti74D6YGeGPvhBFyX94g/QXtpPPZ89y6+3hE74LW9
kaJtLsKVLbMweX7wgBmKeYtodGPeIlfiuLxlRkX4ESyaMx4TVx3ApcBUlDd0
wmC+O4qLecuOBpG3zNpmxF7ZiD99MhnRtXfvK1U3FsD7p2mYMOMquuy0qtrm
QvhumcG8RfQCYN4iV+KwvGXpRsxRd3z663/EP09YgqORJXh4GBDzlh0NKm81
CdllC8ZMmIPcrruZWNNYhEtrvsCnU06jxU5zbTJvEb04mLfIlTgqb5m7ZTjm
vgcrftyFn1Yvx/qdnkgprEBjvZLXE+1tMHlLI+StS+7408dfIKzqbnrRNslw
eeNsTPzuGrrtNHcs8xbRi4N5i1yJo/JWpywIGzz2Ym9gEQrCT2LlrPexcvcJ
yJrUUl0I5i07GkTesho6kRFyBGM/noSACnGkugUdpanYP/cTTNkXD2O/vzXy
pLy1Q8hby5m3iFwd8xa5EkflLbHWaXVDPRq69ehTt6BUlomi8hpojXcvTDFv
2dFg7k+0GtFQFI51s8dgwblcWMwayOIvYeaET+Gd3w47nd5Cb4sM17bOwGcz
TqF5gGWZt4hGN+YtciWOrb/1M6vVCstDO23mLTsaZP0to7YNWYFHsOSraVh7
wBPbf5yJnZdj0dVnj8FbFmi7GhF7cTe+GfNbvPLHSTgckomuZ7w08xbR6Ma8
Ra7EWfLW45i37GjQ9eUt0KvaUZ6XhrScXOTnFqCp58k5MG3FbNRBWV+Jopx0
ZOfmo7qlC4ZnnFhj3iIa3Zi3yJUwb9FQ50+0Wi0wGY0wWex1FXF4mLeIRjfm
LXIlzFsk5i2ZkLe+/XAC/Eq6hTxlhtlshsVipyIPI8b6YN3NwrobNPWIuuqJ
yd8xbxGNRsxb5EocnbfM+i5UyOQoq2h55B435i07MqtRFOuFD//lV3h37ARM
mTIZUyZ/gZXr9qHGzvNRPw+Lrh054SeEdZ8stckTP8X7743HpPkBA861SETO
h3mLXIkj81Z7RQGub1uNmRNW4uTVPOgeWpZ5y46sBijriuB37hwueHlJ7fz5
iwgIioPSXoUeRoDVqEGTPAUXHryP87hw8RruJJTZrV4FkbPQ9faitLQUMplM
amq1Wrov6WF6vf6RZXp6ep5YxpGYt8iVODJv9Wl6UHznGBbOWAaPM9mPzMHH
vGVPVphNfdCoVNJ3sthUKjU0Wh3MzvPVOzCrBWaDHuoH7+Puf3v1BrvVqyBy
FgqFAsuXL8fRo0dx9uxZNDQ0PDFGoKOjA76+vtLjC+bPR3paGgwGg4PW+EnM
W+RKHH09sS33Mn5asBK7zuTg4TvdmLeIiIYvNzcX27dvl3KXmLXEc1mPMxqN
aG5ulh7fISyblJiIvj773XM8EOYtciWOzlutOT74af5y5i0iohEk5i3x3JZK
pbr3Ewsai9MRfNUbcWVK6E2Pnus6ceIEUoTvW+YtIttg3iIicj1P5i0rVFVx
mDj2fVzKqUWv+dHlmbeIbIt5i4jI9TyZt4C+6gC8+cqPSK1SwvjYoEbmLSLb
cnTeas+/hrUL3bBbyFusB0FENDL6y1s1t5bitRVXUViUjkC/q7gWmo1unVG6
n4R5i8i2HJm39J31iDmzBp+/+zG+X+WN4rqOB48xbxERDd+TeUuLgDnvYsOt
TKRd3YBlBy4jtaQJfffGcTFvEdmWI/OWxSDOh1eGopw8KMobodb9fB8y8xYR
0fA9kbf0JVj8x5cxfYEbTt6IRH5VG3RG84NaKcxbRLZlz7x15coVzPvhB2za
uBHe3t6ora19YhkxX4n3Ja9cvhxbt26VvjOIiGhoHs9b2tIb+PPLv8Uvf/Ub
bA0shKqP9ycS2ZM981ZbWxuKi4shl8ulrNXb++SsdmL9vZKSEhTLZNI6abVa
m68XEZGreTxvyXzmYMymM7h6cjE+nnACOYX5KKjrgoHXE4nswp55i4iI7OPR
vKWH3zd/hHtwIdqVOfjp9Y8w/oMdSKkQ8ta901z95a0+iwWVKgPa9eIc8Paf
pYF5i1yJo/OW3mxBncaIZq1xdM0dQ0TkxB7NW2a0FueiobtX+J7tQ0NOBlLT
KtCjMz11/FapkLOWpbXig5AajAurw2lFJzr05qe+ni0wb5ErcWTeKurSY11m
Gz4OrcUnwvZ8Qt6Frj77bs9ERK6ov3oQD1gtsDz2o8fz1qLkZvy9bxn+yzmF
1H7nV4HbtRpUCDnMXi2zshFrt3kgJq/YJs/fKuRNkwPO29GLyVF5Szw3fVLI
V/+fb7m0Lf8fQnvlZhXOKLrsuj3butVpjdAaH/9mIyKyrWfmrX48nrf+ElKD
vz0vx384c7f93XkFpkdUYVVSLVbbqS0OycPHP67H3KvxI/7cq5JqMDe+Hoou
5xmvRq7NUXlLZ7Jge247fuFV8mB7/oWXAh8FVdptW7Z1+yKiBhuy2lCrMQ78
gRARjaDnzVvrhe+u/3WlHH9zVo6/Eb6f/+WyHHsS5biWpbBbOxOVgtnL3HA4
INwmz78kqgTnipVQ6k22/FMQSRx2fssqbN/FXfj7y2VS1vpPwjb98lU5NsfZ
d3u22fdEmgLfRZThmKwDOg5MIyI7e9681aA14mJZDz6PasBL/hVYEKbA7Rw5
Egvt14ISkrF4lRuuhoTZ5PkDhPfzbWQVMtp6wcuKZGuOHL8VXKvGpNAqvHFd
jsm35fAUjp3C8+y7Pduq7UlUYGd2Eyp6DAN/EEREI+xpeUtZkYPC+m4YzAPX
31IZLdK4iJhGLebHVONSpmvlrQShbU8ogUd2Mxp4HYJszFF5Sy1sxydkSrjF
leFyhhw3suWIznd8ThqJ5pclx4akKtys6oGRB01E5ABP5q0upNw8gumTxsIz
oQxqw+DrnRqE77H9+e2YHVGOBWHFWBwht0ub65eMMfPdMPtCmM1eY06oHO8E
lCG0Xo0+XosgG3JU3gqqUWFyaCW+DLLPdmuv9mO4HJ8HK7A7p0W694WIyBGe
zFtGdDSVYPeHL2NvVDFUg8hber1e2j801NejRmPEtIhaLI+UY2+iHPvs0Lbc
TsaUH92w7kqYTV9nVZQcSxLrUc7rEWRDjshbzb1G7M1tw7xwIZfEyTD/iA8W
HL1kl+3X1m1ZhAI/xFYjskHN8QBE5DD9X0/sxcUJr+NA9ODylkajkeZXKy0p
kb7PfEq7sTquAlcy5YjIs33zi03GgpVu8A4Ks+nr3MmVY2FkGfwquqRrqES2
YO+8ZbFa4V/VA7f4SlzLkiMsRwb3PQexad8hu2y/tmxBOXKsjinF4cJ2brNE
5FD95y0tvIeYt7Zt3SrNsSbq7DNL54GOpSoQY4fxH7Yev/Vw8xUy5A8xVSjq
1MNq5cEyjTx75y2x1snOrCYcSFYgvkCO+HwZtu49gO37PR0+7up52xHhPW3N
aERBh94unyUR0dPYIm+Johs0WB5fjetZCpfKW3HC/mhdXAlOCMfLbcMcC9Jr
sjhk3iMaHQabt8Rx3waL5bmukfWZLThf0oW1ceUIzb3bx10lb4n3Sa+LL4d3
aSfHXBKRw9kqb4mZYmVKEz65XSLdVz7Vhm38pWS8+b0bxp0Os+nr3G9jAuR4
O6ACic29Q6o7rxe+830ruhHbpIWG1zboKQabt8QIEV6vhn+VCt2G4fWnpJZe
fBlZh7f95Zhyr39PCZThnTUH8O5aT7tsT7ZqHwYosCG9CTVq3lNMRI7Xf94y
wnfCG9gdrkBP36N5or+8pdPp4OXlhdqamkeWzVPq8XlEDbbGynE+XQ4vG7XD
YcmYsdQNe/zDbPYaj7eNcSXYktGIWvXAY+fFTJYo7NfmJjbjD7eqkNDcy3mA
6amGcj1RrJc1OaIe3yc0SfVYxBrxg9VtMONYkRLLo8twLu3nvn0uVYb1x7yw
4cQFu21PI922x8sxL7oKAdUqmLitEZETeDJvqVAQ44f5r/4Wf5i1HSHZjdA/
dC6mv7xlsVjQ1tb2RI0I8XrH4UIltiaWIzjXNa4n3m9iDcjvI8oQXqeG3tz/
Pq5PeP9hdRrMTWjGyzcq8V8vlOD/9C6R5vb+IqreZi1eyHN9T1knsq9Q4e//
bXzjkP5+H/gV4C2vVIwLLB1w2feCa/A/LpVJfesloY+JueuO8JqPn5fuT0it
CusSq6QxiQ/37YSCYoSlZkrN0dcEh9NiC+TYFKfAgbw2KPWca5uInIOYtw4f
PoyOjg6YTOJ4JBN62hohz85CRkE5Wrt10lgj8TGxHROyWXJSUr/1t/rToDVh
flwtzqbfHYvrKnlLbKdT5ViSUIuynv4/C/FSY2qrDrPjm/B/eYtz0hXj/xH2
jWNCajEhvM5mLaZBK2U9cjzx/NOMmMYh/f3euVaI186n44OAkgGXFfvS//S9
O//O/32xFF/HNkjnTwcar1SnMWJfbjN2JpZI+cTRGWkk29k0BTan1SJJ+By4
FRCRsyhRKLBwwQKsX78emzdvRkVFBczmR48JW1tbsX//funxWTNnIj09HQbD
z9fRjEYjcnJy0N3d/cTzi993fhXdWBJbiW1xcuxPHPm2Nfhu/a31V8Js8vxP
a7vi5ZgYVIrTxUrpnsz+aE13a+8HVKsxJbIe/yDsGy+X9UDR3YcSG7Ueg4X7
GSfRJfQLsV7bUP5+fglZOOAbgOiiygGXPV7cibcCqzExoh5XK3uk1xLHBj7r
7y9G8YulXfhraDk2xPTTtxNk2Hg9HJv8Iuy6PY1E2ylsk9+Fl+CksE1qh3Bt
lYjI1sSxV+I4d4WQu8Sm1WqfqHMgnssqLy+XHpfJZFCr1Y8sI/7OoUOHUFlZ
2e9r9BjM+CG+HrPuKKSaoT9Fj2xbejMZYxe4YYFP2Ig/90Btfrgck0OrkKPU
SXWMnkYcKy/O2ybuH8VrjGqOl6enGMr9iUG1apxWdEnZq3eQ+aKwUw+35AZp
e1zTT59eEynDtB3HMd3jpN23p+dt00MUWJ5UD1kX6z8Qkevp7/7Ex8U1avFd
dDWOp8oRmDOy7WJ0Mr5f7oaTgWEj/twDtYBsYf8UU4LD+a1o6R24PoR4vkMc
UzKU+xrpxTLYvCV2oQ6hL4nnVgfbm8SxhmflHXCLLZPmFOy3T2fJsGbXAfy0
x9Pu29PzNHHM/5KYcviUdvF6OhG5pMHkLZ3Jim3ZrdiTXIaw3GKXGL91vwUL
7+fbyEokNmk5Fy49N1vWO01o1mJjcjXOpT+9P4/G+lvinPI7EhTYldOMes4p
T0QuajB5SyRe8xDHznun3/1+dJW8JbYDSQpsSG1A9SDqQxA9i63ylngu7Ehh
GzYnlCL6GfM+jMa8dSlTjo0p1QirU7PWChG5rMHmLbEOzqniTnx+pxyTAotH
bb3T/tq4W3K86lcGv8ruQY+jIeqPrfKWX2UP3g+sxHs3n92XR1u9U7FO6we3
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
zhxSzFtERCNHW3oDf375t/jlL3+F1eeETNDjmNo5zFvkShyVt/pa87F/zSz8
8h//CX9124u0Ws2wn4t5i4ho5Mh85mDMpjM4ftQNX033RFhMGorqldDYuS6E
6+YtI4LmT8E+32jUqh79TJm3XJej8lZzpi827V6LVft24qelW7D/WCRK6xvR
3DP0urb95y0zss/sheeWnUhqfDRXMW8RET2NHn7f/BHuwYUoayrE3onTMfnd
tQhOq4XWZN8riq6ZtzQoSb0Dtw/exrtfrIZPbCl6en+uWcS85bock7eMyLu8
D/t27EREWTkCd27EV6/Ogee5FLQPo87Lk3lLj8bSdBxZ+A0+HvMl3C/Eo77z
52zFvEVE9DRmtBbnoqG7F31mA1pkechMK0Vbj96u9yaKXDNvmaDubEFpfi6y
8kvQoNTA+NBAGuYt1+WYvGWBurkOjbV1UBmM6K6rREFaASrruzGcw6cn85YF
Ok0nakuKkZNThPJ6JXQP1fBl3iIiGiSr4yotu2beejbmLdflHPP5WPE81dOf
Vl/+aZi3iIicH/MWuRLnyFvPh3mLiMj1MG+RK2HeIiIiZ8S8Ra6EeYuIiJyR
q+YtVW0uQm5dg49fBMpau2F8aDAN85brctW81dtehbSYQPhcC0JacQ16H7qx
hnmLiMj5uWLe6m1IhdvCrbgUmoT4m7uwwN0bGZUdD+axY95yXa6Ytwydpbjg
eQQ7D11FfPRleOw+CO/wUtyv7MW8RUTk/Pr6+lBeXg6NZvj1sB3t0bylR9z2
+Zi3/gyyazqhVeZg0+fTcTwgDe26uycFmLdcV1dXF+rr66HVah29KsP2aN4y
ovjmSbgvWwefxEpoVZW4snMDtmw+CVnH3ZpyzFtERM7ParXCbDZL/x2tHslb
xlrs/eoTbPIKR51K2B9ZVQj4cSLm7/eHou1uvmLecl1iP7ZYLKO6Pz+St8xK
BB1YB7fV25HU0Cs8qkPm+R1Ys3w9/Is6pOWZt4iIyB4eyVuGcqyZ/DG2XopC
ozRvYi9CVk3ClK2XkNt49xwe8xY5s0fylqkZvnvcsHT1DmRI8yYakHvJA4uW
rMa5zGZpeeYtIiKyh0fylq4cqyZ9jC0+kQ/yVrCQtya6eyGnXi0tz7xFzuyR
vGVoxqVdblj8UN7KEfLW/IUrcSatUVqeeYuIiOzh0euJTTg4ZRx2Cnmr/n7e
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
5fldIiJ6iBUWq/W59w0WkxEGg1F6LqLRRtoGnrPrWi1maRswPT7mnoiIiIiI
iIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiI
iIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiI
iIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiI
iIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiIiI
iIiI6BksXRWIjoxGVFQ8YmIiEF9UB73RLD3WVZGByOgYhAVHQN6ihdFiHcbz
F+P4Gk8klirRZx767yurixF7/QROh8qg1pkG/gVjF0qyY3HpSjyUWj0sQ35F
IiIiopFlNaiQH3oYE8Z9hHf+tA2JivYHucrQVYZz303ERz95o1DZi0HHJSHz
KFV6mIXnMdSE4cN/fxunkiugNQ49/SjLk7D543fxxd5otKkNA/+CqQ3BOybi
/fEHUNGqYd4iIiIiJ2CFrrscB2e8gl//wzREKJQw3A8plnps/9NEnIxVoNsw
2ORiRPz+b3E5qx4aoxUWXQfycrPR2KMbfF57iEmnhNeU1zBpdwRaB5O3rEY0
xe3E6695orRRzbxFRETDZ9WjsTAWO6ZMwdQH7UusWr8fNXpHr9zgWYR9aU7E
yYfeg9D+uhAbjqdiFL0NF2BGTZgHXvvXVzHvXAo6e43ST7UVV/DR7FMoadZA
316Km6c9se/gaYRmVkvXHC1GFepkcYhILURu7DUcPhOI4DNLMe7Nf8K/z96E
y4nlaG+pQ1bkLSRWdEBvupt+xOuU3ocOYo/HUQSllkJrMMFq6UJ2qC889+3B
Jg8v5NWr7p1n68XVma9j8p7+85aqLgfeJ4/h+JkzuHInG906IzQl3nhzzFEk
p8bj/OGD8DwdhCrVz3mvsSAGpw7uw8HTN1HYdO866VNeX69qRV5kMGJzcxFx
6SQuRxRCqzfa6w9DRESOZNZAEXcZM197C8v2nICPjxfOn7+IgKA4KEfRrsBq
UKNBloAL57xw4cIFnDtzCGuXzsPkRbeEvSzZk0lTgq0fvYxX31qDrPoemKwW
pOz5DOtv5KK9LhNrZu1GUGwGYv33Y/zEyTibUI763Nv4eupY/OkvY7Bg5Uy8
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
JEjz4V0TDFa6n5Rrl3W6t9BNOV+bAZsmZcCUjFeabQZsmpQBE0b0TM7LMwzD
OBw2fqsbMRsnY+Yub+TWyM2l9elHMeHb/YgTH8N+i3lbFAafwLK5TjgeVKBR
hmA2DWBgYNDmd9VZFIy9i37EriMh0Loqe35Leg/R1o/9OQ1YFl+OXQl50l6g
dYeOAXNDadZVHrbHyR06wxku8TieRDOy5FlY22P1dIOc8Qo1Srn3c2pd/Hh0
OANmtJMBMwxnvLT6TfFwijBiYwbn5RmGYRwGG7/Vhci1kzFb9FsGxW9VxLvh
yyluiGe/xbxFqhIvYZuLC84kVL30Ob1VSXBbsweuR1Jean3rec8gLhW2SHO0
tsQXwjNFsOnQWW6nQ4eOC6my1yF9vah7plh38JxXMl503+FoOp2/QSfjRb5q
Sbh8vl4GjHzdYlH/G788LEnmvDzDMIzDYOO3zDBcnI8Ju6/i3tN26Svldzfj
99J+Yu0L/VZ4VBT8bt5GA/st5hV5luWNvccO2PQnEl2NVSgpK0Odxl9I+a1N
nrr5rdDwCFz3vyn1CXcNmhFe0Y61qdVYG1eEQ8lGmw6drUqHzhLdDh0DnJWM
Fvmlg5oMF+mUcZ8aLGBpOGW8DDYZsE0xckZrmXi+XgaM/BX9/U4RlAEz2GbA
opWMmKgvEv+OvZyXZxiGcRx08ltNDy5h4jfrEXi/FL1D3Yhw+h4LXHyQW9Oh
zOSy9Vv09dtP2vH1zUf4+ZUs7M2uxbPuQd2/8lVhv/VxoN9X3Y0nudHYt2E+
1h06gwfPrVex9PLyNDsrrKIDXwfI1+LSxEqsSqvB8rgyuCbm4aJOR873os+Z
HUYdOgb9Dh1RnyPqlMdSn097fG5Kx85cSTdY6y/KgCk6ZbR+CFNlwLJGdEsG
jHRLBmw357cYhmEcCx2/ZepuRPTZXZh34BwuXvLAYic3hGSWoWvAMoPL1m8Z
mnsxKaoS/+FyPv7ofB7+zL8UN8vaVOe8Puy3Pg70/ZYJXW21CNu/CftcXJFR
92K/lVrXjUnRVfhj6Vo04v+4Voipd/JxMkWwmq9wUtuhk6rfoUM6rX1pdc9k
g5STny56LeqXPqPKaMkZMNFjhZLXyrPJeJF+PPlFGTBFVzJgap3z8gzDMA6G
3vwtkZ6mKjwwGPHw0X3kFFWhvUf9/+u2fsu7pE30WCX4g/P5+Ffi8a8vFGBT
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
TpD81iVkPKxCn+U+e/EY0vgZs5XWhoAN2xBhJy//15u8sOhmqpTxVWez6P4q
ug9rQpAgze6+qtJpnYGyM6R/Lepro4y4mqHRUwRsjqNsVyVulLai9RW6gSzQ
T0X7k38bUCZ1Gf/FjVLEVne9k3simXcLzTv9cuthaR6Eer6Cp6pDZ5tOhw7N
cp8bSl4rzybjRTrNip8TKnfs6GfAqCdRwPeho2fApIxXrP4cMHu6JQP26e08
TV7evt/q62pD3t2TcJq1Bu7nH2jmZrDfYhiGeSd0F2PXtNmY9PlXmKLcYz/V
6RweljWpMlu9SD60FUunKfrUifjVT76FT1Ie2nXy8p/t8MRUnzRMEt+bUyb4
uuYe+QOJBmn2Nul0H5evRqeZ3bTORethe1R6gKIfTDJidXwJVqZUIfnZy3cD
Df/Ig2asSq/Df7xSCJeHjXjeo02uMR8C6vyWpUNnhdKhs1aZr6C+Ni+Kvob2
BGnvUO7Qsb52LRmwqUoG7MQoGa/RMmJT1RkwlS5lwKzmhBk0c8IMWKToU+/k
Yfe9l1vfIp4/8oXzsnXwOP9QMzeD/RbDMMw7wdyF0kf3kZGcLN9fn5iIlPtl
aO7sV93zZcbz/FxkpqYgmR6TkojElAeobe6ENvIk7Sfu8YRrSAr2xsnv0WnP
ht6zq9+j02vPnjiDpNG9Xsd0dNpPoTWEmXp6moB9CUYsji/H7vt1yG/pw+Ar
rFGl1nVjSnQlUp51iz8Dr219iFj8lldMlrSONVpHzjalY2dJuBEHkvQ7dOh8
ysTbZMDEPzsrs04oA6bVvZWMGPksuxkwRXeKNNpkwCxzwqYOZ8AM2Bprm98a
1W899MHmpWvYbzEMw7w3hjBkNlnfX6/jP2h/0TR8H74821vPpajnnVqyWVuU
bNZC8bXonCabRfdpOSs63a94XqX7Kfpm8b0+dQMtFvULWj1VwI6EAsyPe4pT
xmbUdQ/a7IXq0TM4hISaLjT08NQhR2GgswEF9+MReCcKj4rqXjgv6pTot365
+Qi+9su26tCx6ci5I3fk2O3QEXXKeOllwNylDBjpAvYmCK+WAdPorhY9a0Qf
zoCp54Bl6ufl2W8xDMN8PLhfv4NPdnji6N0Uq+wVzc5eKb53p+wW7bVos1nH
kuS9nq+DBWkv5ZpKp/WBo6K+XDl/U7TR6h4u7ww5U7MpoRiLEioQXN6G9pfo
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
N6Q1EA/2Ww6FxW+dismCS6w8j9Reh86OWDnnt1Dq4DFY6ZTxonsR6Vqj/W69
DNjO+Dwpo3XwYR3uP+9GS9/LdPBAmgXx+8hK/C8X8vHrsKdIqHmTNS6GYRjm
Y0E979SSvRrJVgl2s1e0x7fMXvYqWp6b5RQhZ2S02arh7FWkJnuVYcleGTEx
SO4VvpRmq1MOnvYgX9Qt9JX4HGtSyG9pO3+Z8QjNg/i18xFM8M+W7rfYpdOh
czBJkO61oHm8unqinPEiz6+XATuURB08BdiaWY346k5pNtvgS64VNfQOYtu9
5/iTq0X4owsF+N+vFmJdZh1quvj6YhiGYUbHXdpP9MKxuyk62StBd66Vt5Kt
Gi17Rdkqp3Bh1OzVklGyVzTXfomS3dqu2y1kkLuFguRuIb3uod/eNmJWbBXn
5R2EY9cD8Y8bDsMpKNumQ+dMqiCtZdH8BprDdkqT4aL1zAVh8pqXc7StTucv
jsjHisQK3C5rxdP2fvS9QgcPdRSkPOuGe04j5iTU4Ce3yzEjvhpu4udx1V1j
NJOLYRiG+VBxlfLyJ/HJ1VS4abJT6mwVvc7Z0+dIuiDt++hlr2aHKtmrRP3s
1Wwle3VQlb0a7haKH+kWOphk2y20b1iXu4XUOmWjN6RWoZzz8g7BSb8gTNlx
CJ4xWVYdOuui5AwWzduSOnbU3jrNIM3fouuT7o+gGSRq731F1NfF5GFBbBnO
GRuQ19wn3V/4qpCbau4zSWtZZ/Ob8cvQpzguNImfD0r3KbLbYhiGYUaD8vK/
d/GE061U3eyVZa6Vi5KtkrJXetmqWPk1UTd7lWLRBcy7S9krwbY7KFbORdN9
Zmc02SyLTrNUtbpNt1C43D1Er9c879SxUOfl6Z4L6uEkH01zdKnPh/Lxw3vX
or5L6eiZL2W4bHXaT5wXWQy3B8+QVd8t+aKxWIbyLm6V/Nb5gpY3fzKGYRjm
o8CS3zoWnqJkr+Q9umXauVYZI3OtJgQZpdnd+tkqS/bKKL3+2ehS9sv4wuwV
dQDZdAslj3QHjdYt9LXULWSU8vvstxwHyW+5HIbL3WzMDpU7z2mv+Jwqo0Xr
lrSXPcuOThmto9TBE1GAjWmViK5sl9akBsdwv4/9FsMwDPOqqPPy6mzVsnA5
O7VVL3uVaJBmc5O+zU62imZ/U2Z+h64u3zdGOr1eXtfotK8odQuJvsklTqdb
SHx+uXtIzkzb6x76Oz8jZsRWoKSN/ZYjcMI3CP9t3RF84XtPuueC7s1Q90aR
r6KZ8bT3vNGiZ6p1AUuj8rE04QlulLSgTOrgGfshVey3GIZhmFfFMu90W3CK
TbaKZmkNZ690slmk0/7jNHvZq7jRs1c0y4vWKKbrZK+oW4j2k74PlbuDbLqF
FF3uFhJwVKd7iGaCLed5pw6Dp18QPt1yGDvvZlt17NCfyV/RfjTd00rvB7T6
5rg8/BhdAi/DcxiaetHe//aGgbLfYhiGYV4Vym/9YqsnfnMl1e5cK0s264cw
eba3NltlmXslZatSdbJXMXL2ar5Gt8leifpZTXeQWl9op1vIebh7SLDqFqIs
/nbeT3QYTvkH4XuXQzgbK8879c+QPT1ltGhermuCfI/G8PVDuvg7nhtRhD33
apH+rAsNPYNWGS3641iPBmW/xTAMw7wqtJ84ZbcndganqOZa2Wav5GyVoGSr
7GWvZH21XvYqyYA1UcYXZq8mSNkrUc+w1mm2+Cpl/sR6Xd0g6nJ2i+Z7UbcQ
5+Udi+G8vOi36HqYGyqvX9I8kLOqDh7y0yfE62F+RAHWplbibkU7qjoHdGcy
PGrsRY54jCXstxiGYZhXRZ3f0mavdtrJXll0bbZqOHt11yh1WdvNXin6blV3
kEWnfUtaB6P1sD163UKJclfelDuCbveQuluI1suc09hvOQrkt77efhizArKl
9VTy/ydSDFbXEM3fpU7OxfHl8C5sQnFbP7rtZLTaB8zY+7ABO+4/R+MbdUtb
w36LYRiGeVXIb03e5QkvJS+vzl7NUuZaHdLJZu2Ns2SvjFL2Sn3/GO3p7RXP
p9zVd3rZq1TKXhmU7JVR6r1W63J3kIDvQo3S30Ezlex1C820dA/pdAv9g38e
psVU8LxTB+Ho9UD8zXrZbx3UdPD4pNM8NSN+iCrF0cf1eNTYg9YXdPDE13Th
X8Ke4mfB5bhb2Tlm3yf7LYZhGOZVobz8f9vohem+qbrZK0t2ypK90martrwg
eyXredL9hHrZq83RgrTWRfcrntd0A1l0mkG/RNT1uoU2Rsv3KS7V6Rai9ZF1
nJd3GGje6dfbD+FwVNawf6brkPoP50YUYEdWNZJru1DfM4gXjYan7h3n7Of4
4yuF+HeXCrA6fex6d9hvMQzDMK8K5eV/t9MTc/xT5exVlKCbvaJM1gRlrpVe
9oqyU6Sv08lmUfZqpXL+etEfXVN3A5Eunk9diV8Hy/f5a3W5W0g+f5N4vrZb
6KiqW0jdPcT5LcdCPe+Ufn9eKQIWRuRjZVIF7jxpRUVnP/pfYo4Wde/4l7Xh
p4Hl+Lei1/pfxeNvA8pwqbBlTHp32G8xDMMwr4olv3UgLGVk7pXoe2h2t95c
q/lK9mqPNnuVNpK9ovUmvWzVfspWUfYqWM5e+ellr+7K2StXjX5J0gXpPjWa
C0A9Qfa6hyj74yGeT/eujVe/Ze6uRXqEPzwvRaD4WR1ywr3hF3Ufz1rHNtvt
SFj8Fq1vrYmWO3guFTSioKUPXa8wR4s6qMMqO3A2vwUTo6rwu/AKeBqbcedp
h5Srf1M+NL/V21SJjHA/+ARGw/ikEvfDgnAnMAk1nWOXeWMYhvnYUeflLXOv
RrJX+nOtditzr2aE6mevdll0S7bKTvZqlvgYmhmvl72iGQA0+8tT1S00ohuk
vkapW0g7v0LpFqLuoX8OyMOixCqUjcN5p0MDHag0RmLRd9OxYMV6HDt7AcEp
hWjuGJs9L0fEyy8QP9t0FFNv5+DAo3rcq++WOgtfdUWq1zSE1n6TlKVfmFyL
WQk1yG3qlfJePYO8vqVlsKcdJam+2LZqJqbNX4ODxy4jLkPA815uhWQY5uMh
KSkJhw4cgIuLy1s5vpo+C3//u0mYOGcBZi52ko7pi5zw6Q/L8fM5y/GLucvx
ux+XY/rC5Sp9OX47rDvhC40+zUpfjt9LupNKd8Iniv7Pds630Re94PzFI+d/
K57/G1H/65niY+avxxrn7W/t3+9VDm9vbzQ0NMi/2KEhDPbV4cKPX2H2Ni8k
5VeipbNX2gsbr2RkZMDN1fWt/ftM/X4WfvK7yfhi4Wos3rAN23fsfKPnW7dn
P3567C7+7ngkVuw9NHbf5/7L+M8nUzDhwLX3fk297uHr64va2lr5Fytei/1N
RuzftgBz1u1EWkk92rt7MQbWlGEYxmGor69HXl4ecnNz38px8vQZzN/uhp97
+OH700HY5x2II763pePQ9dtw87mNH84G4meHg0U90EZ39Zb1fxL1GaLuqqPP
PXtb1IMwy44+54x8/mxRd1PpB0V9H+mnb+NnR4Iw94y+Tuf97Eiwjb720m0s
9YlFRPr9t/bv9ypHeXk5envV+4W1OPj9l5ix1w95dV3v7Rp7WcgrCoLw9q7F
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
vpyCI7eSUNOlGDNTC8IObMN20W9lWvzWRXfs2rgDoQUt7+aHYRiGYT4SmuGz
YCr2nzuLw06TsO7sLaTde4jKpo6RrLG5Hy3PnuJRWiz8zrhi9qzvMXndAdzO
KERb78Bwvt7cVYzdkyfCwzcJtV0m1Cd74OvvdiDsYSX6XyqEzzAv5tk9X7js
34INh9zgvHo3Dp+MRmF1Dera+pVHmNHVXIkEv0NYP/crLF65Dqf9Q5D+uBB1
rV0YWbodgBDkgTVrV+FCcgXQXYGLbquw1mU/jM38BoFhGIYZO8ztOVgwcQ0C
kg2ovueN6TO+xaSdV/CwshUm7f6MqR/tDVXIfZiKmz6n8P2s9bhzv3RkXtFQ
P8oTvbF87l5cvHIFG2auxBGfNNS097/cPY8M80IGkHP9EA65uiG6uAR33Hbi
+5/Ox7FL6WiwvEEYaELspdPYvXobfIIj8DC/FA3tPSqfNUJPSyECjztj904X
nD20E67bnHE7uxA9HDdkGIZhxpChgXbkG5+iUXw9MvW1wvjgAR4U1aCjd5Qb
CodM6G57DiG3QFovUPsys/gcxTkCcnNykJlVgGfN3Ta+jWFeHzM6nlWipqIS
7f0DaK0sQ25mLsqqWjFouc5E399QWYHykgq0dfdj9OTgINqelaHQcB+PHt5H
cckTtI127TMMwzDMGDBEoeM39UeiH+vv78egaLTYajFvlyHlf2/2HGbTAAYG
Bm0y9wzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzD
MAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMAzDMMzbJftpFaae98EnJ87z
wQcffPDBBx98vPGxyC8QBXXP37fFGVcUP2/EnGs38dXpK3zwwQcffPDBBx9v
fKy5fRfVrW3v2+KMK/oGTShrbEZRfQMffPDBBx988MHHGx8Vza0YMJnet8Vh
GIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZh
GIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZh
GIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZh
GIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIZhGIb5KPj/AZytH9s=
     "], {{0, 472}, {
     604, 0}}, {0, 255},
     ColorFunction->RGBColor],
    BoxForm`ImageTag["Byte", ColorSpace -> ColorProfileData[CompressedData["
1:eJyV0b9Lw0AUB/Bva/2FBUVEHUQiiji0UutgW11iBVtxkKigbkmapoU2DZcr
tX+Am4sOooui/guii4OjOOggCIL4NwiCICLxXYJ2EvFBwuce79497oa0ipIP
AnDa6KeoNZkxtb7cRYtVyymalpHLWtwwDZbQApTkohZBrtp2KUQqW5wp87PS
2vqG1PqEDoTRjRT6VN2x5aWlRfwabw8QDXEfFb3y2ffHma3a0VnLwsFgikd+
3+dFR85wdCAghtZzjl4ml8gR3WacvE+O1rgtfE3uYTQg+UnY9P0irHkOhrya
FSVN7id3ab7HhE3fCWG9oObIGXGWP4MX7Zk5aSqWjMp/zP3vKJeq32eI2wob
1uqymIO+AWQwBwlTiCGJKGRubHJRmK7YdVY0C1yS6WYNKV0p21VusIiUtfTx
iBSPTcREnXgzv/Wr4nUP9N41cpVjIDkMNG03ctoecHEJ9N80ciOHQOc0cH5r
q0z9GTzwFvpr7eQn477Ds0Dzs+u+jgKtu8Dnjut+nLju5ymdT292VfoC5fl2
rw==
       "], "RGB", "XYZ"], Interleaving -> True],
    Selectable->False],
   DefaultBaseStyle->"ImageGraphics",
   ImageSize->{376.0390625, Automatic},
   ImageSizeRaw->{604, 472},
   PlotRange->{{0, 604}, {0, 472}}], "Text"]], "Input", \
"PluginEmbeddedContent"],

Cell["\<\
Table 3 is from Linear Algebra and Its Applications, 4ed,David Lay\
\>", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"Clear", "[", "a", "]"}]], "Input", "PluginEmbeddedContent"],

Cell[TextData[{
 "Create ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["E", "21"], " ", "matrix"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", with ",
 StyleBox["a",
  FontSlant->"Italic"],
 " and ",
 StyleBox["k",
  FontSlant->"Italic"],
 " adjustable. \n",
 Cell[BoxData[
  TagBox[
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {"a", "0"},
      {"k", "1"}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
   Function[BoxForm`e$, 
    MatrixForm[BoxForm`e$]]]]]
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"elementryM", "=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"a", ",", "0"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"k", ",", "1"}], "}"}]}], "}"}]}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"a", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", ",", "1"}], "}"}]}], "}"}]], "Output", \
"PluginEmbeddedContent"]
}, {2}]],

Cell[TextData[{
 "Create A matrix",
 Cell[BoxData[
  RowBox[{"  ", 
   TagBox[
    RowBox[{"(", "\[NoBreak]", GridBox[{
       {"2", "1"},
       {"8", "7"}
      },
      GridBoxAlignment->{
       "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
        "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[0.7]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
    Function[BoxForm`e$, 
     MatrixForm[BoxForm`e$]]]}]]]
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"b", "=", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"2", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"8", ",", "7"}], "}"}]}], "}"}]}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"2", ",", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"8", ",", "7"}], "}"}]}], "}"}]], "Output", \
"PluginEmbeddedContent"]
}, {2}]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"MatrixForm", "[", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"2", ",", "1"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"8", ",", "7"}], "}"}]}], "}"}], "]"}]]],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"2", "1"},
     {"8", "7"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output", "PluginEmbeddedContent"]
}, {2}]],

Cell[TextData[{
 "Test the dot products of ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["E", "21"], "and", " ", "A"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " through Manipulate[]"
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Dot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"a", ",", "0"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"k", ",", "1"}], "}"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"2", ",", "1"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"8", ",", "7"}], "}"}]}], "}"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"a", ",", 
     RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", ",", 
     RowBox[{"-", "10"}], ",", "10"}], "}"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = -10, $CellContext`k$$ = -10, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`a$$], -10, 10}, {
      Hold[$CellContext`k$$], -10, 10}}, Typeset`size$$ = {
    179., {2.40576171875, 9.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`a$326070$$ = 
    0, $CellContext`k$326071$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`a$$ = -10, $CellContext`k$$ = -10}, 
      "ControllerVariables" :> {
        Hold[$CellContext`a$$, $CellContext`a$326070$$, 0], 
        Hold[$CellContext`k$$, $CellContext`k$326071$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Dot[{{$CellContext`a$$, 0}, {$CellContext`k$$, 1}}, {{2, 1}, {8, 7}}], 
      "Specifications" :> {{$CellContext`a$$, -10, 
         10}, {$CellContext`k$$, -10, 10}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{247., {63., 68.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[TextData[{
 "Create a plot with a and k adjustable, so you can see the effect of \
shearing factor k. ",
 StyleBox["(for this example, set a = 1, and k = -4)",
  FontSlant->"Italic"]
}], "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Graphics", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Arrowheads", "[", "0.05", "]"}], ",", 
       RowBox[{"Arrow", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"a", ",", 
            RowBox[{"7", "+", "k"}]}], "}"}]}], "}"}], "]"}], ",", 
       RowBox[{"Arrow", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "0"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"2", " ", "a"}], ",", 
            RowBox[{"8", "+", 
             RowBox[{"2", " ", "k"}]}]}], "}"}]}], "}"}], "]"}]}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "10"}], ",", "10"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"Axes", "\[Rule]", "True"}], ",", 
     RowBox[{"AxesLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<x\>\"", ",", "\"\<y\>\""}], "}"}]}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"a", ",", 
     RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"k", ",", 
     RowBox[{"-", "10"}], ",", "10"}], "}"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 1., $CellContext`k$$ = -4., 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`a$$], -10, 10}, {
      Hold[$CellContext`k$$], -10, 10}}, Typeset`size$$ = {
    360., {180., 184.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`a$330442$$ = 
    0, $CellContext`k$330443$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`a$$ = -10, $CellContext`k$$ = -10}, 
      "ControllerVariables" :> {
        Hold[$CellContext`a$$, $CellContext`a$330442$$, 0], 
        Hold[$CellContext`k$$, $CellContext`k$330443$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Graphics[{
         Arrowheads[0.05], 
         Arrow[{{0, 0}, {$CellContext`a$$, 7 + $CellContext`k$$}}], 
         Arrow[{{0, 0}, {2 $CellContext`a$$, 8 + 2 $CellContext`k$$}}]}, 
        PlotRange -> {{-10, 10}, {-10, 10}}, Axes -> True, 
        AxesLabel -> {"x", "y"}], 
      "Specifications" :> {{$CellContext`a$$, -10, 
         10}, {$CellContext`k$$, -10, 10}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{405., {265., 270.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, {2}]],

Cell["\<\
The following are steps to generate entries for the Graphics[] to make the \
above plot\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"A", "=", 
  RowBox[{"Dot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"a", ",", "0"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"k", ",", "1"}], "}"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"2", ",", "1"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"8", ",", "7"}], "}"}]}], "}"}]}], "]"}], 
  RowBox[{"(*", 
   RowBox[{
   "find", " ", "the", " ", "two", " ", "points", " ", "by", " ", "dot", " ", 
    "product"}], "*)"}]}]], "Input", "PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"2", " ", "a"}], ",", "a"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"8", "+", 
      RowBox[{"2", " ", "k"}]}], ",", 
     RowBox[{"7", "+", "k"}]}], "}"}]}], "}"}]], "Output", \
"PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Transpose", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"2", " ", "a"}], ",", "a"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"8", "+", 
        RowBox[{"2", " ", "k"}]}], ",", 
       RowBox[{"7", "+", "k"}]}], "}"}]}], "}"}], "]"}], 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
    "because", " ", "the", " ", "result", " ", "is", " ", "row", " ", 
     "vector"}], ",", " ", 
    RowBox[{
    "transpose", " ", "it", " ", "to", " ", "become", " ", "column", " ", 
     "vector"}]}], "*)"}]}]]],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"2", " ", "a"}], ",", 
     RowBox[{"8", "+", 
      RowBox[{"2", " ", "k"}]}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"a", ",", 
     RowBox[{"7", "+", "k"}]}], "}"}]}], "}"}]], "Output", \
"PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{774.7, 1553.1},
Visible->True,
AuthoredSize->{775, 1553},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.4 for Mac OS X x86 (32-bit, 64-bit Kernel) (April 11, \
2016)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 80, 0, 23, "Subsubsection"],
Cell[1569, 37, 4252, 129, 172, "Text"],
Cell[5824, 168, 75468, 1244, 294, "Input"],
Cell[81295, 1414, 115, 2, 16, "Text"],
Cell[81413, 1418, 83, 1, 13, "Input"],
Cell[81499, 1421, 915, 32, 51, "Text"],
Cell[CellGroupData[{
Cell[82439, 1457, 234, 8, 13, "Input"],
Cell[82676, 1467, 198, 7, 13, "Output"]
}, {2}]],
Cell[82886, 1477, 702, 21, 33, "Text"],
Cell[CellGroupData[{
Cell[83613, 1502, 225, 8, 13, "Input"],
Cell[83841, 1512, 198, 7, 13, "Output"]
}, {2}]],
Cell[CellGroupData[{
Cell[84073, 1524, 203, 7, 32, InheritFromParent],
Cell[84279, 1533, 610, 17, 32, "Output"]
}, {2}]],
Cell[84901, 1553, 246, 8, 18, "Text"],
Cell[CellGroupData[{
Cell[85172, 1565, 677, 23, 13, "Input"],
Cell[85852, 1590, 1834, 37, 133, "Output"]
}, Open  ]],
Cell[87701, 1630, 224, 5, 35, "Text"],
Cell[CellGroupData[{
Cell[87950, 1639, 1471, 45, 48, "Input"],
Cell[89424, 1686, 2026, 41, 537, "Output"]
}, {2}]],
Cell[91462, 1730, 136, 3, 16, "Text"],
Cell[CellGroupData[{
Cell[91623, 1737, 584, 19, 13, "Input"],
Cell[92210, 1758, 303, 11, 13, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[92550, 1774, 591, 20, 38, InheritFromParent],
Cell[93144, 1796, 303, 11, 13, "Output"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature vvT9fpC@3mF9@AwUEtp5Dhs7 *)
