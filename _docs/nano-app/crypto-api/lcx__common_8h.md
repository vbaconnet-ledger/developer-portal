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
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../uint64__s">uint64_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">64-bit types, native or by-hands, depending on target and/or compiler support.  <a href="../uint64__s#details">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:a1c8ed4b72dac6929d882e2aeb0261081"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a1c8ed4b72dac6929d882e2aeb0261081">ARCH_LITTLE_ENDIAN</a></td></tr>
<tr class="memitem:ad87dae5ad74e16849c6751cc9d29c98b"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#ad87dae5ad74e16849c6751cc9d29c98b">CX_FLAG</a></td></tr>
<tr class="memdesc:ad87dae5ad74e16849c6751cc9d29c98b"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Cryptography flags.  <a href="#ad87dae5ad74e16849c6751cc9d29c98b">More...</a><br /></td></tr>
<tr class="memitem:af11e07ffd4b2daabe18e74d896e640fd"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#af11e07ffd4b2daabe18e74d896e640fd">CX_LAST</a>&#160;&#160;&#160;(1 &lt;&lt; 0)</td></tr>
<tr class="memdesc:af11e07ffd4b2daabe18e74d896e640fd"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 0: Last block.  <a href="#af11e07ffd4b2daabe18e74d896e640fd">More...</a><br /></td></tr>
<tr class="memitem:a77be4652a5c0e49b1e888c82719180b3"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a77be4652a5c0e49b1e888c82719180b3">CX_SIG_MODE</a>&#160;&#160;&#160;(1 &lt;&lt; 1)</td></tr>
<tr class="memdesc:a77be4652a5c0e49b1e888c82719180b3"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 1: Signature or verification.  <a href="#a77be4652a5c0e49b1e888c82719180b3">More...</a><br /></td></tr>
<tr class="memitem:a7446f0b9e640c7be705a2668ecff033c"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a7446f0b9e640c7be705a2668ecff033c">CX_MASK_SIGCRYPT</a>&#160;&#160;&#160;(3 &lt;&lt; 1)</td></tr>
<tr class="memdesc:a7446f0b9e640c7be705a2668ecff033c"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 2:1: Signature and/or encryption.  <a href="#a7446f0b9e640c7be705a2668ecff033c">More...</a><br /></td></tr>
<tr class="memitem:a7b0b82cc182a91851669fad43024482a"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a7b0b82cc182a91851669fad43024482a">CX_ENCRYPT</a>&#160;&#160;&#160;(2 &lt;&lt; 1)</td></tr>
<tr class="memitem:aab47e8335e90de984f9e18a8e1e257fd"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#aab47e8335e90de984f9e18a8e1e257fd">CX_DECRYPT</a>&#160;&#160;&#160;(0 &lt;&lt; 1)</td></tr>
<tr class="memitem:ad70e3c9b406dc69c46723cbda68e784d"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#ad70e3c9b406dc69c46723cbda68e784d">CX_SIGN</a>&#160;&#160;&#160;(<a class="el" href="../lcx__common_8h#a77be4652a5c0e49b1e888c82719180b3">CX_SIG_MODE</a> | <a class="el" href="../lcx__common_8h#a7b0b82cc182a91851669fad43024482a">CX_ENCRYPT</a>)</td></tr>
<tr class="memitem:af9babb71b42e47c34952ca6ad702dff2"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#af9babb71b42e47c34952ca6ad702dff2">CX_VERIFY</a>&#160;&#160;&#160;(<a class="el" href="../lcx__common_8h#a77be4652a5c0e49b1e888c82719180b3">CX_SIG_MODE</a> | <a class="el" href="../lcx__common_8h#aab47e8335e90de984f9e18a8e1e257fd">CX_DECRYPT</a>)</td></tr>
<tr class="memitem:abbe30a7ff4920fdb0655e4110d68ec47"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#abbe30a7ff4920fdb0655e4110d68ec47">CX_MASK_PAD</a>&#160;&#160;&#160;(7 &lt;&lt; 3)</td></tr>
<tr class="memdesc:abbe30a7ff4920fdb0655e4110d68ec47"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 5:3: Padding.  <a href="#abbe30a7ff4920fdb0655e4110d68ec47">More...</a><br /></td></tr>
<tr class="memitem:a003f425e72b2d76f5781be292cfdb23f"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a003f425e72b2d76f5781be292cfdb23f">CX_PAD_NONE</a>&#160;&#160;&#160;(0 &lt;&lt; 3)</td></tr>
<tr class="memitem:ae025f4679c4700d76da79310a65f5338"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#ae025f4679c4700d76da79310a65f5338">CX_PAD_ISO9797M1</a>&#160;&#160;&#160;(1 &lt;&lt; 3)</td></tr>
<tr class="memitem:a46681bc47f7583b80b2f1b5d71d573a4"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a46681bc47f7583b80b2f1b5d71d573a4">CX_PAD_ISO9797M2</a>&#160;&#160;&#160;(2 &lt;&lt; 3)</td></tr>
<tr class="memitem:afc950d9c9ef0793e1268820a5048fc48"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#afc950d9c9ef0793e1268820a5048fc48">CX_PAD_PKCS1_1o5</a>&#160;&#160;&#160;(3 &lt;&lt; 3)</td></tr>
<tr class="memitem:a79bcccbd7c655047832e9d58061f162a"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a79bcccbd7c655047832e9d58061f162a">CX_PAD_PKCS1_PSS</a>&#160;&#160;&#160;(4 &lt;&lt; 3)</td></tr>
<tr class="memitem:a4ed2f2e4adc3f1d9f13f93330a5697e1"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a4ed2f2e4adc3f1d9f13f93330a5697e1">CX_PAD_PKCS1_OAEP</a>&#160;&#160;&#160;(5 &lt;&lt; 3)</td></tr>
<tr class="memitem:aafd1dab58f4cd74a90fe3a8ec7d6ef30"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#aafd1dab58f4cd74a90fe3a8ec7d6ef30">CX_MASK_CHAIN</a>&#160;&#160;&#160;(7 &lt;&lt; 6)</td></tr>
<tr class="memdesc:aafd1dab58f4cd74a90fe3a8ec7d6ef30"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 8:6 DES/AES chaining.  <a href="#aafd1dab58f4cd74a90fe3a8ec7d6ef30">More...</a><br /></td></tr>
<tr class="memitem:af3a63eca35f0ee2931f99f2c92487b5a"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#af3a63eca35f0ee2931f99f2c92487b5a">CX_CHAIN_ECB</a>&#160;&#160;&#160;(0 &lt;&lt; 6)</td></tr>
<tr class="memitem:a628e3dd49150366c6b42e5a3ae8b2377"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a628e3dd49150366c6b42e5a3ae8b2377">CX_CHAIN_CBC</a>&#160;&#160;&#160;(1 &lt;&lt; 6)</td></tr>
<tr class="memitem:a78a5faaf70c6cc443935b09f757dc1c0"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a78a5faaf70c6cc443935b09f757dc1c0">CX_CHAIN_CTR</a>&#160;&#160;&#160;(2 &lt;&lt; 6)</td></tr>
<tr class="memitem:a18d731ee6627e5dce72849a35f67a97d"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a18d731ee6627e5dce72849a35f67a97d">CX_CHAIN_CFB</a>&#160;&#160;&#160;(3 &lt;&lt; 6)</td></tr>
<tr class="memitem:a7ee9b98b41cac2b71987f205ad26e019"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a7ee9b98b41cac2b71987f205ad26e019">CX_CHAIN_OFB</a>&#160;&#160;&#160;(4 &lt;&lt; 6)</td></tr>
<tr class="memitem:af3926fbc64fad6f64b5637a685746167"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#af3926fbc64fad6f64b5637a685746167">CX_MASK_ECC_VARIANT</a>&#160;&#160;&#160;(7 &lt;&lt; 6)</td></tr>
<tr class="memdesc:af3926fbc64fad6f64b5637a685746167"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 8:6 ECC variant.  <a href="#af3926fbc64fad6f64b5637a685746167">More...</a><br /></td></tr>
<tr class="memitem:a78bff609954cb2cddf41a5c9e1416f89"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a78bff609954cb2cddf41a5c9e1416f89">CX_NO_CANONICAL</a>&#160;&#160;&#160;(1 &lt;&lt; 6)</td></tr>
<tr class="memitem:a195cfaa66abb04924a5d12c0ee80f1ec"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a195cfaa66abb04924a5d12c0ee80f1ec">CX_MASK_RND</a>&#160;&#160;&#160;(7 &lt;&lt; 9)</td></tr>
<tr class="memdesc:a195cfaa66abb04924a5d12c0ee80f1ec"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 11:9 Random number generation.  <a href="#a195cfaa66abb04924a5d12c0ee80f1ec">More...</a><br /></td></tr>
<tr class="memitem:a671e2194d5e21818ffd2d878e1bb512f"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a671e2194d5e21818ffd2d878e1bb512f">CX_RND_PRNG</a>&#160;&#160;&#160;(1 &lt;&lt; 9)</td></tr>
<tr class="memitem:ac3a128f1c53da1eab4f1ef20bc2ba53a"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#ac3a128f1c53da1eab4f1ef20bc2ba53a">CX_RND_TRNG</a>&#160;&#160;&#160;(2 &lt;&lt; 9)</td></tr>
<tr class="memitem:a4cd9600823d15b09e091ecc0bc2628f9"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a4cd9600823d15b09e091ecc0bc2628f9">CX_RND_RFC6979</a>&#160;&#160;&#160;(3 &lt;&lt; 9)</td></tr>
<tr class="memitem:ab2a39455697f64e5e7ea53be27ea08a7"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#ab2a39455697f64e5e7ea53be27ea08a7">CX_RND_PROVIDED</a>&#160;&#160;&#160;(4 &lt;&lt; 9)</td></tr>
<tr class="memitem:a4550b2e093cd42ccf24e6b62df3747b4"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a4550b2e093cd42ccf24e6b62df3747b4">CX_MASK_EC</a>&#160;&#160;&#160;(7 &lt;&lt; 12)</td></tr>
<tr class="memdesc:a4550b2e093cd42ccf24e6b62df3747b4"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 14:12: ECDH and ECSCHNORR specificities.  <a href="#a4550b2e093cd42ccf24e6b62df3747b4">More...</a><br /></td></tr>
<tr class="memitem:a5d018c0e45957ac4c16c35b1c9578bd3"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a5d018c0e45957ac4c16c35b1c9578bd3">CX_ECSCHNORR_BIP0340</a>&#160;&#160;&#160;(0 &lt;&lt; 12)</td></tr>
<tr class="memitem:a3a28b93a073d3559a4daa34581a49435"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a3a28b93a073d3559a4daa34581a49435">CX_ECDH_POINT</a>&#160;&#160;&#160;(1 &lt;&lt; 12)</td></tr>
<tr class="memitem:a1693fc2767844b509e747d705aaae7ef"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a1693fc2767844b509e747d705aaae7ef">CX_ECDH_X</a>&#160;&#160;&#160;(2 &lt;&lt; 12)</td></tr>
<tr class="memitem:aef326595bef46d43b61e8ed11d3df1f1"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#aef326595bef46d43b61e8ed11d3df1f1">CX_ECSCHNORR_ISO14888_XY</a>&#160;&#160;&#160;(3 &lt;&lt; 12)</td></tr>
<tr class="memitem:a0ef471c29295333c5ae4cc91421ac832"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a0ef471c29295333c5ae4cc91421ac832">CX_ECSCHNORR_ISO14888_X</a>&#160;&#160;&#160;(4 &lt;&lt; 12)</td></tr>
<tr class="memitem:a19fb349d7092972a471cae91e8e51ee2"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a19fb349d7092972a471cae91e8e51ee2">CX_ECSCHNORR_BSI03111</a>&#160;&#160;&#160;(5 &lt;&lt; 12)</td></tr>
<tr class="memitem:ae03ee8f950cc44aa549cf61b67864c42"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#ae03ee8f950cc44aa549cf61b67864c42">CX_ECSCHNORR_LIBSECP</a>&#160;&#160;&#160;(6 &lt;&lt; 12)</td></tr>
<tr class="memitem:a8fbb54a52e6b667efc9644478a8ca0e8"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a8fbb54a52e6b667efc9644478a8ca0e8">CX_ECSCHNORR_Z</a>&#160;&#160;&#160;(7 &lt;&lt; 12)</td></tr>
<tr class="memitem:a415fa7cacd58f8c01b0733c30a5c829a"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a415fa7cacd58f8c01b0733c30a5c829a">CX_NO_REINIT</a>&#160;&#160;&#160;(1 &lt;&lt; 15)</td></tr>
<tr class="memdesc:a415fa7cacd58f8c01b0733c30a5c829a"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Bit 15: No reinitialization.  <a href="#a415fa7cacd58f8c01b0733c30a5c829a">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:a6da1223e6d4d3264a052655b5ed019c9"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../uint64__s">uint64_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__common_8h#a6da1223e6d4d3264a052655b5ed019c9">uint64bits_t</a></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Cryptography flags. </p>
<p>Flags required by some functions. </p>
</div><h2 class="groupheader">Macro Definition Documentation</h2>
<a id="a1c8ed4b72dac6929d882e2aeb0261081"></a>
<h2 class="memtitle">ARCH_LITTLE_ENDIAN</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define ARCH_LITTLE_ENDIAN</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a628e3dd49150366c6b42e5a3ae8b2377"></a>
<h2 class="memtitle">CX_CHAIN_CBC</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_CHAIN_CBC&#160;&#160;&#160;(1 &lt;&lt; 6)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a18d731ee6627e5dce72849a35f67a97d"></a>
<h2 class="memtitle">CX_CHAIN_CFB</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_CHAIN_CFB&#160;&#160;&#160;(3 &lt;&lt; 6)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a78a5faaf70c6cc443935b09f757dc1c0"></a>
<h2 class="memtitle">CX_CHAIN_CTR</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_CHAIN_CTR&#160;&#160;&#160;(2 &lt;&lt; 6)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="af3a63eca35f0ee2931f99f2c92487b5a"></a>
<h2 class="memtitle">CX_CHAIN_ECB</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_CHAIN_ECB&#160;&#160;&#160;(0 &lt;&lt; 6)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a7ee9b98b41cac2b71987f205ad26e019"></a>
<h2 class="memtitle">CX_CHAIN_OFB</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_CHAIN_OFB&#160;&#160;&#160;(4 &lt;&lt; 6)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="aab47e8335e90de984f9e18a8e1e257fd"></a>
<h2 class="memtitle">CX_DECRYPT</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_DECRYPT&#160;&#160;&#160;(0 &lt;&lt; 1)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a3a28b93a073d3559a4daa34581a49435"></a>
<h2 class="memtitle">CX_ECDH_POINT</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_ECDH_POINT&#160;&#160;&#160;(1 &lt;&lt; 12)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p class="reference">Referenced by <a class="el" href="../lcx__ecdh_8h#a9a4febd251d944d6c04b43c7330740ce">cx_ecdh()</a>.</p>

</div>
</div>
<a id="a1693fc2767844b509e747d705aaae7ef"></a>
<h2 class="memtitle">CX_ECDH_X</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_ECDH_X&#160;&#160;&#160;(2 &lt;&lt; 12)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a5d018c0e45957ac4c16c35b1c9578bd3"></a>
<h2 class="memtitle">CX_ECSCHNORR_BIP0340</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_ECSCHNORR_BIP0340&#160;&#160;&#160;(0 &lt;&lt; 12)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a19fb349d7092972a471cae91e8e51ee2"></a>
<h2 class="memtitle">CX_ECSCHNORR_BSI03111</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_ECSCHNORR_BSI03111&#160;&#160;&#160;(5 &lt;&lt; 12)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a0ef471c29295333c5ae4cc91421ac832"></a>
<h2 class="memtitle">CX_ECSCHNORR_ISO14888_X</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_ECSCHNORR_ISO14888_X&#160;&#160;&#160;(4 &lt;&lt; 12)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="aef326595bef46d43b61e8ed11d3df1f1"></a>
<h2 class="memtitle">CX_ECSCHNORR_ISO14888_XY</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_ECSCHNORR_ISO14888_XY&#160;&#160;&#160;(3 &lt;&lt; 12)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="ae03ee8f950cc44aa549cf61b67864c42"></a>
<h2 class="memtitle">CX_ECSCHNORR_LIBSECP</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_ECSCHNORR_LIBSECP&#160;&#160;&#160;(6 &lt;&lt; 12)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a8fbb54a52e6b667efc9644478a8ca0e8"></a>
<h2 class="memtitle">CX_ECSCHNORR_Z</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_ECSCHNORR_Z&#160;&#160;&#160;(7 &lt;&lt; 12)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a7b0b82cc182a91851669fad43024482a"></a>
<h2 class="memtitle">CX_ENCRYPT</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_ENCRYPT&#160;&#160;&#160;(2 &lt;&lt; 1)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
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
<th colspan="4">Bits position </th><th colspan="4">Values </th><th colspan="4">Flags </th><th colspan="4">Meaning </th><th colspan="4">Algorithms  </th></tr>
<tr>
<td colspan="4">15 </td><td colspan="4">1000000000000000 </td><td colspan="4">CX_NO_REINIT </td><td colspan="4">Do not reinitialize the context on CX_LAST </td></tr>
<tr>
<td colspan="4">14:12 </td><td colspan="4">0111000000000000 </td><td colspan="4">CX_ECSCHNORR_Z </td><td colspan="4">Zilliqa scheme </td><td colspan="4">ECSCHNORR </td></tr>
<tr>
<td colspan="4">14:12 </td><td colspan="4">0110000000000000 </td><td colspan="4">CX_ECSCHNORR_LIBSECP </td><td colspan="4">ECSCHNORR according to libsecp256k1 </td><td colspan="4">ECSCHNORR </td></tr>
<tr>
<td colspan="4">14:12 </td><td colspan="4">0101000000000000 </td><td colspan="4">CX_ECSCHNORR_BSI03111 </td><td colspan="4">ECSCHNORR according to BSI TR-03111 </td><td colspan="4">ECSCHNORR </td></tr>
<tr>
<td colspan="4">14:12 </td><td colspan="4">0100000000000000 </td><td colspan="4">CX_ECSCHNORR_ISO14888_X </td><td colspan="4">ECSCHNORR according to ISO/IEC 14888-3 </td><td colspan="4">ECSCHNORR </td></tr>
<tr>
<td colspan="4">14:12 </td><td colspan="4">0011000000000000 </td><td colspan="4">CX_ECSCHNORR_ISO14888_XY </td><td colspan="4">ECSCHNORR according to ISO/IEC 14888-3 </td><td colspan="4">ECSCHNORR </td></tr>
<tr>
<td colspan="4">14:12 </td><td colspan="4">0010000000000000 </td><td colspan="4">CX_ECDH_X </td><td colspan="4">ECDH with the x-coordinate of the point </td><td colspan="4">ECDH </td></tr>
<tr>
<td colspan="4">14:12 </td><td colspan="4">0001000000000000 </td><td colspan="4">CX_ECDH_POINT </td><td colspan="4">ECDH with a point </td><td colspan="4">ECDH </td></tr>
<tr>
<td colspan="4">11:9 </td><td colspan="4">0000100000000000 </td><td colspan="4">CX_RND_PROVIDED </td><td colspan="4">Provided random </td></tr>
<tr>
<td colspan="4">11:9 </td><td colspan="4">0000011000000000 </td><td colspan="4">CX_RND_RFC6979 </td><td colspan="4">Random from RFC6979 </td></tr>
<tr>
<td colspan="4">11:9 </td><td colspan="4">0000010000000000 </td><td colspan="4">CX_RND_TRNG </td><td colspan="4">Random from a PRNG </td></tr>
<tr>
<td colspan="4">11:9 </td><td colspan="4">0000001000000000 </td><td colspan="4">CX_RND_PRNG </td><td colspan="4">Random from a TRNG </td></tr>
<tr>
<td colspan="4">8:6 </td><td colspan="4">0000000100000000 </td><td colspan="4">CX_CHAIN_OFB </td><td colspan="4">Output feedback mode </td><td colspan="4">AES/DES </td></tr>
<tr>
<td colspan="4">8:6 </td><td colspan="4">0000000011000000 </td><td colspan="4">CX_CHAIN_CFB </td><td colspan="4">Cipher feedback mode </td><td colspan="4">AES/DES </td></tr>
<tr>
<td colspan="4">8:6 </td><td colspan="4">0000000010000000 </td><td colspan="4">CX_CHAIN_CTR </td><td colspan="4">Counter mode </td><td colspan="4">AES/DES </td></tr>
<tr>
<td colspan="4">8:6 </td><td colspan="4">0000000001000000 </td><td colspan="4">CX_CHAIN_CBC </td><td colspan="4">Cipher block chaining mode </td><td colspan="4">AES/DES </td></tr>
<tr>
<td colspan="4">8:6 </td><td colspan="4">0000000001000000 </td><td colspan="4">CX_NO_CANONICAL </td><td colspan="4">Do not compute a canonical signature </td><td colspan="4">ECDSA/EDDSA/ECSCHNORR </td></tr>
<tr>
<td colspan="4">8:6 </td><td colspan="4">0000000000000000 </td><td colspan="4">CX_CHAIN_ECB </td><td colspan="4">Electronic codebook mode </td><td colspan="4">AES/DES </td></tr>
<tr>
<td colspan="4">5:3 </td><td colspan="4">0000000010100000 </td><td colspan="4">CX_PAD_PKCS1_OAEP </td><td colspan="4">PKCS1_OAEP padding </td></tr>
<tr>
<td colspan="4">5:3 </td><td colspan="4">0000000010000000 </td><td colspan="4">CX_PAD_PKCS1_PSS </td><td colspan="4">PKCS1_PSS padding </td></tr>
<tr>
<td colspan="4">5:3 </td><td colspan="4">0000000001100000 </td><td colspan="4">CX_PAD_PKCS1_1o5 </td><td colspan="4">PKCS1-v1_5 padding </td></tr>
<tr>
<td colspan="4">5:3 </td><td colspan="4">0000000001000000 </td><td colspan="4">CX_PAD_ISO9797M2 </td><td colspan="4">ISO9797 padding, method 2 </td></tr>
<tr>
<td colspan="4">5:3 </td><td colspan="4">0000000000100000 </td><td colspan="4">CX_PAD_ISO9797M1 </td><td colspan="4">ISO9797 padding, method 1 </td></tr>
<tr>
<td colspan="4">5:3 </td><td colspan="4">0000000000000000 </td><td colspan="4">CX_PAD_NONE </td><td colspan="4">No padding </td></tr>
<tr>
<td colspan="4">2:1 </td><td colspan="4">0000000000000110 </td><td colspan="4">CX_SIGN </td><td colspan="4">Signature </td><td colspan="4">AES/DES </td></tr>
<tr>
<td colspan="4">2:1 </td><td colspan="4">0000000000000100 </td><td colspan="4">CX_ENCRYPT </td><td colspan="4">Encryption </td><td colspan="4">AES/DES </td></tr>
<tr>
<td colspan="4">2:1 </td><td colspan="4">0000000000000010 </td><td colspan="4">CX_VERIFY </td><td colspan="4">Signature verification </td><td colspan="4">AES/DES </td></tr>
<tr>
<td colspan="4">2:1 </td><td colspan="4">0000000000000000 </td><td colspan="4">CX_DECRYPT </td><td colspan="4">Decryption </td><td colspan="4">AES/DES </td></tr>
<tr>
<td colspan="4">0 </td><td colspan="4">0000000000000001 </td><td colspan="4">CX_LAST </td><td colspan="4">Last block </td></tr>
</table>

</div>
</div>
<a id="af11e07ffd4b2daabe18e74d896e640fd"></a>
<h2 class="memtitle">CX_LAST</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_LAST&#160;&#160;&#160;(1 &lt;&lt; 0)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Bit 0: Last block. </p>

</div>
</div>
<a id="aafd1dab58f4cd74a90fe3a8ec7d6ef30"></a>
<h2 class="memtitle">CX_MASK_CHAIN</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_MASK_CHAIN&#160;&#160;&#160;(7 &lt;&lt; 6)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Bit 8:6 DES/AES chaining. </p>

</div>
</div>
<a id="a4550b2e093cd42ccf24e6b62df3747b4"></a>
<h2 class="memtitle">CX_MASK_EC</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_MASK_EC&#160;&#160;&#160;(7 &lt;&lt; 12)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Bit 14:12: ECDH and ECSCHNORR specificities. </p>

<p class="reference">Referenced by <a class="el" href="../lcx__ecdh_8h#a9a4febd251d944d6c04b43c7330740ce">cx_ecdh()</a>.</p>

</div>
</div>
<a id="af3926fbc64fad6f64b5637a685746167"></a>
<h2 class="memtitle">CX_MASK_ECC_VARIANT</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_MASK_ECC_VARIANT&#160;&#160;&#160;(7 &lt;&lt; 6)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Bit 8:6 ECC variant. </p>

</div>
</div>
<a id="abbe30a7ff4920fdb0655e4110d68ec47"></a>
<h2 class="memtitle">CX_MASK_PAD</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_MASK_PAD&#160;&#160;&#160;(7 &lt;&lt; 3)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Bit 5:3: Padding. </p>

</div>
</div>
<a id="a195cfaa66abb04924a5d12c0ee80f1ec"></a>
<h2 class="memtitle">CX_MASK_RND</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_MASK_RND&#160;&#160;&#160;(7 &lt;&lt; 9)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Bit 11:9 Random number generation. </p>

</div>
</div>
<a id="a7446f0b9e640c7be705a2668ecff033c"></a>
<h2 class="memtitle">CX_MASK_SIGCRYPT</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_MASK_SIGCRYPT&#160;&#160;&#160;(3 &lt;&lt; 1)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Bit 2:1: Signature and/or encryption. </p>

</div>
</div>
<a id="a78bff609954cb2cddf41a5c9e1416f89"></a>
<h2 class="memtitle">CX_NO_CANONICAL</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_NO_CANONICAL&#160;&#160;&#160;(1 &lt;&lt; 6)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a415fa7cacd58f8c01b0733c30a5c829a"></a>
<h2 class="memtitle">CX_NO_REINIT</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_NO_REINIT&#160;&#160;&#160;(1 &lt;&lt; 15)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Bit 15: No reinitialization. </p>

</div>
</div>
<a id="ae025f4679c4700d76da79310a65f5338"></a>
<h2 class="memtitle">CX_PAD_ISO9797M1</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_PAD_ISO9797M1&#160;&#160;&#160;(1 &lt;&lt; 3)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a46681bc47f7583b80b2f1b5d71d573a4"></a>
<h2 class="memtitle">CX_PAD_ISO9797M2</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_PAD_ISO9797M2&#160;&#160;&#160;(2 &lt;&lt; 3)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a003f425e72b2d76f5781be292cfdb23f"></a>
<h2 class="memtitle">CX_PAD_NONE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_PAD_NONE&#160;&#160;&#160;(0 &lt;&lt; 3)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="afc950d9c9ef0793e1268820a5048fc48"></a>
<h2 class="memtitle">CX_PAD_PKCS1_1o5</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_PAD_PKCS1_1o5&#160;&#160;&#160;(3 &lt;&lt; 3)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a4ed2f2e4adc3f1d9f13f93330a5697e1"></a>
<h2 class="memtitle">CX_PAD_PKCS1_OAEP</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_PAD_PKCS1_OAEP&#160;&#160;&#160;(5 &lt;&lt; 3)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a79bcccbd7c655047832e9d58061f162a"></a>
<h2 class="memtitle">CX_PAD_PKCS1_PSS</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_PAD_PKCS1_PSS&#160;&#160;&#160;(4 &lt;&lt; 3)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a671e2194d5e21818ffd2d878e1bb512f"></a>
<h2 class="memtitle">CX_RND_PRNG</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_RND_PRNG&#160;&#160;&#160;(1 &lt;&lt; 9)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="ab2a39455697f64e5e7ea53be27ea08a7"></a>
<h2 class="memtitle">CX_RND_PROVIDED</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_RND_PROVIDED&#160;&#160;&#160;(4 &lt;&lt; 9)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a4cd9600823d15b09e091ecc0bc2628f9"></a>
<h2 class="memtitle">CX_RND_RFC6979</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_RND_RFC6979&#160;&#160;&#160;(3 &lt;&lt; 9)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="ac3a128f1c53da1eab4f1ef20bc2ba53a"></a>
<h2 class="memtitle">CX_RND_TRNG</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_RND_TRNG&#160;&#160;&#160;(2 &lt;&lt; 9)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="a77be4652a5c0e49b1e888c82719180b3"></a>
<h2 class="memtitle">CX_SIG_MODE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_SIG_MODE&#160;&#160;&#160;(1 &lt;&lt; 1)</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Bit 1: Signature or verification. </p>

</div>
</div>
<a id="ad70e3c9b406dc69c46723cbda68e784d"></a>
<h2 class="memtitle">CX_SIGN</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_SIGN&#160;&#160;&#160;(<a class="el" href="../lcx__common_8h#a77be4652a5c0e49b1e888c82719180b3">CX_SIG_MODE</a> | <a class="el" href="../lcx__common_8h#a7b0b82cc182a91851669fad43024482a">CX_ENCRYPT</a>)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<a id="af9babb71b42e47c34952ca6ad702dff2"></a>
<h2 class="memtitle">CX_VERIFY</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_VERIFY&#160;&#160;&#160;(<a class="el" href="../lcx__common_8h#a77be4652a5c0e49b1e888c82719180b3">CX_SIG_MODE</a> | <a class="el" href="../lcx__common_8h#aab47e8335e90de984f9e18a8e1e257fd">CX_DECRYPT</a>)</td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<h2 class="groupheader">Typedef Documentation</h2>
<a id="a6da1223e6d4d3264a052655b5ed019c9"></a>
<h2 class="memtitle">uint64bits_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../uint64__s">uint64_s</a> <a class="el" href="../lcx__common_8h#a6da1223e6d4d3264a052655b5ed019c9">uint64bits_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
