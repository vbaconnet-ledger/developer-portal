---
title: ox_crc.h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Cyclic Redundancy Check syscall.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:a33022284e3b405eedf1c1ae90e164d3c"><td class="memItemLeft" align="right" valign="top">SYSCALL uint32_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../ox__crc_8h#a33022284e3b405eedf1c1ae90e164d3c">cx_crc32_hw</a> (const void *buf, size_t len)</td></tr>
<tr class="memdesc:a33022284e3b405eedf1c1ae90e164d3c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Calculate a 32-bit cyclic redundancy check.  <a href="#a33022284e3b405eedf1c1ae90e164d3c">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Cyclic Redundancy Check syscall. </p>
<p>This file contains the function for calculating a 32-bit cyclic redundancy check. </p>
</div><h2 class="groupheader">Function Documentation</h2>
<a id="a33022284e3b405eedf1c1ae90e164d3c"></a>
<h2 class="memtitle">cx_crc32_hw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL uint32_t cx_crc32_hw </td>
          <td>(</td>
          <td class="paramtype">const void *&#160;</td>
          <td class="paramname"><b>buf</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>len</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Calculate a 32-bit cyclic redundancy check. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">buf</td><td colspan="4">Pointer to the buffer to check.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Length of the buffer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Result of the 32-bit CRC calculation. </dd></dl>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
