---
title: cx_hmac_sha512_t
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>HMAC context, concrete type for SHA-384/SHA-512.  
 <a href="../cx__hmac__sha512__t#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:a88091e6802236471cb8e165d359d63ce"><td class="memItemLeft" align="right" valign="top">uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hmac__sha512__t#a88091e6802236471cb8e165d359d63ce">key</a> [128]</td></tr>
<tr class="memdesc:a88091e6802236471cb8e165d359d63ce"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Key.  <a href="#a88091e6802236471cb8e165d359d63ce">More...</a><br /></td></tr>
<tr class="memitem:a97f73ecf42ff3c3f7fb8ca70756dd00c"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hmac__sha512__t#a97f73ecf42ff3c3f7fb8ca70756dd00c">hash_ctx</a></td></tr>
<tr class="memdesc:a97f73ecf42ff3c3f7fb8ca70756dd00c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Hash context.  <a href="#a97f73ecf42ff3c3f7fb8ca70756dd00c">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>HMAC context, concrete type for SHA-384/SHA-512. </p>
</div><h2 class="groupheader">Field Documentation</h2>
<a id="a97f73ecf42ff3c3f7fb8ca70756dd00c"></a>
<h2 class="memtitle">hash_ctx</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> hash_ctx</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Hash context. </p>

</div>
</div>
<a id="a88091e6802236471cb8e165d359d63ce"></a>
<h2 class="memtitle">key</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint8_t key[128]</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Key. </p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
