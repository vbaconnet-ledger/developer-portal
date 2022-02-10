---
title: cx_sha3_s
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>KECCAK, SHA3 and SHA3-XOF context.  
 <a href="../cx__sha3__s#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:ad5a251d434baeed078b92d184b5b29d5"><td class="memItemLeft" align="right" valign="top">struct <a class="el" href="../cx__hash__header__s">cx_hash_header_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__sha3__s#ad5a251d434baeed078b92d184b5b29d5">header</a></td></tr>
<tr class="memdesc:ad5a251d434baeed078b92d184b5b29d5"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">See <a class="el" href="../cx__hash__header__s" title="Common message digest context, used as abstract type. ">cx_hash_header_s</a>.  <a href="#ad5a251d434baeed078b92d184b5b29d5">More...</a><br /></td></tr>
<tr class="memitem:a936e314fcab4e7bfe77e6ffde4e15e06"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__sha3__s#a936e314fcab4e7bfe77e6ffde4e15e06">output_size</a></td></tr>
<tr class="memdesc:a936e314fcab4e7bfe77e6ffde4e15e06"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Output digest size.  <a href="#a936e314fcab4e7bfe77e6ffde4e15e06">More...</a><br /></td></tr>
<tr class="memitem:ad7524613c3881d09bda0d270ede83779"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__sha3__s#ad7524613c3881d09bda0d270ede83779">block_size</a></td></tr>
<tr class="memdesc:ad7524613c3881d09bda0d270ede83779"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Input block size.  <a href="#ad7524613c3881d09bda0d270ede83779">More...</a><br /></td></tr>
<tr class="memitem:a01b3030b6f1b1247ba11bd7fdee173b6"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__sha3__s#a01b3030b6f1b1247ba11bd7fdee173b6">blen</a></td></tr>
<tr class="memdesc:a01b3030b6f1b1247ba11bd7fdee173b6"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pending partial block length.  <a href="#a01b3030b6f1b1247ba11bd7fdee173b6">More...</a><br /></td></tr>
<tr class="memitem:ac9d9618d61146b09fab10cb4a75a368d"><td class="memItemLeft" align="right" valign="top">uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__sha3__s#ac9d9618d61146b09fab10cb4a75a368d">block</a> [200]</td></tr>
<tr class="memdesc:ac9d9618d61146b09fab10cb4a75a368d"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pending partial block.  <a href="#ac9d9618d61146b09fab10cb4a75a368d">More...</a><br /></td></tr>
<tr class="memitem:a241dca62c6abb3ff13685e527952d3bd"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../lcx__common_8h#a6da1223e6d4d3264a052655b5ed019c9">uint64bits_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__sha3__s#a241dca62c6abb3ff13685e527952d3bd">acc</a> [25]</td></tr>
<tr class="memdesc:a241dca62c6abb3ff13685e527952d3bd"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Current digest state.  <a href="#a241dca62c6abb3ff13685e527952d3bd">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>KECCAK, SHA3 and SHA3-XOF context. </p>
</div><h2 class="groupheader">Field Documentation</h2>
<a id="a241dca62c6abb3ff13685e527952d3bd"></a>
<h2 class="memtitle">acc</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../lcx__common_8h#a6da1223e6d4d3264a052655b5ed019c9">uint64bits_t</a> acc[25]</td>
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
<a id="ac9d9618d61146b09fab10cb4a75a368d"></a>
<h2 class="memtitle">block</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint8_t block[200]</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Pending partial block. </p>

</div>
</div>
<a id="ad7524613c3881d09bda0d270ede83779"></a>
<h2 class="memtitle">block_size</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t block_size</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Input block size. </p>

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
<a id="a936e314fcab4e7bfe77e6ffde4e15e06"></a>
<h2 class="memtitle">output_size</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t output_size</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Output digest size. </p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
