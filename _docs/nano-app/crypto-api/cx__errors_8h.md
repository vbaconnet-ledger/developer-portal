---
title: cx__errors_8h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>Error codes related to cryptography and arithmetic operations.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="define-members"></a>
Macros</h2></td></tr>
<tr class="memitem:a34b5ac9d964a6cb39bc7093c15f81ce0"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a34b5ac9d964a6cb39bc7093c15f81ce0">CX_CHECK</a>(call)</td></tr>
<tr class="memdesc:a34b5ac9d964a6cb39bc7093c15f81ce0"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Check the error code of a function.  <a href="#a34b5ac9d964a6cb39bc7093c15f81ce0">More...</a><br /></td></tr>
<tr class="memitem:a946326c05272ff8bdca1a4f231c03132"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a946326c05272ff8bdca1a4f231c03132">CX_CHECK_IGNORE_CARRY</a>(call)</td></tr>
<tr class="memdesc:a946326c05272ff8bdca1a4f231c03132"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Check the error code of a function and ignore it if CX_CARRY.  <a href="#a946326c05272ff8bdca1a4f231c03132">More...</a><br /></td></tr>
<tr class="memitem:af2c41817c51563d574f8a5673fd3ef54"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#af2c41817c51563d574f8a5673fd3ef54">CX_OK</a>&#160;&#160;&#160;0x00000000</td></tr>
<tr class="memdesc:af2c41817c51563d574f8a5673fd3ef54"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Success.  <a href="#af2c41817c51563d574f8a5673fd3ef54">More...</a><br /></td></tr>
<tr class="memitem:afa9639746f8e32f22c7f71b5bc15e43f"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#afa9639746f8e32f22c7f71b5bc15e43f">CX_CARRY</a>&#160;&#160;&#160;0xFFFFFF21</td></tr>
<tr class="memdesc:afa9639746f8e32f22c7f71b5bc15e43f"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">There exists a carry at the end of the operation.  <a href="#afa9639746f8e32f22c7f71b5bc15e43f">More...</a><br /></td></tr>
<tr class="memitem:a7b65e7b0955c53120c3c1cc90629da99"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a7b65e7b0955c53120c3c1cc90629da99">CX_LOCKED</a>&#160;&#160;&#160;0xFFFFFF81</td></tr>
<tr class="memdesc:a7b65e7b0955c53120c3c1cc90629da99"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Multi Precision Integer processor is locked: operations can be done.  <a href="#a7b65e7b0955c53120c3c1cc90629da99">More...</a><br /></td></tr>
<tr class="memitem:acf1d52afb325bd5120e6dfee540e2472"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#acf1d52afb325bd5120e6dfee540e2472">CX_UNLOCKED</a>&#160;&#160;&#160;0xFFFFFF82</td></tr>
<tr class="memdesc:acf1d52afb325bd5120e6dfee540e2472"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Multi Precision Integer processor is unlocked: operations can't be done.  <a href="#acf1d52afb325bd5120e6dfee540e2472">More...</a><br /></td></tr>
<tr class="memitem:a763c784d1a3effd0ccf615a10dba88d2"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a763c784d1a3effd0ccf615a10dba88d2">CX_NOT_LOCKED</a>&#160;&#160;&#160;0xFFFFFF83</td></tr>
<tr class="memdesc:a763c784d1a3effd0ccf615a10dba88d2"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Multi Precision Integer processor is not locked: it cannot be unlocked.  <a href="#a763c784d1a3effd0ccf615a10dba88d2">More...</a><br /></td></tr>
<tr class="memitem:a824eae488445cfec7032ca5e8a4899ae"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a824eae488445cfec7032ca5e8a4899ae">CX_NOT_UNLOCKED</a>&#160;&#160;&#160;0xFFFFFF84</td></tr>
<tr class="memdesc:a824eae488445cfec7032ca5e8a4899ae"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Multi Precision Integer processor is already locked: it cannot be locked.  <a href="#a824eae488445cfec7032ca5e8a4899ae">More...</a><br /></td></tr>
<tr class="memitem:a7d9eec9d0577af83c72672faf193cf03"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a7d9eec9d0577af83c72672faf193cf03">CX_INTERNAL_ERROR</a>&#160;&#160;&#160;0xFFFFFF85</td></tr>
<tr class="memdesc:a7d9eec9d0577af83c72672faf193cf03"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Internal error.  <a href="#a7d9eec9d0577af83c72672faf193cf03">More...</a><br /></td></tr>
<tr class="memitem:a8908c07e8bfef0b2abc6fc545d833ed4"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a8908c07e8bfef0b2abc6fc545d833ed4">CX_INVALID_PARAMETER_SIZE</a>&#160;&#160;&#160;0xFFFFFF86</td></tr>
<tr class="memdesc:a8908c07e8bfef0b2abc6fc545d833ed4"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">A parameter has an invalid size.  <a href="#a8908c07e8bfef0b2abc6fc545d833ed4">More...</a><br /></td></tr>
<tr class="memitem:ae0c133a3d106f6b02f3893a9f356bbbd"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#ae0c133a3d106f6b02f3893a9f356bbbd">CX_INVALID_PARAMETER_VALUE</a>&#160;&#160;&#160;0xFFFFFF87</td></tr>
<tr class="memdesc:ae0c133a3d106f6b02f3893a9f356bbbd"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">A parameter has an invalid value.  <a href="#ae0c133a3d106f6b02f3893a9f356bbbd">More...</a><br /></td></tr>
<tr class="memitem:a727ed72c9c217a588e76ef0e2452b299"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a727ed72c9c217a588e76ef0e2452b299">CX_INVALID_PARAMETER</a>&#160;&#160;&#160;0xFFFFFF88</td></tr>
<tr class="memdesc:a727ed72c9c217a588e76ef0e2452b299"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">A parameter is invalid.  <a href="#a727ed72c9c217a588e76ef0e2452b299">More...</a><br /></td></tr>
<tr class="memitem:a580145ec28ed11a27866a62032fbf05b"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a580145ec28ed11a27866a62032fbf05b">CX_NOT_INVERTIBLE</a>&#160;&#160;&#160;0xFFFFFF89</td></tr>
<tr class="memdesc:a580145ec28ed11a27866a62032fbf05b"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">A value is not invertible.  <a href="#a580145ec28ed11a27866a62032fbf05b">More...</a><br /></td></tr>
<tr class="memitem:a97cdc38e59a5ea3d64c46e29ccd45129"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a97cdc38e59a5ea3d64c46e29ccd45129">CX_OVERFLOW</a>&#160;&#160;&#160;0xFFFFFF8A</td></tr>
<tr class="memdesc:a97cdc38e59a5ea3d64c46e29ccd45129"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">A value overflow occurred.  <a href="#a97cdc38e59a5ea3d64c46e29ccd45129">More...</a><br /></td></tr>
<tr class="memitem:a8fc369f53eb77b4da81d4da935ff7e08"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a8fc369f53eb77b4da81d4da935ff7e08">CX_MEMORY_FULL</a>&#160;&#160;&#160;0xFFFFFF8B</td></tr>
<tr class="memdesc:a8fc369f53eb77b4da81d4da935ff7e08"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Memory is full: allocation is not possible anymore.  <a href="#a8fc369f53eb77b4da81d4da935ff7e08">More...</a><br /></td></tr>
<tr class="memitem:aa875724709a4f517f8a7abcbabf26df1"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#aa875724709a4f517f8a7abcbabf26df1">CX_NO_RESIDUE</a>&#160;&#160;&#160;0xFFFFFF8C</td></tr>
<tr class="memdesc:aa875724709a4f517f8a7abcbabf26df1"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">A quadratic residue cannot be computed.  <a href="#aa875724709a4f517f8a7abcbabf26df1">More...</a><br /></td></tr>
<tr class="memitem:a3f65aabd3dc24ab31ac85f82adfde2ca"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a3f65aabd3dc24ab31ac85f82adfde2ca">CX_EC_INFINITE_POINT</a>&#160;&#160;&#160;0xFFFFFF41</td></tr>
<tr class="memdesc:a3f65aabd3dc24ab31ac85f82adfde2ca"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Point at infinity is hit.  <a href="#a3f65aabd3dc24ab31ac85f82adfde2ca">More...</a><br /></td></tr>
<tr class="memitem:a4629d107a6ca2d26c1e1d51bda2ed5e0"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a4629d107a6ca2d26c1e1d51bda2ed5e0">CX_EC_INVALID_POINT</a>&#160;&#160;&#160;0xFFFFFFA2</td></tr>
<tr class="memdesc:a4629d107a6ca2d26c1e1d51bda2ed5e0"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Point is invalid: it does not belong to the curve.  <a href="#a4629d107a6ca2d26c1e1d51bda2ed5e0">More...</a><br /></td></tr>
<tr class="memitem:a85997852d258d5bbe6c4e33717408777"><td class="memItemLeft" align="right" valign="top">#define&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a85997852d258d5bbe6c4e33717408777">CX_EC_INVALID_CURVE</a>&#160;&#160;&#160;0xFFFFFFA3</td></tr>
<tr class="memdesc:a85997852d258d5bbe6c4e33717408777"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Curve is invalid.  <a href="#a85997852d258d5bbe6c4e33717408777">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:a06db7f567671764f4980db9bc828fa85"><td class="memItemLeft" align="right" valign="top">typedef uint32_t&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a></td></tr>
<tr class="memdesc:a06db7f567671764f4980db9bc828fa85"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Type of error code.  <a href="#a06db7f567671764f4980db9bc828fa85">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Error codes related to cryptography and arithmetic operations. </p>
</div><h2 class="groupheader">Macro Definition Documentation</h2>
<a id="afa9639746f8e32f22c7f71b5bc15e43f"></a>
<h2 class="memtitle">CX_CARRY</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_CARRY&#160;&#160;&#160;0xFFFFFF21</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>There exists a carry at the end of the operation. </p>

<p class="reference">Referenced by <a class="el" href="../lcx__math_8h#a03666ab13301ff979e9537931dfd6a6d">cx_math_add()</a>, and <a class="el" href="../lcx__math_8h#ad939a3a02706fc0891ba00f082ddbc10">cx_math_sub()</a>.</p>

</div>
</div>
<a id="a34b5ac9d964a6cb39bc7093c15f81ce0"></a>
<h2 class="memtitle">CX_CHECK</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_CHECK</td>
          <td class="paramtype">&#160;</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Check the error code of a function. </p>

</div>
</div>
<a id="a946326c05272ff8bdca1a4f231c03132"></a>
<h2 class="memtitle">CX_CHECK_IGNORE_CARRY</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_CHECK_IGNORE_CARRY</td>
          <td class="paramtype">&#160;</td>
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Check the error code of a function and ignore it if CX_CARRY. </p>

</div>
</div>
<a id="a3f65aabd3dc24ab31ac85f82adfde2ca"></a>
<h2 class="memtitle">CX_EC_INFINITE_POINT</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_EC_INFINITE_POINT&#160;&#160;&#160;0xFFFFFF41</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Point at infinity is hit. </p>

</div>
</div>
<a id="a85997852d258d5bbe6c4e33717408777"></a>
<h2 class="memtitle">CX_EC_INVALID_CURVE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_EC_INVALID_CURVE&#160;&#160;&#160;0xFFFFFFA3</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Curve is invalid. </p>

</div>
</div>
<a id="a4629d107a6ca2d26c1e1d51bda2ed5e0"></a>
<h2 class="memtitle">CX_EC_INVALID_POINT</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_EC_INVALID_POINT&#160;&#160;&#160;0xFFFFFFA2</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Point is invalid: it does not belong to the curve. </p>

</div>
</div>
<a id="a7d9eec9d0577af83c72672faf193cf03"></a>
<h2 class="memtitle">CX_INTERNAL_ERROR</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_INTERNAL_ERROR&#160;&#160;&#160;0xFFFFFF85</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Internal error. </p>

</div>
</div>
<a id="a727ed72c9c217a588e76ef0e2452b299"></a>
<h2 class="memtitle">CX_INVALID_PARAMETER</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_INVALID_PARAMETER&#160;&#160;&#160;0xFFFFFF88</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>A parameter is invalid. </p>

<p class="reference">Referenced by <a class="el" href="../lcx__hmac_8h#a59713fd754b21c5af7de282b7b03c824">cx_hmac()</a>.</p>

</div>
</div>
<a id="a8908c07e8bfef0b2abc6fc545d833ed4"></a>
<h2 class="memtitle">CX_INVALID_PARAMETER_SIZE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_INVALID_PARAMETER_SIZE&#160;&#160;&#160;0xFFFFFF86</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>A parameter has an invalid size. </p>

</div>
</div>
<a id="ae0c133a3d106f6b02f3893a9f356bbbd"></a>
<h2 class="memtitle">CX_INVALID_PARAMETER_VALUE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_INVALID_PARAMETER_VALUE&#160;&#160;&#160;0xFFFFFF87</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>A parameter has an invalid value. </p>

</div>
</div>
<a id="a7b65e7b0955c53120c3c1cc90629da99"></a>
<h2 class="memtitle">CX_LOCKED</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_LOCKED&#160;&#160;&#160;0xFFFFFF81</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Multi Precision Integer processor is locked: operations can be done. </p>

</div>
</div>
<a id="a8fc369f53eb77b4da81d4da935ff7e08"></a>
<h2 class="memtitle">CX_MEMORY_FULL</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_MEMORY_FULL&#160;&#160;&#160;0xFFFFFF8B</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Memory is full: allocation is not possible anymore. </p>

</div>
</div>
<a id="aa875724709a4f517f8a7abcbabf26df1"></a>
<h2 class="memtitle">CX_NO_RESIDUE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_NO_RESIDUE&#160;&#160;&#160;0xFFFFFF8C</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>A quadratic residue cannot be computed. </p>

</div>
</div>
<a id="a580145ec28ed11a27866a62032fbf05b"></a>
<h2 class="memtitle">CX_NOT_INVERTIBLE</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_NOT_INVERTIBLE&#160;&#160;&#160;0xFFFFFF89</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>A value is not invertible. </p>

</div>
</div>
<a id="a763c784d1a3effd0ccf615a10dba88d2"></a>
<h2 class="memtitle">CX_NOT_LOCKED</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_NOT_LOCKED&#160;&#160;&#160;0xFFFFFF83</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Multi Precision Integer processor is not locked: it cannot be unlocked. </p>

</div>
</div>
<a id="a824eae488445cfec7032ca5e8a4899ae"></a>
<h2 class="memtitle">CX_NOT_UNLOCKED</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_NOT_UNLOCKED&#160;&#160;&#160;0xFFFFFF84</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Multi Precision Integer processor is already locked: it cannot be locked. </p>

</div>
</div>
<a id="af2c41817c51563d574f8a5673fd3ef54"></a>
<h2 class="memtitle">CX_OK</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_OK&#160;&#160;&#160;0x00000000</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Success. </p>

</div>
</div>
<a id="a97cdc38e59a5ea3d64c46e29ccd45129"></a>
<h2 class="memtitle">CX_OVERFLOW</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_OVERFLOW&#160;&#160;&#160;0xFFFFFF8A</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>A value overflow occurred. </p>

</div>
</div>
<a id="acf1d52afb325bd5120e6dfee540e2472"></a>
<h2 class="memtitle">CX_UNLOCKED</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">#define CX_UNLOCKED&#160;&#160;&#160;0xFFFFFF82</td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Multi Precision Integer processor is unlocked: operations can't be done. </p>

</div>
</div>
<h2 class="groupheader">Typedef Documentation</h2>
<a id="a06db7f567671764f4980db9bc828fa85"></a>
<h2 class="memtitle">cx_err_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef uint32_t <a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Type of error code. </p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
