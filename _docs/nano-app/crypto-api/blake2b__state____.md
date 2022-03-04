---
title: blake2b_state__
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>BLAKE2b state members.  
 <a href="../blake2b__state____#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:a687c52e3a420c838ba2a867eb5f11b4c"><td class="memItemLeft" align="right" valign="top">uint64_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#a687c52e3a420c838ba2a867eb5f11b4c">h</a> [8]</td></tr>
<tr class="memdesc:a687c52e3a420c838ba2a867eb5f11b4c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Internal state of the hash.  <a href="#a687c52e3a420c838ba2a867eb5f11b4c">More...</a><br /></td></tr>
<tr class="memitem:a2485b4a96e2159455f9defde68daed6b"><td class="memItemLeft" align="right" valign="top">uint64_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#a2485b4a96e2159455f9defde68daed6b">t</a> [2]</td></tr>
<tr class="memdesc:a2485b4a96e2159455f9defde68daed6b"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Message byte offset at the end of the current block.  <a href="#a2485b4a96e2159455f9defde68daed6b">More...</a><br /></td></tr>
<tr class="memitem:a1c4b0a6bb8387f9d076a56b09b13b4ac"><td class="memItemLeft" align="right" valign="top">uint64_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#a1c4b0a6bb8387f9d076a56b09b13b4ac">f</a> [2]</td></tr>
<tr class="memdesc:a1c4b0a6bb8387f9d076a56b09b13b4ac"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Flag indicating the last block.  <a href="#a1c4b0a6bb8387f9d076a56b09b13b4ac">More...</a><br /></td></tr>
<tr class="memitem:a556d85b4802be4144c58f9f494a266c9"><td class="memItemLeft" align="right" valign="top">uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#a556d85b4802be4144c58f9f494a266c9">buf</a> [<a class="el" href="../lcx__blake2_8h#a55df020abc59e40eb12965cf08eca1b5aea9f79a4ec90a788ea0590ae5dfda693">BLAKE2B_BLOCKBYTES</a>]</td></tr>
<tr class="memdesc:a556d85b4802be4144c58f9f494a266c9"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Buffer for the processed data.  <a href="#a556d85b4802be4144c58f9f494a266c9">More...</a><br /></td></tr>
<tr class="memitem:ad6994903b3c19997ffcfdccb4431d308"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#ad6994903b3c19997ffcfdccb4431d308">buflen</a></td></tr>
<tr class="memdesc:ad6994903b3c19997ffcfdccb4431d308"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Length of the buffer.  <a href="#ad6994903b3c19997ffcfdccb4431d308">More...</a><br /></td></tr>
<tr class="memitem:ae5aad15fdea0b06b0390298a030c8ff3"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#ae5aad15fdea0b06b0390298a030c8ff3">outlen</a></td></tr>
<tr class="memdesc:ae5aad15fdea0b06b0390298a030c8ff3"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Length of the output.  <a href="#ae5aad15fdea0b06b0390298a030c8ff3">More...</a><br /></td></tr>
<tr class="memitem:aeef1495cb3058928ace5096cac10242d"><td class="memItemLeft" align="right" valign="top">uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#aeef1495cb3058928ace5096cac10242d">last_node</a></td></tr>
<tr class="memdesc:aeef1495cb3058928ace5096cac10242d"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Last node.  <a href="#aeef1495cb3058928ace5096cac10242d">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>BLAKE2b state members. </p>
</div><h2 class="groupheader">Field Documentation</h2>
<a id="a556d85b4802be4144c58f9f494a266c9"></a>
<h2 class="memtitle">buf</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint8_t buf[<a class="el" href="../lcx__blake2_8h#a55df020abc59e40eb12965cf08eca1b5aea9f79a4ec90a788ea0590ae5dfda693">BLAKE2B_BLOCKBYTES</a>]</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Buffer for the processed data. </p>

</div>
</div>
<a id="ad6994903b3c19997ffcfdccb4431d308"></a>
<h2 class="memtitle">buflen</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t buflen</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Length of the buffer. </p>

</div>
</div>
<a id="a1c4b0a6bb8387f9d076a56b09b13b4ac"></a>
<h2 class="memtitle">f</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint64_t f[2]</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Flag indicating the last block. </p>

</div>
</div>
<a id="a687c52e3a420c838ba2a867eb5f11b4c"></a>
<h2 class="memtitle">h</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint64_t h[8]</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Internal state of the hash. </p>

</div>
</div>
<a id="aeef1495cb3058928ace5096cac10242d"></a>
<h2 class="memtitle">last_node</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint8_t last_node</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Last node. </p>

</div>
</div>
<a id="ae5aad15fdea0b06b0390298a030c8ff3"></a>
<h2 class="memtitle">outlen</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t outlen</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Length of the output. </p>

</div>
</div>
<a id="a2485b4a96e2159455f9defde68daed6b"></a>
<h2 class="memtitle">t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint64_t t[2]</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Message byte offset at the end of the current block. </p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
