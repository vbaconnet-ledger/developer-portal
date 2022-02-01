---
title: blake2b__state____
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
<tr class="memitem:a687c52e3a420c838ba2a867eb5f11b4c"><td class="memItemLeft" align="right" valign="top"><a id="a687c52e3a420c838ba2a867eb5f11b4c"></a>
uint64_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#a687c52e3a420c838ba2a867eb5f11b4c">h</a> [8]</td></tr>
<tr class="memdesc:a687c52e3a420c838ba2a867eb5f11b4c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Internal state of the hash. <br /></td></tr>
<tr class="memitem:a2485b4a96e2159455f9defde68daed6b"><td class="memItemLeft" align="right" valign="top"><a id="a2485b4a96e2159455f9defde68daed6b"></a>
uint64_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#a2485b4a96e2159455f9defde68daed6b">t</a> [2]</td></tr>
<tr class="memdesc:a2485b4a96e2159455f9defde68daed6b"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Message byte offset at the end of the current block. <br /></td></tr>
<tr class="memitem:a1c4b0a6bb8387f9d076a56b09b13b4ac"><td class="memItemLeft" align="right" valign="top"><a id="a1c4b0a6bb8387f9d076a56b09b13b4ac"></a>
uint64_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#a1c4b0a6bb8387f9d076a56b09b13b4ac">f</a> [2]</td></tr>
<tr class="memdesc:a1c4b0a6bb8387f9d076a56b09b13b4ac"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Flag indicating the last block. <br /></td></tr>
<tr class="memitem:a556d85b4802be4144c58f9f494a266c9"><td class="memItemLeft" align="right" valign="top"><a id="a556d85b4802be4144c58f9f494a266c9"></a>
uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#a556d85b4802be4144c58f9f494a266c9">buf</a> [<a class="el" href="../lcx__blake2_8h#a55df020abc59e40eb12965cf08eca1b5aea9f79a4ec90a788ea0590ae5dfda693">BLAKE2B_BLOCKBYTES</a>]</td></tr>
<tr class="memdesc:a556d85b4802be4144c58f9f494a266c9"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Buffer for the processed data. <br /></td></tr>
<tr class="memitem:ad6994903b3c19997ffcfdccb4431d308"><td class="memItemLeft" align="right" valign="top"><a id="ad6994903b3c19997ffcfdccb4431d308"></a>
size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#ad6994903b3c19997ffcfdccb4431d308">buflen</a></td></tr>
<tr class="memdesc:ad6994903b3c19997ffcfdccb4431d308"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Length of the buffer. <br /></td></tr>
<tr class="memitem:ae5aad15fdea0b06b0390298a030c8ff3"><td class="memItemLeft" align="right" valign="top"><a id="ae5aad15fdea0b06b0390298a030c8ff3"></a>
size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#ae5aad15fdea0b06b0390298a030c8ff3">outlen</a></td></tr>
<tr class="memdesc:ae5aad15fdea0b06b0390298a030c8ff3"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Length of the output. <br /></td></tr>
<tr class="memitem:aeef1495cb3058928ace5096cac10242d"><td class="memItemLeft" align="right" valign="top"><a id="aeef1495cb3058928ace5096cac10242d"></a>
uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../blake2b__state____#aeef1495cb3058928ace5096cac10242d">last_node</a></td></tr>
<tr class="memdesc:aeef1495cb3058928ace5096cac10242d"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Last node. <br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>BLAKE2b state members. </p>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
