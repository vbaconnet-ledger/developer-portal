---
title: lcx__crc_8h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>CRC (Cyclic Redundancy Check).  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:ac9b17360d9441d3ce14734ce2557eac1"><td class="memItemLeft" align="right" valign="top"><a id="ac9b17360d9441d3ce14734ce2557eac1"></a>
#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__crc_8h#ac9b17360d9441d3ce14734ce2557eac1">CX_CRC16_INIT</a>&#160;&#160;&#160;0xFFFF</td></tr>
<tr class="memdesc:ac9b17360d9441d3ce14734ce2557eac1"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">CRC16 initial value. <br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:a6872340585eb5b4d1a88f0e4e59f9ac5"><td class="memItemLeft" align="right" valign="top">uint16_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__crc_8h#a6872340585eb5b4d1a88f0e4e59f9ac5">cx_crc16</a> (const void *buffer, size_t len)</td></tr>
<tr class="memdesc:a6872340585eb5b4d1a88f0e4e59f9ac5"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Compute a 16-bit checksum value.  <a href="#a6872340585eb5b4d1a88f0e4e59f9ac5">More...</a><br /></td></tr>
<tr class="memitem:a0f00320ed45219165a870b27c6c8c674"><td class="memItemLeft" align="right" valign="top">uint16_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__crc_8h#a0f00320ed45219165a870b27c6c8c674">cx_crc16_update</a> (uint16_t crc, const void *buffer, size_t len)</td></tr>
<tr class="memdesc:a0f00320ed45219165a870b27c6c8c674"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Accumulate more data to CRC.  <a href="#a0f00320ed45219165a870b27c6c8c674">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>CRC (Cyclic Redundancy Check). </p>
<p>CRC-16 is a variant of CRC, an error-detecting code, with a 16-bit long check value. </p>
</div><h2 class="groupheader">Function Documentation</h2>
<a id="a6872340585eb5b4d1a88f0e4e59f9ac5"></a>
<h2 class="memtitle">cx_crc16()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint16_t cx_crc16 </td>
          <td class="paramtype">const void *&#160;</td>
          <td class="paramname"><em>buffer</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>len</em>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
</div><div class="memdoc">

<p>Compute a 16-bit checksum value. </p>
<p>The 16-bit value is computed according to the CRC16 CCITT definition.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">buffer</td><td colspan="4">The buffer to compute the CRC over.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Bytes length of the buffer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Current CRC value. </dd></dl>

</div>
</div>
<a id="a0f00320ed45219165a870b27c6c8c674"></a>
<h2 class="memtitle">cx_crc16_update()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint16_t cx_crc16_update </td>
          <td class="paramtype">uint16_t&#160;</td>
          <td class="paramname"><em>crc</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const void *&#160;</td>
          <td class="paramname"><em>buffer</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>len</em>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
</div><div class="memdoc">

<p>Accumulate more data to CRC. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">crc</td><td colspan="4">CRC value to be updated.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">buffer</td><td colspan="4">The buffer to compute the CRC over.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Bytes length of the buffer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Updated CRC value. </dd></dl>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
