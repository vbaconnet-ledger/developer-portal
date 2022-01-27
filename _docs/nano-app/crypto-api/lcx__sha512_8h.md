---
title: lcx__sha512_8h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>SHA-2 (Secure Hash Algorithm 2)  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../cx__sha512__s">cx_sha512_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">SHA-384 and SHA-512 context.  <a href="../cx__sha512__s#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:a31fde7c6974a7fe5cda7bde88d881d9a"><td class="memItemLeft" align="right" valign="top"><a id="a31fde7c6974a7fe5cda7bde88d881d9a"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#a31fde7c6974a7fe5cda7bde88d881d9a">CX_SHA384_SIZE</a>&#160;&#160;&#160;48</td></tr>
<tr class="memdesc:a31fde7c6974a7fe5cda7bde88d881d9a"><td class="mdescLeft">&#160;</td><td class="mdescRight">SHA-384 message digest size. <br /></td></tr>
<tr class="separator:a31fde7c6974a7fe5cda7bde88d881d9a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8c92da6dbfa2fa62932f43353cd70c8e"><td class="memItemLeft" align="right" valign="top"><a id="a8c92da6dbfa2fa62932f43353cd70c8e"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#a8c92da6dbfa2fa62932f43353cd70c8e">CX_SHA512_SIZE</a>&#160;&#160;&#160;64</td></tr>
<tr class="memdesc:a8c92da6dbfa2fa62932f43353cd70c8e"><td class="mdescLeft">&#160;</td><td class="mdescRight">SHA-512 message digest size. <br /></td></tr>
<tr class="separator:a8c92da6dbfa2fa62932f43353cd70c8e"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:a53d64cea729324cd5b0b260e3657e04e"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__sha512__s">cx_sha512_s</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a></td></tr>
<tr class="memdesc:a53d64cea729324cd5b0b260e3657e04e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Convenience type.  <a href="#a53d64cea729324cd5b0b260e3657e04e">More...</a><br /></td></tr>
<tr class="separator:a53d64cea729324cd5b0b260e3657e04e"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:aeae1fdcd8850affddff9947c1ac16b28"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#aeae1fdcd8850affddff9947c1ac16b28">cx_sha384_init_no_throw</a> (<a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *hash)</td></tr>
<tr class="memdesc:aeae1fdcd8850affddff9947c1ac16b28"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initialize a SHA-384 context.  <a href="#aeae1fdcd8850affddff9947c1ac16b28">More...</a><br /></td></tr>
<tr class="separator:aeae1fdcd8850affddff9947c1ac16b28"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8ede0c1a3e360f7f9a6aaeef9a08a376"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#a8ede0c1a3e360f7f9a6aaeef9a08a376">cx_sha384_init</a> (<a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *hash)</td></tr>
<tr class="memdesc:a8ede0c1a3e360f7f9a6aaeef9a08a376"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initialize a SHA-384 context.  <a href="#a8ede0c1a3e360f7f9a6aaeef9a08a376">More...</a><br /></td></tr>
<tr class="separator:a8ede0c1a3e360f7f9a6aaeef9a08a376"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad562a0b932d7e72687f5c8cb0ca43c56"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#ad562a0b932d7e72687f5c8cb0ca43c56">cx_sha512_init_no_throw</a> (<a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *hash)</td></tr>
<tr class="memdesc:ad562a0b932d7e72687f5c8cb0ca43c56"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initialize a SHA-512 context.  <a href="#ad562a0b932d7e72687f5c8cb0ca43c56">More...</a><br /></td></tr>
<tr class="separator:ad562a0b932d7e72687f5c8cb0ca43c56"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aeedda5d7c717075e96109f45311a8085"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#aeedda5d7c717075e96109f45311a8085">cx_sha512_init</a> (<a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *hash)</td></tr>
<tr class="memdesc:aeedda5d7c717075e96109f45311a8085"><td class="mdescLeft">&#160;</td><td class="mdescRight">Initialize a SHA-512 context.  <a href="#aeedda5d7c717075e96109f45311a8085">More...</a><br /></td></tr>
<tr class="separator:aeedda5d7c717075e96109f45311a8085"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae27883b7bef166ac7bfbf0ab7b284649"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__sha512_8h#ae27883b7bef166ac7bfbf0ab7b284649">cx_hash_sha512</a> (const uint8_t *in, size_t in_len, uint8_t *out, size_t out_len)</td></tr>
<tr class="memdesc:ae27883b7bef166ac7bfbf0ab7b284649"><td class="mdescLeft">&#160;</td><td class="mdescRight">Compute a one shot SHA-512 digest.  <a href="#ae27883b7bef166ac7bfbf0ab7b284649">More...</a><br /></td></tr>
<tr class="separator:ae27883b7bef166ac7bfbf0ab7b284649"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>SHA-2 (Secure Hash Algorithm 2) </p>
<p>SHA-384 and SHA-512 are secure hash functions belonging to the SHA-2 family with a digest length of 384 and 512 bits, respectively. The message length should be less than 2<sup align="right">128</sup> bits. Refer to <a href="../https://csrc.nist.gov/publications/detail/fips/180/4/final">FIPS 180-4 </a> for more details. </p>
</div><h2 class="groupheader">Typedef Documentation</h2>
<a id="a53d64cea729324cd5b0b260e3657e04e"></a>
<h2 class="memtitle">cx_sha512_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__sha512__s">cx_sha512_s</a> <a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__sha512__s" title="SHA-384 and SHA-512 context. ">cx_sha512_s</a>. </p>

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="ae27883b7bef166ac7bfbf0ab7b284649"></a>
<h2 class="memtitle">cx_hash_sha512()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t cx_hash_sha512 </td>
          <td>(</td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>in</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>in_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><em>out</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>out_len</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Compute a one shot SHA-512 digest. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">in</td><td>Input data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in_len</td><td>Length of the input data.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out</td><td>Buffer where to store the output.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out_len</td><td>Length of the output. This is actually 512 bits. </td></tr>
  </table>
  </dd>
</dl>

<p class="reference">Referenced by <a class="el" href="../lcx__sha512_8h#aeedda5d7c717075e96109f45311a8085">cx_sha512_init()</a>.</p>

</div>
</div>
<a id="a8ede0c1a3e360f7f9a6aaeef9a08a376"></a>
<h2 class="memtitle">cx_sha384_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_sha384_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *&#160;</td>
          <td class="paramname"><em>hash</em></td><td>)</td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">inline</span><span class="mlabel">static</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initialize a SHA-384 context. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td>Pointer to the context. The context shall be in RAM.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>SHA384 identifier. </dd></dl>

<p class="reference">References <a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117a74d048ad79463a9c73b7226785da3aea">CX_SHA384</a>, <a class="el" href="../lcx__sha512_8h#aeae1fdcd8850affddff9947c1ac16b28">cx_sha384_init_no_throw()</a>, and <a class="el" href="../lcx__sha512_8h#ad562a0b932d7e72687f5c8cb0ca43c56">cx_sha512_init_no_throw()</a>.</p>

</div>
</div>
<a id="aeae1fdcd8850affddff9947c1ac16b28"></a>
<h2 class="memtitle">cx_sha384_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_sha384_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *&#160;</td>
          <td class="paramname"><em>hash</em></td><td>)</td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Initialize a SHA-384 context. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td>Pointer to the context. The context shall be in RAM.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__sha512_8h#a8ede0c1a3e360f7f9a6aaeef9a08a376">cx_sha384_init()</a>.</p>

</div>
</div>
<a id="aeedda5d7c717075e96109f45311a8085"></a>
<h2 class="memtitle">cx_sha512_init()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_sha512_init </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *&#160;</td>
          <td class="paramname"><em>hash</em></td><td>)</td>
          <td></td>
        </tr>
      </table>
  </td>
  <td class="mlabels-right">
<span class="mlabels"><span class="mlabel">inline</span><span class="mlabel">static</span></span>  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initialize a SHA-512 context. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td>Pointer to the context. The context shall be in RAM.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>SHA512 identifier. </dd></dl>

<p class="reference">References <a class="el" href="../lcx__sha512_8h#ae27883b7bef166ac7bfbf0ab7b284649">cx_hash_sha512()</a>, <a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117af1c7c38d54f080781c6026cb6fed85f6">CX_SHA512</a>, and <a class="el" href="../lcx__sha512_8h#ad562a0b932d7e72687f5c8cb0ca43c56">cx_sha512_init_no_throw()</a>.</p>

</div>
</div>
<a id="ad562a0b932d7e72687f5c8cb0ca43c56"></a>
<h2 class="memtitle">cx_sha512_init_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_sha512_init_no_throw </td>
          <td>(</td>
          <td class="paramtype"><a class="el" href="../lcx__sha512_8h#a53d64cea729324cd5b0b260e3657e04e">cx_sha512_t</a> *&#160;</td>
          <td class="paramname"><em>hash</em></td><td>)</td>
          <td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Initialize a SHA-512 context. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td>Pointer to the context. The context shall be in RAM.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__sha512_8h#a8ede0c1a3e360f7f9a6aaeef9a08a376">cx_sha384_init()</a>, and <a class="el" href="../lcx__sha512_8h#aeedda5d7c717075e96109f45311a8085">cx_sha512_init()</a>.</p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
