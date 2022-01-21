---
title: lcx__ecdh_8h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---


<p>ECDH (Elliptic Curve Diffie Hellman) key exchange.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:aa36d38a37ced925043a8d17b750e3f6e"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecdh_8h#aa36d38a37ced925043a8d17b750e3f6e">cx_ecdh_no_throw</a> (const <a class="el" href="../cx__ecfp__256__private__key__s">cx_ecfp_private_key_t</a> *pvkey, uint32_t mode, const uint8_t *P, size_t P_len, uint8_t *secret, size_t secret_len)</td></tr>
<tr class="memdesc:aa36d38a37ced925043a8d17b750e3f6e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Compute an ECDH shared secret.  <a href="#aa36d38a37ced925043a8d17b750e3f6e">More...</a><br /></td></tr>
<tr class="separator:aa36d38a37ced925043a8d17b750e3f6e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9a4febd251d944d6c04b43c7330740ce"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecdh_8h#a9a4febd251d944d6c04b43c7330740ce">cx_ecdh</a> (const <a class="el" href="../cx__ecfp__256__private__key__s">cx_ecfp_private_key_t</a> *pvkey, int mode, const unsigned char *P, unsigned int P_len, unsigned char *secret, unsigned int secret_len)</td></tr>
<tr class="memdesc:a9a4febd251d944d6c04b43c7330740ce"><td class="mdescLeft">&#160;</td><td class="mdescRight">Compute an ECDH shared secret.  <a href="#a9a4febd251d944d6c04b43c7330740ce">More...</a><br /></td></tr>
<tr class="separator:a9a4febd251d944d6c04b43c7330740ce"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>ECDH (Elliptic Curve Diffie Hellman) key exchange. </p>
<p>ECDH is a key agreement protocol that allows two parties to calculate a shared secret over an insecure channel. The public and private keys are elements of a chosen elliptic curve. </p>
</div><h2 class="groupheader">Function Documentation</h2>
<a id="a9a4febd251d944d6c04b43c7330740ce"></a>
<h2 class="memtitle">cx_ecdh()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_ecdh </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../cx__ecfp__256__private__key__s">cx_ecfp_private_key_t</a> *&#160;</td>
          <td class="paramname"><em>pvkey</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>mode</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><em>P_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><em>secret</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><em>secret_len</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">inline</span><span class="mlabel">static</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Compute an ECDH shared secret. </p>
<p>Depending on the mode, the shared secret is either the full point or only the <em>x</em> coordinate. This function throws an exception if the computation doesn't succeed.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pvkey</td><td>Private key. Shall be initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initialize a private key. ">cx_ecfp_init_private_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td>Crypto mode flags. Supported flags:<ul>
<li>CX_ECDH_POINT</li>
<li>CX_ECDH_X</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td>Pointer to the public key encoded as <b>04 || x || y</b>: <em>x</em> and <em>y</em> are encoded as big endian raw values and have a binary length equal to curve domain size.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">P_len</td><td>Length of the public key in octets.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">secret</td><td>Buffer where to store the shared secret (full or compressed).</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">secret_len</td><td>Length of the buffer in octets.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the shared secret.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td><td></td></tr>
    <tr><td class="paramname">INVALID_PARAMETER</td><td></td></tr>
    <tr><td class="paramname">CX_EC_INVALID_CURVE</td><td></td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td><td></td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td><td></td></tr>
    <tr><td class="paramname">CX_EC_INVALID_POINT</td><td></td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td><td></td></tr>
    <tr><td class="paramname">CX_EC_INFINITE_POINT</td><td></td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../cx__ecfp__256__private__key__s#a474bc8df07e877791f9b39dac8f9a8df">cx_ecfp_256_private_key_s::curve</a>, <a class="el" href="../lcx__ecdh_8h#aa36d38a37ced925043a8d17b750e3f6e">cx_ecdh_no_throw()</a>, <a class="el" href="../ox__ec_8h#a1c0a18bd483a254e2c7783442d32b002">cx_ecdomain_parameters_length()</a>, and <a class="el" href="../lcx__common_8h#a4550b2e093cd42ccf24e6b62df3747b4">CX_MASK_EC</a>.</p>

</div>
</div>
<a id="aa36d38a37ced925043a8d17b750e3f6e"></a>
<h2 class="memtitle">cx_ecdh_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecdh_no_throw </td>
          <td>(</td>
          <td class="paramtype">const <a class="el" href="../cx__ecfp__256__private__key__s">cx_ecfp_private_key_t</a> *&#160;</td>
          <td class="paramname"><em>pvkey</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><em>mode</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>P</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>P_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><em>secret</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>secret_len</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Compute an ECDH shared secret. </p>
<p>Depending on the mode, the shared secret is either the full point or only the <em>x</em> coordinate.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pvkey</td><td>Private key. Shall be initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initialize a private key. ">cx_ecfp_init_private_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td>Crypto mode flags. Supported flags:<ul>
<li>CX_ECDH_POINT</li>
<li>CX_ECDH_X</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">P</td><td>Pointer to the public key encoded as <b>04 || x || y</b>: <em>x</em> and <em>y</em> are encoded as big endian raw values and have a binary length equal to curve domain size.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">P_len</td><td>Length of the public key in octets.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">secret</td><td>Buffer where to store the shared secret (full or compressed).</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">secret_len</td><td>Length of the buffer in octets.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER</li>
<li>INVALID_PARAMETER</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_EC_INFINITE_POINT </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__ecdh_8h#a9a4febd251d944d6c04b43c7330740ce">cx_ecdh()</a>.</p>

</div>
</div>
