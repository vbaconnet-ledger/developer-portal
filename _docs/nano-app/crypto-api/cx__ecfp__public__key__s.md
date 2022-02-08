---
title: cx__ecfp__public__key__s
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Elliptic Curve public key.  
 <a href="../cx__ecfp__public__key__s#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:a474bc8df07e877791f9b39dac8f9a8df"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__public__key__s#a474bc8df07e877791f9b39dac8f9a8df">curve</a></td></tr>
<tr class="memdesc:a474bc8df07e877791f9b39dac8f9a8df"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Curve identifier.  <a href="#a474bc8df07e877791f9b39dac8f9a8df">More...</a><br /></td></tr>
<tr class="memitem:ac152483a0bfb4609cbecb818583b1c14"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__public__key__s#ac152483a0bfb4609cbecb818583b1c14">W_len</a></td></tr>
<tr class="memdesc:ac152483a0bfb4609cbecb818583b1c14"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Public key length in bytes.  <a href="#ac152483a0bfb4609cbecb818583b1c14">More...</a><br /></td></tr>
<tr class="memitem:ac32a08901f9d2cc8a7ad433c1a871959"><td class="memItemLeft" align="right" valign="top">uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ecfp__public__key__s#ac32a08901f9d2cc8a7ad433c1a871959">W</a> [1]</td></tr>
<tr class="memdesc:ac32a08901f9d2cc8a7ad433c1a871959"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Public key value.  <a href="#ac32a08901f9d2cc8a7ad433c1a871959">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Elliptic Curve public key. </p>
</div><h2 class="groupheader">Field Documentation</h2>
<a id="a474bc8df07e877791f9b39dac8f9a8df"></a>
<h2 class="memtitle">curve</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../ox__ec_8h#ada004671ae8fe2032d4c144ed6ebb837">cx_curve_t</a> curve</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Curve identifier. </p>

<p class="reference">Referenced by <a class="el" href="../lcx__ecfp_8h#a5a0e2ce81dfb4318e14ae0e9db164db1">cx_ecfp_add_point()</a>, <a class="el" href="../lcx__ecfp_8h#a8880d93a82c60faeb564149e9618a6c4">cx_ecfp_generate_pair()</a>, <a class="el" href="../lcx__ecfp_8h#a94402980442875a67af525d3ad907318">cx_ecfp_init_private_key()</a>, <a class="el" href="../lcx__ecfp_8h#a509a069a0d882d2ebcd7c189fffae52f">cx_ecfp_init_public_key()</a>, <a class="el" href="../lcx__ecfp_8h#a2cc4aeae037cc9c0b13954e9bb3651fc">cx_ecfp_scalar_mult()</a>, <a class="el" href="../lcx__ecfp_8h#a0d4366ae761dac729bfc1c8ea38090f0">cx_eddsa_get_public_key()</a>, and <a class="el" href="../lcx__ecfp_8h#abbe81f0cda9fbbc9b89a64b4245474ed">cx_edwards_compress_point()</a>.</p>

</div>
</div>
<a id="ac32a08901f9d2cc8a7ad433c1a871959"></a>
<h2 class="memtitle">W</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint8_t W[1]</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Public key value. </p>

</div>
</div>
<a id="ac152483a0bfb4609cbecb818583b1c14"></a>
<h2 class="memtitle">W_len</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t W_len</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Public key length in bytes. </p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
