---
title: lcx__common_8h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Cryptography flags.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4">><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../uint64__s">uint64_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">64-bit types, native or by-hands, depending on target and/or compiler support.  <a href="../uint64__s#details">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4">><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:ad87dae5ad74e16849c6751cc9d29c98b"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#ad87dae5ad74e16849c6751cc9d29c98b">CX_FLAG</a></td></tr>
<tr class="memdesc:ad87dae5ad74e16849c6751cc9d29c98b"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Cryptography flags.  <a href="#ad87dae5ad74e16849c6751cc9d29c98b">More...</a><br /></td></tr>
<tr class="memitem:af11e07ffd4b2daabe18e74d896e640fd"><td class="memItemLeft" align="right" valign="top"><a id="af11e07ffd4b2daabe18e74d896e640fd"></a>
#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#af11e07ffd4b2daabe18e74d896e640fd">CX_LAST</a>&#160;&#160;&#160;(1 &lt;&lt; 0)</td></tr>
<tr class="memdesc:af11e07ffd4b2daabe18e74d896e640fd"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 0: Last block. <br /></td></tr>
<tr class="memitem:a77be4652a5c0e49b1e888c82719180b3"><td class="memItemLeft" align="right" valign="top"><a id="a77be4652a5c0e49b1e888c82719180b3"></a>
#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a77be4652a5c0e49b1e888c82719180b3">CX_SIG_MODE</a>&#160;&#160;&#160;(1 &lt;&lt; 1)</td></tr>
<tr class="memdesc:a77be4652a5c0e49b1e888c82719180b3"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 1: Signature or verification. <br /></td></tr>
<tr class="memitem:a7446f0b9e640c7be705a2668ecff033c"><td class="memItemLeft" align="right" valign="top"><a id="a7446f0b9e640c7be705a2668ecff033c"></a>
#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a7446f0b9e640c7be705a2668ecff033c">CX_MASK_SIGCRYPT</a>&#160;&#160;&#160;(3 &lt;&lt; 1)</td></tr>
<tr class="memdesc:a7446f0b9e640c7be705a2668ecff033c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 2:1: Signature and/or encryption. <br /></td></tr>
<tr class="memitem:abbe30a7ff4920fdb0655e4110d68ec47"><td class="memItemLeft" align="right" valign="top"><a id="abbe30a7ff4920fdb0655e4110d68ec47"></a>
#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#abbe30a7ff4920fdb0655e4110d68ec47">CX_MASK_PAD</a>&#160;&#160;&#160;(7 &lt;&lt; 3)</td></tr>
<tr class="memdesc:abbe30a7ff4920fdb0655e4110d68ec47"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 5:3: Padding. <br /></td></tr>
<tr class="memitem:aafd1dab58f4cd74a90fe3a8ec7d6ef30"><td class="memItemLeft" align="right" valign="top"><a id="aafd1dab58f4cd74a90fe3a8ec7d6ef30"></a>
#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#aafd1dab58f4cd74a90fe3a8ec7d6ef30">CX_MASK_CHAIN</a>&#160;&#160;&#160;(7 &lt;&lt; 6)</td></tr>
<tr class="memdesc:aafd1dab58f4cd74a90fe3a8ec7d6ef30"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 8:6 DES/AES chaining. <br /></td></tr>
<tr class="memitem:af3926fbc64fad6f64b5637a685746167"><td class="memItemLeft" align="right" valign="top"><a id="af3926fbc64fad6f64b5637a685746167"></a>
#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#af3926fbc64fad6f64b5637a685746167">CX_MASK_ECC_VARIANT</a>&#160;&#160;&#160;(7 &lt;&lt; 6)</td></tr>
<tr class="memdesc:af3926fbc64fad6f64b5637a685746167"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 8:6 ECC variant. <br /></td></tr>
<tr class="memitem:a195cfaa66abb04924a5d12c0ee80f1ec"><td class="memItemLeft" align="right" valign="top"><a id="a195cfaa66abb04924a5d12c0ee80f1ec"></a>
#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a195cfaa66abb04924a5d12c0ee80f1ec">CX_MASK_RND</a>&#160;&#160;&#160;(7 &lt;&lt; 9)</td></tr>
<tr class="memdesc:a195cfaa66abb04924a5d12c0ee80f1ec"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 11:9 Random number generation. <br /></td></tr>
<tr class="memitem:a4550b2e093cd42ccf24e6b62df3747b4"><td class="memItemLeft" align="right" valign="top"><a id="a4550b2e093cd42ccf24e6b62df3747b4"></a>
#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a4550b2e093cd42ccf24e6b62df3747b4">CX_MASK_EC</a>&#160;&#160;&#160;(7 &lt;&lt; 12)</td></tr>
<tr class="memdesc:a4550b2e093cd42ccf24e6b62df3747b4"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 14:12: ECDH and ECSCHNORR specificities. <br /></td></tr>
<tr class="memitem:a415fa7cacd58f8c01b0733c30a5c829a"><td class="memItemLeft" align="right" valign="top"><a id="a415fa7cacd58f8c01b0733c30a5c829a"></a>
#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a415fa7cacd58f8c01b0733c30a5c829a">CX_NO_REINIT</a>&#160;&#160;&#160;(1 &lt;&lt; 15)</td></tr>
<tr class="memdesc:a415fa7cacd58f8c01b0733c30a5c829a"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 15: No reinitialization. <br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Cryptography flags. </p>
<p>Flags required by some functions. </p>
</div><h2 class="groupheader">Macro Definition Documentation</h2>
<a id="ad87dae5ad74e16849c6751cc9d29c98b"></a>
<h2 class="memtitle">CX_FLAG</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_FLAG</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Cryptography flags. </p>
<p>Some functions take <b>logical or</b> of various flags. The following flags are globally defined:</p>
<table class="doxtable">
<tr>
<th>Bits position </th><th>Values </th><th>Flags </th><th>Meaning </th><th>Algorithms  </th></tr>
<tr>
<tr>
<td colspan="4">>14:12 </td><td colspan="4">>0111000000000000 </td><td colspan="4">>CX_ECSCHNORR_Z </td><td colspan="4">>Zilliqa scheme </td><td colspan="4">>ECSCHNORR </td></tr>
<tr>
<td colspan="4">>14:12 </td><td colspan="4">>0110000000000000 </td><td colspan="4">>CX_ECSCHNORR_LIBSECP </td><td colspan="4">>ECSCHNORR according to libsecp256k1 </td><td colspan="4">>ECSCHNORR </td></tr>
<tr>
<td colspan="4">>14:12 </td><td colspan="4">>0101000000000000 </td><td colspan="4">>CX_ECSCHNORR_BSI03111 </td><td colspan="4">>ECSCHNORR according to BSI TR-03111 </td><td colspan="4">>ECSCHNORR </td></tr>
<tr>
<td colspan="4">>14:12 </td><td colspan="4">>0100000000000000 </td><td colspan="4">>CX_ECSCHNORR_ISO14888_X </td><td colspan="4">>ECSCHNORR according to ISO/IEC 14888-3 </td><td colspan="4">>ECSCHNORR </td></tr>
<tr>
<td colspan="4">>14:12 </td><td colspan="4">>0011000000000000 </td><td colspan="4">>CX_ECSCHNORR_ISO14888_XY </td><td colspan="4">>ECSCHNORR according to ISO/IEC 14888-3 </td><td colspan="4">>ECSCHNORR </td></tr>
<tr>
<td colspan="4">>14:12 </td><td colspan="4">>0010000000000000 </td><td colspan="4">>CX_ECDH_X </td><td colspan="4">>ECDH with the x-coordinate of the point </td><td colspan="4">>ECDH </td></tr>
<tr>
<td colspan="4">>14:12 </td><td colspan="4">>0001000000000000 </td><td colspan="4">>CX_ECDH_POINT </td><td colspan="4">>ECDH with a point </td><td colspan="4">>ECDH </td></tr>
<tr>
<tr>
<tr>
<tr>
<tr>
<td colspan="4">>8:6 </td><td colspan="4">>0000000100000000 </td><td colspan="4">>CX_CHAIN_OFB </td><td colspan="4">>Output feedback mode </td><td colspan="4">>AES/DES </td></tr>
<tr>
<td colspan="4">>8:6 </td><td colspan="4">>0000000011000000 </td><td colspan="4">>CX_CHAIN_CFB </td><td colspan="4">>Cipher feedback mode </td><td colspan="4">>AES/DES </td></tr>
<tr>
<td colspan="4">>8:6 </td><td colspan="4">>0000000010000000 </td><td colspan="4">>CX_CHAIN_CTR </td><td colspan="4">>Counter mode </td><td colspan="4">>AES/DES </td></tr>
<tr>
<td colspan="4">>8:6 </td><td colspan="4">>0000000001000000 </td><td colspan="4">>CX_CHAIN_CBC </td><td colspan="4">>Cipher block chaining mode </td><td colspan="4">>AES/DES </td></tr>
<tr>
<td colspan="4">>8:6 </td><td colspan="4">>0000000001000000 </td><td colspan="4">>CX_NO_CANONICAL </td><td colspan="4">>Do not compute a canonical signature </td><td colspan="4">>ECDSA/EDDSA/ECSCHNORR </td></tr>
<tr>
<td colspan="4">>8:6 </td><td colspan="4">>0000000000000000 </td><td colspan="4">>CX_CHAIN_ECB </td><td colspan="4">>Electronic codebook mode </td><td colspan="4">>AES/DES </td></tr>
<tr>
<tr>
<tr>
<tr>
<tr>
<tr>
<tr>
<td colspan="4">>2:1 </td><td colspan="4">>0000000000000110 </td><td colspan="4">>CX_SIGN </td><td colspan="4">>Signature </td><td colspan="4">>AES/DES </td></tr>
<tr>
<td colspan="4">>2:1 </td><td colspan="4">>0000000000000100 </td><td colspan="4">>CX_ENCRYPT </td><td colspan="4">>Encryption </td><td colspan="4">>AES/DES </td></tr>
<tr>
<td colspan="4">>2:1 </td><td colspan="4">>0000000000000010 </td><td colspan="4">>CX_VERIFY </td><td colspan="4">>Signature verification </td><td colspan="4">>AES/DES </td></tr>
<tr>
<td colspan="4">>2:1 </td><td colspan="4">>0000000000000000 </td><td colspan="4">>CX_DECRYPT </td><td colspan="4">>Decryption </td><td colspan="4">>AES/DES </td></tr>
<tr>
</table>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
