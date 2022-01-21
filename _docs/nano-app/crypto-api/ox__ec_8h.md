---
title: ox__ec_8h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---


<p>Elliptic curve cryptography syscalls.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__curve__weierstrass__s">cx_curve_weierstrass_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">Weierstrass curve defined by <b>y^3 = x^2 + a*x + b over GF(p)</b>.  <a href="../cx__curve__weierstrass__s#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__curve__twisted__edwards__s">cx_curve_twisted_edwards_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">Twisted Edwards curve defined by <b>a*x^2 + y^2 = 1 + d*x2*y2 over GF(q)</b>.  <a href="../cx__curve__twisted__edwards__s#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__curve__montgomery__s">cx_curve_montgomery_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">Montgomery curve defined by <b>B*y^2= x^3 + A*x^2 + x over GF(q)</b>.  <a href="../cx__curve__montgomery__s#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__curve__domain__s">cx_curve_domain_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">Abstract type for elliptic curve domain.  <a href="../cx__curve__domain__s#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__ec__point__s">cx_ec_point_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">Elliptic curve point.  <a href="../cx__ec__point__s#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:a7d9b0d7fc9b2cbc8ff911521713e98e6"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a7d9b0d7fc9b2cbc8ff911521713e98e6">CX_MAX_DOMAIN_LENGTH</a>&#160;&#160;&#160;66</td></tr>
<tr class="memdesc:a7d9b0d7fc9b2cbc8ff911521713e98e6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Largest domain parameters length.  <a href="#a7d9b0d7fc9b2cbc8ff911521713e98e6">More...</a><br /></td></tr>
<tr class="separator:a7d9b0d7fc9b2cbc8ff911521713e98e6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0324f20e8dd444913924c9f39e44c1bd"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a0324f20e8dd444913924c9f39e44c1bd">HAVE_SECP256K1_CURVE</a></td></tr>
<tr class="memdesc:a0324f20e8dd444913924c9f39e44c1bd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the Koblitz curve Secp256k1.  <a href="#a0324f20e8dd444913924c9f39e44c1bd">More...</a><br /></td></tr>
<tr class="separator:a0324f20e8dd444913924c9f39e44c1bd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9eb15e46c211ec48c8f0ba11bb656472"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a9eb15e46c211ec48c8f0ba11bb656472">HAVE_SECP256R1_CURVE</a></td></tr>
<tr class="memdesc:a9eb15e46c211ec48c8f0ba11bb656472"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the verifiably random curve Secp256r1.  <a href="#a9eb15e46c211ec48c8f0ba11bb656472">More...</a><br /></td></tr>
<tr class="separator:a9eb15e46c211ec48c8f0ba11bb656472"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adb4b730dc1e31621f66468567b206a76"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#adb4b730dc1e31621f66468567b206a76">HAVE_SECP384R1_CURVE</a></td></tr>
<tr class="memdesc:adb4b730dc1e31621f66468567b206a76"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the verifiably random curve Secp384r1.  <a href="#adb4b730dc1e31621f66468567b206a76">More...</a><br /></td></tr>
<tr class="separator:adb4b730dc1e31621f66468567b206a76"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a29ec9738a3443e830815f5eb82abc2f0"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a29ec9738a3443e830815f5eb82abc2f0">HAVE_SECP521R1_CURVE</a></td></tr>
<tr class="memdesc:a29ec9738a3443e830815f5eb82abc2f0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the verifiably random curve Secp521r1.  <a href="#a29ec9738a3443e830815f5eb82abc2f0">More...</a><br /></td></tr>
<tr class="separator:a29ec9738a3443e830815f5eb82abc2f0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad9e55fd69c0d6cc70bbea1a7bed22c7f"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ad9e55fd69c0d6cc70bbea1a7bed22c7f">HAVE_BRAINPOOL_P256R1_CURVE</a></td></tr>
<tr class="memdesc:ad9e55fd69c0d6cc70bbea1a7bed22c7f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the curve BrainpoolP256r1.  <a href="#ad9e55fd69c0d6cc70bbea1a7bed22c7f">More...</a><br /></td></tr>
<tr class="separator:ad9e55fd69c0d6cc70bbea1a7bed22c7f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab3370197da697421061843918272cbed"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ab3370197da697421061843918272cbed">HAVE_BRAINPOOL_P256T1_CURVE</a></td></tr>
<tr class="memdesc:ab3370197da697421061843918272cbed"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the twisted curve BrainpoolP256t1.  <a href="#ab3370197da697421061843918272cbed">More...</a><br /></td></tr>
<tr class="separator:ab3370197da697421061843918272cbed"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a605f497ffc683dafc10a363223e1c62d"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a605f497ffc683dafc10a363223e1c62d">HAVE_BRAINPOOL_P320R1_CURVE</a></td></tr>
<tr class="memdesc:a605f497ffc683dafc10a363223e1c62d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the curve BrainpoolP320r1.  <a href="#a605f497ffc683dafc10a363223e1c62d">More...</a><br /></td></tr>
<tr class="separator:a605f497ffc683dafc10a363223e1c62d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7f7db76d64c0e4d5b097eddb9cbd4fd3"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a7f7db76d64c0e4d5b097eddb9cbd4fd3">HAVE_BRAINPOOL_P320T1_CURVE</a></td></tr>
<tr class="memdesc:a7f7db76d64c0e4d5b097eddb9cbd4fd3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the twisted curve BrainpoolP320t1.  <a href="#a7f7db76d64c0e4d5b097eddb9cbd4fd3">More...</a><br /></td></tr>
<tr class="separator:a7f7db76d64c0e4d5b097eddb9cbd4fd3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ace39e352169474131eff9cf27d5e6cd5"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ace39e352169474131eff9cf27d5e6cd5">HAVE_BRAINPOOL_P384R1_CURVE</a></td></tr>
<tr class="memdesc:ace39e352169474131eff9cf27d5e6cd5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the curve BrainpoolP384r1.  <a href="#ace39e352169474131eff9cf27d5e6cd5">More...</a><br /></td></tr>
<tr class="separator:ace39e352169474131eff9cf27d5e6cd5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa75ce86c233554a87d69d2d96597e6e3"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#aa75ce86c233554a87d69d2d96597e6e3">HAVE_BRAINPOOL_P384T1_CURVE</a></td></tr>
<tr class="memdesc:aa75ce86c233554a87d69d2d96597e6e3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the twisted curve BrainpoolP384t1.  <a href="#aa75ce86c233554a87d69d2d96597e6e3">More...</a><br /></td></tr>
<tr class="separator:aa75ce86c233554a87d69d2d96597e6e3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a48849e367c754dc797b4b4c48ac8f968"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a48849e367c754dc797b4b4c48ac8f968">HAVE_BRAINPOOL_P512R1_CURVE</a></td></tr>
<tr class="memdesc:a48849e367c754dc797b4b4c48ac8f968"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the curve BrainpoolP512r1.  <a href="#a48849e367c754dc797b4b4c48ac8f968">More...</a><br /></td></tr>
<tr class="separator:a48849e367c754dc797b4b4c48ac8f968"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7d2353c2ca3989a78ef6869335b8c90d"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a7d2353c2ca3989a78ef6869335b8c90d">HAVE_BRAINPOOL_P512T1_CURVE</a></td></tr>
<tr class="memdesc:a7d2353c2ca3989a78ef6869335b8c90d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the twisted curve BrainpoolP512t1.  <a href="#a7d2353c2ca3989a78ef6869335b8c90d">More...</a><br /></td></tr>
<tr class="separator:a7d2353c2ca3989a78ef6869335b8c90d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aea960ee390d348cea6464c1714417405"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#aea960ee390d348cea6464c1714417405">HAVE_ED25519_CURVE</a></td></tr>
<tr class="memdesc:aea960ee390d348cea6464c1714417405"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the twisted Edwards curve Ed25519.  <a href="#aea960ee390d348cea6464c1714417405">More...</a><br /></td></tr>
<tr class="separator:aea960ee390d348cea6464c1714417405"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa993c306d12641ea4bd0c660f3837929"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#aa993c306d12641ea4bd0c660f3837929">HAVE_ED448_CURVE</a></td></tr>
<tr class="memdesc:aa993c306d12641ea4bd0c660f3837929"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the twisted Edwards curve Ed448.  <a href="#aa993c306d12641ea4bd0c660f3837929">More...</a><br /></td></tr>
<tr class="separator:aa993c306d12641ea4bd0c660f3837929"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a831938576c5d89420135aef9a06a54ac"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a831938576c5d89420135aef9a06a54ac">HAVE_CV25519_CURVE</a></td></tr>
<tr class="memdesc:a831938576c5d89420135aef9a06a54ac"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the Montgomery curve Curve25519.  <a href="#a831938576c5d89420135aef9a06a54ac">More...</a><br /></td></tr>
<tr class="separator:a831938576c5d89420135aef9a06a54ac"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a53a27bcfa0b611365977f00f402e4e97"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a53a27bcfa0b611365977f00f402e4e97">HAVE_CV448_CURVE</a></td></tr>
<tr class="memdesc:a53a27bcfa0b611365977f00f402e4e97"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the Montgomery curve Curve448.  <a href="#a53a27bcfa0b611365977f00f402e4e97">More...</a><br /></td></tr>
<tr class="separator:a53a27bcfa0b611365977f00f402e4e97"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a446f9c56c3cfa08d5abfbf3534016117"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a446f9c56c3cfa08d5abfbf3534016117">HAVE_STARK256_CURVE</a></td></tr>
<tr class="memdesc:a446f9c56c3cfa08d5abfbf3534016117"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enable the Stark curve.  <a href="#a446f9c56c3cfa08d5abfbf3534016117">More...</a><br /></td></tr>
<tr class="separator:a446f9c56c3cfa08d5abfbf3534016117"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0546971e9e13424e94aed73a43dd1f0e"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a0546971e9e13424e94aed73a43dd1f0e">CX_ECCINFO_PARITY_ODD</a>&#160;&#160;&#160;1</td></tr>
<tr class="memdesc:a0546971e9e13424e94aed73a43dd1f0e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Indicates the parity of a point coordinate.  <a href="#a0546971e9e13424e94aed73a43dd1f0e">More...</a><br /></td></tr>
<tr class="separator:a0546971e9e13424e94aed73a43dd1f0e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a62302b3b053718f4b2997cf096314085"><td class="memItemLeft" align="right" valign="top"><a id="a62302b3b053718f4b2997cf096314085"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a62302b3b053718f4b2997cf096314085">CX_CURVE_256K1</a>&#160;&#160;&#160;<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477dab18a1d844197eb7a450fb01a6a1017da">CX_CURVE_SECP256K1</a></td></tr>
<tr class="memdesc:a62302b3b053718f4b2997cf096314085"><td class="mdescLeft">&#160;</td><td class="mdescRight">Allowed identifier for Secp256k1. <br /></td></tr>
<tr class="separator:a62302b3b053718f4b2997cf096314085"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a548489a4185fd855b5e256beae3fb9a1"><td class="memItemLeft" align="right" valign="top"><a id="a548489a4185fd855b5e256beae3fb9a1"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a548489a4185fd855b5e256beae3fb9a1">CX_CURVE_256R1</a>&#160;&#160;&#160;<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da00389b6367fadd7665770eed01cfbded">CX_CURVE_SECP256R1</a></td></tr>
<tr class="memdesc:a548489a4185fd855b5e256beae3fb9a1"><td class="mdescLeft">&#160;</td><td class="mdescRight">Legacy identifier for Secp256r1. <br /></td></tr>
<tr class="separator:a548489a4185fd855b5e256beae3fb9a1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a97b867d95b6bc2efb8f2160d310e8727"><td class="memItemLeft" align="right" valign="top"><a id="a97b867d95b6bc2efb8f2160d310e8727"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a97b867d95b6bc2efb8f2160d310e8727">CX_CURVE_NISTP256</a>&#160;&#160;&#160;<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da00389b6367fadd7665770eed01cfbded">CX_CURVE_SECP256R1</a></td></tr>
<tr class="memdesc:a97b867d95b6bc2efb8f2160d310e8727"><td class="mdescLeft">&#160;</td><td class="mdescRight">Legacy identifier for Secp256r1. <br /></td></tr>
<tr class="separator:a97b867d95b6bc2efb8f2160d310e8727"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7ce7e2b1a016c32ce1602de663ca84ea"><td class="memItemLeft" align="right" valign="top"><a id="a7ce7e2b1a016c32ce1602de663ca84ea"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a7ce7e2b1a016c32ce1602de663ca84ea">CX_CURVE_NISTP384</a>&#160;&#160;&#160;<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da824f259da3ef0b8f4e3ee6fcbd98c6e7">CX_CURVE_SECP384R1</a></td></tr>
<tr class="memdesc:a7ce7e2b1a016c32ce1602de663ca84ea"><td class="mdescLeft">&#160;</td><td class="mdescRight">Allowed identifier for Secp384r1. <br /></td></tr>
<tr class="separator:a7ce7e2b1a016c32ce1602de663ca84ea"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae4b61604ca53904bf8783cd49884178d"><td class="memItemLeft" align="right" valign="top"><a id="ae4b61604ca53904bf8783cd49884178d"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ae4b61604ca53904bf8783cd49884178d">CX_CURVE_NISTP521</a>&#160;&#160;&#160;<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da69f729ce7b3a89bb3871176f8b917b35">CX_CURVE_SECP521R1</a></td></tr>
<tr class="memdesc:ae4b61604ca53904bf8783cd49884178d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Allowed identifier for Secp521r1. <br /></td></tr>
<tr class="separator:ae4b61604ca53904bf8783cd49884178d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab67addec3d9a79d1ce6d6482562a5bf0"><td class="memItemLeft" align="right" valign="top"><a id="ab67addec3d9a79d1ce6d6482562a5bf0"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ab67addec3d9a79d1ce6d6482562a5bf0">CX_CURVE_RANGE</a>(i,  dom)</td></tr>
<tr class="memdesc:ab67addec3d9a79d1ce6d6482562a5bf0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return true if the curve identifier is in the specified range. <br /></td></tr>
<tr class="separator:ab67addec3d9a79d1ce6d6482562a5bf0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af7ab029bb3ab89de863730319073dc35"><td class="memItemLeft" align="right" valign="top"><a id="af7ab029bb3ab89de863730319073dc35"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#af7ab029bb3ab89de863730319073dc35">CX_CURVE_IS_WEIERSTRASS</a>(c)</td></tr>
<tr class="memdesc:af7ab029bb3ab89de863730319073dc35"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return true if the curve is a short Weierstrass curve. <br /></td></tr>
<tr class="separator:af7ab029bb3ab89de863730319073dc35"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a041b896c15d451fdcd1ac582baf30bce"><td class="memItemLeft" align="right" valign="top"><a id="a041b896c15d451fdcd1ac582baf30bce"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a041b896c15d451fdcd1ac582baf30bce">CX_CURVE_IS_TWISTED_EDWARDS</a>(c)</td></tr>
<tr class="memdesc:a041b896c15d451fdcd1ac582baf30bce"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return true if the curve is a twisted Edwards curve. <br /></td></tr>
<tr class="separator:a041b896c15d451fdcd1ac582baf30bce"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8a68336775894e26b88a79ec96b41ed3"><td class="memItemLeft" align="right" valign="top"><a id="a8a68336775894e26b88a79ec96b41ed3"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a8a68336775894e26b88a79ec96b41ed3">CX_CURVE_IS_MONTGOMERY</a>(c)</td></tr>
<tr class="memdesc:a8a68336775894e26b88a79ec96b41ed3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return true if the curve is a Montgomery curve. <br /></td></tr>
<tr class="separator:a8a68336775894e26b88a79ec96b41ed3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5ad90d6a0e043d9a94aa017fec898b78"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a5ad90d6a0e043d9a94aa017fec898b78">CX_CURVE_HEADER</a></td></tr>
<tr class="memdesc:a5ad90d6a0e043d9a94aa017fec898b78"><td class="mdescLeft">&#160;</td><td class="mdescRight">Curve domain parameters.  <a href="#a5ad90d6a0e043d9a94aa017fec898b78">More...</a><br /></td></tr>
<tr class="separator:a5ad90d6a0e043d9a94aa017fec898b78"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:ada004671ae8fe2032d4c144ed6ebb837"><td class="memItemLeft" align="right" valign="top">typedef enum <a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477d">cx_curve_e</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a></td></tr>
<tr class="memdesc:ada004671ae8fe2032d4c144ed6ebb837"><td class="mdescLeft">&#160;</td><td class="mdescRight">Convenience type.  <a href="#ada004671ae8fe2032d4c144ed6ebb837">More...</a><br /></td></tr>
<tr class="separator:ada004671ae8fe2032d4c144ed6ebb837"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a971ee361ce22d28f49de55649da20850"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__curve__weierstrass__s">cx_curve_weierstrass_s</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a971ee361ce22d28f49de55649da20850">cx_curve_weierstrass_t</a></td></tr>
<tr class="memdesc:a971ee361ce22d28f49de55649da20850"><td class="mdescLeft">&#160;</td><td class="mdescRight">Convenience type.  <a href="#a971ee361ce22d28f49de55649da20850">More...</a><br /></td></tr>
<tr class="separator:a971ee361ce22d28f49de55649da20850"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aece0e703bfd2f8b85df136825830fc77"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__curve__twisted__edwards__s">cx_curve_twisted_edwards_s</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#aece0e703bfd2f8b85df136825830fc77">cx_curve_twisted_edwards_t</a></td></tr>
<tr class="memdesc:aece0e703bfd2f8b85df136825830fc77"><td class="mdescLeft">&#160;</td><td class="mdescRight">Convenience type.  <a href="#aece0e703bfd2f8b85df136825830fc77">More...</a><br /></td></tr>
<tr class="separator:aece0e703bfd2f8b85df136825830fc77"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa211e189ec4d66968f0417e136a5d5b6"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__curve__montgomery__s">cx_curve_montgomery_s</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#aa211e189ec4d66968f0417e136a5d5b6">cx_curve_montgomery_t</a></td></tr>
<tr class="memdesc:aa211e189ec4d66968f0417e136a5d5b6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Convenience type.  <a href="#aa211e189ec4d66968f0417e136a5d5b6">More...</a><br /></td></tr>
<tr class="separator:aa211e189ec4d66968f0417e136a5d5b6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4d2899438548cdc90c83de901837f7a9"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__curve__domain__s">cx_curve_domain_s</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a4d2899438548cdc90c83de901837f7a9">cx_curve_domain_t</a></td></tr>
<tr class="memdesc:a4d2899438548cdc90c83de901837f7a9"><td class="mdescLeft">&#160;</td><td class="mdescRight">Convenience type.  <a href="#a4d2899438548cdc90c83de901837f7a9">More...</a><br /></td></tr>
<tr class="separator:a4d2899438548cdc90c83de901837f7a9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa33ce844128bcd045dc7c80a2b06af8c"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__ec__point__s">cx_ec_point_s</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a></td></tr>
<tr class="memdesc:aa33ce844128bcd045dc7c80a2b06af8c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Convenience type.  <a href="#aa33ce844128bcd045dc7c80a2b06af8c">More...</a><br /></td></tr>
<tr class="separator:aa33ce844128bcd045dc7c80a2b06af8c"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="enum-members"></a>
Enumerations</h2></td></tr>
<tr class="memitem:ab9e984f37d7329f57dbc826cb5ba477d"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477d">cx_curve_e</a> { <br />
&#160;&#160;<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da8ccae6edafa11dd748dcc0eb6f26c431">CX_CURVE_NONE</a>, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da9cf27d0c4b6e12a7f2656562148c5ef6">CX_CURVE_WEIERSTRASS_START</a> = 0x20, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477dab18a1d844197eb7a450fb01a6a1017da">CX_CURVE_SECP256K1</a> = 0x21, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da00389b6367fadd7665770eed01cfbded">CX_CURVE_SECP256R1</a> = 0x22, 
<br />
&#160;&#160;<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da824f259da3ef0b8f4e3ee6fcbd98c6e7">CX_CURVE_SECP384R1</a> = 0x23, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da69f729ce7b3a89bb3871176f8b917b35">CX_CURVE_SECP521R1</a> = 0x24, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da0188ffd3ef9a8224b4e7e9f801666f64">CX_CURVE_BrainPoolP256T1</a> = 0x31, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da41907174618d92baad062b94c0d7f6ce">CX_CURVE_BrainPoolP256R1</a> = 0x32, 
<br />
&#160;&#160;<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477daea5df1af135b050387c65fb87b3d9b3e">CX_CURVE_BrainPoolP320T1</a> = 0x33, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da42ca990b962de003051060d9138a6fc5">CX_CURVE_BrainPoolP320R1</a> = 0x34, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da0ca1709720775016d656262973b8bfe6">CX_CURVE_BrainPoolP384T1</a> = 0x35, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da99254e48e96f2998f12a2d902251c60a">CX_CURVE_BrainPoolP384R1</a> = 0x36, 
<br />
&#160;&#160;<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da2302bc24fd01a16cdd9235843b0ecf4d">CX_CURVE_BrainPoolP512T1</a> = 0x37, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da4c11577e0083988873fe73eef23fdf1b">CX_CURVE_BrainPoolP512R1</a> = 0x38, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da9fefd7490a065fec8945fec55a4f6983">CX_CURVE_BLS12_381_G1</a> = 0x39, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477dadf6465042aee1fa17f063d98055826d8">CX_CURVE_FRP256V1</a> = 0x41, 
<br />
&#160;&#160;<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da71dab2a2b7c2b70b435185eff3a02bca">CX_CURVE_Stark256</a> = 0x51, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da5736a9a654963a631a6007a50d46026d">CX_CURVE_WEIERSTRASS_END</a> = 0x6F, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da143757f054d2a1c021a34243442f0321">CX_CURVE_TWISTED_EDWARDS_START</a> = 0x70, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da9e658d904f398f642249f20042dbe367">CX_CURVE_Ed25519</a> = 0x71, 
<br />
&#160;&#160;<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da6623b96ca131b96daefdbd3fb08d7cb7">CX_CURVE_Ed448</a> = 0x72, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da530a6c0c51f7219253218ba8ce59956a">CX_CURVE_TWISTED_EDWARDS_END</a> = 0x7F, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da7cef83043d376a8cab6566869a12c5c2">CX_CURVE_MONTGOMERY_START</a> = 0x80, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da9c3deb51d8822695b1370e136d287228">CX_CURVE_Curve25519</a> = 0x81, 
<br />
&#160;&#160;<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477da2fe5e75b4e745fd6b8dcd8eed705145e">CX_CURVE_Curve448</a> = 0x82, 
<a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477dacf88888a9c8b8bde2e29c6381970b012">CX_CURVE_MONTGOMERY_END</a> = 0x8F
<br />
 }<tr class="memdesc:ab9e984f37d7329f57dbc826cb5ba477d"><td class="mdescLeft">&#160;</td><td class="mdescRight">List of supported elliptic curves.  <a href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477d">More...</a><br /></td></tr>
</td></tr>
<tr class="separator:ab9e984f37d7329f57dbc826cb5ba477d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4716b0edb6c8816d3876164bc40ea1f6"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a4716b0edb6c8816d3876164bc40ea1f6">cx_curve_dom_param_s</a> { <br />
&#160;&#160;<a class="el" href="../ox__ec_8h#a4716b0edb6c8816d3876164bc40ea1f6a28fa28618f566394089103994443f1e4">CX_CURVE_PARAM_NONE</a> = 0, 
<a class="el" href="../ox__ec_8h#a4716b0edb6c8816d3876164bc40ea1f6adb25227f393a29e67003d9caf03d0043">CX_CURVE_PARAM_A</a> = 1, 
<a class="el" href="../ox__ec_8h#a4716b0edb6c8816d3876164bc40ea1f6aa37411d82817d3d1d5aff39adf212bf1">CX_CURVE_PARAM_B</a> = 2, 
<a class="el" href="../ox__ec_8h#a4716b0edb6c8816d3876164bc40ea1f6a0444af3a60e946877b363176c1a467ed">CX_CURVE_PARAM_Field</a> = 3, 
<br />
&#160;&#160;<a class="el" href="../ox__ec_8h#a4716b0edb6c8816d3876164bc40ea1f6a3928ab9186c102afcaae3f8797f87d9b">CX_CURVE_PARAM_Gx</a> = 4, 
<a class="el" href="../ox__ec_8h#a4716b0edb6c8816d3876164bc40ea1f6aeff5d302adab3924203debee18e96313">CX_CURVE_PARAM_Gy</a> = 5, 
<a class="el" href="../ox__ec_8h#a4716b0edb6c8816d3876164bc40ea1f6a5c87d7e30fb07753385104aeed886183">CX_CURVE_PARAM_Order</a> = 6, 
<a class="el" href="../ox__ec_8h#a4716b0edb6c8816d3876164bc40ea1f6a5e24ddc770800e987864bd49a752394e">CX_CURVE_PARAM_Cofactor</a> = 7
<br />
 }<tr class="memdesc:a4716b0edb6c8816d3876164bc40ea1f6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Identifiers of the domain parameters.  <a href="../ox__ec_8h#a4716b0edb6c8816d3876164bc40ea1f6">More...</a><br /></td></tr>
</td></tr>
<tr class="separator:a4716b0edb6c8816d3876164bc40ea1f6"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:a31118df83eb2629ff417521ace4d917e"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a31118df83eb2629ff417521ace4d917e">cx_ecdomain_size</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve, size_t *length)</td></tr>
<tr class="memdesc:a31118df83eb2629ff417521ace4d917e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return the bit length of each parameter of the curve.  <a href="#a31118df83eb2629ff417521ace4d917e">More...</a><br /></td></tr>
<tr class="separator:a31118df83eb2629ff417521ace4d917e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1c0a18bd483a254e2c7783442d32b002"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a1c0a18bd483a254e2c7783442d32b002">cx_ecdomain_parameters_length</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> cv, size_t *length)</td></tr>
<tr class="memdesc:a1c0a18bd483a254e2c7783442d32b002"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return the byte length of each parameter of the curve.  <a href="#a1c0a18bd483a254e2c7783442d32b002">More...</a><br /></td></tr>
<tr class="separator:a1c0a18bd483a254e2c7783442d32b002"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab9afff1ba449430ecab236fa0f5d41c2"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ab9afff1ba449430ecab236fa0f5d41c2">cx_ecdomain_parameter</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> cv, cx_curve_dom_param_t id, uint8_t *p, uint32_t p_len)</td></tr>
<tr class="memdesc:ab9afff1ba449430ecab236fa0f5d41c2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get a specific parameter of the curve.  <a href="#ab9afff1ba449430ecab236fa0f5d41c2">More...</a><br /></td></tr>
<tr class="separator:ab9afff1ba449430ecab236fa0f5d41c2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac6fed5707cf1a1978463ac30a8a30e1d"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ac6fed5707cf1a1978463ac30a8a30e1d">cx_ecdomain_parameter_bn</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> cv, cx_curve_dom_param_t id, <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a> p)</td></tr>
<tr class="memdesc:ac6fed5707cf1a1978463ac30a8a30e1d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Store a specific parameter of the curve as a BN.  <a href="#ac6fed5707cf1a1978463ac30a8a30e1d">More...</a><br /></td></tr>
<tr class="separator:ac6fed5707cf1a1978463ac30a8a30e1d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab4b77a831232980e28185be49e355630"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ab4b77a831232980e28185be49e355630">cx_ecdomain_generator</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> cv, uint8_t *Gx, uint8_t *Gy, size_t len)</td></tr>
<tr class="memdesc:ab4b77a831232980e28185be49e355630"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the generator of the curve.  <a href="#ab4b77a831232980e28185be49e355630">More...</a><br /></td></tr>
<tr class="separator:ab4b77a831232980e28185be49e355630"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab055f0bd0a2b43c0b27493216d566efc"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ab055f0bd0a2b43c0b27493216d566efc">cx_ecdomain_generator_bn</a> (<a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> cv, <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P)</td></tr>
<tr class="memdesc:ab055f0bd0a2b43c0b27493216d566efc"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the generator of the curve and store it in the point structure.  <a href="#ab055f0bd0a2b43c0b27493216d566efc">More...</a><br /></td></tr>
<tr class="separator:ab055f0bd0a2b43c0b27493216d566efc"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aae0dc41d0dc74a8402a8629533ae11d5"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#aae0dc41d0dc74a8402a8629533ae11d5">cx_ecpoint_alloc</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, <a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> cv)</td></tr>
<tr class="memdesc:aae0dc41d0dc74a8402a8629533ae11d5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Allocate memory for a point on the curve.  <a href="#aae0dc41d0dc74a8402a8629533ae11d5">More...</a><br /></td></tr>
<tr class="separator:aae0dc41d0dc74a8402a8629533ae11d5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a185b9bb49f4c92b3f6251937c377be5f"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a185b9bb49f4c92b3f6251937c377be5f">cx_ecpoint_destroy</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P)</td></tr>
<tr class="memdesc:a185b9bb49f4c92b3f6251937c377be5f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destroy a point on the curve.  <a href="#a185b9bb49f4c92b3f6251937c377be5f">More...</a><br /></td></tr>
<tr class="separator:a185b9bb49f4c92b3f6251937c377be5f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab79f577e0b833eea2d51041899fe10f9"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ab79f577e0b833eea2d51041899fe10f9">cx_ecpoint_init</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, const uint8_t *x, size_t x_len, const uint8_t *y, size_t y_len)</td></tr>
<tr class="memdesc:ab79f577e0b833eea2d51041899fe10f9"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initialize a point on the curve.  <a href="#ab79f577e0b833eea2d51041899fe10f9">More...</a><br /></td></tr>
<tr class="separator:ab79f577e0b833eea2d51041899fe10f9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aafb21ddcd66e30397d6043aba5ddea96"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#aafb21ddcd66e30397d6043aba5ddea96">cx_ecpoint_init_bn</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, const <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a> x, const <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a> y)</td></tr>
<tr class="memdesc:aafb21ddcd66e30397d6043aba5ddea96"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initialize a point on the curve with the BN indexes of the coordinates.  <a href="#aafb21ddcd66e30397d6043aba5ddea96">More...</a><br /></td></tr>
<tr class="separator:aafb21ddcd66e30397d6043aba5ddea96"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a357c217dfb38ea5bf4bf90cadb122871"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a357c217dfb38ea5bf4bf90cadb122871">cx_ecpoint_export</a> (const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, uint8_t *x, size_t x_len, uint8_t *y, size_t y_len)</td></tr>
<tr class="memdesc:a357c217dfb38ea5bf4bf90cadb122871"><td class="mdescLeft">&#160;</td><td class="mdescRight">Export a point.  <a href="#a357c217dfb38ea5bf4bf90cadb122871">More...</a><br /></td></tr>
<tr class="separator:a357c217dfb38ea5bf4bf90cadb122871"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a30df3c7aa3c1b3628c8e60c67addbeeb"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a30df3c7aa3c1b3628c8e60c67addbeeb">cx_ecpoint_export_bn</a> (const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a> *x, <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a> *y)</td></tr>
<tr class="memdesc:a30df3c7aa3c1b3628c8e60c67addbeeb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Export a point using BN indexes of the coordinates.  <a href="#a30df3c7aa3c1b3628c8e60c67addbeeb">More...</a><br /></td></tr>
<tr class="separator:a30df3c7aa3c1b3628c8e60c67addbeeb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abfd779cec5c375e59fb63928d2de484b"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#abfd779cec5c375e59fb63928d2de484b">cx_ecpoint_compress</a> (const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, uint8_t *xy_compressed, size_t xy_compressed_len, uint32_t *sign)</td></tr>
<tr class="memdesc:abfd779cec5c375e59fb63928d2de484b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Compute the compressed form of a point.  <a href="#abfd779cec5c375e59fb63928d2de484b">More...</a><br /></td></tr>
<tr class="separator:abfd779cec5c375e59fb63928d2de484b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8a77233157092a5f15af3e72f2468f66"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a8a77233157092a5f15af3e72f2468f66">cx_ecpoint_decompress</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, const uint8_t *xy_compressed, size_t xy_compressed_len, uint32_t sign)</td></tr>
<tr class="memdesc:a8a77233157092a5f15af3e72f2468f66"><td class="mdescLeft">&#160;</td><td class="mdescRight">Compute the affine coordinates of a point given its compressed form.  <a href="#a8a77233157092a5f15af3e72f2468f66">More...</a><br /></td></tr>
<tr class="separator:a8a77233157092a5f15af3e72f2468f66"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aaa2d271c9e431d43e1034fe065bbe918"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#aaa2d271c9e431d43e1034fe065bbe918">cx_ecpoint_add</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *R, const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *Q)</td></tr>
<tr class="memdesc:aaa2d271c9e431d43e1034fe065bbe918"><td class="mdescLeft">&#160;</td><td class="mdescRight">Add two points on a curve.  <a href="#aaa2d271c9e431d43e1034fe065bbe918">More...</a><br /></td></tr>
<tr class="separator:aaa2d271c9e431d43e1034fe065bbe918"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a45aff9cbf509ce0dc8533af802a740a7"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a45aff9cbf509ce0dc8533af802a740a7">cx_ecpoint_neg</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P)</td></tr>
<tr class="memdesc:a45aff9cbf509ce0dc8533af802a740a7"><td class="mdescLeft">&#160;</td><td class="mdescRight">Compute the opposite of a point.  <a href="#a45aff9cbf509ce0dc8533af802a740a7">More...</a><br /></td></tr>
<tr class="separator:a45aff9cbf509ce0dc8533af802a740a7"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae4c0306a025333d279be5326586bf86b"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ae4c0306a025333d279be5326586bf86b">cx_ecpoint_rnd_scalarmul</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, const uint8_t *k, size_t k_len)</td></tr>
<tr class="memdesc:ae4c0306a025333d279be5326586bf86b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Perform a secure scalar multiplication.  <a href="#ae4c0306a025333d279be5326586bf86b">More...</a><br /></td></tr>
<tr class="separator:ae4c0306a025333d279be5326586bf86b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4bd5932bc102754d01bcccccbefdcdc3"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a4bd5932bc102754d01bcccccbefdcdc3">cx_ecpoint_rnd_scalarmul_bn</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, const <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a> bn_k)</td></tr>
<tr class="memdesc:a4bd5932bc102754d01bcccccbefdcdc3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Perform a secure scalar multiplication given the BN index of the scalar.  <a href="#a4bd5932bc102754d01bcccccbefdcdc3">More...</a><br /></td></tr>
<tr class="separator:a4bd5932bc102754d01bcccccbefdcdc3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3f63575b0780c61aafc46d74843f9737"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a3f63575b0780c61aafc46d74843f9737">cx_ecpoint_rnd_fixed_scalarmul</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, const uint8_t *k, size_t k_len)</td></tr>
<tr class="memdesc:a3f63575b0780c61aafc46d74843f9737"><td class="mdescLeft">&#160;</td><td class="mdescRight">Perform a secure scalar multiplication with a fixed scalar length.  <a href="#a3f63575b0780c61aafc46d74843f9737">More...</a><br /></td></tr>
<tr class="separator:a3f63575b0780c61aafc46d74843f9737"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae6c120f9d7e79685741b37a8bd7417c2"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ae6c120f9d7e79685741b37a8bd7417c2">cx_ecpoint_scalarmul</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, const uint8_t *k, size_t k_len)</td></tr>
<tr class="memdesc:ae6c120f9d7e79685741b37a8bd7417c2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Perform a scalar multiplication.  <a href="#ae6c120f9d7e79685741b37a8bd7417c2">More...</a><br /></td></tr>
<tr class="separator:ae6c120f9d7e79685741b37a8bd7417c2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7af5711cec8ba114f380524d54d71387"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a7af5711cec8ba114f380524d54d71387">cx_ecpoint_scalarmul_bn</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, const <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a> bn_k)</td></tr>
<tr class="memdesc:a7af5711cec8ba114f380524d54d71387"><td class="mdescLeft">&#160;</td><td class="mdescRight">Perform a scalar multiplication given the BN index of the scalar.  <a href="#a7af5711cec8ba114f380524d54d71387">More...</a><br /></td></tr>
<tr class="separator:a7af5711cec8ba114f380524d54d71387"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad74a8ffd620e4fdc9a52ad678c7fed62"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ad74a8ffd620e4fdc9a52ad678c7fed62">cx_ecpoint_double_scalarmul</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *R, <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *Q, const uint8_t *k, size_t k_len, const uint8_t *r, size_t r_len)</td></tr>
<tr class="memdesc:ad74a8ffd620e4fdc9a52ad678c7fed62"><td class="mdescLeft">&#160;</td><td class="mdescRight">Perform a double scalar multiplication.  <a href="#ad74a8ffd620e4fdc9a52ad678c7fed62">More...</a><br /></td></tr>
<tr class="separator:ad74a8ffd620e4fdc9a52ad678c7fed62"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a69c8d8b11481a929dce4689e85eb3f3d"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#a69c8d8b11481a929dce4689e85eb3f3d">cx_ecpoint_double_scalarmul_bn</a> (<a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *R, <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *Q, const <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a> bn_k, const <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a> bn_r)</td></tr>
<tr class="memdesc:a69c8d8b11481a929dce4689e85eb3f3d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Perform a double scalar multiplication given the BN indexes of the scalars.  <a href="#a69c8d8b11481a929dce4689e85eb3f3d">More...</a><br /></td></tr>
<tr class="separator:a69c8d8b11481a929dce4689e85eb3f3d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:afa038890e5ffc3b2dc3e4e5f2637cce2"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#afa038890e5ffc3b2dc3e4e5f2637cce2">cx_ecpoint_cmp</a> (const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *P, const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *Q, bool *is_equal)</td></tr>
<tr class="memdesc:afa038890e5ffc3b2dc3e4e5f2637cce2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Compare two points on the same curve.  <a href="#afa038890e5ffc3b2dc3e4e5f2637cce2">More...</a><br /></td></tr>
<tr class="separator:afa038890e5ffc3b2dc3e4e5f2637cce2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:afa84ef9a9c8bfccc3516de77fa13cabf"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#afa84ef9a9c8bfccc3516de77fa13cabf">cx_ecpoint_is_on_curve</a> (const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *R, bool *is_on_curve)</td></tr>
<tr class="memdesc:afa84ef9a9c8bfccc3516de77fa13cabf"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if a given point is on the curve.  <a href="#afa84ef9a9c8bfccc3516de77fa13cabf">More...</a><br /></td></tr>
<tr class="separator:afa84ef9a9c8bfccc3516de77fa13cabf"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae2f2d3238d16cfdcb069db848a96739a"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__ec_8h#ae2f2d3238d16cfdcb069db848a96739a">cx_ecpoint_is_at_infinity</a> (const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *R, bool *is_at_infinity)</td></tr>
<tr class="memdesc:ae2f2d3238d16cfdcb069db848a96739a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if a given point is the point at infinity.  <a href="#ae2f2d3238d16cfdcb069db848a96739a">More...</a><br /></td></tr>
<tr class="separator:ae2f2d3238d16cfdcb069db848a96739a"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Elliptic curve cryptography syscalls. </p>
<p>This file contains elliptic curves definitions and functions. </p>
</div><h2 class="groupheader">Macro Definition Documentation</h2>
<a id="a5ad90d6a0e043d9a94aa017fec898b78"></a>
<h2 class="memtitle">CX_CURVE_HEADER</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_CURVE_HEADER</td>
        </tr>
      </table>
</div><div class="memdoc">
<b>Value:</b><div class="fragment"><div class="line"><a class="code" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve;                                                                                                    \</div><div class="line">  unsigned <span class="keywordtype">int</span> bit_size;                                                                                               \</div><div class="line">  unsigned <span class="keywordtype">int</span> length;                                                                                                 \</div><div class="line">  const uint8_t *a;                                                                                                    \</div><div class="line">  const uint8_t *b;                                                                                                    \</div><div class="line">  const uint8_t *p;                                                                                                    \</div><div class="line">  const uint8_t *Gx;                                                                                                   \</div><div class="line">  const uint8_t *Gy;                                                                                                   \</div><div class="line">  const uint8_t *n;                                                                                                    \</div><div class="line">  const uint8_t *h;                                                                                                    \</div><div class="line">  const uint8_t *Hn;                                                                                                   \</div><div class="line">  const uint8_t *Hp;                                                                                                   \</div><div class="ttc" id="ox__ec_8h_ada004671ae8fe2032d4c144ed6ebb837"><div class="ttname"><a href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a></div><div class="ttdeci">enum cx_curve_e cx_curve_t</div><div class="ttdoc">Convenience type. </div><div class="ttdef"><b>Definition:</b> ox_ec.h:241</div></div>
</div><!-- fragment -->
<p>Curve domain parameters. </p>
<p>The parameters are common to <a class="el" href="../cx__curve__weierstrass__s" title="Weierstrass curve defined by y^3 = x^2 + a*x + b over GF(p). ">cx_curve_weierstrass_s</a>, <a class="el" href="../cx__curve__twisted__edwards__s" title="Twisted Edwards curve defined by a*x^2 + y^2 = 1 + d*x2*y2 over GF(q). ">cx_curve_twisted_edwards_s</a>, and <a class="el" href="../cx__curve__montgomery__s" title="Montgomery curve defined by B*y^2= x^3 + A*x^2 + x over GF(q). ">cx_curve_montgomery_s</a>.</p>
<ul>
<li><code>curve:</code> Curve identifier. See <a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477d" title="List of supported elliptic curves. ">cx_curve_e</a> </li>
<li><code>bit_size:</code> Curve size in bits </li>
<li><code>length:</code> Component lenth in bytes </li>
<li><code>a:</code> a coefficient of the curve equation </li>
<li><code>b:</code> b (Weierstrass or Montgomery) or d (twisted Edwards) coefficient of the curve equation </li>
<li><code>p:</code> Prime specifying the base field </li>
<li><code>Gx:</code> x-coordinate of the base point </li>
<li><code>Gy:</code> y-coordinate of the base point </li>
<li><code>n:</code> Curve order: order of the group generated by G </li>
<li><code>h:</code> Cofactor i.e. <b>h = |E(GF(p))|/n</b> </li>
<li><code>Hn:</code> Second Montgomery constant for the curve order </li>
<li><code>Hp:</code> Second Montgomery constant for the field characteristic p </li>
</ul>

</div>
</div>
<a id="a0546971e9e13424e94aed73a43dd1f0e"></a>
<h2 class="memtitle">CX_ECCINFO_PARITY_ODD</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_ECCINFO_PARITY_ODD&#160;&#160;&#160;1</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Indicates the parity of a point coordinate. </p>

</div>
</div>
<a id="a7d9b0d7fc9b2cbc8ff911521713e98e6"></a>
<h2 class="memtitle">CX_MAX_DOMAIN_LENGTH</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_MAX_DOMAIN_LENGTH&#160;&#160;&#160;66</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Largest domain parameters length. </p>

</div>
</div>
<a id="ad9e55fd69c0d6cc70bbea1a7bed22c7f"></a>
<h2 class="memtitle">HAVE_BRAINPOOL_P256R1_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_BRAINPOOL_P256R1_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the curve BrainpoolP256r1. </p>

</div>
</div>
<a id="ab3370197da697421061843918272cbed"></a>
<h2 class="memtitle">HAVE_BRAINPOOL_P256T1_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_BRAINPOOL_P256T1_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the twisted curve BrainpoolP256t1. </p>

</div>
</div>
<a id="a605f497ffc683dafc10a363223e1c62d"></a>
<h2 class="memtitle">HAVE_BRAINPOOL_P320R1_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_BRAINPOOL_P320R1_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the curve BrainpoolP320r1. </p>

</div>
</div>
<a id="a7f7db76d64c0e4d5b097eddb9cbd4fd3"></a>
<h2 class="memtitle">HAVE_BRAINPOOL_P320T1_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_BRAINPOOL_P320T1_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the twisted curve BrainpoolP320t1. </p>

</div>
</div>
<a id="ace39e352169474131eff9cf27d5e6cd5"></a>
<h2 class="memtitle">HAVE_BRAINPOOL_P384R1_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_BRAINPOOL_P384R1_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the curve BrainpoolP384r1. </p>

</div>
</div>
<a id="aa75ce86c233554a87d69d2d96597e6e3"></a>
<h2 class="memtitle">HAVE_BRAINPOOL_P384T1_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_BRAINPOOL_P384T1_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the twisted curve BrainpoolP384t1. </p>

</div>
</div>
<a id="a48849e367c754dc797b4b4c48ac8f968"></a>
<h2 class="memtitle">HAVE_BRAINPOOL_P512R1_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_BRAINPOOL_P512R1_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the curve BrainpoolP512r1. </p>

</div>
</div>
<a id="a7d2353c2ca3989a78ef6869335b8c90d"></a>
<h2 class="memtitle">HAVE_BRAINPOOL_P512T1_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_BRAINPOOL_P512T1_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the twisted curve BrainpoolP512t1. </p>

</div>
</div>
<a id="a831938576c5d89420135aef9a06a54ac"></a>
<h2 class="memtitle">HAVE_CV25519_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_CV25519_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the Montgomery curve Curve25519. </p>

</div>
</div>
<a id="a53a27bcfa0b611365977f00f402e4e97"></a>
<h2 class="memtitle">HAVE_CV448_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_CV448_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the Montgomery curve Curve448. </p>

</div>
</div>
<a id="aea960ee390d348cea6464c1714417405"></a>
<h2 class="memtitle">HAVE_ED25519_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_ED25519_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the twisted Edwards curve Ed25519. </p>

</div>
</div>
<a id="aa993c306d12641ea4bd0c660f3837929"></a>
<h2 class="memtitle">HAVE_ED448_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_ED448_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the twisted Edwards curve Ed448. </p>

</div>
</div>
<a id="a0324f20e8dd444913924c9f39e44c1bd"></a>
<h2 class="memtitle">HAVE_SECP256K1_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_SECP256K1_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the Koblitz curve Secp256k1. </p>

</div>
</div>
<a id="a9eb15e46c211ec48c8f0ba11bb656472"></a>
<h2 class="memtitle">HAVE_SECP256R1_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_SECP256R1_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the verifiably random curve Secp256r1. </p>

</div>
</div>
<a id="adb4b730dc1e31621f66468567b206a76"></a>
<h2 class="memtitle">HAVE_SECP384R1_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_SECP384R1_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the verifiably random curve Secp384r1. </p>

</div>
</div>
<a id="a29ec9738a3443e830815f5eb82abc2f0"></a>
<h2 class="memtitle">HAVE_SECP521R1_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_SECP521R1_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the verifiably random curve Secp521r1. </p>

</div>
</div>
<a id="a446f9c56c3cfa08d5abfbf3534016117"></a>
<h2 class="memtitle">HAVE_STARK256_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define HAVE_STARK256_CURVE</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Enable the Stark curve. </p>

</div>
</div>
<h2 class="groupheader">Typedef Documentation</h2>
<a id="a4d2899438548cdc90c83de901837f7a9"></a>
<h2 class="memtitle">cx_curve_domain_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__curve__domain__s">cx_curve_domain_s</a> <a class="el" href="../ox__ec_8h#a4d2899438548cdc90c83de901837f7a9">cx_curve_domain_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__curve__domain__s" title="Abstract type for elliptic curve domain. ">cx_curve_domain_s</a>. </p>

</div>
</div>
<a id="aa211e189ec4d66968f0417e136a5d5b6"></a>
<h2 class="memtitle">cx_curve_montgomery_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__curve__montgomery__s">cx_curve_montgomery_s</a> <a class="el" href="../ox__ec_8h#aa211e189ec4d66968f0417e136a5d5b6">cx_curve_montgomery_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__curve__montgomery__s" title="Montgomery curve defined by B*y^2= x^3 + A*x^2 + x over GF(q). ">cx_curve_montgomery_s</a>. </p>

</div>
</div>
<a id="ada004671ae8fe2032d4c144ed6ebb837"></a>
<h2 class="memtitle">cx_curve_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef enum <a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477d">cx_curve_e</a> <a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477d" title="List of supported elliptic curves. ">cx_curve_e</a>. </p>

</div>
</div>
<a id="aece0e703bfd2f8b85df136825830fc77"></a>
<h2 class="memtitle">cx_curve_twisted_edwards_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__curve__twisted__edwards__s">cx_curve_twisted_edwards_s</a> <a class="el" href="../ox__ec_8h#aece0e703bfd2f8b85df136825830fc77">cx_curve_twisted_edwards_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__curve__twisted__edwards__s" title="Twisted Edwards curve defined by a*x^2 + y^2 = 1 + d*x2*y2 over GF(q). ">cx_curve_twisted_edwards_s</a>. </p>

</div>
</div>
<a id="a971ee361ce22d28f49de55649da20850"></a>
<h2 class="memtitle">cx_curve_weierstrass_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__curve__weierstrass__s">cx_curve_weierstrass_s</a> <a class="el" href="../ox__ec_8h#a971ee361ce22d28f49de55649da20850">cx_curve_weierstrass_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__curve__weierstrass__s" title="Weierstrass curve defined by y^3 = x^2 + a*x + b over GF(p). ">cx_curve_weierstrass_s</a>. </p>

</div>
</div>
<a id="aa33ce844128bcd045dc7c80a2b06af8c"></a>
<h2 class="memtitle">cx_ecpoint_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__ec__point__s">cx_ec_point_s</a> <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__ec__point__s" title="Elliptic curve point. ">cx_ec_point_s</a>. </p>

</div>
</div>
<h2 class="groupheader">Enumeration Type Documentation</h2>
<a id="a4716b0edb6c8816d3876164bc40ea1f6"></a>
<h2 class="memtitle">cx_curve_dom_param_s</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">enum <a class="el" href="../ox__ec_8h#a4716b0edb6c8816d3876164bc40ea1f6">cx_curve_dom_param_s</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Identifiers of the domain parameters. </p>
<table class="fieldtable">
<tr><th colspan="2">Enumerator</th></tr><tr><td class="fieldname"><a id="a4716b0edb6c8816d3876164bc40ea1f6a28fa28618f566394089103994443f1e4"></a>CX_CURVE_PARAM_NONE&#160;</td><td class="fielddoc"><p>No parameter. </p>
</td></tr>
<tr><td class="fieldname"><a id="a4716b0edb6c8816d3876164bc40ea1f6adb25227f393a29e67003d9caf03d0043"></a>CX_CURVE_PARAM_A&#160;</td><td class="fielddoc"><p>First coefficient of the curve. </p>
</td></tr>
<tr><td class="fieldname"><a id="a4716b0edb6c8816d3876164bc40ea1f6aa37411d82817d3d1d5aff39adf212bf1"></a>CX_CURVE_PARAM_B&#160;</td><td class="fielddoc"><p>Second coefficient of the curve. </p>
</td></tr>
<tr><td class="fieldname"><a id="a4716b0edb6c8816d3876164bc40ea1f6a0444af3a60e946877b363176c1a467ed"></a>CX_CURVE_PARAM_Field&#160;</td><td class="fielddoc"><p>Curve field. </p>
</td></tr>
<tr><td class="fieldname"><a id="a4716b0edb6c8816d3876164bc40ea1f6a3928ab9186c102afcaae3f8797f87d9b"></a>CX_CURVE_PARAM_Gx&#160;</td><td class="fielddoc"><p>x-coordinate of the curve's generator </p>
</td></tr>
<tr><td class="fieldname"><a id="a4716b0edb6c8816d3876164bc40ea1f6aeff5d302adab3924203debee18e96313"></a>CX_CURVE_PARAM_Gy&#160;</td><td class="fielddoc"><p>y-coordinate of the curve's generator </p>
</td></tr>
<tr><td class="fieldname"><a id="a4716b0edb6c8816d3876164bc40ea1f6a5c87d7e30fb07753385104aeed886183"></a>CX_CURVE_PARAM_Order&#160;</td><td class="fielddoc"><p>Order of the generator. </p>
</td></tr>
<tr><td class="fieldname"><a id="a4716b0edb6c8816d3876164bc40ea1f6a5e24ddc770800e987864bd49a752394e"></a>CX_CURVE_PARAM_Cofactor&#160;</td><td class="fielddoc"><p>Cofactor. </p>
</td></tr>
</table>

</div>
</div>
<a id="ab9e984f37d7329f57dbc826cb5ba477d"></a>
<h2 class="memtitle">cx_curve_e</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">enum <a class="el" href="../ox__ec_8h#ab9e984f37d7329f57dbc826cb5ba477d">cx_curve_e</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>List of supported elliptic curves. </p>
<table class="fieldtable">
<tr><th colspan="2">Enumerator</th></tr><tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da8ccae6edafa11dd748dcc0eb6f26c431"></a>CX_CURVE_NONE&#160;</td><td class="fielddoc"><p>Undefined curve. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da9cf27d0c4b6e12a7f2656562148c5ef6"></a>CX_CURVE_WEIERSTRASS_START&#160;</td><td class="fielddoc"><p>Low limit (not included) of Weierstrass curve ID. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477dab18a1d844197eb7a450fb01a6a1017da"></a>CX_CURVE_SECP256K1&#160;</td><td class="fielddoc"><p>Secp256k1. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da00389b6367fadd7665770eed01cfbded"></a>CX_CURVE_SECP256R1&#160;</td><td class="fielddoc"><p>Secp256r1. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da824f259da3ef0b8f4e3ee6fcbd98c6e7"></a>CX_CURVE_SECP384R1&#160;</td><td class="fielddoc"><p>Secp384r1. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da69f729ce7b3a89bb3871176f8b917b35"></a>CX_CURVE_SECP521R1&#160;</td><td class="fielddoc"><p>Secp521r1. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da0188ffd3ef9a8224b4e7e9f801666f64"></a>CX_CURVE_BrainPoolP256T1&#160;</td><td class="fielddoc"><p>BrainpoolP256t1. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da41907174618d92baad062b94c0d7f6ce"></a>CX_CURVE_BrainPoolP256R1&#160;</td><td class="fielddoc"><p>BrainpoolP256r1. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477daea5df1af135b050387c65fb87b3d9b3e"></a>CX_CURVE_BrainPoolP320T1&#160;</td><td class="fielddoc"><p>BrainpoolP320t1. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da42ca990b962de003051060d9138a6fc5"></a>CX_CURVE_BrainPoolP320R1&#160;</td><td class="fielddoc"><p>BrainpoolP320r1. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da0ca1709720775016d656262973b8bfe6"></a>CX_CURVE_BrainPoolP384T1&#160;</td><td class="fielddoc"><p>BrainpoolP384t1. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da99254e48e96f2998f12a2d902251c60a"></a>CX_CURVE_BrainPoolP384R1&#160;</td><td class="fielddoc"><p>Brainpool384r1. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da2302bc24fd01a16cdd9235843b0ecf4d"></a>CX_CURVE_BrainPoolP512T1&#160;</td><td class="fielddoc"><p>BrainpoolP512t1. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da4c11577e0083988873fe73eef23fdf1b"></a>CX_CURVE_BrainPoolP512R1&#160;</td><td class="fielddoc"><p>BrainpoolP512r1. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da9fefd7490a065fec8945fec55a4f6983"></a>CX_CURVE_BLS12_381_G1&#160;</td><td class="fielddoc"><p>BLS12-381 G1. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477dadf6465042aee1fa17f063d98055826d8"></a>CX_CURVE_FRP256V1&#160;</td><td class="fielddoc"><p>ANSSI FRP256. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da71dab2a2b7c2b70b435185eff3a02bca"></a>CX_CURVE_Stark256&#160;</td><td class="fielddoc"><p>Stark. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da5736a9a654963a631a6007a50d46026d"></a>CX_CURVE_WEIERSTRASS_END&#160;</td><td class="fielddoc"><p>High limit (not included) of Weierstrass curve ID. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da143757f054d2a1c021a34243442f0321"></a>CX_CURVE_TWISTED_EDWARDS_START&#160;</td><td class="fielddoc"><p>Low limit (not included) of Twisted Edwards curve ID. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da9e658d904f398f642249f20042dbe367"></a>CX_CURVE_Ed25519&#160;</td><td class="fielddoc"><p>Ed25519. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da6623b96ca131b96daefdbd3fb08d7cb7"></a>CX_CURVE_Ed448&#160;</td><td class="fielddoc"><p>Ed448. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da530a6c0c51f7219253218ba8ce59956a"></a>CX_CURVE_TWISTED_EDWARDS_END&#160;</td><td class="fielddoc"><p>High limit (not included) of Twisted Edwards curve ID. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da7cef83043d376a8cab6566869a12c5c2"></a>CX_CURVE_MONTGOMERY_START&#160;</td><td class="fielddoc"><p>Low limit (not included) of Montgomery curve ID. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da9c3deb51d8822695b1370e136d287228"></a>CX_CURVE_Curve25519&#160;</td><td class="fielddoc"><p>Curve25519. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477da2fe5e75b4e745fd6b8dcd8eed705145e"></a>CX_CURVE_Curve448&#160;</td><td class="fielddoc"><p>Curve448. </p>
</td></tr>
<tr><td class="fieldname"><a id="ab9e984f37d7329f57dbc826cb5ba477dacf88888a9c8b8bde2e29c6381970b012"></a>CX_CURVE_MONTGOMERY_END&#160;</td><td class="fielddoc"><p>High limit (not included) of Montgomery curve ID. </p>
</td></tr>
</table>

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="ab4b77a831232980e28185be49e355630"></a>
<h2 class="memtitle">cx_ecdomain_generator()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecdomain_generator </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><em>cv</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><em>Gx</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><em>Gy</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>len</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Get the generator of the curve. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">cv</td><td>Curve identifier.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">Gx</td><td>Buffer to store the x-coordinate of the generator.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">Gy</td><td>Buffer to store the y-coordinate of the generator.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td>Byte length of each coordinate.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

</div>
</div>
<a id="ab055f0bd0a2b43c0b27493216d566efc"></a>
<h2 class="memtitle">cx_ecdomain_generator_bn()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecdomain_generator_bn </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><em>cv</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Get the generator of the curve and store it in the point structure. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">cv</td><td>Curve identifier.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">P</td><td>Pointer to the structure where to store the generator.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_EC_INVALID_POINT </li>
</ul>
</dd></dl>

</div>
</div>
<a id="ab9afff1ba449430ecab236fa0f5d41c2"></a>
<h2 class="memtitle">cx_ecdomain_parameter()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecdomain_parameter </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><em>cv</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">cx_curve_dom_param_t&#160;</td>
          <td class="paramname"><em>id</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><em>p</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><em>p_len</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Get a specific parameter of the curve. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">cv</td><td>Curve identifier.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">id</td><td>Parameter identifier.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">p</td><td>Buffer where to store the parameter.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">p_len</td><td>Length of the buffer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

</div>
</div>
<a id="ac6fed5707cf1a1978463ac30a8a30e1d"></a>
<h2 class="memtitle">cx_ecdomain_parameter_bn()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecdomain_parameter_bn </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><em>cv</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">cx_curve_dom_param_t&#160;</td>
          <td class="paramname"><em>id</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype"><a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a>&#160;</td>
          <td class="paramname"><em>p</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Store a specific parameter of the curve as a BN. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">cv</td><td>Curve identifier.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">id</td><td>Parameter identifier.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">p</td><td>BN where to store the parameter.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_INVALID_PARAMETER_SIZE </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a1c0a18bd483a254e2c7783442d32b002"></a>
<h2 class="memtitle">cx_ecdomain_parameters_length()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecdomain_parameters_length </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><em>cv</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t *&#160;</td>
          <td class="paramname"><em>length</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Return the byte length of each parameter of the curve. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">cv</td><td>Curve identifier.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">length</td><td>Byte length of each parameter.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__ecdh_8h#a9a4febd251d944d6c04b43c7330740ce">cx_ecdh()</a>, <a class="el" href="../lcx__ecfp_8h#a5a0e2ce81dfb4318e14ae0e9db164db1">cx_ecfp_add_point()</a>, <a class="el" href="../lcx__ecfp_8h#a2cc4aeae037cc9c0b13954e9bb3651fc">cx_ecfp_scalar_mult()</a>, and <a class="el" href="../lcx__eddsa_8h#a0b57531e83e4b41a8ea9af3371a92c1a">cx_eddsa_sign()</a>.</p>

</div>
</div>
<a id="a31118df83eb2629ff417521ace4d917e"></a>
<h2 class="memtitle">cx_ecdomain_size()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecdomain_size </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><em>curve</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t *&#160;</td>
          <td class="paramname"><em>length</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Return the bit length of each parameter of the curve. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">curve</td><td>Curve identifier.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">length</td><td>Bit length of each parameter.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE </li>
</ul>
</dd></dl>

</div>
</div>
<a id="aaa2d271c9e431d43e1034fe065bbe918"></a>
<h2 class="memtitle">cx_ecpoint_add()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_add </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>R</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>Q</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Add two points on a curve. </p>
<p>Each point should not be the point at infinity. If one of the point is the point at infinity then the function returns a CX_EC_INFINITE_POINT error.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">R</td><td>Pointer to the result point.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td>Pointer to the first point to add. The point must be on the curve.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">Q</td><td>Pointer to the second point to add. The point must be on the curve.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_MEMORY_FULL </li>
</ul>
</dd></dl>

</div>
</div>
<a id="aae0dc41d0dc74a8402a8629533ae11d5"></a>
<h2 class="memtitle">cx_ecpoint_alloc()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_alloc </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td>
          <td class="paramname"><em>cv</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Allocate memory for a point on the curve. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td>Pointer to a point.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">cv</td><td>Curve on which the point is defined.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_MEMORY_FULL </li>
</ul>
</dd></dl>

</div>
</div>
<a id="afa038890e5ffc3b2dc3e4e5f2637cce2"></a>
<h2 class="memtitle">cx_ecpoint_cmp()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_cmp </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>Q</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">bool *&#160;</td>
          <td class="paramname"><em>is_equal</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Compare two points on the same curve. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td>First point to compare.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">Q</td><td>Second point to compare.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">is_equal</td><td>Boolean which indicates whether the two points are equal or not:<ul>
<li>1 if the points are equal</li>
<li>0 otherwise</li>
</ul>
</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_MEMORY_FULL </li>
</ul>
</dd></dl>

</div>
</div>
<a id="abfd779cec5c375e59fb63928d2de484b"></a>
<h2 class="memtitle">cx_ecpoint_compress()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_compress </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><em>xy_compressed</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>xy_compressed_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">uint32_t *&#160;</td>
          <td class="paramname"><em>sign</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Compute the compressed form of a point. </p>
<p>The compressed form depends on the curve type. For a Weierstrass or a Montgomery curve, the compressed form consists of the x-coordinate and a prefix. For a Twisted Edwards curve the compressed form consists of a y-coordinate and a prefix.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td>Pointer to the point to be compressed.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">xy_compressed</td><td>Buffer to hold the compressed coordinate.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">xy_compressed_len</td><td>Length of the compressed coordinate in bytes. This should be equal to twice of the length of one coordinate plus one byte for the prefix.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">sign</td><td>Pointer to the sign of the hidden coordinate: correspond to the least significant bit of the y-coordinate for a Weierstrass or Montgomery curve and of the x-coordinate for a Twisted Edwards curve.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_MEMORY_FULL </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a8a77233157092a5f15af3e72f2468f66"></a>
<h2 class="memtitle">cx_ecpoint_decompress()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_decompress </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>xy_compressed</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>xy_compressed_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><em>sign</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Compute the affine coordinates of a point given its compressed form. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">P</td><td>Pointer to the point.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">xy_compressed</td><td>Pointer to the buffer holding the compressed coordinate.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">xy_compressed_len</td><td>Length of the compressed coordinate in bytes. This should be equal to twice of the length of one coordinate plus one byte for the prefix.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sign</td><td>Sign of the coordinate to recover.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NO_RESIDUE </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a185b9bb49f4c92b3f6251937c377be5f"></a>
<h2 class="memtitle">cx_ecpoint_destroy()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_destroy </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em></td><td>)</td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Destroy a point on the curve. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td>Pointer to the point to destroy. If the pointer is NULL, nothing is done.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_INTERNAL_ERROR </li>
</ul>
</dd></dl>

</div>
</div>
<a id="ad74a8ffd620e4fdc9a52ad678c7fed62"></a>
<h2 class="memtitle">cx_ecpoint_double_scalarmul()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_double_scalarmul </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>R</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>Q</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>k</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>k_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>r</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>r_len</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Perform a double scalar multiplication. </p>
<p>This implements the Straus-Shamir algorithm for computing <b>R = [k]P + [r]Q</b>. This should be used only for non-secret computations.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">R</td><td>Pointer to the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td>Pointer to the first point.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">Q</td><td>Pointer to the second point.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">k</td><td>Pointer to the first scalar.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">k_len</td><td>Length of the first scalar.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">r</td><td>Pointer to the second scalar.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">r_len</td><td>Length of the second scalar.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_EC_INFINITE_POINT </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a69c8d8b11481a929dce4689e85eb3f3d"></a>
<h2 class="memtitle">cx_ecpoint_double_scalarmul_bn()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_double_scalarmul_bn </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>R</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>Q</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a>&#160;</td>
          <td class="paramname"><em>bn_k</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a>&#160;</td>
          <td class="paramname"><em>bn_r</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Perform a double scalar multiplication given the BN indexes of the scalars. </p>
<p>This implements the Straus-Shamir algorithm for computing <b>R = [k]P + [r]Q</b>. This should be used only for non-secret computations.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">R</td><td>Pointer to the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td>Pointer to the first point.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">Q</td><td>Pointer to the second point.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">bn_k</td><td>BN index of the first scalar.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">bn_r</td><td>BN index of the second scalar.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_EC_INFINITE_POINT </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a357c217dfb38ea5bf4bf90cadb122871"></a>
<h2 class="memtitle">cx_ecpoint_export()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_export </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><em>x</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>x_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><em>y</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>y_len</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Export a point. </p>
<p>Fill two distinct buffers with the x-coordinate and the y-coordinate of the point. If the point is not in affine representation, it will be normalized first.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td>Pointer to the point to export.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">x</td><td>Buffer for the x-coordinate.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">x_len</td><td>Length of the <em>x</em> buffer.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">y</td><td>Buffer for the y-coordinate.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">y_len</td><td>Length of the <em>y</em> buffer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_MEMORY_FULL </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a30df3c7aa3c1b3628c8e60c67addbeeb"></a>
<h2 class="memtitle">cx_ecpoint_export_bn()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_export_bn </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype"><a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a> *&#160;</td>
          <td class="paramname"><em>x</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype"><a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a> *&#160;</td>
          <td class="paramname"><em>y</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Export a point using BN indexes of the coordinates. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td>Pointer to the point to export.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">x</td><td>Pointer to the BN index of the x-coordinate.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">y</td><td>Pointer to the BN index of the y-coordinate.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_MEMORY_FULL </li>
</ul>
</dd></dl>

</div>
</div>
<a id="ab79f577e0b833eea2d51041899fe10f9"></a>
<h2 class="memtitle">cx_ecpoint_init()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>x</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>x_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>y</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>y_len</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Initialize a point on the curve. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td>Pointer to the point to initialize.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">x</td><td>x-coordinate of the point. This must belong to the curve field.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">x_len</td><td>Length of the x-coordinate. This must be at most equal to the curve's domain number of bytes.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">y</td><td>y-coordinate of the point. This must belong to the curve field.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">y_len</td><td>Length of the y-coordinate. This must be at most equal to the curve's domain number of bytes.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_CURVE </li>
</ul>
</dd></dl>

</div>
</div>
<a id="aafb21ddcd66e30397d6043aba5ddea96"></a>
<h2 class="memtitle">cx_ecpoint_init_bn()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_init_bn </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a>&#160;</td>
          <td class="paramname"><em>x</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a>&#160;</td>
          <td class="paramname"><em>y</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Initialize a point on the curve with the BN indexes of the coordinates. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td>Pointer to the point to initialize.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">x</td><td>BN index of the x-coordinate. The coordinate must belong to the base field.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">y</td><td>BN index of the y-coordinate. The coordinate must belong to the base field.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_CURVE </li>
</ul>
</dd></dl>

</div>
</div>
<a id="ae2f2d3238d16cfdcb069db848a96739a"></a>
<h2 class="memtitle">cx_ecpoint_is_at_infinity()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_is_at_infinity </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>R</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">bool *&#160;</td>
          <td class="paramname"><em>is_at_infinity</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Check if a given point is the point at infinity. </p>
<p>The point at infinity has a z-coordinate equal to 0.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">R</td><td>Pointer to the point to check.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">is_at_infinity</td><td>Boolean which indicates whether the point is at infinity or not:<ul>
<li>1 if the point is at infinity</li>
<li>0 otherwise</li>
</ul>
</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_CURVE </li>
</ul>
</dd></dl>

</div>
</div>
<a id="afa84ef9a9c8bfccc3516de77fa13cabf"></a>
<h2 class="memtitle">cx_ecpoint_is_on_curve()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_is_on_curve </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>R</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">bool *&#160;</td>
          <td class="paramname"><em>is_on_curve</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Check if a given point is on the curve. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">R</td><td>Pointer to the point to check.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">is_on_curve</td><td>Boolean which indicates whether the point is on the curve or not:<ul>
<li>1 if the point is on the curve</li>
<li>0 otherwise</li>
</ul>
</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_MEMORY_FULL </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a45aff9cbf509ce0dc8533af802a740a7"></a>
<h2 class="memtitle">cx_ecpoint_neg()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_neg </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em></td><td>)</td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Compute the opposite of a point. </p>
<p>The point should not be the point at infinity, otherwise the function returns a CX_EC_INFINITE_POINT error.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in,out]</td><td class="paramname">P</td><td>Pointer to a point of the curve. and will hold the result.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_MEMORY_FULL</li>
<li>CX_EC_INFINITE_POINT </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a3f63575b0780c61aafc46d74843f9737"></a>
<h2 class="memtitle">cx_ecpoint_rnd_fixed_scalarmul()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_rnd_fixed_scalarmul </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>k</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>k_len</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Perform a secure scalar multiplication with a fixed scalar length. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in,out]</td><td class="paramname">P</td><td>Pointer to a point on a curve. This will hold the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">k</td><td>Pointer to the scalar. The scalar is an integer at least equal to 0 and at most equal to the order of the curve minus 1.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">k_len</td><td>Length of the scalar. This should be equal to the domain length.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_MEMORY_FULL </li>
</ul>
</dd></dl>

</div>
</div>
<a id="ae4c0306a025333d279be5326586bf86b"></a>
<h2 class="memtitle">cx_ecpoint_rnd_scalarmul()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_rnd_scalarmul </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>k</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>k_len</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Perform a secure scalar multiplication. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in,out]</td><td class="paramname">P</td><td>Pointer to a point on a curve. This will hold the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">k</td><td>Pointer to the scalar. The scalar is an integer at least equal to 0 and at most equal to the order of the curve minus 1.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">k_len</td><td>Length of the scalar. This should be equal to the domain length.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_MEMORY_FULL </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a4bd5932bc102754d01bcccccbefdcdc3"></a>
<h2 class="memtitle">cx_ecpoint_rnd_scalarmul_bn()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_rnd_scalarmul_bn </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a>&#160;</td>
          <td class="paramname"><em>bn_k</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Perform a secure scalar multiplication given the BN index of the scalar. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in,out]</td><td class="paramname">P</td><td>Pointer to a point on a curve. This will hold the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">bn_k</td><td>BN index of the scalar. The scalar is an integer at least equal to 0 and at most equal to the order of the curve minus 1.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_MEMORY_FULL </li>
</ul>
</dd></dl>

</div>
</div>
<a id="ae6c120f9d7e79685741b37a8bd7417c2"></a>
<h2 class="memtitle">cx_ecpoint_scalarmul()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_scalarmul </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>k</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>k_len</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Perform a scalar multiplication. </p>
<p>This should be called only for non critical purposes.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in,out]</td><td class="paramname">P</td><td>Pointer to a point on a curve. This will hold the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">k</td><td>Pointer to the scalar. The scalar is an integer at least equal to 0 and at most equal to the order of the curve minus 1.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">k_len</td><td>Length of the scalar.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_MEMORY_FULL </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a7af5711cec8ba114f380524d54d71387"></a>
<h2 class="memtitle">cx_ecpoint_scalarmul_bn()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecpoint_scalarmul_bn </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../ox__ec_8h#aa33ce844128bcd045dc7c80a2b06af8c">cx_ecpoint_t</a> *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const <a class="el" href="../ox__bn_8h#a3caccc9ce9a31d3cba31ce1de1194d12">cx_bn_t</a>&#160;</td>
          <td class="paramname"><em>bn_k</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Perform a scalar multiplication given the BN index of the scalar. </p>
<p>This should be called only for non critical purposes.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in,out]</td><td class="paramname">P</td><td>Pointer to a point on a curve. This will hold the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">bn_k</td><td>BN index of the scalar. The scalar is an integer at least equal to 0 and at most equal to the order of the curve minus 1.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_MEMORY_FULL </li>
</ul>
</dd></dl>

</div>
</div>
