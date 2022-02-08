---
title: cx__ripemd160__s
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>RIPEMD-160 context.  
 <a href="../cx__ripemd160__s#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:ad5a251d434baeed078b92d184b5b29d5"><td class="memItemLeft" align="right" valign="top">struct <a class="el" href="../cx__hash__header__s">cx_hash_header_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ripemd160__s#ad5a251d434baeed078b92d184b5b29d5">header</a></td></tr>
<tr class="memdesc:ad5a251d434baeed078b92d184b5b29d5"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">See <a class="el" href="../cx__hash__header__s" title="Common message digest context, used as abstract type. ">cx_hash_header_s</a>.  <a href="#ad5a251d434baeed078b92d184b5b29d5">More...</a><br /></td></tr>
<tr class="memitem:a01b3030b6f1b1247ba11bd7fdee173b6"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ripemd160__s#a01b3030b6f1b1247ba11bd7fdee173b6">blen</a></td></tr>
<tr class="memdesc:a01b3030b6f1b1247ba11bd7fdee173b6"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pending partial block length.  <a href="#a01b3030b6f1b1247ba11bd7fdee173b6">More...</a><br /></td></tr>
<tr class="memitem:ab57f35be75021d367d3e9eedc56e3ee2"><td class="memItemLeft" align="right" valign="top">uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ripemd160__s#ab57f35be75021d367d3e9eedc56e3ee2">block</a> [64]</td></tr>
<tr class="memdesc:ab57f35be75021d367d3e9eedc56e3ee2"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pending partial block.  <a href="#ab57f35be75021d367d3e9eedc56e3ee2">More...</a><br /></td></tr>
<tr class="memitem:ab46e5c3fb8e5550d9def55c3b8924f8a"><td class="memItemLeft" align="right" valign="top">uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__ripemd160__s#ab46e5c3fb8e5550d9def55c3b8924f8a">acc</a> [5 *4]</td></tr>
<tr class="memdesc:ab46e5c3fb8e5550d9def55c3b8924f8a"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Current digest state.  <a href="#ab46e5c3fb8e5550d9def55c3b8924f8a">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>RIPEMD-160 context. </p>
</div><h2 class="groupheader">Field Documentation</h2>
<a id="ab46e5c3fb8e5550d9def55c3b8924f8a"></a>
<h2 class="memtitle">acc</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint8_t acc[5 *4]</td>
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
<a id="ab57f35be75021d367d3e9eedc56e3ee2"></a>
<h2 class="memtitle">block</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint8_t block[64]</td>
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
