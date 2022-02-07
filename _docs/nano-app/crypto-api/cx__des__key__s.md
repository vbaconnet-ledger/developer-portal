---
title: cx__des__key__s
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>DES key container.  
 <a href="../cx__des__key__s#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4">><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:ae5dc6ffcd9b7605c7787791e40cc6bb0"><td class="memItemLeft" align="right" valign="top"><a id="ae5dc6ffcd9b7605c7787791e40cc6bb0"></a>
uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__des__key__s#ae5dc6ffcd9b7605c7787791e40cc6bb0">size</a></td></tr>
<tr class="memdesc:ae5dc6ffcd9b7605c7787791e40cc6bb0"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">key size <br /></td></tr>
<tr class="memitem:aca1861f1d9ce3b496af8f1da1bacf1c8"><td class="memItemLeft" align="right" valign="top"><a id="aca1861f1d9ce3b496af8f1da1bacf1c8"></a>
uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__des__key__s#aca1861f1d9ce3b496af8f1da1bacf1c8">keys</a> [24]</td></tr>
<tr class="memdesc:aca1861f1d9ce3b496af8f1da1bacf1c8"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">key value <br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>DES key container. </p>
<p>DES key container. Such container should be initialized with <b>cx_des_init_key</b> to ensure future API compatibility. Indeed, in next API level, the key store format may changed at all. 8 bytes (simple DES), 16 bytes (triple DES with 2 keys) and 24 bytes (triple DES with 3 keys) are supported. </p>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
