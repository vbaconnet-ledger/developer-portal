---
title: lcx__rng_8h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Random Number Generation.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:a93f059f030344ed32c0107bfad323d72"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rng_8h#a93f059f030344ed32c0107bfad323d72">cx_rng_no_throw</a> (uint8_t *buffer, size_t len)</td></tr>
<tr class="memdesc:a93f059f030344ed32c0107bfad323d72"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Generate a random buffer such that each byte is between 0 and 255.  <a href="#a93f059f030344ed32c0107bfad323d72">More...</a><br /></td></tr>
<tr class="memitem:a49554446c2a54b0756095dbd3cd14a50"><td class="memItemLeft" align="right" valign="top">static unsigned char *&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rng_8h#a49554446c2a54b0756095dbd3cd14a50">cx_rng</a> (uint8_t *buffer, size_t len)</td></tr>
<tr class="memdesc:a49554446c2a54b0756095dbd3cd14a50"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Generate a random buffer such that each byte is between 0 and 255.  <a href="#a49554446c2a54b0756095dbd3cd14a50">More...</a><br /></td></tr>
<tr class="memitem:abe28a3bd033b8eb5da845e7b224a3dd1"><td class="memItemLeft" align="right" valign="top">static uint32_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rng_8h#abe28a3bd033b8eb5da845e7b224a3dd1">cx_rng_u32</a> (void)</td></tr>
<tr class="memdesc:abe28a3bd033b8eb5da845e7b224a3dd1"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Output 32 random bits.  <a href="#abe28a3bd033b8eb5da845e7b224a3dd1">More...</a><br /></td></tr>
<tr class="memitem:a0a8663b7e0fc4a043a4b91aa1c3b8a61"><td class="memItemLeft" align="right" valign="top">static uint8_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rng_8h#a0a8663b7e0fc4a043a4b91aa1c3b8a61">cx_rng_u8</a> (void)</td></tr>
<tr class="memdesc:a0a8663b7e0fc4a043a4b91aa1c3b8a61"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Output 8 random bits.  <a href="#a0a8663b7e0fc4a043a4b91aa1c3b8a61">More...</a><br /></td></tr>
<tr class="memitem:a66e17f84894c3786b402c461f87f8c9e"><td class="memItemLeft" align="right" valign="top">uint32_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rng_8h#a66e17f84894c3786b402c461f87f8c9e">cx_rng_u32_range_func</a> (uint32_t a, uint32_t b, cx_rng_u32_range_randfunc_t randfunc)</td></tr>
<tr class="memdesc:a66e17f84894c3786b402c461f87f8c9e"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Generate a random 32-bit unsigned integer with a specified function.  <a href="#a66e17f84894c3786b402c461f87f8c9e">More...</a><br /></td></tr>
<tr class="memitem:af84bb8a8a7c1d8e98c59b00b7c629cdc"><td class="memItemLeft" align="right" valign="top">static uint32_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rng_8h#af84bb8a8a7c1d8e98c59b00b7c629cdc">cx_rng_u32_range</a> (uint32_t a, uint32_t b)</td></tr>
<tr class="memdesc:af84bb8a8a7c1d8e98c59b00b7c629cdc"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Generate a random 32-bit unsigned integer.  <a href="#af84bb8a8a7c1d8e98c59b00b7c629cdc">More...</a><br /></td></tr>
<tr class="memitem:ad47ac6596e715f2fb71117ca623ea222"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rng_8h#ad47ac6596e715f2fb71117ca623ea222">cx_rng_rfc6979</a> (<a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hash_id, const uint8_t *x, size_t x_len, const uint8_t *h1, size_t h1_len, const uint8_t *q, size_t q_len, uint8_t *out, size_t out_len)</td></tr>
<tr class="memdesc:ad47ac6596e715f2fb71117ca623ea222"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Generate a random buffer according to <a href="../https://tools.ietf.org/rfc6979">RFC6979 </a>.  <a href="#ad47ac6596e715f2fb71117ca623ea222">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Random Number Generation. </p>
<p>Random numbers with different sizes can be generated: a 8-bit random number, a 32-bit random number or a random number of arbitrary size. In this case, the number is returned as a buffer of random bytes. The random number can also be generated within a specific range. </p>
</div><h2 class="groupheader">Function Documentation</h2>
<a id="a49554446c2a54b0756095dbd3cd14a50"></a>
<h2 class="memtitle">cx_rng()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static unsigned char* cx_rng </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><em>buffer</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>len</em>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Generate a random buffer such that each byte is between 0 and 255. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">buffer</td><td colspan="4">Buffer to hold the random data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Length of the buffer i.e. number of random bytes to put into the buffer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Pointer to the buffer. </dd></dl>

<p class="reference">References <a class="el" href="../lcx__rng_8h#a93f059f030344ed32c0107bfad323d72">cx_rng_no_throw()</a>.</p>

</div>
</div>
<a id="a93f059f030344ed32c0107bfad323d72"></a>
<h2 class="memtitle">cx_rng_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">void cx_rng_no_throw </td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><em>buffer</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>len</em>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
</div><div class="memdoc">

<p>Generate a random buffer such that each byte is between 0 and 255. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">buffer</td><td colspan="4">Buffer to hold the random data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Length of the buffer i.e. number of random bytes to put into the buffer. </td></tr>
  </table>
  </dd>
</dl>

<p class="reference">Referenced by <a class="el" href="../lcx__rng_8h#a49554446c2a54b0756095dbd3cd14a50">cx_rng()</a>, <a class="el" href="../lcx__rng_8h#abe28a3bd033b8eb5da845e7b224a3dd1">cx_rng_u32()</a>, and <a class="el" href="../lcx__rng_8h#a0a8663b7e0fc4a043a4b91aa1c3b8a61">cx_rng_u8()</a>.</p>

</div>
</div>
<a id="ad47ac6596e715f2fb71117ca623ea222"></a>
<h2 class="memtitle">cx_rng_rfc6979()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_rng_rfc6979 </td>
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><em>hash_id</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>x</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>x_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>h1</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>h1_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><em>q</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>q_len</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><em>out</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>out_len</em>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
</div><div class="memdoc">

<p>Generate a random buffer according to <a href="../https://tools.ietf.org/rfc6979">RFC6979 </a>. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_id</td><td colspan="4">Message digest algorithm identifier.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">x</td><td colspan="4">ECDSA private key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">x_len</td><td colspan="4">Length of the key.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">h1</td><td colspan="4">Hash of the message.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">h1_len</td><td colspan="4">Length of the hash.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">q</td><td colspan="4">Prime number that is a divisor of the curve order.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">q_len</td><td colspan="4">Length of the prime number <em>q</em>.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out</td><td colspan="4">Buffer for the output.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">out_len</td><td colspan="4">Length of the output.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__rng_8h#af84bb8a8a7c1d8e98c59b00b7c629cdc">cx_rng_u32_range()</a>.</p>

</div>
</div>
<a id="abe28a3bd033b8eb5da845e7b224a3dd1"></a>
<h2 class="memtitle">cx_rng_u32()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static uint32_t cx_rng_u32 </td>
          <td class="paramtype">void&#160;</td>
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Output 32 random bits. </p>
<dl class="section return"><dt>Returns</dt><dd>A 32-bit random number. </dd></dl>

<p class="reference">References <a class="el" href="../lcx__rng_8h#a93f059f030344ed32c0107bfad323d72">cx_rng_no_throw()</a>.</p>

<p class="reference">Referenced by <a class="el" href="../lcx__rng_8h#af84bb8a8a7c1d8e98c59b00b7c629cdc">cx_rng_u32_range()</a>.</p>

</div>
</div>
<a id="af84bb8a8a7c1d8e98c59b00b7c629cdc"></a>
<h2 class="memtitle">cx_rng_u32_range()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static uint32_t cx_rng_u32_range </td>
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><em>a</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><em>b</em>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Generate a random 32-bit unsigned integer. </p>
<p>The generated number is taken in the range [a;b[ with uniform distribution.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Inclusive low bound.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Exclusive high bound.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A 32-bit random number. </dd></dl>

<p class="reference">References <a class="el" href="../lcx__rng_8h#ad47ac6596e715f2fb71117ca623ea222">cx_rng_rfc6979()</a>, <a class="el" href="../lcx__rng_8h#abe28a3bd033b8eb5da845e7b224a3dd1">cx_rng_u32()</a>, and <a class="el" href="../lcx__rng_8h#a66e17f84894c3786b402c461f87f8c9e">cx_rng_u32_range_func()</a>.</p>

</div>
</div>
<a id="a66e17f84894c3786b402c461f87f8c9e"></a>
<h2 class="memtitle">cx_rng_u32_range_func()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">uint32_t cx_rng_u32_range_func </td>
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><em>a</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><em>b</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td class="paramtype">cx_rng_u32_range_randfunc_t&#160;</td>
          <td class="paramname"><em>randfunc</em>&#160;</td>
        </tr>
        <tr>
        </tr>
      </table>
</div><div class="memdoc">

<p>Generate a random 32-bit unsigned integer with a specified function. </p>
<p>The generated number is taken in the range [a;b[ with uniform distribution.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">a</td><td colspan="4">Inclusive low bound.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">b</td><td colspan="4">Exclusive high bound.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">randfunc</td><td colspan="4">Function called to generate the random value.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A 32-bit random number. </dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__rng_8h#af84bb8a8a7c1d8e98c59b00b7c629cdc">cx_rng_u32_range()</a>.</p>

</div>
</div>
<a id="a0a8663b7e0fc4a043a4b91aa1c3b8a61"></a>
<h2 class="memtitle">cx_rng_u8()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static uint8_t cx_rng_u8 </td>
          <td class="paramtype">void&#160;</td>
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Output 8 random bits. </p>
<dl class="section return"><dt>Returns</dt><dd>A 8-bit random number. </dd></dl>

<p class="reference">References <a class="el" href="../lcx__rng_8h#a93f059f030344ed32c0107bfad323d72">cx_rng_no_throw()</a>.</p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
