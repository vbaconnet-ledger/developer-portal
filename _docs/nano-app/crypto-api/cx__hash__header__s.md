---
title: cx_hash_header_s
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Common message digest context, used as abstract type.  
 <a href="../cx__hash__header__s#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:ac613131b42e92ab66088a8cfbdc8fbba"><td class="memItemLeft" align="right" valign="top">const <a class="el" href="../cx__hash__info__t">cx_hash_info_t</a> *&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__header__s#ac613131b42e92ab66088a8cfbdc8fbba">info</a></td></tr>
<tr class="memdesc:ac613131b42e92ab66088a8cfbdc8fbba"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Hash description.  <a href="#ac613131b42e92ab66088a8cfbdc8fbba">More...</a><br /></td></tr>
<tr class="memitem:a51322ddb267b4729d6b5f2bb05d49fff"><td class="memItemLeft" align="right" valign="top">uint32_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__header__s#a51322ddb267b4729d6b5f2bb05d49fff">counter</a></td></tr>
<tr class="memdesc:a51322ddb267b4729d6b5f2bb05d49fff"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Number of already processed blocks.  <a href="#a51322ddb267b4729d6b5f2bb05d49fff">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Common message digest context, used as abstract type. </p>
</div><h2 class="groupheader">Field Documentation</h2>
<a id="a51322ddb267b4729d6b5f2bb05d49fff"></a>
<h2 class="memtitle">counter</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint32_t counter</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Number of already processed blocks. </p>

</div>
</div>
<a id="ac613131b42e92ab66088a8cfbdc8fbba"></a>
<h2 class="memtitle">info</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">const <a class="el" href="../cx__hash__info__t">cx_hash_info_t</a>* info</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Hash description. </p>

<p class="reference">Referenced by <a class="el" href="../lcx__hmac_8h#a59713fd754b21c5af7de282b7b03c824">cx_hmac()</a>.</p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
