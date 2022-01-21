---
title: lcx__common_8h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---


<p>Cryptography flags.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../uint64__s">uint64_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td class="mdescRight">64-bit types, native or by-hands, depending on target and/or compiler support.  <a href="../uint64__s#details">More...</a><br /></td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:ad87dae5ad74e16849c6751cc9d29c98b"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#ad87dae5ad74e16849c6751cc9d29c98b">CX_FLAG</a></td></tr>
<tr class="memdesc:ad87dae5ad74e16849c6751cc9d29c98b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Cryptography flags.  <a href="#ad87dae5ad74e16849c6751cc9d29c98b">More...</a><br /></td></tr>
<tr class="separator:ad87dae5ad74e16849c6751cc9d29c98b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af11e07ffd4b2daabe18e74d896e640fd"><td class="memItemLeft" align="right" valign="top"><a id="af11e07ffd4b2daabe18e74d896e640fd"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#af11e07ffd4b2daabe18e74d896e640fd">CX_LAST</a>&#160;&#160;&#160;(1 &lt;&lt; 0)</td></tr>
<tr class="memdesc:af11e07ffd4b2daabe18e74d896e640fd"><td class="mdescLeft">&#160;</td><td class="mdescRight">Bit 0: Last block. <br /></td></tr>
<tr class="separator:af11e07ffd4b2daabe18e74d896e640fd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a77be4652a5c0e49b1e888c82719180b3"><td class="memItemLeft" align="right" valign="top"><a id="a77be4652a5c0e49b1e888c82719180b3"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a77be4652a5c0e49b1e888c82719180b3">CX_SIG_MODE</a>&#160;&#160;&#160;(1 &lt;&lt; 1)</td></tr>
<tr class="memdesc:a77be4652a5c0e49b1e888c82719180b3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Bit 1: Signature or verification. <br /></td></tr>
<tr class="separator:a77be4652a5c0e49b1e888c82719180b3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7446f0b9e640c7be705a2668ecff033c"><td class="memItemLeft" align="right" valign="top"><a id="a7446f0b9e640c7be705a2668ecff033c"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a7446f0b9e640c7be705a2668ecff033c">CX_MASK_SIGCRYPT</a>&#160;&#160;&#160;(3 &lt;&lt; 1)</td></tr>
<tr class="memdesc:a7446f0b9e640c7be705a2668ecff033c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Bit 2:1: Signature and/or encryption. <br /></td></tr>
<tr class="separator:a7446f0b9e640c7be705a2668ecff033c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abbe30a7ff4920fdb0655e4110d68ec47"><td class="memItemLeft" align="right" valign="top"><a id="abbe30a7ff4920fdb0655e4110d68ec47"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#abbe30a7ff4920fdb0655e4110d68ec47">CX_MASK_PAD</a>&#160;&#160;&#160;(7 &lt;&lt; 3)</td></tr>
<tr class="memdesc:abbe30a7ff4920fdb0655e4110d68ec47"><td class="mdescLeft">&#160;</td><td class="mdescRight">Bit 5:3: Padding. <br /></td></tr>
<tr class="separator:abbe30a7ff4920fdb0655e4110d68ec47"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aafd1dab58f4cd74a90fe3a8ec7d6ef30"><td class="memItemLeft" align="right" valign="top"><a id="aafd1dab58f4cd74a90fe3a8ec7d6ef30"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#aafd1dab58f4cd74a90fe3a8ec7d6ef30">CX_MASK_CHAIN</a>&#160;&#160;&#160;(7 &lt;&lt; 6)</td></tr>
<tr class="memdesc:aafd1dab58f4cd74a90fe3a8ec7d6ef30"><td class="mdescLeft">&#160;</td><td class="mdescRight">Bit 8:6 DES/AES chaining. <br /></td></tr>
<tr class="separator:aafd1dab58f4cd74a90fe3a8ec7d6ef30"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af3926fbc64fad6f64b5637a685746167"><td class="memItemLeft" align="right" valign="top"><a id="af3926fbc64fad6f64b5637a685746167"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#af3926fbc64fad6f64b5637a685746167">CX_MASK_ECC_VARIANT</a>&#160;&#160;&#160;(7 &lt;&lt; 6)</td></tr>
<tr class="memdesc:af3926fbc64fad6f64b5637a685746167"><td class="mdescLeft">&#160;</td><td class="mdescRight">Bit 8:6 ECC variant. <br /></td></tr>
<tr class="separator:af3926fbc64fad6f64b5637a685746167"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a195cfaa66abb04924a5d12c0ee80f1ec"><td class="memItemLeft" align="right" valign="top"><a id="a195cfaa66abb04924a5d12c0ee80f1ec"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a195cfaa66abb04924a5d12c0ee80f1ec">CX_MASK_RND</a>&#160;&#160;&#160;(7 &lt;&lt; 9)</td></tr>
<tr class="memdesc:a195cfaa66abb04924a5d12c0ee80f1ec"><td class="mdescLeft">&#160;</td><td class="mdescRight">Bit 11:9 Random number generation. <br /></td></tr>
<tr class="separator:a195cfaa66abb04924a5d12c0ee80f1ec"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4550b2e093cd42ccf24e6b62df3747b4"><td class="memItemLeft" align="right" valign="top"><a id="a4550b2e093cd42ccf24e6b62df3747b4"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a4550b2e093cd42ccf24e6b62df3747b4">CX_MASK_EC</a>&#160;&#160;&#160;(7 &lt;&lt; 12)</td></tr>
<tr class="memdesc:a4550b2e093cd42ccf24e6b62df3747b4"><td class="mdescLeft">&#160;</td><td class="mdescRight">Bit 14:12: ECDH and ECSCHNORR specificities. <br /></td></tr>
<tr class="separator:a4550b2e093cd42ccf24e6b62df3747b4"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a415fa7cacd58f8c01b0733c30a5c829a"><td class="memItemLeft" align="right" valign="top"><a id="a415fa7cacd58f8c01b0733c30a5c829a"></a>
#define&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a415fa7cacd58f8c01b0733c30a5c829a">CX_NO_REINIT</a>&#160;&#160;&#160;(1 &lt;&lt; 15)</td></tr>
<tr class="memdesc:a415fa7cacd58f8c01b0733c30a5c829a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Bit 15: No reinitialization. <br /></td></tr>
<tr class="separator:a415fa7cacd58f8c01b0733c30a5c829a"><td class="memSeparator" colspan="2">&#160;</td></tr>
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
<td>15 </td><td>1000000000000000 </td><td>CX_NO_REINIT </td><td>Do not reinitialize the context on CX_LAST </td><td></td></tr>
<tr>
<td>14:12 </td><td>0111000000000000 </td><td>CX_ECSCHNORR_Z </td><td>Zilliqa scheme </td><td>ECSCHNORR </td></tr>
<tr>
<td>14:12 </td><td>0110000000000000 </td><td>CX_ECSCHNORR_LIBSECP </td><td>ECSCHNORR according to libsecp256k1 </td><td>ECSCHNORR </td></tr>
<tr>
<td>14:12 </td><td>0101000000000000 </td><td>CX_ECSCHNORR_BSI03111 </td><td>ECSCHNORR according to BSI TR-03111 </td><td>ECSCHNORR </td></tr>
<tr>
<td>14:12 </td><td>0100000000000000 </td><td>CX_ECSCHNORR_ISO14888_X </td><td>ECSCHNORR according to ISO/IEC 14888-3 </td><td>ECSCHNORR </td></tr>
<tr>
<td>14:12 </td><td>0011000000000000 </td><td>CX_ECSCHNORR_ISO14888_XY </td><td>ECSCHNORR according to ISO/IEC 14888-3 </td><td>ECSCHNORR </td></tr>
<tr>
<td>14:12 </td><td>0010000000000000 </td><td>CX_ECDH_X </td><td>ECDH with the x-coordinate of the point </td><td>ECDH </td></tr>
<tr>
<td>14:12 </td><td>0001000000000000 </td><td>CX_ECDH_POINT </td><td>ECDH with a point </td><td>ECDH </td></tr>
<tr>
<td>11:9 </td><td>0000100000000000 </td><td>CX_RND_PROVIDED </td><td>Provided random </td><td></td></tr>
<tr>
<td>11:9 </td><td>0000011000000000 </td><td>CX_RND_RFC6979 </td><td>Random from RFC6979 </td><td></td></tr>
<tr>
<td>11:9 </td><td>0000010000000000 </td><td>CX_RND_TRNG </td><td>Random from a PRNG </td><td></td></tr>
<tr>
<td>11:9 </td><td>0000001000000000 </td><td>CX_RND_PRNG </td><td>Random from a TRNG </td><td></td></tr>
<tr>
<td>8:6 </td><td>0000000100000000 </td><td>CX_CHAIN_OFB </td><td>Output feedback mode </td><td>AES/DES </td></tr>
<tr>
<td>8:6 </td><td>0000000011000000 </td><td>CX_CHAIN_CFB </td><td>Cipher feedback mode </td><td>AES/DES </td></tr>
<tr>
<td>8:6 </td><td>0000000010000000 </td><td>CX_CHAIN_CTR </td><td>Counter mode </td><td>AES/DES </td></tr>
<tr>
<td>8:6 </td><td>0000000001000000 </td><td>CX_CHAIN_CBC </td><td>Cipher block chaining mode </td><td>AES/DES </td></tr>
<tr>
<td>8:6 </td><td>0000000001000000 </td><td>CX_NO_CANONICAL </td><td>Do not compute a canonical signature </td><td>ECDSA/EDDSA/ECSCHNORR </td></tr>
<tr>
<td>8:6 </td><td>0000000000000000 </td><td>CX_CHAIN_ECB </td><td>Electronic codebook mode </td><td>AES/DES </td></tr>
<tr>
<td>5:3 </td><td>0000000010100000 </td><td>CX_PAD_PKCS1_OAEP </td><td>PKCS1_OAEP padding </td><td></td></tr>
<tr>
<td>5:3 </td><td>0000000010000000 </td><td>CX_PAD_PKCS1_PSS </td><td>PKCS1_PSS padding </td><td></td></tr>
<tr>
<td>5:3 </td><td>0000000001100000 </td><td>CX_PAD_PKCS1_1o5 </td><td>PKCS1-v1_5 padding </td><td></td></tr>
<tr>
<td>5:3 </td><td>0000000001000000 </td><td>CX_PAD_ISO9797M2 </td><td>ISO9797 padding, method 2 </td><td></td></tr>
<tr>
<td>5:3 </td><td>0000000000100000 </td><td>CX_PAD_ISO9797M1 </td><td>ISO9797 padding, method 1 </td><td></td></tr>
<tr>
<td>5:3 </td><td>0000000000000000 </td><td>CX_PAD_NONE </td><td>No padding </td><td></td></tr>
<tr>
<td>2:1 </td><td>0000000000000110 </td><td>CX_SIGN </td><td>Signature </td><td>AES/DES </td></tr>
<tr>
<td>2:1 </td><td>0000000000000100 </td><td>CX_ENCRYPT </td><td>Encryption </td><td>AES/DES </td></tr>
<tr>
<td>2:1 </td><td>0000000000000010 </td><td>CX_VERIFY </td><td>Signature verification </td><td>AES/DES </td></tr>
<tr>
<td>2:1 </td><td>0000000000000000 </td><td>CX_DECRYPT </td><td>Decryption </td><td>AES/DES </td></tr>
<tr>
<td>0 </td><td>0000000000000000 </td><td>CX_LAST </td><td>Last block </td><td></td></tr>
</table>

</div>
</div>
