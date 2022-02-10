---
title: cx_hash_info_t
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Hash description.  
 <a href="../cx__hash__info__t#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="pub-attribs"></a>
Data Fields</h2></td></tr>
<tr class="memitem:a8427fe2f03a7ea954df11e2191075041"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#a8427fe2f03a7ea954df11e2191075041">md_type</a></td></tr>
<tr class="memdesc:a8427fe2f03a7ea954df11e2191075041"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Message digest algorithm identifier.  <a href="#a8427fe2f03a7ea954df11e2191075041">More...</a><br /></td></tr>
<tr class="memitem:a936e314fcab4e7bfe77e6ffde4e15e06"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#a936e314fcab4e7bfe77e6ffde4e15e06">output_size</a></td></tr>
<tr class="memdesc:a936e314fcab4e7bfe77e6ffde4e15e06"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Output size.  <a href="#a936e314fcab4e7bfe77e6ffde4e15e06">More...</a><br /></td></tr>
<tr class="memitem:ad7524613c3881d09bda0d270ede83779"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#ad7524613c3881d09bda0d270ede83779">block_size</a></td></tr>
<tr class="memdesc:ad7524613c3881d09bda0d270ede83779"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Block size.  <a href="#ad7524613c3881d09bda0d270ede83779">More...</a><br /></td></tr>
<tr class="memitem:a1761991bfa6cba7fb152faf27db0be50"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>(*&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#a1761991bfa6cba7fb152faf27db0be50">init_func</a> )(<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx)</td></tr>
<tr class="memdesc:a1761991bfa6cba7fb152faf27db0be50"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pointer to the initialization function.  <a href="#a1761991bfa6cba7fb152faf27db0be50">More...</a><br /></td></tr>
<tr class="memitem:aa70970149445ac7d97eaa8231fe67eca"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>(*&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#aa70970149445ac7d97eaa8231fe67eca">update_func</a> )(<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx, const uint8_t *data, size_t len)</td></tr>
<tr class="memdesc:aa70970149445ac7d97eaa8231fe67eca"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pointer to the update function.  <a href="#aa70970149445ac7d97eaa8231fe67eca">More...</a><br /></td></tr>
<tr class="memitem:ab0e7d1eda4ecb988764823cc6405ff7c"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>(*&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#ab0e7d1eda4ecb988764823cc6405ff7c">finish_func</a> )(<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx, uint8_t *digest)</td></tr>
<tr class="memdesc:ab0e7d1eda4ecb988764823cc6405ff7c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pointer to the final function.  <a href="#ab0e7d1eda4ecb988764823cc6405ff7c">More...</a><br /></td></tr>
<tr class="memitem:a3c21232b723c88b69e7df70e84206d04"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>(*&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#a3c21232b723c88b69e7df70e84206d04">init_ex_func</a> )(<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx, size_t <a class="el" href="../cx__hash__info__t#a936e314fcab4e7bfe77e6ffde4e15e06">output_size</a>)</td></tr>
<tr class="memdesc:a3c21232b723c88b69e7df70e84206d04"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pointer to the initialization function for extendable output.  <a href="#a3c21232b723c88b69e7df70e84206d04">More...</a><br /></td></tr>
<tr class="memitem:a2bdc9f77e5d4a927de773f6f16a33fcd"><td class="memItemLeft" align="right" valign="top">size_t(*&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#a2bdc9f77e5d4a927de773f6f16a33fcd">output_size_func</a> )(const <a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx)</td></tr>
<tr class="memdesc:a2bdc9f77e5d4a927de773f6f16a33fcd"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pointer to the output size function.  <a href="#a2bdc9f77e5d4a927de773f6f16a33fcd">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Hash description. </p>
</div><h2 class="groupheader">Field Documentation</h2>
<a id="ad7524613c3881d09bda0d270ede83779"></a>
<h2 class="memtitle">block_size</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t block_size</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Block size. </p>

</div>
</div>
<a id="ab0e7d1eda4ecb988764823cc6405ff7c"></a>
<h2 class="memtitle">finish_func</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>(* finish_func) (<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx, uint8_t *digest)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Pointer to the final function. </p>

</div>
</div>
<a id="a3c21232b723c88b69e7df70e84206d04"></a>
<h2 class="memtitle">init_ex_func</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>(* init_ex_func) (<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx, size_t <a class="el" href="../cx__hash__info__t#a936e314fcab4e7bfe77e6ffde4e15e06">output_size</a>)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Pointer to the initialization function for extendable output. </p>

</div>
</div>
<a id="a1761991bfa6cba7fb152faf27db0be50"></a>
<h2 class="memtitle">init_func</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>(* init_func) (<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Pointer to the initialization function. </p>

</div>
</div>
<a id="a8427fe2f03a7ea954df11e2191075041"></a>
<h2 class="memtitle">md_type</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> md_type</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Message digest algorithm identifier. </p>

<p class="reference">Referenced by <a class="el" href="../lcx__hmac_8h#a59713fd754b21c5af7de282b7b03c824">cx_hmac()</a>.</p>

</div>
</div>
<a id="a936e314fcab4e7bfe77e6ffde4e15e06"></a>
<h2 class="memtitle">output_size</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t output_size</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Output size. </p>

</div>
</div>
<a id="a2bdc9f77e5d4a927de773f6f16a33fcd"></a>
<h2 class="memtitle">output_size_func</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t(* output_size_func) (const <a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Pointer to the output size function. </p>

</div>
</div>
<a id="aa70970149445ac7d97eaa8231fe67eca"></a>
<h2 class="memtitle">update_func</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>(* update_func) (<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx, const uint8_t *data, size_t len)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Pointer to the update function. </p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
