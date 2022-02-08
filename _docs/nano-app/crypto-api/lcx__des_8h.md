---
title: lcx__des_8h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>DES (Data Encryption Standard).  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:adf5d469235b023c13c1305805a06af9f"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__des_8h#adf5d469235b023c13c1305805a06af9f">cx_des_init_key_no_throw</a> (const uint8_t *rawkey, size_t key_len, <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *key)</td></tr>
<tr class="memdesc:adf5d469235b023c13c1305805a06af9f"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initialize a DES key.  <a href="#adf5d469235b023c13c1305805a06af9f">More...</a><br /></td></tr>
<tr class="memitem:a485feb6f69c40671fa427ebe296c2726"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__des_8h#a485feb6f69c40671fa427ebe296c2726">cx_des_init_key</a> (const unsigned char *rawkey, unsigned int key_len, <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *key)</td></tr>
<tr class="memdesc:a485feb6f69c40671fa427ebe296c2726"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initialize a DES key.  <a href="#a485feb6f69c40671fa427ebe296c2726">More...</a><br /></td></tr>
<tr class="memitem:a6209356068a60ac03d81fbe99020aceb"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__des_8h#a6209356068a60ac03d81fbe99020aceb">cx_des_iv_no_throw</a> (const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *key, uint32_t mode, const uint8_t *iv, size_t iv_len, const uint8_t *in, size_t in_len, uint8_t *out, size_t *out_len)</td></tr>
<tr class="memdesc:a6209356068a60ac03d81fbe99020aceb"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Encrypt, Decrypt, Sign or Verify data with DES algorithm.  <a href="#a6209356068a60ac03d81fbe99020aceb">More...</a><br /></td></tr>
<tr class="memitem:ac986933e0330f9f35f607c87ba40e8d9"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__des_8h#ac986933e0330f9f35f607c87ba40e8d9">cx_des_iv</a> (const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *key, int mode, unsigned char *iv, unsigned int iv_len, const unsigned char *in, unsigned int in_len, unsigned char *out, unsigned int out_len)</td></tr>
<tr class="memdesc:ac986933e0330f9f35f607c87ba40e8d9"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Encrypt, Decrypt, Sign or Verify data with DES algorithm.  <a href="#ac986933e0330f9f35f607c87ba40e8d9">More...</a><br /></td></tr>
<tr class="memitem:a3eac76e0f727fee1368e233b4cb8344c"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__des_8h#a3eac76e0f727fee1368e233b4cb8344c">cx_des_no_throw</a> (const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *key, uint32_t mode, const uint8_t *in, size_t in_len, uint8_t *out, size_t *out_len)</td></tr>
<tr class="memdesc:a3eac76e0f727fee1368e233b4cb8344c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Encrypt, Decrypt, Sign or Verify data with DES algorithm.  <a href="#a3eac76e0f727fee1368e233b4cb8344c">More...</a><br /></td></tr>
<tr class="memitem:a3ab6f0cc3742398404ceae86dfe07a66"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__des_8h#a3ab6f0cc3742398404ceae86dfe07a66">cx_des</a> (const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *key, int mode, const unsigned char *in, unsigned int in_len, unsigned char *out, unsigned int out_len)</td></tr>
<tr class="memdesc:a3ab6f0cc3742398404ceae86dfe07a66"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Encrypt, Decrypt, Sign or Verify data with DES algorithm.  <a href="#a3ab6f0cc3742398404ceae86dfe07a66">More...</a><br /></td></tr>
<tr class="memitem:a84135d691b9b6baa1239e8213dd41c2a"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__des_8h#a84135d691b9b6baa1239e8213dd41c2a">cx_des_enc_block</a> (const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *key, const uint8_t *inblock, uint8_t *outblock)</td></tr>
<tr class="memdesc:a84135d691b9b6baa1239e8213dd41c2a"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Encrypt a 8-byte block using DES/3-DES algorithm.  <a href="#a84135d691b9b6baa1239e8213dd41c2a">More...</a><br /></td></tr>
<tr class="memitem:ae1ab4ded40c9650f4e356f06370c71a1"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__des_8h#ae1ab4ded40c9650f4e356f06370c71a1">cx_des_dec_block</a> (const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *key, const uint8_t *inblock, uint8_t *outblock)</td></tr>
<tr class="memdesc:ae1ab4ded40c9650f4e356f06370c71a1"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Decrypt a 8-byte block using DES/3-DES algorithm.  <a href="#ae1ab4ded40c9650f4e356f06370c71a1">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>DES (Data Encryption Standard). </p>
<p>DES is an encryption algorithm designed to encipher and decipher blocks of 64 bits under control of a 56-bit key. However, the key is represented with 64 bits.</p>
<p>Triple DES variant supports either a 128-bit (two 64-bit keys) or 192-bit key (three 64-bit keys). </p>
</div><h2 class="groupheader">Function Documentation</h2>
<a id="a3ab6f0cc3742398404ceae86dfe07a66"></a>
<h2 class="memtitle">cx_des()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_des </td>
          <td class="paramtype">const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>in</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>in_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>out</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>out_len</b>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Encrypt, Decrypt, Sign or Verify data with DES algorithm. </p>
<p>This function throws an exception if the computation fails.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__des_8h#a3eac76e0f727fee1368e233b4cb8344c" title="Encrypt, Decrypt, Sign or Verify data with DES algorithm. ">cx_des_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">Pointer to the key initialized with <a class="el" href="../lcx__des_8h#adf5d469235b023c13c1305805a06af9f" title="Initialize a DES key. ">cx_des_init_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_LAST</li>
<li>CX_ENCRYPT</li>
<li>CX_DECRYPT</li>
<li>CX_SIGN</li>
<li>CX_VERIFY</li>
<li>CX_PAD_NONE</li>
<li>CX_PAD_ISO9797M1</li>
<li>CX_PAD_ISO9797M2</li>
<li>CX_CHAIN_ECB</li>
<li>CX_CHAIN_CBC</li>
<li>CX_CHAIN_CTR</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in</td><td colspan="4">Input data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in_len</td><td colspan="4">Length of the input data. If CX_LAST is set, padding is automatically done according to the <b>mode</b>. Otherwise, <b>in_len</b> shall be a multiple of DES_BLOCK_SIZE.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out</td><td colspan="4">Output data according to the mode:<ul>
<li>encrypted/decrypted output data</li>
<li>generated signature</li>
<li>signature to be verified</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_len</td><td colspan="4">Length of the output data.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the output.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__des_8h#ae1ab4ded40c9650f4e356f06370c71a1">cx_des_dec_block()</a>, <a class="el" href="../lcx__des_8h#a84135d691b9b6baa1239e8213dd41c2a">cx_des_enc_block()</a>, and <a class="el" href="../lcx__des_8h#a3eac76e0f727fee1368e233b4cb8344c">cx_des_no_throw()</a>.</p>

</div>
</div>
<a id="ae1ab4ded40c9650f4e356f06370c71a1"></a>
<h2 class="memtitle">cx_des_dec_block()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">void cx_des_dec_block </td>
          <td class="paramtype">const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>inblock</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>outblock</b>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
</div><div class="memdoc">

<p>Decrypt a 8-byte block using DES/3-DES algorithm. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">Pointer to the DES key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">inblock</td><td colspan="4">Ciphertext block to decrypt.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">outblock</td><td colspan="4">Plaintext block.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK</li>
<li>CX_INVALID_PARAMETER</li>
<li>INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__des_8h#a3ab6f0cc3742398404ceae86dfe07a66">cx_des()</a>.</p>

</div>
</div>
<a id="a84135d691b9b6baa1239e8213dd41c2a"></a>
<h2 class="memtitle">cx_des_enc_block()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">void cx_des_enc_block </td>
          <td class="paramtype">const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>inblock</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>outblock</b>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
</div><div class="memdoc">

<p>Encrypt a 8-byte block using DES/3-DES algorithm. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">Pointer to the DES key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">inblock</td><td colspan="4">Plaintext block to encrypt.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">outblock</td><td colspan="4">Ciphertext block.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK</li>
<li>CX_INVALID_PARAMETER</li>
<li>INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__des_8h#a3ab6f0cc3742398404ceae86dfe07a66">cx_des()</a>.</p>

</div>
</div>
<a id="a485feb6f69c40671fa427ebe296c2726"></a>
<h2 class="memtitle">cx_des_init_key()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_des_init_key </td>
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>rawkey</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>key_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype"><a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initialize a DES key. </p>
<p>Once initialized, the key can be stored in non-volatile memory and directly used for any DES processing. This function throws an exception if the initialization fails.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__des_8h#adf5d469235b023c13c1305805a06af9f" title="Initialize a DES key. ">cx_des_init_key_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">rawkey</td><td colspan="4">Pointer to the supplied key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">key_len</td><td colspan="4">Length of the key: 8, 16 or 24 octets.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">key</td><td colspan="4">Pointer to the key structure. This must not be NULL.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the key.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__des_8h#adf5d469235b023c13c1305805a06af9f">cx_des_init_key_no_throw()</a>, and <a class="el" href="../lcx__des_8h#a6209356068a60ac03d81fbe99020aceb">cx_des_iv_no_throw()</a>.</p>

</div>
</div>
<a id="adf5d469235b023c13c1305805a06af9f"></a>
<h2 class="memtitle">cx_des_init_key_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_des_init_key_no_throw </td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>rawkey</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>key_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype"><a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
</div><div class="memdoc">

<p>Initialize a DES key. </p>
<p>Once initialized, the key can be stored in non-volatile memory and directly used for any DES processing.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">rawkey</td><td colspan="4">Pointer to the supplied key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">key_len</td><td colspan="4">Length of the key: 8, 16 or 24 octets.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">key</td><td colspan="4">Pointer to the key structure. This must not be NULL.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__des_8h#a485feb6f69c40671fa427ebe296c2726">cx_des_init_key()</a>.</p>

</div>
</div>
<a id="ac986933e0330f9f35f607c87ba40e8d9"></a>
<h2 class="memtitle">cx_des_iv()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_des_iv </td>
          <td class="paramtype">const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>iv</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>iv_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>in</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>in_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>out</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>out_len</b>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Encrypt, Decrypt, Sign or Verify data with DES algorithm. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__des_8h#a6209356068a60ac03d81fbe99020aceb" title="Encrypt, Decrypt, Sign or Verify data with DES algorithm. ">cx_des_iv_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">Pointer to the key initialized with <a class="el" href="../lcx__des_8h#adf5d469235b023c13c1305805a06af9f" title="Initialize a DES key. ">cx_des_init_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">iv</td><td colspan="4">Initialization vector.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">iv_len</td><td colspan="4">Length of the initialization vector.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_LAST</li>
<li>CX_ENCRYPT</li>
<li>CX_DECRYPT</li>
<li>CX_SIGN</li>
<li>CX_VERIFY</li>
<li>CX_PAD_NONE</li>
<li>CX_PAD_ISO9797M1</li>
<li>CX_PAD_ISO9797M2</li>
<li>CX_CHAIN_ECB</li>
<li>CX_CHAIN_CBC</li>
<li>CX_CHAIN_CTR</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in</td><td colspan="4">Input data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in_len</td><td colspan="4">Length of the input data. If CX_LAST is set, padding is automatically done according to the <b>mode</b>. Otherwise, <b>in_len</b> shall be a multiple of DES_BLOCK_SIZE.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out</td><td colspan="4">Output data according to the mode:<ul>
<li>encrypted/decrypted output data</li>
<li>generated signature</li>
<li>signature to be verified</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_len</td><td colspan="4">Length of the output data.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Lenght of the output.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__des_8h#a6209356068a60ac03d81fbe99020aceb">cx_des_iv_no_throw()</a>, and <a class="el" href="../lcx__des_8h#a3eac76e0f727fee1368e233b4cb8344c">cx_des_no_throw()</a>.</p>

</div>
</div>
<a id="a6209356068a60ac03d81fbe99020aceb"></a>
<h2 class="memtitle">cx_des_iv_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_des_iv_no_throw </td>
          <td class="paramtype">const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>iv</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>iv_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>in</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>in_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>out</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t *&#160;</td>
          <td class="paramname"><b>out_len</b>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
</div><div class="memdoc">

<p>Encrypt, Decrypt, Sign or Verify data with DES algorithm. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">Pointer to the key initialized with <a class="el" href="../lcx__des_8h#adf5d469235b023c13c1305805a06af9f" title="Initialize a DES key. ">cx_des_init_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">iv</td><td colspan="4">Initialization vector.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">iv_len</td><td colspan="4">Length of the initialization vector.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_LAST</li>
<li>CX_ENCRYPT</li>
<li>CX_DECRYPT</li>
<li>CX_SIGN</li>
<li>CX_VERIFY</li>
<li>CX_PAD_NONE</li>
<li>CX_PAD_ISO9797M1</li>
<li>CX_PAD_ISO9797M2</li>
<li>CX_CHAIN_ECB</li>
<li>CX_CHAIN_CBC</li>
<li>CX_CHAIN_CTR</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in</td><td colspan="4">Input data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in_len</td><td colspan="4">Length of the input data. If CX_LAST is set, padding is automatically done according to the <b>mode</b>. Otherwise, <b>in_len</b> shall be a multiple of DES_BLOCK_SIZE.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out</td><td colspan="4">Output data according to the mode:<ul>
<li>encrypted/decrypted output data</li>
<li>generated signature</li>
<li>signature to be verified</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_len</td><td colspan="4">Length of the output data.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER</li>
<li>INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__des_8h#a485feb6f69c40671fa427ebe296c2726">cx_des_init_key()</a>, and <a class="el" href="../lcx__des_8h#ac986933e0330f9f35f607c87ba40e8d9">cx_des_iv()</a>.</p>

</div>
</div>
<a id="a3eac76e0f727fee1368e233b4cb8344c"></a>
<h2 class="memtitle">cx_des_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_des_no_throw </td>
          <td class="paramtype">const <a class="el" href="../ox__des_8h#a42e0abbb819b1adef6ec3679e398461b">cx_des_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>in</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>in_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>out</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t *&#160;</td>
          <td class="paramname"><b>out_len</b>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
</div><div class="memdoc">

<p>Encrypt, Decrypt, Sign or Verify data with DES algorithm. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">Pointer to the key initialized with <a class="el" href="../lcx__des_8h#adf5d469235b023c13c1305805a06af9f" title="Initialize a DES key. ">cx_des_init_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_LAST</li>
<li>CX_ENCRYPT</li>
<li>CX_DECRYPT</li>
<li>CX_SIGN</li>
<li>CX_VERIFY</li>
<li>CX_PAD_NONE</li>
<li>CX_PAD_ISO9797M1</li>
<li>CX_PAD_ISO9797M2</li>
<li>CX_CHAIN_ECB</li>
<li>CX_CHAIN_CBC</li>
<li>CX_CHAIN_CTR</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in</td><td colspan="4">Input data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in_len</td><td colspan="4">Length of the input data. If CX_LAST is set, padding is automatically done according to the <b>mode</b>. Otherwise, <b>in_len</b> shall be a multiple of DES_BLOCK_SIZE.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out</td><td colspan="4">Output data according to the mode:<ul>
<li>encrypted/decrypted output data</li>
<li>generated signature</li>
<li>signature to be verified</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_len</td><td colspan="4">Length of the output data.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER</li>
<li>INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__des_8h#a3ab6f0cc3742398404ceae86dfe07a66">cx_des()</a>, and <a class="el" href="../lcx__des_8h#ac986933e0330f9f35f607c87ba40e8d9">cx_des_iv()</a>.</p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
