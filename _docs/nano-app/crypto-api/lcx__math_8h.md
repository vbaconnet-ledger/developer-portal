---
title: lcx_math.h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Basic arithmetic.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:abe7fad9139fc57b173d6e23ccb237d71"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#abe7fad9139fc57b173d6e23ccb237d71">cx_math_cmp_no_throw</a> (const uint8_t *a, const uint8_t *b, size_t length, int *diff)</td></tr>
<tr class="memdesc:abe7fad9139fc57b173d6e23ccb237d71"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Compare two integers represented as byte arrays.  <a href="#abe7fad9139fc57b173d6e23ccb237d71">More...</a><br /></td></tr>
<tr class="memitem:a2c81281722c71f1ba0542dd94138f37b"><td class="memItemLeft" align="right" valign="top">static int32_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#a2c81281722c71f1ba0542dd94138f37b">cx_math_cmp</a> (const uint8_t *a, const uint8_t *b, size_t length)</td></tr>
<tr class="memdesc:a2c81281722c71f1ba0542dd94138f37b"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Compare two integers represented as byte arrays.  <a href="#a2c81281722c71f1ba0542dd94138f37b">More...</a><br /></td></tr>
<tr class="memitem:abbb12c1e6e3cb5c64ccc128d48b1938f"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#abbb12c1e6e3cb5c64ccc128d48b1938f">cx_math_add_no_throw</a> (uint8_t *r, const uint8_t *a, const uint8_t *b, size_t len)</td></tr>
<tr class="memdesc:abbb12c1e6e3cb5c64ccc128d48b1938f"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Add two integers represented as byte arrays.  <a href="#abbb12c1e6e3cb5c64ccc128d48b1938f">More...</a><br /></td></tr>
<tr class="memitem:a03666ab13301ff979e9537931dfd6a6d"><td class="memItemLeft" align="right" valign="top">static uint32_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#a03666ab13301ff979e9537931dfd6a6d">cx_math_add</a> (uint8_t *r, const uint8_t *a, const uint8_t *b, size_t len)</td></tr>
<tr class="memdesc:a03666ab13301ff979e9537931dfd6a6d"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Add two integers represented as byte arrays.  <a href="#a03666ab13301ff979e9537931dfd6a6d">More...</a><br /></td></tr>
<tr class="memitem:a5455933ba4e27ccae743459e69147b89"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#a5455933ba4e27ccae743459e69147b89">cx_math_sub_no_throw</a> (uint8_t *r, const uint8_t *a, const uint8_t *b, size_t len)</td></tr>
<tr class="memdesc:a5455933ba4e27ccae743459e69147b89"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Subtract two integers represented as byte arrays.  <a href="#a5455933ba4e27ccae743459e69147b89">More...</a><br /></td></tr>
<tr class="memitem:ad939a3a02706fc0891ba00f082ddbc10"><td class="memItemLeft" align="right" valign="top">static uint32_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#ad939a3a02706fc0891ba00f082ddbc10">cx_math_sub</a> (uint8_t *r, const uint8_t *a, const uint8_t *b, size_t len)</td></tr>
<tr class="memdesc:ad939a3a02706fc0891ba00f082ddbc10"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Subtract two integers represented as byte arrays.  <a href="#ad939a3a02706fc0891ba00f082ddbc10">More...</a><br /></td></tr>
<tr class="memitem:af92dd08eb8b586d9a3e36d4972f4730a"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#af92dd08eb8b586d9a3e36d4972f4730a">cx_math_mult_no_throw</a> (uint8_t *r, const uint8_t *a, const uint8_t *b, size_t len)</td></tr>
<tr class="memdesc:af92dd08eb8b586d9a3e36d4972f4730a"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Multiply two integers represented as byte arrays.  <a href="#af92dd08eb8b586d9a3e36d4972f4730a">More...</a><br /></td></tr>
<tr class="memitem:a397e7e1612cd73bbc1d0cede0439ebea"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#a397e7e1612cd73bbc1d0cede0439ebea">cx_math_mult</a> (uint8_t *r, const uint8_t *a, const uint8_t *b, size_t len)</td></tr>
<tr class="memdesc:a397e7e1612cd73bbc1d0cede0439ebea"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Multiply two integers represented as byte arrays.  <a href="#a397e7e1612cd73bbc1d0cede0439ebea">More...</a><br /></td></tr>
<tr class="memitem:ab33f2233e60e1ff57d0215c3887ea003"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#ab33f2233e60e1ff57d0215c3887ea003">cx_math_addm_no_throw</a> (uint8_t *r, const uint8_t *a, const uint8_t *b, const uint8_t *m, size_t len)</td></tr>
<tr class="memdesc:ab33f2233e60e1ff57d0215c3887ea003"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modular addition of two integers represented as byte arrays.  <a href="#ab33f2233e60e1ff57d0215c3887ea003">More...</a><br /></td></tr>
<tr class="memitem:a449e49642737703c12fae09518ebd71c"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#a449e49642737703c12fae09518ebd71c">cx_math_addm</a> (uint8_t *r, const uint8_t *a, const uint8_t *b, const uint8_t *m, size_t len)</td></tr>
<tr class="memdesc:a449e49642737703c12fae09518ebd71c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modular addition of two integers represented as byte arrays.  <a href="#a449e49642737703c12fae09518ebd71c">More...</a><br /></td></tr>
<tr class="memitem:a767297f79263d1ce5dffc1574af681c5"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#a767297f79263d1ce5dffc1574af681c5">cx_math_subm_no_throw</a> (uint8_t *r, const uint8_t *a, const uint8_t *b, const uint8_t *m, size_t len)</td></tr>
<tr class="memdesc:a767297f79263d1ce5dffc1574af681c5"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modular subtraction of two integers represented as byte arrays.  <a href="#a767297f79263d1ce5dffc1574af681c5">More...</a><br /></td></tr>
<tr class="memitem:addcb1e52be7fa1d166981e16c2ef3fa5"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#addcb1e52be7fa1d166981e16c2ef3fa5">cx_math_subm</a> (uint8_t *r, const uint8_t *a, const uint8_t *b, const uint8_t *m, size_t len)</td></tr>
<tr class="memdesc:addcb1e52be7fa1d166981e16c2ef3fa5"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modular subtraction of two integers represented as byte arrays.  <a href="#addcb1e52be7fa1d166981e16c2ef3fa5">More...</a><br /></td></tr>
<tr class="memitem:aff8bc640cf787c8512693818b6f5bc50"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#aff8bc640cf787c8512693818b6f5bc50">cx_math_multm_no_throw</a> (uint8_t *r, const uint8_t *a, const uint8_t *b, const uint8_t *m, size_t len)</td></tr>
<tr class="memdesc:aff8bc640cf787c8512693818b6f5bc50"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modular multiplication of two integers represented as byte arrays.  <a href="#aff8bc640cf787c8512693818b6f5bc50">More...</a><br /></td></tr>
<tr class="memitem:a122efb1db79901b1cf509a132c54fe63"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#a122efb1db79901b1cf509a132c54fe63">cx_math_multm</a> (uint8_t *r, const uint8_t *a, const uint8_t *b, const uint8_t *m, size_t len)</td></tr>
<tr class="memdesc:a122efb1db79901b1cf509a132c54fe63"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modular multiplication of two integers represented as byte arrays.  <a href="#a122efb1db79901b1cf509a132c54fe63">More...</a><br /></td></tr>
<tr class="memitem:aeac0f5e3f1c2c9da481ea7e274d1da7a"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#aeac0f5e3f1c2c9da481ea7e274d1da7a">cx_math_modm_no_throw</a> (uint8_t *v, size_t len_v, const uint8_t *m, size_t len_m)</td></tr>
<tr class="memdesc:aeac0f5e3f1c2c9da481ea7e274d1da7a"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modulo operation.  <a href="#aeac0f5e3f1c2c9da481ea7e274d1da7a">More...</a><br /></td></tr>
<tr class="memitem:a8fbd821b6fb1712e7b6dcdd090b1b342"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#a8fbd821b6fb1712e7b6dcdd090b1b342">cx_math_modm</a> (uint8_t *v, size_t len_v, const uint8_t *m, size_t len_m)</td></tr>
<tr class="memdesc:a8fbd821b6fb1712e7b6dcdd090b1b342"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modulo operation.  <a href="#a8fbd821b6fb1712e7b6dcdd090b1b342">More...</a><br /></td></tr>
<tr class="memitem:af5e23fd303fd48de8bbb5a477c8bac60"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#af5e23fd303fd48de8bbb5a477c8bac60">cx_math_powm_no_throw</a> (uint8_t *r, const uint8_t *a, const uint8_t *e, size_t len_e, const uint8_t *m, size_t len)</td></tr>
<tr class="memdesc:af5e23fd303fd48de8bbb5a477c8bac60"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modular exponentiation.  <a href="#af5e23fd303fd48de8bbb5a477c8bac60">More...</a><br /></td></tr>
<tr class="memitem:a12ea1b3db0e540aeb841d73656b448da"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#a12ea1b3db0e540aeb841d73656b448da">cx_math_powm</a> (uint8_t *r, const uint8_t *a, const uint8_t *e, size_t len_e, const uint8_t *m, size_t len)</td></tr>
<tr class="memdesc:a12ea1b3db0e540aeb841d73656b448da"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modular exponentiation.  <a href="#a12ea1b3db0e540aeb841d73656b448da">More...</a><br /></td></tr>
<tr class="memitem:ae92b63a4637b33c29e59b961ff1734db"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#ae92b63a4637b33c29e59b961ff1734db">cx_math_invprimem_no_throw</a> (uint8_t *r, const uint8_t *a, const uint8_t *m, size_t len)</td></tr>
<tr class="memdesc:ae92b63a4637b33c29e59b961ff1734db"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modular inverse with a prime modulus.  <a href="#ae92b63a4637b33c29e59b961ff1734db">More...</a><br /></td></tr>
<tr class="memitem:a96cd960b4a18de08aeb3175cfd31249e"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#a96cd960b4a18de08aeb3175cfd31249e">cx_math_invprimem</a> (uint8_t *r, const uint8_t *a, const uint8_t *m, size_t len)</td></tr>
<tr class="memdesc:a96cd960b4a18de08aeb3175cfd31249e"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modular inverse with a prime modulus.  <a href="#a96cd960b4a18de08aeb3175cfd31249e">More...</a><br /></td></tr>
<tr class="memitem:affd9ee3f7fb3648732e6dbf386b83f12"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#affd9ee3f7fb3648732e6dbf386b83f12">cx_math_invintm_no_throw</a> (uint8_t *r, uint32_t a, const uint8_t *m, size_t len)</td></tr>
<tr class="memdesc:affd9ee3f7fb3648732e6dbf386b83f12"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modular inverse.  <a href="#affd9ee3f7fb3648732e6dbf386b83f12">More...</a><br /></td></tr>
<tr class="memitem:acfb6acac5bb338ce4291e84e4e3e07a3"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#acfb6acac5bb338ce4291e84e4e3e07a3">cx_math_invintm</a> (uint8_t *r, uint32_t a, const uint8_t *m, size_t len)</td></tr>
<tr class="memdesc:acfb6acac5bb338ce4291e84e4e3e07a3"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Modular inverse.  <a href="#acfb6acac5bb338ce4291e84e4e3e07a3">More...</a><br /></td></tr>
<tr class="memitem:ac4059e12a707eeb05d5bf2ceb152a70f"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#ac4059e12a707eeb05d5bf2ceb152a70f">cx_math_is_prime_no_throw</a> (const uint8_t *r, size_t len, bool *prime)</td></tr>
<tr class="memdesc:ac4059e12a707eeb05d5bf2ceb152a70f"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Check whether a number is probable prime.  <a href="#ac4059e12a707eeb05d5bf2ceb152a70f">More...</a><br /></td></tr>
<tr class="memitem:aab8a0b7b1aa31116f46262236281c554"><td class="memItemLeft" align="right" valign="top">static bool&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#aab8a0b7b1aa31116f46262236281c554">cx_math_is_prime</a> (const uint8_t *r, size_t len)</td></tr>
<tr class="memdesc:aab8a0b7b1aa31116f46262236281c554"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Check whether a number is probable prime.  <a href="#aab8a0b7b1aa31116f46262236281c554">More...</a><br /></td></tr>
<tr class="memitem:a0d3b5f19c673e536dbf2730c5240b448"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#a0d3b5f19c673e536dbf2730c5240b448">cx_math_next_prime_no_throw</a> (uint8_t *r, uint32_t len)</td></tr>
<tr class="memdesc:a0d3b5f19c673e536dbf2730c5240b448"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Compute the next prime after a given number.  <a href="#a0d3b5f19c673e536dbf2730c5240b448">More...</a><br /></td></tr>
<tr class="memitem:ab3fbb8e378b3e52e5f013cfd95fdb2a0"><td class="memItemLeft" align="right" valign="top">static void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#ab3fbb8e378b3e52e5f013cfd95fdb2a0">cx_math_next_prime</a> (uint8_t *r, uint32_t len)</td></tr>
<tr class="memdesc:ab3fbb8e378b3e52e5f013cfd95fdb2a0"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Compute the next prime after a given number.  <a href="#ab3fbb8e378b3e52e5f013cfd95fdb2a0">More...</a><br /></td></tr>
<tr class="memitem:a386ee5c73491f22f869e5c7e892b430f"><td class="memItemLeft" align="right" valign="top">static bool&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__math_8h#a386ee5c73491f22f869e5c7e892b430f">cx_math_is_zero</a> (const uint8_t *a, size_t len)</td></tr>
<tr class="memdesc:a386ee5c73491f22f869e5c7e892b430f"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Compare if the byte array of an integer is all zero.  <a href="#a386ee5c73491f22f869e5c7e892b430f">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Basic arithmetic. </p>
</div><h2 class="groupheader">Function Documentation</h2>
<a id="a03666ab13301ff979e9537931dfd6a6d"></a>
<h2 class="memtitle">cx_math_add()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static uint32_t cx_math_add </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Add two integers represented as byte arrays. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__math_8h#abbb12c1e6e3cb5c64ccc128d48b1938f" title="Add two integers represented as byte arrays. ">cx_math_add_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes taken into account for the addition.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>1 if there is a carry, 0 otherwise.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../cx__errors_8h#afa9639746f8e32f22c7f71b5bc15e43f">CX_CARRY</a>, <a class="el" href="../lcx__math_8h#abbb12c1e6e3cb5c64ccc128d48b1938f">cx_math_add_no_throw()</a>, and <a class="el" href="../lcx__math_8h#a5455933ba4e27ccae743459e69147b89">cx_math_sub_no_throw()</a>.</p>

</div>
</div>
<a id="abbb12c1e6e3cb5c64ccc128d48b1938f"></a>
<h2 class="memtitle">cx_math_add_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_math_add_no_throw </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Add two integers represented as byte arrays. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes taken into account for the addition.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#a03666ab13301ff979e9537931dfd6a6d">cx_math_add()</a>, and <a class="el" href="../lcx__math_8h#a2c81281722c71f1ba0542dd94138f37b">cx_math_cmp()</a>.</p>

</div>
</div>
<a id="a449e49642737703c12fae09518ebd71c"></a>
<h2 class="memtitle">cx_math_addm()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_math_addm </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Modular addition of two integers represented as byte arrays. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__math_8h#ab33f2233e60e1ff57d0215c3887ea003" title="Modular addition of two integers represented as byte arrays. ">cx_math_addm_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer. This must be strictly smaller than the modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer. This must be strictly smaller than the modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes taken into account for the operation.</td></tr>
  </table>
  </dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__math_8h#ab33f2233e60e1ff57d0215c3887ea003">cx_math_addm_no_throw()</a>, and <a class="el" href="../lcx__math_8h#a767297f79263d1ce5dffc1574af681c5">cx_math_subm_no_throw()</a>.</p>

</div>
</div>
<a id="ab33f2233e60e1ff57d0215c3887ea003"></a>
<h2 class="memtitle">cx_math_addm_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_math_addm_no_throw </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Modular addition of two integers represented as byte arrays. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer. This must be strictly smaller than the modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer. This must be strictly smaller than the modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes taken into account for the operation.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#a449e49642737703c12fae09518ebd71c">cx_math_addm()</a>, and <a class="el" href="../lcx__math_8h#a397e7e1612cd73bbc1d0cede0439ebea">cx_math_mult()</a>.</p>

</div>
</div>
<a id="a2c81281722c71f1ba0542dd94138f37b"></a>
<h2 class="memtitle">cx_math_cmp()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int32_t cx_math_cmp </td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>length</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Compare two integers represented as byte arrays. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__math_8h#abe7fad9139fc57b173d6e23ccb237d71" title="Compare two integers represented as byte arrays. ">cx_math_cmp_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">length</td><td colspan="4">Number of bytes taken into account for the comparison.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Result of the comparison:<ul>
<li>0 if a and b are identical</li>
<li>&lt; 0 if a is less than b</li>
<li>&gt; 0 if a is greater than b</li>
</ul>
</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__math_8h#abbb12c1e6e3cb5c64ccc128d48b1938f">cx_math_add_no_throw()</a>, and <a class="el" href="../lcx__math_8h#abe7fad9139fc57b173d6e23ccb237d71">cx_math_cmp_no_throw()</a>.</p>

</div>
</div>
<a id="abe7fad9139fc57b173d6e23ccb237d71"></a>
<h2 class="memtitle">cx_math_cmp_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_math_cmp_no_throw </td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>length</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">int *&#160;</td>
          <td class="paramname"><b>diff</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Compare two integers represented as byte arrays. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">length</td><td colspan="4">Number of bytes taken into account for the comparison.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">diff</td><td colspan="4">Result of the comparison:<ul>
<li>0 if a and b are identical</li>
<li>&lt; 0 if a is less than b</li>
<li>&gt; 0 if a is greater than b</li>
</ul>
</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#a2c81281722c71f1ba0542dd94138f37b">cx_math_cmp()</a>.</p>

</div>
</div>
<a id="acfb6acac5bb338ce4291e84e4e3e07a3"></a>
<h2 class="memtitle">cx_math_invintm()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_math_invintm </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Modular inverse. </p>
<p>Compute the result of <b>a^(-1) mod m</b>. a must be invertible modulo <b>m</b>, i.e. the greatest common divisor of <b>a</b> and <b>m</b> is 1. This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__math_8h#affd9ee3f7fb3648732e6dbf386b83f12" title="Modular inverse. ">cx_math_invintm_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes of the result.</td></tr>
  </table>
  </dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__math_8h#affd9ee3f7fb3648732e6dbf386b83f12">cx_math_invintm_no_throw()</a>, and <a class="el" href="../lcx__math_8h#ac4059e12a707eeb05d5bf2ceb152a70f">cx_math_is_prime_no_throw()</a>.</p>

</div>
</div>
<a id="affd9ee3f7fb3648732e6dbf386b83f12"></a>
<h2 class="memtitle">cx_math_invintm_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_math_invintm_no_throw </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Modular inverse. </p>
<p>Compute the result of <b>a^(-1) mod m</b>. <b>a</b> must be invertible modulo <b>m</b>, i.e. the greatest common divisor of <b>a</b> and <b>m</b> is 1.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes of the result.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#acfb6acac5bb338ce4291e84e4e3e07a3">cx_math_invintm()</a>, and <a class="el" href="../lcx__math_8h#a96cd960b4a18de08aeb3175cfd31249e">cx_math_invprimem()</a>.</p>

</div>
</div>
<a id="a96cd960b4a18de08aeb3175cfd31249e"></a>
<h2 class="memtitle">cx_math_invprimem()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_math_invprimem </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Modular inverse with a prime modulus. </p>
<p>Compute the result of <b>a^(-1) mod m</b>, for a prime <b>m</b>. This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__math_8h#ae92b63a4637b33c29e59b961ff1734db" title="Modular inverse with a prime modulus. ">cx_math_invprimem_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus. Must be a prime number.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes of the result.</td></tr>
  </table>
  </dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__math_8h#affd9ee3f7fb3648732e6dbf386b83f12">cx_math_invintm_no_throw()</a>, and <a class="el" href="../lcx__math_8h#ae92b63a4637b33c29e59b961ff1734db">cx_math_invprimem_no_throw()</a>.</p>

</div>
</div>
<a id="ae92b63a4637b33c29e59b961ff1734db"></a>
<h2 class="memtitle">cx_math_invprimem_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_math_invprimem_no_throw </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Modular inverse with a prime modulus. </p>
<p>Compute the result of <b>a^(-1) mod m</b>, for a prime <b>m</b>.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus. Must be a prime number.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes of the result.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#a96cd960b4a18de08aeb3175cfd31249e">cx_math_invprimem()</a>, and <a class="el" href="../lcx__math_8h#a12ea1b3db0e540aeb841d73656b448da">cx_math_powm()</a>.</p>

</div>
</div>
<a id="aab8a0b7b1aa31116f46262236281c554"></a>
<h2 class="memtitle">cx_math_is_prime()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static bool cx_math_is_prime </td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Check whether a number is probable prime. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__math_8h#ac4059e12a707eeb05d5bf2ceb152a70f" title="Check whether a number is probable prime. ">cx_math_is_prime_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">r</td><td colspan="4">Pointer to an integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes of the integer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Bool indicating whether r is prime or not:<ul>
<li>0 : not prime</li>
<li>1 : prime</li>
</ul>
</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__math_8h#ac4059e12a707eeb05d5bf2ceb152a70f">cx_math_is_prime_no_throw()</a>, and <a class="el" href="../lcx__math_8h#a0d3b5f19c673e536dbf2730c5240b448">cx_math_next_prime_no_throw()</a>.</p>

</div>
</div>
<a id="ac4059e12a707eeb05d5bf2ceb152a70f"></a>
<h2 class="memtitle">cx_math_is_prime_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_math_is_prime_no_throw </td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">bool *&#160;</td>
          <td class="paramname"><b>prime</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Check whether a number is probable prime. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">r</td><td colspan="4">Pointer to an integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes of the integer.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">prime</td><td colspan="4">Bool indicating whether r is prime or not:<ul>
<li>0 : not prime</li>
<li>1 : prime</li>
</ul>
</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#acfb6acac5bb338ce4291e84e4e3e07a3">cx_math_invintm()</a>, and <a class="el" href="../lcx__math_8h#aab8a0b7b1aa31116f46262236281c554">cx_math_is_prime()</a>.</p>

</div>
</div>
<a id="a386ee5c73491f22f869e5c7e892b430f"></a>
<h2 class="memtitle">cx_math_is_zero()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static bool cx_math_is_zero </td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Compare if the byte array of an integer is all zero. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to an integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes of the integer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>1 if a is all zero, 0 otherwise. </dd></dl>

</div>
</div>
<a id="a8fbd821b6fb1712e7b6dcdd090b1b342"></a>
<h2 class="memtitle">cx_math_modm()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_math_modm </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>v</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len_v</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len_m</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Modulo operation. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__math_8h#aeac0f5e3f1c2c9da481ea7e274d1da7a" title="Modulo operation. ">cx_math_modm_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in,out]</td><td class="paramname">v</td><td colspan="4">Pointer to the dividend and buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len_v</td><td colspan="4">Number of bytes of the dividend.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len_m</td><td colspan="4">Number of bytes of the modulus.</td></tr>
  </table>
  </dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__math_8h#aeac0f5e3f1c2c9da481ea7e274d1da7a">cx_math_modm_no_throw()</a>, and <a class="el" href="../lcx__math_8h#af5e23fd303fd48de8bbb5a477c8bac60">cx_math_powm_no_throw()</a>.</p>

</div>
</div>
<a id="aeac0f5e3f1c2c9da481ea7e274d1da7a"></a>
<h2 class="memtitle">cx_math_modm_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_math_modm_no_throw </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>v</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len_v</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len_m</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Modulo operation. </p>
<p>Compute the remainder of the division of v by m. Store the result in v.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in,out]</td><td class="paramname">v</td><td colspan="4">Pointer to the dividend and buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len_v</td><td colspan="4">Number of bytes of the dividend.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len_m</td><td colspan="4">Number of bytes of the modulus.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#a8fbd821b6fb1712e7b6dcdd090b1b342">cx_math_modm()</a>, and <a class="el" href="../lcx__math_8h#a122efb1db79901b1cf509a132c54fe63">cx_math_multm()</a>.</p>

</div>
</div>
<a id="a397e7e1612cd73bbc1d0cede0439ebea"></a>
<h2 class="memtitle">cx_math_mult()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_math_mult </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Multiply two integers represented as byte arrays. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__math_8h#af92dd08eb8b586d9a3e36d4972f4730a" title="Multiply two integers represented as byte arrays. ">cx_math_mult_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes taken into account for the multiplication.</td></tr>
  </table>
  </dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__math_8h#ab33f2233e60e1ff57d0215c3887ea003">cx_math_addm_no_throw()</a>, and <a class="el" href="../lcx__math_8h#af92dd08eb8b586d9a3e36d4972f4730a">cx_math_mult_no_throw()</a>.</p>

</div>
</div>
<a id="af92dd08eb8b586d9a3e36d4972f4730a"></a>
<h2 class="memtitle">cx_math_mult_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_math_mult_no_throw </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Multiply two integers represented as byte arrays. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes taken into account for the multiplication.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#a397e7e1612cd73bbc1d0cede0439ebea">cx_math_mult()</a>, and <a class="el" href="../lcx__math_8h#ad939a3a02706fc0891ba00f082ddbc10">cx_math_sub()</a>.</p>

</div>
</div>
<a id="a122efb1db79901b1cf509a132c54fe63"></a>
<h2 class="memtitle">cx_math_multm()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_math_multm </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Modular multiplication of two integers represented as byte arrays. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__math_8h#aff8bc640cf787c8512693818b6f5bc50" title="Modular multiplication of two integers represented as byte arrays. ">cx_math_multm_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer. This must be strictly smaller than the modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes taken into account for the operation.</td></tr>
  </table>
  </dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_VALUE</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__math_8h#aeac0f5e3f1c2c9da481ea7e274d1da7a">cx_math_modm_no_throw()</a>, and <a class="el" href="../lcx__math_8h#aff8bc640cf787c8512693818b6f5bc50">cx_math_multm_no_throw()</a>.</p>

</div>
</div>
<a id="aff8bc640cf787c8512693818b6f5bc50"></a>
<h2 class="memtitle">cx_math_multm_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_math_multm_no_throw </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Modular multiplication of two integers represented as byte arrays. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer. This must be strictly smaller than the modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes taken into account for the operation.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_INVALID_PARAMETER_VALUE </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#a122efb1db79901b1cf509a132c54fe63">cx_math_multm()</a>, and <a class="el" href="../lcx__math_8h#addcb1e52be7fa1d166981e16c2ef3fa5">cx_math_subm()</a>.</p>

</div>
</div>
<a id="ab3fbb8e378b3e52e5f013cfd95fdb2a0"></a>
<h2 class="memtitle">cx_math_next_prime()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_math_next_prime </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Compute the next prime after a given number. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__math_8h#a0d3b5f19c673e536dbf2730c5240b448" title="Compute the next prime after a given number. ">cx_math_next_prime_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">r</td><td colspan="4">Pointer to the integer and buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes of the integer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_INTERNAL_ERROR</td></tr>
    <tr><td class="paramname">CX_OVERFLOW</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__math_8h#a0d3b5f19c673e536dbf2730c5240b448">cx_math_next_prime_no_throw()</a>.</p>

</div>
</div>
<a id="a0d3b5f19c673e536dbf2730c5240b448"></a>
<h2 class="memtitle">cx_math_next_prime_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_math_next_prime_no_throw </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Compute the next prime after a given number. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in,out]</td><td class="paramname">r</td><td colspan="4">Pointer to the integer and buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes of the integer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_INTERNAL_ERROR</li>
<li>CX_OVERFLOW </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#aab8a0b7b1aa31116f46262236281c554">cx_math_is_prime()</a>, and <a class="el" href="../lcx__math_8h#ab3fbb8e378b3e52e5f013cfd95fdb2a0">cx_math_next_prime()</a>.</p>

</div>
</div>
<a id="a12ea1b3db0e540aeb841d73656b448da"></a>
<h2 class="memtitle">cx_math_powm()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_math_powm </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>e</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len_e</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Modular exponentiation. </p>
<p>Compute the result of <b>a^e mod m</b>. This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__math_8h#af5e23fd303fd48de8bbb5a477c8bac60" title="Modular exponentiation. ">cx_math_powm_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to an integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">e</td><td colspan="4">Pointer to the exponent.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len_e</td><td colspan="4">Number of bytes of the exponent.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes of the result.</td></tr>
  </table>
  </dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__math_8h#ae92b63a4637b33c29e59b961ff1734db">cx_math_invprimem_no_throw()</a>, and <a class="el" href="../lcx__math_8h#af5e23fd303fd48de8bbb5a477c8bac60">cx_math_powm_no_throw()</a>.</p>

</div>
</div>
<a id="af5e23fd303fd48de8bbb5a477c8bac60"></a>
<h2 class="memtitle">cx_math_powm_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_math_powm_no_throw </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>e</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len_e</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Modular exponentiation. </p>
<p>Compute the result of <b>a^e mod m</b>.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to an integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">e</td><td colspan="4">Pointer to the exponent.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len_e</td><td colspan="4">Number of bytes of the exponent.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes of the result.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#a8fbd821b6fb1712e7b6dcdd090b1b342">cx_math_modm()</a>, and <a class="el" href="../lcx__math_8h#a12ea1b3db0e540aeb841d73656b448da">cx_math_powm()</a>.</p>

</div>
</div>
<a id="ad939a3a02706fc0891ba00f082ddbc10"></a>
<h2 class="memtitle">cx_math_sub()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static uint32_t cx_math_sub </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Subtract two integers represented as byte arrays. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__math_8h#a5455933ba4e27ccae743459e69147b89" title="Subtract two integers represented as byte arrays. ">cx_math_sub_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes taken into account for the subtraction.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>1 if there is a carry, 0 otherwise.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../cx__errors_8h#afa9639746f8e32f22c7f71b5bc15e43f">CX_CARRY</a>, <a class="el" href="../lcx__math_8h#af92dd08eb8b586d9a3e36d4972f4730a">cx_math_mult_no_throw()</a>, and <a class="el" href="../lcx__math_8h#a5455933ba4e27ccae743459e69147b89">cx_math_sub_no_throw()</a>.</p>

</div>
</div>
<a id="a5455933ba4e27ccae743459e69147b89"></a>
<h2 class="memtitle">cx_math_sub_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_math_sub_no_throw </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Subtract two integers represented as byte arrays. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes taken into account for the subtraction.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#a03666ab13301ff979e9537931dfd6a6d">cx_math_add()</a>, and <a class="el" href="../lcx__math_8h#ad939a3a02706fc0891ba00f082ddbc10">cx_math_sub()</a>.</p>

</div>
</div>
<a id="addcb1e52be7fa1d166981e16c2ef3fa5"></a>
<h2 class="memtitle">cx_math_subm()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static void cx_math_subm </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Modular subtraction of two integers represented as byte arrays. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__math_8h#a767297f79263d1ce5dffc1574af681c5" title="Modular subtraction of two integers represented as byte arrays. ">cx_math_subm_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer. This must be strictly smaller than the modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer. This must be strictly smaller than the modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes taken into account for the operation.</td></tr>
  </table>
  </dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__math_8h#aff8bc640cf787c8512693818b6f5bc50">cx_math_multm_no_throw()</a>, and <a class="el" href="../lcx__math_8h#a767297f79263d1ce5dffc1574af681c5">cx_math_subm_no_throw()</a>.</p>

</div>
</div>
<a id="a767297f79263d1ce5dffc1574af681c5"></a>
<h2 class="memtitle">cx_math_subm_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_math_subm_no_throw </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>r</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>a</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>b</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>m</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Modular subtraction of two integers represented as byte arrays. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">r</td><td colspan="4">Buffer for the result.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Pointer to the first integer. This must be strictly smaller than the modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Pointer to the second integer. This must be strictly smaller than the modulus.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">m</td><td colspan="4">Modulus</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Number of bytes taken into account for the operation.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#a449e49642737703c12fae09518ebd71c">cx_math_addm()</a>, and <a class="el" href="../lcx__math_8h#addcb1e52be7fa1d166981e16c2ef3fa5">cx_math_subm()</a>.</p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
