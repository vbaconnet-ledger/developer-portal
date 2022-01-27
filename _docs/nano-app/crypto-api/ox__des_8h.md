---
title: ox__des_8h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Data Encryption Standard syscalls.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__des__key__s">cx_des_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">DES key container.  <a href="../cx__des__key__s#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:ada0cc538fe9f26456939251e871cf0bb"><td class="memItemLeft" align="right" valign="top"><a id="ada0cc538fe9f26456939251e871cf0bb"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__des_8h#ada0cc538fe9f26456939251e871cf0bb">CX_DES_BLOCK_SIZE</a>&#160;&#160;&#160;8</td></tr>
<tr class="memdesc:ada0cc538fe9f26456939251e871cf0bb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Block size of the DES in bytes. <br /></td></tr>
<tr class="separator:ada0cc538fe9f26456939251e871cf0bb"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:a42e0abbb819b1adef6ec3679e398461b"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__des__key__s">cx_des_key_s</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a></td></tr>
<tr class="memdesc:a42e0abbb819b1adef6ec3679e398461b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Convenience type.  <a href="#a42e0abbb819b1adef6ec3679e398461b">More...</a><br /></td></tr>
<tr class="separator:a42e0abbb819b1adef6ec3679e398461b"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:a6d808b3719784427743e746631106dd1"><td class="memItemLeft" align="right" valign="top">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__des_8h#a6d808b3719784427743e746631106dd1">cx_des_set_key_hw</a> (const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *keys, uint32_t mode)</td></tr>
<tr class="memdesc:a6d808b3719784427743e746631106dd1"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set a DES key in hardware.  <a href="#a6d808b3719784427743e746631106dd1">More...</a><br /></td></tr>
<tr class="separator:a6d808b3719784427743e746631106dd1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5ade6911fa86c36732840955622f0684"><td class="memItemLeft" align="right" valign="top"><a id="a5ade6911fa86c36732840955622f0684"></a>
SYSCALL void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__des_8h#a5ade6911fa86c36732840955622f0684">cx_des_reset_hw</a> (void)</td></tr>
<tr class="memdesc:a5ade6911fa86c36732840955622f0684"><td class="mdescLeft">&#160;</td><td class="mdescRight">Reset DES context. <br /></td></tr>
<tr class="separator:a5ade6911fa86c36732840955622f0684"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a979b77edef2ac2daa9b52b13b56ef248"><td class="memItemLeft" align="right" valign="top">SYSCALL void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__des_8h#a979b77edef2ac2daa9b52b13b56ef248">cx_des_block_hw</a> (const unsigned char *inblock, unsigned char *outblock)</td></tr>
<tr class="memdesc:a979b77edef2ac2daa9b52b13b56ef248"><td class="mdescLeft">&#160;</td><td class="mdescRight">Encrypt or decrypt a block with DES.  <a href="#a979b77edef2ac2daa9b52b13b56ef248">More...</a><br /></td></tr>
<tr class="separator:a979b77edef2ac2daa9b52b13b56ef248"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Data Encryption Standard syscalls. </p>
<p>This file contains DES definitions and functions:</p><ul>
<li>Set the DES key in memory</li>
<li>Encrypt a 64-bit block</li>
<li>Reset the DES context </li>
</ul>
</div><h2 class="groupheader">Typedef Documentation</h2>
<a id="a42e0abbb819b1adef6ec3679e398461b"></a>
<h2 class="memtitle">cx_des_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__des__key__s">cx_des_key_s</a> <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__des__key__s" title="DES key container. ">cx_des_key_s</a>. </p>

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="a979b77edef2ac2daa9b52b13b56ef248"></a>
<h2 class="memtitle">cx_des_block_hw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL void cx_des_block_hw </td>
          <td>(</td>
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><em>inblock</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><em>outblock</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Encrypt or decrypt a block with DES. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">inblock</td><td>Pointer to the block.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">outblock</td><td>Buffer for the output. </td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
<a id="a6d808b3719784427743e746631106dd1"></a>
<h2 class="memtitle">cx_des_set_key_hw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_des_set_key_hw </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *&#160;</td>
          <td class="paramname"><em>keys</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><em>mode</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Set a DES key in hardware. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">keys</td><td>DES key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td>Operation for which the key will be used.</td></tr>
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
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
