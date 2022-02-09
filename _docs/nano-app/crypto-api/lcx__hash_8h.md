---
title: lcx__hash_8h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Hash functions.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__info__t">cx_hash_info_t</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Hash description.  <a href="../cx__hash__info__t#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__hash__header__s">cx_hash_header_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Common message digest context, used as abstract type.  <a href="../cx__hash__header__s#details">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:a1ae63cf5a9e4d42041bdcda17b21e296"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__hash_8h#a1ae63cf5a9e4d42041bdcda17b21e296">CX_HASH_MAX_BLOCK_COUNT</a>&#160;&#160;&#160;65535</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:aac7f6b791a4df89ac2e67ee43d4021a2"><td class="memItemLeft" align="right" valign="top">typedef enum <a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117">cx_md_e</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a></td></tr>
<tr class="memdesc:aac7f6b791a4df89ac2e67ee43d4021a2"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#aac7f6b791a4df89ac2e67ee43d4021a2">More...</a><br /></td></tr>
<tr class="memitem:a5fa8d1a7a91f41d10ba46386e5286343"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__hash__header__s">cx_hash_header_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a></td></tr>
<tr class="memdesc:a5fa8d1a7a91f41d10ba46386e5286343"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a5fa8d1a7a91f41d10ba46386e5286343">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="enum-members"></a>
Enumerations</h2></td></tr>
<tr class="memitem:a83490ac84757a8bc00ff719ed807e117"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117">cx_md_e</a> { <br />
&#160;&#160;<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117a53820b668032d4211be4fec868ac011a">CX_NONE</a> = 0, 
<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117ab4a075a43ece09e77953b297b1a36fb3">CX_RIPEMD160</a> = 1, 
<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117a2e9444f358a03e8501b2fda3356bf758">CX_SHA224</a> = 2, 
<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117a178ae8151eb1b1ad6d4f01fbe0acc5fc">CX_SHA256</a> = 3, 
<br />
&#160;&#160;<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117a74d048ad79463a9c73b7226785da3aea">CX_SHA384</a> = 4, 
<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117af1c7c38d54f080781c6026cb6fed85f6">CX_SHA512</a> = 5, 
<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117aecd503c7fa1b28f3741c6406ac07e5cc">CX_KECCAK</a> = 6, 
<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117af9ae2d3469a8acc775f58647ed9591a5">CX_SHA3</a> = 7, 
<br />
&#160;&#160;<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117a03f5a9934aee650f97e56e8475ec7442">CX_GROESTL</a> = 8, 
<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117a07b70c52856661d9ba09ae71d38bc715">CX_BLAKE2B</a> = 9, 
<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117a109e7978193ee96c67516f9c09c97c3d">CX_SHAKE128</a> = 10, 
<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117a267724ee4e443272cbc31e8ccf3f403b">CX_SHAKE256</a> = 11, 
<br />
&#160;&#160;<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117a1bc6af1963430fc15124add3bd0652e6">CX_SHA3_256</a> = 12, 
<a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117aeb231378b35f2b71f4459b3b5117950f">CX_SHA3_512</a> = 13
<br />
 }<tr class="memdesc:a83490ac84757a8bc00ff719ed807e117"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Message digest algorithm identifiers.  <a href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117">More...</a><br /></td></tr>
</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:ad6d0f11deac47473046877f63b1b3842"><td class="memItemLeft" align="right" valign="top">size_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__hash_8h#ad6d0f11deac47473046877f63b1b3842">cx_hash_get_size</a> (const <a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *ctx)</td></tr>
<tr class="memitem:a51cf929ff30c2b19232c0389df2e2547"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__hash_8h#a51cf929ff30c2b19232c0389df2e2547">cx_hash_no_throw</a> (<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *hash, uint32_t mode, const uint8_t *in, size_t len, uint8_t *out, size_t out_len)</td></tr>
<tr class="memdesc:a51cf929ff30c2b19232c0389df2e2547"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Hash data according to the specified algorithm.  <a href="#a51cf929ff30c2b19232c0389df2e2547">More...</a><br /></td></tr>
<tr class="memitem:adc7f6918cc747f7ac7d9c9faaf9ec215"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__hash_8h#adc7f6918cc747f7ac7d9c9faaf9ec215">cx_hash</a> (<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *hash, int mode, const unsigned char *in, unsigned int len, unsigned char *out, unsigned int out_len)</td></tr>
<tr class="memdesc:adc7f6918cc747f7ac7d9c9faaf9ec215"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Hash data according to the specified algorithm.  <a href="#adc7f6918cc747f7ac7d9c9faaf9ec215">More...</a><br /></td></tr>
<tr class="memitem:a885f02f3636aac761fbbba21b079414c"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__hash_8h#a885f02f3636aac761fbbba21b079414c">cx_hash_init</a> (<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *hash, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hash_id)</td></tr>
<tr class="memdesc:a885f02f3636aac761fbbba21b079414c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initialize a hash context.  <a href="#a885f02f3636aac761fbbba21b079414c">More...</a><br /></td></tr>
<tr class="memitem:a44ca61db6548b8f361fa8fb065a8bb92"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__hash_8h#a44ca61db6548b8f361fa8fb065a8bb92">cx_hash_init_ex</a> (<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *hash, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hash_id, size_t output_size)</td></tr>
<tr class="memdesc:a44ca61db6548b8f361fa8fb065a8bb92"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initialize a hash context.  <a href="#a44ca61db6548b8f361fa8fb065a8bb92">More...</a><br /></td></tr>
<tr class="memitem:a95be19cf6b724e3837b84ff5d73520de"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__hash_8h#a95be19cf6b724e3837b84ff5d73520de">cx_hash_update</a> (<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *hash, const uint8_t *in, size_t in_len)</td></tr>
<tr class="memdesc:a95be19cf6b724e3837b84ff5d73520de"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Add more data to hash.  <a href="#a95be19cf6b724e3837b84ff5d73520de">More...</a><br /></td></tr>
<tr class="memitem:a9d1068c9ef9bf98eedb839b74674ff15"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__hash_8h#a9d1068c9ef9bf98eedb839b74674ff15">cx_hash_final</a> (<a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *hash, uint8_t *digest)</td></tr>
<tr class="memdesc:a9d1068c9ef9bf98eedb839b74674ff15"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Finalize the hash.  <a href="#a9d1068c9ef9bf98eedb839b74674ff15">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Hash functions. </p>
<p>A hash function maps data of arbitrary size to a bit array of a fixed size, called the message digest. Various hash functions are available:</p><ul>
<li>BLAKE2B</li>
<li>GROESTL</li>
<li>KECCAK (Pre SHA3)</li>
<li>RIPEMD-160</li>
<li>SHAKE-128</li>
<li>SHAKE-256</li>
<li>SHA224</li>
<li>SHA256</li>
<li>SHA3</li>
<li>SHA384</li>
<li>SHA3_256</li>
<li>SHA3_512</li>
<li>SHA512 </li>
</ul>
</div><h2 class="groupheader">Macro Definition Documentation</h2>
<a id="a1ae63cf5a9e4d42041bdcda17b21e296"></a>
<h2 class="memtitle">CX_HASH_MAX_BLOCK_COUNT</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_HASH_MAX_BLOCK_COUNT&#160;&#160;&#160;65535</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<h2 class="groupheader">Typedef Documentation</h2>
<a id="a5fa8d1a7a91f41d10ba46386e5286343"></a>
<h2 class="memtitle">cx_hash_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__hash__header__s">cx_hash_header_s</a> <a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__hash__header__s" title="Common message digest context, used as abstract type. ">cx_hash_header_s</a>. </p>

</div>
</div>
<a id="aac7f6b791a4df89ac2e67ee43d4021a2"></a>
<h2 class="memtitle">cx_md_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef enum <a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117">cx_md_e</a> <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117" title="Message digest algorithm identifiers. ">cx_md_e</a>. </p>

</div>
</div>
<h2 class="groupheader">Enumeration Type Documentation</h2>
<a id="a83490ac84757a8bc00ff719ed807e117"></a>
<h2 class="memtitle">cx_md_e</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">enum <a class="el" href="../lcx__hash_8h#a83490ac84757a8bc00ff719ed807e117">cx_md_e</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Message digest algorithm identifiers. </p>
<table class="fieldtable">
<tr><th colspan="4">Enumerator</th></tr><tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117a53820b668032d4211be4fec868ac011a"></a>CX_NONE&#160;</td><td class="fielddoc"><p>No message digest algorithm. </p>
</td></tr>
<tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117ab4a075a43ece09e77953b297b1a36fb3"></a>CX_RIPEMD160&#160;</td><td class="fielddoc"><p>RIPEMD160 digest. </p>
</td></tr>
<tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117a2e9444f358a03e8501b2fda3356bf758"></a>CX_SHA224&#160;</td><td class="fielddoc"><p>SHA224 digest. </p>
</td></tr>
<tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117a178ae8151eb1b1ad6d4f01fbe0acc5fc"></a>CX_SHA256&#160;</td><td class="fielddoc"><p>SHA256 digest. </p>
</td></tr>
<tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117a74d048ad79463a9c73b7226785da3aea"></a>CX_SHA384&#160;</td><td class="fielddoc"><p>SHA384 digest. </p>
</td></tr>
<tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117af1c7c38d54f080781c6026cb6fed85f6"></a>CX_SHA512&#160;</td><td class="fielddoc"><p>SHA512 digest. </p>
</td></tr>
<tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117aecd503c7fa1b28f3741c6406ac07e5cc"></a>CX_KECCAK&#160;</td><td class="fielddoc"><p>Keccak (pre-SHA3) digest. </p>
</td></tr>
<tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117af9ae2d3469a8acc775f58647ed9591a5"></a>CX_SHA3&#160;</td><td class="fielddoc"><p>SHA3 Digest. </p>
</td></tr>
<tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117a03f5a9934aee650f97e56e8475ec7442"></a>CX_GROESTL&#160;</td><td class="fielddoc"><p>Groestl digest. </p>
</td></tr>
<tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117a07b70c52856661d9ba09ae71d38bc715"></a>CX_BLAKE2B&#160;</td><td class="fielddoc"><p>Blake digest. </p>
</td></tr>
<tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117a109e7978193ee96c67516f9c09c97c3d"></a>CX_SHAKE128&#160;</td><td class="fielddoc"><p>SHAKE-128 digest. </p>
</td></tr>
<tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117a267724ee4e443272cbc31e8ccf3f403b"></a>CX_SHAKE256&#160;</td><td class="fielddoc"><p>SHAKE-256 digest. </p>
</td></tr>
<tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117a1bc6af1963430fc15124add3bd0652e6"></a>CX_SHA3_256&#160;</td><td class="fielddoc"><p>SHA3-256 digest. </p>
</td></tr>
<tr><td class="fieldname"><a id="a83490ac84757a8bc00ff719ed807e117aeb231378b35f2b71f4459b3b5117950f"></a>CX_SHA3_512&#160;</td><td class="fielddoc"><p>SHA3-512 digest. </p>
</td></tr>
</table>

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="adc7f6918cc747f7ac7d9c9faaf9ec215"></a>
<h2 class="memtitle">cx_hash()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_hash </td>
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
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
          <td class="paramname"><b>len</b>, </td>
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

<p>Hash data according to the specified algorithm. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__hash_8h#a51cf929ff30c2b19232c0389df2e2547" title="Hash data according to the specified algorithm. ">cx_hash_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Pointer to the hash context. Shall be in RAM. Should be called with a cast.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto flag. Supported flag: CX_LAST. If set:<ul>
<li>the structure is not modified after finishing</li>
<li>if out is not NULL, the message digest is stored in out</li>
<li>the context is NOT automatically re-initialized.</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in</td><td colspan="4">Input data to be hashed.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Length of the input data.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out</td><td colspan="4">Buffer where to store the message digest:<ul>
<li>NULL (ignored) if CX_LAST is NOT set</li>
<li>message digest if CX_LAST is set</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out_len</td><td colspan="4">The size of the output buffer or 0 if out is NULL. If buffer is too small to store the hash an exception is thrown.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the digest.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__hash_8h#a9d1068c9ef9bf98eedb839b74674ff15">cx_hash_final()</a>, <a class="el" href="../lcx__hash_8h#ad6d0f11deac47473046877f63b1b3842">cx_hash_get_size()</a>, <a class="el" href="../lcx__hash_8h#a885f02f3636aac761fbbba21b079414c">cx_hash_init()</a>, <a class="el" href="../lcx__hash_8h#a44ca61db6548b8f361fa8fb065a8bb92">cx_hash_init_ex()</a>, <a class="el" href="../lcx__hash_8h#a51cf929ff30c2b19232c0389df2e2547">cx_hash_no_throw()</a>, and <a class="el" href="../lcx__hash_8h#a95be19cf6b724e3837b84ff5d73520de">cx_hash_update()</a>.</p>

</div>
</div>
<a id="a9d1068c9ef9bf98eedb839b74674ff15"></a>
<h2 class="memtitle">cx_hash_final()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_hash_final </td>
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>digest</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Finalize the hash. </p>
<p>A call to this function is equivalent to: <b>cx_hash_no_throw(hash, CX_LAST, NULL, 0, out, out_len)</b>.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Pointer to the hash context.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">digest</td><td colspan="4">The message digest.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__hash_8h#adc7f6918cc747f7ac7d9c9faaf9ec215">cx_hash()</a>.</p>

</div>
</div>
<a id="ad6d0f11deac47473046877f63b1b3842"></a>
<h2 class="memtitle">cx_hash_get_size()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">size_t cx_hash_get_size </td>
          <td class="paramtype">const <a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *&#160;</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p class="reference">Referenced by <a class="el" href="../lcx__hash_8h#adc7f6918cc747f7ac7d9c9faaf9ec215">cx_hash()</a>.</p>

</div>
</div>
<a id="a885f02f3636aac761fbbba21b079414c"></a>
<h2 class="memtitle">cx_hash_init()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_hash_init </td>
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hash_id</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initialize a hash context. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context to be initialized. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_id</td><td colspan="4">Message digest algorithm identifier.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__hash_8h#adc7f6918cc747f7ac7d9c9faaf9ec215">cx_hash()</a>.</p>

</div>
</div>
<a id="a44ca61db6548b8f361fa8fb065a8bb92"></a>
<h2 class="memtitle">cx_hash_init_ex()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_hash_init_ex </td>
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hash_id</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>output_size</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initialize a hash context. </p>
<p>Initialize a hash context with a chosen output length (typically for eXtendable Output Functions (XOF)).</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the context to be initialized. The context shall be in RAM.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_id</td><td colspan="4">Hash algorithm identifier. Typically:<ul>
<li>CX_BLAKE2B</li>
<li>CX_GROESTL</li>
<li>CX_SHAKE128</li>
<li>CX_SHAKE256</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">output_size</td><td colspan="4">Length of the output.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__hash_8h#adc7f6918cc747f7ac7d9c9faaf9ec215">cx_hash()</a>.</p>

</div>
</div>
<a id="a51cf929ff30c2b19232c0389df2e2547"></a>
<h2 class="memtitle">cx_hash_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_hash_no_throw </td>
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
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
          <td class="paramname"><b>len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>out</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>out_len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Hash data according to the specified algorithm. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Pointer to the hash context. Shall be in RAM. Should be called with a cast.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto flag. Supported flag: CX_LAST. If set:<ul>
<li>the structure is not modified after finishing</li>
<li>if out is not NULL, the message digest is stored in out</li>
<li>the context is NOT automatically re-initialized.</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in</td><td colspan="4">Input data to be hashed.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">len</td><td colspan="4">Length of the input data.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out</td><td colspan="4">Buffer where to store the message digest:<ul>
<li>NULL (ignored) if CX_LAST is NOT set</li>
<li>message digest if CX_LAST is set</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">out_len</td><td colspan="4">The size of the output buffer or 0 if out is NULL. If buffer is too small to store the hash an error is returned.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>INVALID_PARAMETER</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__hash_8h#adc7f6918cc747f7ac7d9c9faaf9ec215">cx_hash()</a>.</p>

</div>
</div>
<a id="a95be19cf6b724e3837b84ff5d73520de"></a>
<h2 class="memtitle">cx_hash_update()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_hash_update </td>
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#a5fa8d1a7a91f41d10ba46386e5286343">cx_hash_t</a> *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>in</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>in_len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Add more data to hash. </p>
<p>A call to this function is equivalent to: <b>cx_hash_no_throw(hash, 0, in, in_len, NULL, 0)</b>.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">hash</td><td colspan="4">Pointer to the hash context.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in</td><td colspan="4">Input data to add to the context.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">in_len</td><td colspan="4">Length of the input data.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER</li>
<li>INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__hash_8h#adc7f6918cc747f7ac7d9c9faaf9ec215">cx_hash()</a>.</p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
