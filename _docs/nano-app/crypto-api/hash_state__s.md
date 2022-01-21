---
title: hash_state__s
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---


<p>Hash state.  
 <a href="../hash_state__s#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:ae781356fb43376d0c0da5a21583d163c"><td class="memItemLeft" align="right" valign="top"><a id="ae781356fb43376d0c0da5a21583d163c"></a>
uint8_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#ae781356fb43376d0c0da5a21583d163c">chaining</a> [ROWS][COLS1024]</td></tr>
<tr class="memdesc:ae781356fb43376d0c0da5a21583d163c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Actual state. <br /></td></tr>
<tr class="separator:ae781356fb43376d0c0da5a21583d163c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a92b25837cf5dd7fb7e1113eb46c5252f"><td class="memItemLeft" align="right" valign="top"><a id="a92b25837cf5dd7fb7e1113eb46c5252f"></a>
uint64_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#a92b25837cf5dd7fb7e1113eb46c5252f">block_counter</a></td></tr>
<tr class="memdesc:a92b25837cf5dd7fb7e1113eb46c5252f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Block counter. <br /></td></tr>
<tr class="separator:a92b25837cf5dd7fb7e1113eb46c5252f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae892a3004fae62625c6b475f2b4addea"><td class="memItemLeft" align="right" valign="top"><a id="ae892a3004fae62625c6b475f2b4addea"></a>
unsigned int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#ae892a3004fae62625c6b475f2b4addea">hashlen</a></td></tr>
<tr class="memdesc:ae892a3004fae62625c6b475f2b4addea"><td class="mdescLeft">&#160;</td><td class="mdescRight">Output length. <br /></td></tr>
<tr class="separator:ae892a3004fae62625c6b475f2b4addea"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a57f3a2ead170963cd925f867a2758851"><td class="memItemLeft" align="right" valign="top"><a id="a57f3a2ead170963cd925f867a2758851"></a>
BitSequence&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#a57f3a2ead170963cd925f867a2758851">buffer</a> [SIZE1024]</td></tr>
<tr class="memdesc:a57f3a2ead170963cd925f867a2758851"><td class="mdescLeft">&#160;</td><td class="mdescRight">Block buffer. <br /></td></tr>
<tr class="separator:a57f3a2ead170963cd925f867a2758851"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1f799e7efeb184f0fd418583f1c1fa46"><td class="memItemLeft" align="right" valign="top"><a id="a1f799e7efeb184f0fd418583f1c1fa46"></a>
unsigned int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#a1f799e7efeb184f0fd418583f1c1fa46">buf_ptr</a></td></tr>
<tr class="memdesc:a1f799e7efeb184f0fd418583f1c1fa46"><td class="mdescLeft">&#160;</td><td class="mdescRight">Buffer pointer. <br /></td></tr>
<tr class="separator:a1f799e7efeb184f0fd418583f1c1fa46"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a291416e9a8daa23be4958f548332b1f3"><td class="memItemLeft" align="right" valign="top"><a id="a291416e9a8daa23be4958f548332b1f3"></a>
unsigned int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#a291416e9a8daa23be4958f548332b1f3">columns</a></td></tr>
<tr class="memdesc:a291416e9a8daa23be4958f548332b1f3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Number of columns in a state. <br /></td></tr>
<tr class="separator:a291416e9a8daa23be4958f548332b1f3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8c9bad69661e000e1c233d0726d43772"><td class="memItemLeft" align="right" valign="top"><a id="a8c9bad69661e000e1c233d0726d43772"></a>
unsigned int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#a8c9bad69661e000e1c233d0726d43772">rounds</a></td></tr>
<tr class="memdesc:a8c9bad69661e000e1c233d0726d43772"><td class="mdescLeft">&#160;</td><td class="mdescRight">Number of rounds in P and Q. <br /></td></tr>
<tr class="separator:a8c9bad69661e000e1c233d0726d43772"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a36c9b5c4679013f1bbf4069335269be4"><td class="memItemLeft" align="right" valign="top"><a id="a36c9b5c4679013f1bbf4069335269be4"></a>
unsigned int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#a36c9b5c4679013f1bbf4069335269be4">statesize</a></td></tr>
<tr class="memdesc:a36c9b5c4679013f1bbf4069335269be4"><td class="mdescLeft">&#160;</td><td class="mdescRight">Size of the state. <br /></td></tr>
<tr class="separator:a36c9b5c4679013f1bbf4069335269be4"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Hash state. </p>
