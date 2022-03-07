---
title: hash_state_s
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Hash state.  
 <a href="../hash_state__s#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:ae781356fb43376d0c0da5a21583d163c"><td class="memItemLeft" align="right" valign="top">uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#ae781356fb43376d0c0da5a21583d163c">chaining</a> [<a class="el" href="../lcx__groestl_8h#a3cfd3aa62338d12609f6d65bce97e9cd">ROWS</a>][<a class="el" href="../lcx__groestl_8h#a2be10bd05295c6c427493bed3781f006">COLS1024</a>]</td></tr>
<tr class="memdesc:ae781356fb43376d0c0da5a21583d163c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Actual state.  <a href="#ae781356fb43376d0c0da5a21583d163c">More...</a><br /></td></tr>
<tr class="memitem:a92b25837cf5dd7fb7e1113eb46c5252f"><td class="memItemLeft" align="right" valign="top">uint64_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#a92b25837cf5dd7fb7e1113eb46c5252f">block_counter</a></td></tr>
<tr class="memdesc:a92b25837cf5dd7fb7e1113eb46c5252f"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Block counter.  <a href="#a92b25837cf5dd7fb7e1113eb46c5252f">More...</a><br /></td></tr>
<tr class="memitem:ae892a3004fae62625c6b475f2b4addea"><td class="memItemLeft" align="right" valign="top">unsigned int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#ae892a3004fae62625c6b475f2b4addea">hashlen</a></td></tr>
<tr class="memdesc:ae892a3004fae62625c6b475f2b4addea"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Output length.  <a href="#ae892a3004fae62625c6b475f2b4addea">More...</a><br /></td></tr>
<tr class="memitem:a57f3a2ead170963cd925f867a2758851"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../lcx__groestl_8h#ac7449f64e35526a4e70f37cbc40ecc65">BitSequence</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#a57f3a2ead170963cd925f867a2758851">buffer</a> [<a class="el" href="../lcx__groestl_8h#afc256d6d9b1c3d78c147ab6ccacc7e8a">SIZE1024</a>]</td></tr>
<tr class="memdesc:a57f3a2ead170963cd925f867a2758851"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Block buffer.  <a href="#a57f3a2ead170963cd925f867a2758851">More...</a><br /></td></tr>
<tr class="memitem:a1f799e7efeb184f0fd418583f1c1fa46"><td class="memItemLeft" align="right" valign="top">unsigned int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#a1f799e7efeb184f0fd418583f1c1fa46">buf_ptr</a></td></tr>
<tr class="memdesc:a1f799e7efeb184f0fd418583f1c1fa46"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Buffer pointer.  <a href="#a1f799e7efeb184f0fd418583f1c1fa46">More...</a><br /></td></tr>
<tr class="memitem:a291416e9a8daa23be4958f548332b1f3"><td class="memItemLeft" align="right" valign="top">unsigned int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#a291416e9a8daa23be4958f548332b1f3">columns</a></td></tr>
<tr class="memdesc:a291416e9a8daa23be4958f548332b1f3"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Number of columns in a state.  <a href="#a291416e9a8daa23be4958f548332b1f3">More...</a><br /></td></tr>
<tr class="memitem:a8c9bad69661e000e1c233d0726d43772"><td class="memItemLeft" align="right" valign="top">unsigned int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#a8c9bad69661e000e1c233d0726d43772">rounds</a></td></tr>
<tr class="memdesc:a8c9bad69661e000e1c233d0726d43772"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Number of rounds in P and Q.  <a href="#a8c9bad69661e000e1c233d0726d43772">More...</a><br /></td></tr>
<tr class="memitem:a36c9b5c4679013f1bbf4069335269be4"><td class="memItemLeft" align="right" valign="top">unsigned int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../hash_state__s#a36c9b5c4679013f1bbf4069335269be4">statesize</a></td></tr>
<tr class="memdesc:a36c9b5c4679013f1bbf4069335269be4"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Size of the state.  <a href="#a36c9b5c4679013f1bbf4069335269be4">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Hash state. </p>
</div><h2 class="groupheader">Field Documentation</h2>
<a id="a92b25837cf5dd7fb7e1113eb46c5252f"></a>
<h2 class="memtitle">block_counter</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint64_t block_counter</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Block counter. </p>

</div>
</div>
<a id="a1f799e7efeb184f0fd418583f1c1fa46"></a>
<h2 class="memtitle">buf_ptr</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">unsigned int buf_ptr</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Buffer pointer. </p>

</div>
</div>
<a id="a57f3a2ead170963cd925f867a2758851"></a>
<h2 class="memtitle">buffer</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../lcx__groestl_8h#ac7449f64e35526a4e70f37cbc40ecc65">BitSequence</a> buffer[<a class="el" href="../lcx__groestl_8h#afc256d6d9b1c3d78c147ab6ccacc7e8a">SIZE1024</a>]</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Block buffer. </p>

</div>
</div>
<a id="ae781356fb43376d0c0da5a21583d163c"></a>
<h2 class="memtitle">chaining</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint8_t chaining[<a class="el" href="../lcx__groestl_8h#a3cfd3aa62338d12609f6d65bce97e9cd">ROWS</a>][<a class="el" href="../lcx__groestl_8h#a2be10bd05295c6c427493bed3781f006">COLS1024</a>]</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Actual state. </p>

</div>
</div>
<a id="a291416e9a8daa23be4958f548332b1f3"></a>
<h2 class="memtitle">columns</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">unsigned int columns</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Number of columns in a state. </p>

</div>
</div>
<a id="ae892a3004fae62625c6b475f2b4addea"></a>
<h2 class="memtitle">hashlen</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">unsigned int hashlen</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Output length. </p>

</div>
</div>
<a id="a8c9bad69661e000e1c233d0726d43772"></a>
<h2 class="memtitle">rounds</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">unsigned int rounds</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Number of rounds in P and Q. </p>

</div>
</div>
<a id="a36c9b5c4679013f1bbf4069335269be4"></a>
<h2 class="memtitle">statesize</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">unsigned int statesize</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Size of the state. </p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
