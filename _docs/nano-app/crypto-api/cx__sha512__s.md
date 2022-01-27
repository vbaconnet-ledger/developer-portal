---
title: cx__sha512__s
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>SHA-384 and SHA-512 context.  
 <a href="../cx__sha512__s#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:ad5a251d434baeed078b92d184b5b29d5"><td class="memItemLeft" align="right" valign="top">struct <a class="el" href="../cx__hash__header__s">cx_hash_header_s</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__sha512__s#ad5a251d434baeed078b92d184b5b29d5">header</a></td></tr>
<tr class="memdesc:ad5a251d434baeed078b92d184b5b29d5"><td class="mdescLeft">&#160;</td><td class="mdescRight">See <a class="el" href="../cx__hash__header__s" title="Common message digest context, used as abstract type. ">cx_hash_header_s</a>.  <a href="#ad5a251d434baeed078b92d184b5b29d5">More...</a><br /></td></tr>
<tr class="separator:ad5a251d434baeed078b92d184b5b29d5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a01b3030b6f1b1247ba11bd7fdee173b6"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__sha512__s#a01b3030b6f1b1247ba11bd7fdee173b6">blen</a></td></tr>
<tr class="memdesc:a01b3030b6f1b1247ba11bd7fdee173b6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Pending partial block length.  <a href="#a01b3030b6f1b1247ba11bd7fdee173b6">More...</a><br /></td></tr>
<tr class="separator:a01b3030b6f1b1247ba11bd7fdee173b6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adaec6cf6bbf1bf52f0b8e24e3628a400"><td class="memItemLeft" align="right" valign="top">uint8_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__sha512__s#adaec6cf6bbf1bf52f0b8e24e3628a400">block</a> [128]</td></tr>
<tr class="memdesc:adaec6cf6bbf1bf52f0b8e24e3628a400"><td class="mdescLeft">&#160;</td><td class="mdescRight">Pending partial block.  <a href="#adaec6cf6bbf1bf52f0b8e24e3628a400">More...</a><br /></td></tr>
<tr class="separator:adaec6cf6bbf1bf52f0b8e24e3628a400"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7aca5a2c625203311384a0422f638f74"><td class="memItemLeft" align="right" valign="top">uint8_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__sha512__s#a7aca5a2c625203311384a0422f638f74">acc</a> [8 *8]</td></tr>
<tr class="memdesc:a7aca5a2c625203311384a0422f638f74"><td class="mdescLeft">&#160;</td><td class="mdescRight">Current digest state.  <a href="#a7aca5a2c625203311384a0422f638f74">More...</a><br /></td></tr>
<tr class="separator:a7aca5a2c625203311384a0422f638f74"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>SHA-384 and SHA-512 context. </p>
</div><h2 class="groupheader">Field Documentation</h2>
<a id="a7aca5a2c625203311384a0422f638f74"></a>
<h2 class="memtitle">acc</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint8_t acc[8 *8]</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Current digest state. </p>

</div>
</div>
<a id="a01b3030b6f1b1247ba11bd7fdee173b6"></a>
<h2 class="memtitle">blen</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t blen</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Pending partial block length. </p>

</div>
</div>
<a id="adaec6cf6bbf1bf52f0b8e24e3628a400"></a>
<h2 class="memtitle">block</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint8_t block[128]</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Pending partial block. </p>

</div>
</div>
<a id="ad5a251d434baeed078b92d184b5b29d5"></a>
<h2 class="memtitle">header</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">struct <a class="el" href="../cx__hash__header__s">cx_hash_header_s</a> header</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>See <a class="el" href="../cx__hash__header__s" title="Common message digest context, used as abstract type. ">cx_hash_header_s</a>. </p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
