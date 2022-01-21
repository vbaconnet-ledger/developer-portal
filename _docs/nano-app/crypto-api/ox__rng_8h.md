---
title: ox__rng_8h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---


<p>Random number generation syscall.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:a6c24dcbc8f983d5112f36423f6b72908"><td class="memItemLeft" align="right" valign="top">SYSCALL void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="../ox__rng_8h#a6c24dcbc8f983d5112f36423f6b72908">cx_trng_get_random_data</a> (uint8_t *buf, size_t size)</td></tr>
<tr class="memdesc:a6c24dcbc8f983d5112f36423f6b72908"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get random data from the True Random Number Generation.  <a href="#a6c24dcbc8f983d5112f36423f6b72908">More...</a><br /></td></tr>
<tr class="separator:a6c24dcbc8f983d5112f36423f6b72908"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>Random number generation syscall. </p>
<p>This file contains the function for getting random data from the TRNG. </p>
</div><h2 class="groupheader">Function Documentation</h2>
<a id="a6c24dcbc8f983d5112f36423f6b72908"></a>
<h2 class="memtitle">cx_trng_get_random_data()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">SYSCALL void cx_trng_get_random_data </td>
          <td>(</td>
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><em>buf</em>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          <td></td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><em>size</em>&#160;</td>
        </tr>
        <tr>
          <td></td>
          <td>)</td>
          <td></td><td></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Get random data from the True Random Number Generation. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[out]</td><td class="paramname">buf</td><td>Buffer where to store the random data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">size</td><td>Size of the random data in bytes. </td></tr>
  </table>
  </dd>
</dl>

</div>
</div>
