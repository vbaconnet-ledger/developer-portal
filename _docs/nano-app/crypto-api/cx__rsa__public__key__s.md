---
title: cx__rsa__public__key__s
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---


<p>Abstract RSA public key.  
 <a href="../cx__rsa__public__key__s#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:a854352f53b148adc24983a58a1866d66"><td class="memItemLeft" align="right" valign="top"><a id="a854352f53b148adc24983a58a1866d66"></a>
size_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__public__key__s#a854352f53b148adc24983a58a1866d66">size</a></td></tr>
<tr class="memdesc:a854352f53b148adc24983a58a1866d66"><td class="mdescLeft">&#160;</td><td class="mdescRight">Key size in bytes. <br /></td></tr>
<tr class="separator:a854352f53b148adc24983a58a1866d66"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad90f590a0bcffdfe57f54124e27e5a17"><td class="memItemLeft" align="right" valign="top"><a id="ad90f590a0bcffdfe57f54124e27e5a17"></a>
uint8_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__public__key__s#ad90f590a0bcffdfe57f54124e27e5a17">e</a> [4]</td></tr>
<tr class="memdesc:ad90f590a0bcffdfe57f54124e27e5a17"><td class="mdescLeft">&#160;</td><td class="mdescRight">32-bit public exponent <br /></td></tr>
<tr class="separator:ad90f590a0bcffdfe57f54124e27e5a17"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0c9d3bf71f73955f665fda627b9d3ad4"><td class="memItemLeft" align="right" valign="top"><a id="a0c9d3bf71f73955f665fda627b9d3ad4"></a>
uint8_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__public__key__s#a0c9d3bf71f73955f665fda627b9d3ad4">n</a> [1]</td></tr>
<tr class="memdesc:a0c9d3bf71f73955f665fda627b9d3ad4"><td class="mdescLeft">&#160;</td><td class="mdescRight">Public modulus. <br /></td></tr>
<tr class="separator:a0c9d3bf71f73955f665fda627b9d3ad4"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Abstract RSA public key. </p>
<p>This type shall not be instantiate, it is only defined to allow unified API for RSA operations. </p>
