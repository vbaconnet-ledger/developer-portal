---
title: lcx__ecschnorr_8h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>ECSDSA (Elliptic Curve-based Schnorr Digital Signature Algorithm).  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:aadea597501ff5cd87c0c3de42f870993"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecschnorr_8h#aadea597501ff5cd87c0c3de42f870993">cx_ecschnorr_sign_no_throw</a> (const <a class="el" href="../cx__ecfp__256__private__key__s">cx_ecfp_private_key_t</a> *pvkey, uint32_t mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const uint8_t *msg, size_t msg_len, uint8_t *sig, size_t *sig_len)</td></tr>
<tr class="memdesc:aadea597501ff5cd87c0c3de42f870993"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Sign a digest message according to the given mode.  <a href="#aadea597501ff5cd87c0c3de42f870993">More...</a><br /></td></tr>
<tr class="memitem:a2aa2454ece11c17373539d7178d26a98"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecschnorr_8h#a2aa2454ece11c17373539d7178d26a98">cx_ecschnorr_sign</a> (const <a class="el" href="../cx__ecfp__256__private__key__s">cx_ecfp_private_key_t</a> *pvkey, int mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const unsigned char *msg, unsigned int msg_len, unsigned char *sig, size_t sig_len, unsigned int *info)</td></tr>
<tr class="memdesc:a2aa2454ece11c17373539d7178d26a98"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Sign a digest message according to the given mode.  <a href="#a2aa2454ece11c17373539d7178d26a98">More...</a><br /></td></tr>
<tr class="memitem:a8347fc4272f9305aec6e75e53e2985b9"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__ecschnorr_8h#a8347fc4272f9305aec6e75e53e2985b9">cx_ecschnorr_verify</a> (const <a class="el" href="../cx__ecfp__256__public__key__s">cx_ecfp_public_key_t</a> *pukey, uint32_t mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const uint8_t *msg, size_t msg_len, const uint8_t *sig, size_t sig_len)</td></tr>
<tr class="memdesc:a8347fc4272f9305aec6e75e53e2985b9"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Verify a hash message signature according to the given mode.  <a href="#a8347fc4272f9305aec6e75e53e2985b9">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>ECSDSA (Elliptic Curve-based Schnorr Digital Signature Algorithm). </p>
<p>Schnorr signature algorithm is a non-standard alternative to ECDSA. Several implementations of Schnorr signature algorithm are supported here. </p>
</div><h2 class="groupheader">Function Documentation</h2>
<a id="a2aa2454ece11c17373539d7178d26a98"></a>
<h2 class="memtitle">cx_ecschnorr_sign()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_ecschnorr_sign </td>
          <td class="paramtype">const <a class="el" href="../cx__ecfp__256__private__key__s">cx_ecfp_private_key_t</a> *&#160;</td>
          <td class="paramname"><em>pvkey</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><em>mode</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><em>hashID</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><em>msg</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><em>msg_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><em>sig</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>sig_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">unsigned int *&#160;</td>
          <td class="paramname"><em>info</em>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Sign a digest message according to the given mode. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pvkey</td><td colspan="4">Pointer to the private key initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initialize a private key. ">cx_ecfp_init_private_key_no_throw</a> beforehand.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Mode. Supported flag:<ul>
<li>CX_ECSCHNORR_XY</li>
<li>CX_ECSCHNORR_ISO14888_X</li>
<li>CX_ECSCHNORR_BSI03111</li>
<li>CX_ECSCHNORR_LIBSECP</li>
<li>CX_ECSCHNORR_Z</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier. This parameter is mandatory when using the CX_RND_RFC6979 pseudorandom number generator.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">msg</td><td colspan="4">Input data to sign.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">msg_len</td><td colspan="4">Length of input data.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">sig</td><td colspan="4">ECSchnorr signature encoded in TLV: <b>30 || L || 02 || Lr || r || 02 || Ls || s</b>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the signature.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">info</td><td colspan="4">Additional information. This parameter is not used.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the signature.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__ecschnorr_8h#aadea597501ff5cd87c0c3de42f870993">cx_ecschnorr_sign_no_throw()</a>, and <a class="el" href="../lcx__ecschnorr_8h#a8347fc4272f9305aec6e75e53e2985b9">cx_ecschnorr_verify()</a>.</p>

</div>
</div>
<a id="aadea597501ff5cd87c0c3de42f870993"></a>
<h2 class="memtitle">cx_ecschnorr_sign_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_ecschnorr_sign_no_throw </td>
          <td class="paramtype">const <a class="el" href="../cx__ecfp__256__private__key__s">cx_ecfp_private_key_t</a> *&#160;</td>
          <td class="paramname"><em>pvkey</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><em>mode</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><em>hashID</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>msg</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>msg_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><em>sig</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t *&#160;</td>
          <td class="paramname"><em>sig_len</em>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
</div><div class="memdoc">

<p>Sign a digest message according to the given mode. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pvkey</td><td colspan="4">Pointer to the private key initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initialize a private key. ">cx_ecfp_init_private_key_no_throw</a> beforehand.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Mode. Supported flag:<ul>
<li>CX_ECSCHNORR_XY</li>
<li>CX_ECSCHNORR_ISO14888_X</li>
<li>CX_ECSCHNORR_BSI03111</li>
<li>CX_ECSCHNORR_LIBSECP</li>
<li>CX_ECSCHNORR_Z</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier. This parameter is mandatory when using the CX_RND_RFC6979 pseudorandom number generator.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">msg</td><td colspan="4">Input data to sign.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">msg_len</td><td colspan="4">Length of input data.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">sig</td><td colspan="4">ECSchnorr signature encoded in TLV: <b>30 || L || 02 || Lr || r || 02 || Ls || s</b>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the signature.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_EC_INVALID_CURVE</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_NOT_LOCKED</li>
<li>CX_MEMORY_FULL</li>
<li>CX_EC_INVALID_POINT</li>
<li>CX_EC_INFINITE_POINT</li>
<li>CX_INVALID_PARAMETER_VALUE </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__ecschnorr_8h#a2aa2454ece11c17373539d7178d26a98">cx_ecschnorr_sign()</a>.</p>

</div>
</div>
<a id="a8347fc4272f9305aec6e75e53e2985b9"></a>
<h2 class="memtitle">cx_ecschnorr_verify()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">bool cx_ecschnorr_verify </td>
          <td class="paramtype">const <a class="el" href="../cx__ecfp__256__public__key__s">cx_ecfp_public_key_t</a> *&#160;</td>
          <td class="paramname"><em>pukey</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><em>mode</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><em>hashID</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>msg</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>msg_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>sig</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>sig_len</em>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
</div><div class="memdoc">

<p>Verify a hash message signature according to the given mode. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">pukey</td><td colspan="4">Pointer to the public key initialized with <a class="el" href="../lcx__ecfp_8h#aa60ed5c59930e787f187df1802b84ab5" title="Initialize a private key. ">cx_ecfp_init_private_key_no_throw</a> beforehand.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Mode. Supported flag:<ul>
<li>CX_ECSCHNORR_XY</li>
<li>CX_ECSCHNORR_ISO14888_X</li>
<li>CX_ECSCHNORR_BSI03111</li>
<li>CX_ECSCHNORR_LIBSECP</li>
<li>CX_ECSCHNORR_Z</li>
<li>CX_ECSCHNORR_BIP0340</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier used to compute the input data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">msg</td><td colspan="4">Signed input data to verify the signature.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">msg_len</td><td colspan="4">Length of the input data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig</td><td colspan="4">ECSchnorr signature to verify encoded in TLV: <b>30 || L || 02 || Lr || r || 02 || Ls || s</b></td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the signature.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>1 if signature is verified, 0 otherwise. </dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__ecschnorr_8h#a2aa2454ece11c17373539d7178d26a98">cx_ecschnorr_sign()</a>.</p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
