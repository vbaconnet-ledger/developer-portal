---
title: cx_rsa_public_key_s
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Abstract RSA public key.  
 <a href="../cx__rsa__public__key__s#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:a854352f53b148adc24983a58a1866d66"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__public__key__s#a854352f53b148adc24983a58a1866d66">size</a></td></tr>
<tr class="memdesc:a854352f53b148adc24983a58a1866d66"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Key size in bytes.  <a href="#a854352f53b148adc24983a58a1866d66">More...</a><br /></td></tr>
<tr class="memitem:ad90f590a0bcffdfe57f54124e27e5a17"><td class="memItemLeft" align="right" valign="top">uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__public__key__s#ad90f590a0bcffdfe57f54124e27e5a17">e</a> [4]</td></tr>
<tr class="memdesc:ad90f590a0bcffdfe57f54124e27e5a17"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">32-bit public exponent  <a href="#ad90f590a0bcffdfe57f54124e27e5a17">More...</a><br /></td></tr>
<tr class="memitem:a0c9d3bf71f73955f665fda627b9d3ad4"><td class="memItemLeft" align="right" valign="top">uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__public__key__s#a0c9d3bf71f73955f665fda627b9d3ad4">n</a> [1]</td></tr>
<tr class="memdesc:a0c9d3bf71f73955f665fda627b9d3ad4"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Public modulus.  <a href="#a0c9d3bf71f73955f665fda627b9d3ad4">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Abstract RSA public key. </p>
<p>This type shall not be instantiate, it is only defined to allow unified API for RSA operations. </p>
</div><h2 class="groupheader">Field Documentation</h2>
<a id="ad90f590a0bcffdfe57f54124e27e5a17"></a>
<h2 class="memtitle">e</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint8_t e[4]</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>32-bit public exponent </p>

</div>
</div>
<a id="a0c9d3bf71f73955f665fda627b9d3ad4"></a>
<h2 class="memtitle">n</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint8_t n[1]</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Public modulus. </p>

</div>
</div>
<a id="a854352f53b148adc24983a58a1866d66"></a>
<h2 class="memtitle">size</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t size</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Key size in bytes. </p>

<p class="reference">Referenced by <a class="el" href="../lcx__rsa_8h#acd543c2453e21ffb03b2c6e0d31f061a">cx_rsa_encrypt()</a>.</p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
