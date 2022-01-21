---
title: cx__aes__key__s
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---


<p>AES key container.  
 <a href="../cx__aes__key__s#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:a854352f53b148adc24983a58a1866d66"><td class="memItemLeft" align="right" valign="top"><a id="a854352f53b148adc24983a58a1866d66"></a>
size_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__aes__key__s#a854352f53b148adc24983a58a1866d66">size</a></td></tr>
<tr class="memdesc:a854352f53b148adc24983a58a1866d66"><td class="mdescLeft">&#160;</td><td class="mdescRight">key size <br /></td></tr>
<tr class="separator:a854352f53b148adc24983a58a1866d66"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a82b87a34803cd38cb207ff66c6494acd"><td class="memItemLeft" align="right" valign="top"><a id="a82b87a34803cd38cb207ff66c6494acd"></a>
uint8_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__aes__key__s#a82b87a34803cd38cb207ff66c6494acd">keys</a> [32]</td></tr>
<tr class="memdesc:a82b87a34803cd38cb207ff66c6494acd"><td class="mdescLeft">&#160;</td><td class="mdescRight">key value <br /></td></tr>
<tr class="separator:a82b87a34803cd38cb207ff66c6494acd"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>AES key container. </p>
<p>Such container should be initialized with cx_ees_init_key to ensure future API compatibility. Indeed, in next API level, the key store format may changed at all. Only 16-byte key (AES128) is supported . </p>
