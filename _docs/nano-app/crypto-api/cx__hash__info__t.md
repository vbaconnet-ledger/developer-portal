---
title: cx__hash__info__t
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
<tr class="memitem:a8427fe2f03a7ea954df11e2191075041"><td class="memItemLeft" align="right" valign="top"><a id="a8427fe2f03a7ea954df11e2191075041"></a>
<a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#a8427fe2f03a7ea954df11e2191075041">md_type</a></td></tr>
<tr class="memdesc:a8427fe2f03a7ea954df11e2191075041"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Message digest algorithm identifier. <br /></td></tr>
<tr class="memitem:a936e314fcab4e7bfe77e6ffde4e15e06"><td class="memItemLeft" align="right" valign="top"><a id="a936e314fcab4e7bfe77e6ffde4e15e06"></a>
size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#a936e314fcab4e7bfe77e6ffde4e15e06">output_size</a></td></tr>
<tr class="memdesc:a936e314fcab4e7bfe77e6ffde4e15e06"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Output size. <br /></td></tr>
<tr class="memitem:ad7524613c3881d09bda0d270ede83779"><td class="memItemLeft" align="right" valign="top"><a id="ad7524613c3881d09bda0d270ede83779"></a>
size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#ad7524613c3881d09bda0d270ede83779">block_size</a></td></tr>
<tr class="memdesc:ad7524613c3881d09bda0d270ede83779"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Block size. <br /></td></tr>
<tr class="memitem:a1761991bfa6cba7fb152faf27db0be50"><td class="memItemLeft" align="right" valign="top"><a id="a1761991bfa6cba7fb152faf27db0be50"></a>
<a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>(*&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#a1761991bfa6cba7fb152faf27db0be50">init_func</a> )(<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx)</td></tr>
<tr class="memdesc:a1761991bfa6cba7fb152faf27db0be50"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pointer to the initialization function. <br /></td></tr>
<tr class="memitem:aa70970149445ac7d97eaa8231fe67eca"><td class="memItemLeft" align="right" valign="top"><a id="aa70970149445ac7d97eaa8231fe67eca"></a>
<a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>(*&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#aa70970149445ac7d97eaa8231fe67eca">update_func</a> )(<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx, const uint8_t *data, size_t len)</td></tr>
<tr class="memdesc:aa70970149445ac7d97eaa8231fe67eca"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pointer to the update function. <br /></td></tr>
<tr class="memitem:ab0e7d1eda4ecb988764823cc6405ff7c"><td class="memItemLeft" align="right" valign="top"><a id="ab0e7d1eda4ecb988764823cc6405ff7c"></a>
<a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>(*&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#ab0e7d1eda4ecb988764823cc6405ff7c">finish_func</a> )(<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx, uint8_t *digest)</td></tr>
<tr class="memdesc:ab0e7d1eda4ecb988764823cc6405ff7c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pointer to the final function. <br /></td></tr>
<tr class="memitem:a3c21232b723c88b69e7df70e84206d04"><td class="memItemLeft" align="right" valign="top"><a id="a3c21232b723c88b69e7df70e84206d04"></a>
<a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>(*&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#a3c21232b723c88b69e7df70e84206d04">init_ex_func</a> )(<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx, size_t <a class="el" href="../cx__hash__info__t#a936e314fcab4e7bfe77e6ffde4e15e06">output_size</a>)</td></tr>
<tr class="memdesc:a3c21232b723c88b69e7df70e84206d04"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pointer to the initialization function for extendable output. <br /></td></tr>
<tr class="memitem:a2bdc9f77e5d4a927de773f6f16a33fcd"><td class="memItemLeft" align="right" valign="top"><a id="a2bdc9f77e5d4a927de773f6f16a33fcd"></a>
size_t(*&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t#a2bdc9f77e5d4a927de773f6f16a33fcd">output_size_func</a> )(const <a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx)</td></tr>
<tr class="memdesc:a2bdc9f77e5d4a927de773f6f16a33fcd"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Pointer to the output size function. <br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Hash description. </p>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
