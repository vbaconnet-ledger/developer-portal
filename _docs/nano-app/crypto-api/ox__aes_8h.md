---
title: ox_aes.h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Advanced Encryption Standard syscalls.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__aes__key__s">cx_aes_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">AES key container.  <a href="../cx__aes__key__s#details">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:a31bd65821d46970359e66a5221680262"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../ox__aes_8h#a31bd65821d46970359e66a5221680262">CX_AES_BLOCK_SIZE</a>&#160;&#160;&#160;16</td></tr>
<tr class="memdesc:a31bd65821d46970359e66a5221680262"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Block size of the AES in bytes.  <a href="#a31bd65821d46970359e66a5221680262">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:ab8b2f2ea9595e64bb23f47fa0785c22c"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__aes__key__s">cx_aes_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../ox__aes_8h#ab8b2f2ea9595e64bb23f47fa0785c22c">cx_aes_key_t</a></td></tr>
<tr class="memdesc:ab8b2f2ea9595e64bb23f47fa0785c22c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#ab8b2f2ea9595e64bb23f47fa0785c22c">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:ae30926453ed5a67d184593d275316051"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../ox__aes_8h#ae30926453ed5a67d184593d275316051">cx_aes_set_key_hw</a> (const <a class="el" href="../ox__aes_8h#ab8b2f2ea9595e64bb23f47fa0785c22c">cx_aes_key_t</a> *key, uint32_t mode)</td></tr>
<tr class="memdesc:ae30926453ed5a67d184593d275316051"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Set an AES key in hardware.  <a href="#ae30926453ed5a67d184593d275316051">More...</a><br /></td></tr>
<tr class="memitem:a05e7fd5b3e0878cd5d33cfd015cf1a27"><td class="memItemLeft" align="right" valign="top">SYSCALL void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../ox__aes_8h#a05e7fd5b3e0878cd5d33cfd015cf1a27">cx_aes_reset_hw</a> (void)</td></tr>
<tr class="memdesc:a05e7fd5b3e0878cd5d33cfd015cf1a27"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Reset AES context.  <a href="#a05e7fd5b3e0878cd5d33cfd015cf1a27">More...</a><br /></td></tr>
<tr class="memitem:aaef71539023f5ef39bd14bcca0aea6d4"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../ox__aes_8h#aaef71539023f5ef39bd14bcca0aea6d4">cx_aes_block_hw</a> (const unsigned char *inblock, unsigned char *outblock)</td></tr>
<tr class="memdesc:aaef71539023f5ef39bd14bcca0aea6d4"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Encrypt or decrypt a block with AES.  <a href="#aaef71539023f5ef39bd14bcca0aea6d4">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Advanced Encryption Standard syscalls. </p>
<p>This file contains AES definitions and functions:</p><ul>
<li>Set the AES key in memory</li>
<li>Encrypt a 128-bit block</li>
<li>Reset the AES context </li>
</ul>
</div><h2 class="groupheader">Macro Definition Documentation</h2>
<a id="a31bd65821d46970359e66a5221680262"></a>
<h2 class="memtitle">CX_AES_BLOCK_SIZE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_AES_BLOCK_SIZE&#160;&#160;&#160;16</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Block size of the AES in bytes. </p>

</div>
</div>
<h2 class="groupheader">Typedef Documentation</h2>
<a id="ab8b2f2ea9595e64bb23f47fa0785c22c"></a>
<h2 class="memtitle">cx_aes_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__aes__key__s">cx_aes_key_s</a> <a class="el" href="../ox__aes_8h#ab8b2f2ea9595e64bb23f47fa0785c22c">cx_aes_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__aes__key__s" title="AES key container. ">cx_aes_key_s</a>. </p>

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="aaef71539023f5ef39bd14bcca0aea6d4"></a>
<h2 class="memtitle">cx_aes_block_hw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_aes_block_hw </td>
          <td>(</td>
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>inblock</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>outblock</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Encrypt or decrypt a block with AES. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">inblock</td><td colspan="4">Pointer to the block.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">outblock</td><td colspan="4">Buffer for the output.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>INVALID_PARAMETER </li>
</ul>
</dd></dl>

</div>
</div>
<a id="a05e7fd5b3e0878cd5d33cfd015cf1a27"></a>
<h2 class="memtitle">cx_aes_reset_hw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL void cx_aes_reset_hw </td>
          <td>(</td>
          <td class="paramtype">void&#160;</td>
          <td class="paramname"></td><td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Reset AES context. </p>

</div>
</div>
<a id="ae30926453ed5a67d184593d275316051"></a>
<h2 class="memtitle">cx_aes_set_key_hw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_aes_set_key_hw </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../ox__aes_8h#ab8b2f2ea9595e64bb23f47fa0785c22c">cx_aes_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td colspan="2" class="paramkey"></td>
          
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>mode</b>&#160;</td>
        </tr>
        <tr>
          
          <td>)</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Set an AES key in hardware. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">AES key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Operation for which the key will be used.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
