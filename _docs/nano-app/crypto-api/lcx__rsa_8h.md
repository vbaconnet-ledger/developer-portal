---
title: lcx_rsa.h
subtitle:
tags: []
category: CryptographyAPI
toc:
layout: doc
---

<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>


<p>RSA algorithm.  
<a href="#details">More...</a></p>
<table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="nested-classes"></a>
Data Structures</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__public__key__s">cx_rsa_public_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Abstract RSA public key.  <a href="../cx__rsa__public__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__private__key__s">cx_rsa_private_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Abstract RSA private key.  <a href="../cx__rsa__private__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__1024__public__key__s">cx_rsa_1024_public_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">1024-bit RSA public key  <a href="../cx__rsa__1024__public__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__1024__private__key__s">cx_rsa_1024_private_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">1024-bit RSA private key  <a href="../cx__rsa__1024__private__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__2048__public__key__s">cx_rsa_2048_public_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">2048-bit RSA public key  <a href="../cx__rsa__2048__public__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__2048__private__key__s">cx_rsa_2048_private_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">2048-bit RSA private key  <a href="../cx__rsa__2048__private__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__3072__public__key__s">cx_rsa_3072_public_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">3072-bit RSA public key  <a href="../cx__rsa__3072__public__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__3072__private__key__s">cx_rsa_3072_private_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">3072-bit RSA private key  <a href="../cx__rsa__3072__private__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__4096__public__key__s">cx_rsa_4096_public_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">4096-bit RSA public key  <a href="../cx__rsa__4096__public__key__s#details">More...</a><br /></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../cx__rsa__4096__private__key__s">cx_rsa_4096_private_key_s</a></td></tr>
<tr class="memdesc:"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">4096-bit RSA private key  <a href="../cx__rsa__4096__private__key__s#details">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="typedef-members"></a>
Typedefs</h2></td></tr>
<tr class="memitem:a4332ce85a407c456b5386cc2a2f77363"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__rsa__public__key__s">cx_rsa_public_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a></td></tr>
<tr class="memdesc:a4332ce85a407c456b5386cc2a2f77363"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a4332ce85a407c456b5386cc2a2f77363">More...</a><br /></td></tr>
<tr class="memitem:a25061837f7ce204d13114de41fdabdd1"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__rsa__private__key__s">cx_rsa_private_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a></td></tr>
<tr class="memdesc:a25061837f7ce204d13114de41fdabdd1"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a25061837f7ce204d13114de41fdabdd1">More...</a><br /></td></tr>
<tr class="memitem:a8181f21f1c4745c694b529b633dbbd87"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__rsa__1024__public__key__s">cx_rsa_1024_public_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a8181f21f1c4745c694b529b633dbbd87">cx_rsa_1024_public_key_t</a></td></tr>
<tr class="memdesc:a8181f21f1c4745c694b529b633dbbd87"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a8181f21f1c4745c694b529b633dbbd87">More...</a><br /></td></tr>
<tr class="memitem:a98652c7db08b73e4fae216c69f4e243e"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__rsa__1024__private__key__s">cx_rsa_1024_private_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a98652c7db08b73e4fae216c69f4e243e">cx_rsa_1024_private_key_t</a></td></tr>
<tr class="memdesc:a98652c7db08b73e4fae216c69f4e243e"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a98652c7db08b73e4fae216c69f4e243e">More...</a><br /></td></tr>
<tr class="memitem:a2e1955dabf5b142acf00987474a0eb89"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__rsa__2048__public__key__s">cx_rsa_2048_public_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a2e1955dabf5b142acf00987474a0eb89">cx_rsa_2048_public_key_t</a></td></tr>
<tr class="memdesc:a2e1955dabf5b142acf00987474a0eb89"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a2e1955dabf5b142acf00987474a0eb89">More...</a><br /></td></tr>
<tr class="memitem:a5a62234c26d3778e415098bd101fc7e6"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__rsa__2048__private__key__s">cx_rsa_2048_private_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a5a62234c26d3778e415098bd101fc7e6">cx_rsa_2048_private_key_t</a></td></tr>
<tr class="memdesc:a5a62234c26d3778e415098bd101fc7e6"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a5a62234c26d3778e415098bd101fc7e6">More...</a><br /></td></tr>
<tr class="memitem:ad7aaba82e8f0d8e4bb175a1b98698828"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__rsa__3072__public__key__s">cx_rsa_3072_public_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#ad7aaba82e8f0d8e4bb175a1b98698828">cx_rsa_3072_public_key_t</a></td></tr>
<tr class="memdesc:ad7aaba82e8f0d8e4bb175a1b98698828"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#ad7aaba82e8f0d8e4bb175a1b98698828">More...</a><br /></td></tr>
<tr class="memitem:a7cc7a901500ef24af0b0c5e175d523f6"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__rsa__3072__private__key__s">cx_rsa_3072_private_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a7cc7a901500ef24af0b0c5e175d523f6">cx_rsa_3072_private_key_t</a></td></tr>
<tr class="memdesc:a7cc7a901500ef24af0b0c5e175d523f6"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a7cc7a901500ef24af0b0c5e175d523f6">More...</a><br /></td></tr>
<tr class="memitem:a895b01c337f660b5992ae10cceb9b05a"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__rsa__4096__public__key__s">cx_rsa_4096_public_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a895b01c337f660b5992ae10cceb9b05a">cx_rsa_4096_public_key_t</a></td></tr>
<tr class="memdesc:a895b01c337f660b5992ae10cceb9b05a"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#a895b01c337f660b5992ae10cceb9b05a">More...</a><br /></td></tr>
<tr class="memitem:aaf361c3bcc9b4d1957e935ff943c2d96"><td class="memItemLeft" align="right" valign="top">typedef struct <a class="el" href="../cx__rsa__4096__private__key__s">cx_rsa_4096_private_key_s</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#aaf361c3bcc9b4d1957e935ff943c2d96">cx_rsa_4096_private_key_t</a></td></tr>
<tr class="memdesc:aaf361c3bcc9b4d1957e935ff943c2d96"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Convenience type.  <a href="#aaf361c3bcc9b4d1957e935ff943c2d96">More...</a><br /></td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="4"><h2 class="groupheader"><a name="func-members"></a>
Functions</h2></td></tr>
<tr class="memitem:af814abef1212161f269f907393b6bfbe"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#af814abef1212161f269f907393b6bfbe">cx_rsa_init_public_key_no_throw</a> (const uint8_t *exponent, size_t exponent_len, const uint8_t *modulus, size_t modulus_len, <a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *key)</td></tr>
<tr class="memdesc:af814abef1212161f269f907393b6bfbe"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initialize a RSA public key.  <a href="#af814abef1212161f269f907393b6bfbe">More...</a><br /></td></tr>
<tr class="memitem:aec14aad212dd646a77d4810448fa626f"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#aec14aad212dd646a77d4810448fa626f">cx_rsa_init_public_key</a> (const unsigned char *exponent, unsigned int exponent_len, const unsigned char *modulus, unsigned int modulus_len, <a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *key)</td></tr>
<tr class="memdesc:aec14aad212dd646a77d4810448fa626f"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initialize a RSA public key.  <a href="#aec14aad212dd646a77d4810448fa626f">More...</a><br /></td></tr>
<tr class="memitem:abb300ab7879fa569620a588c4ce2fd8f"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#abb300ab7879fa569620a588c4ce2fd8f">cx_rsa_init_private_key_no_throw</a> (const uint8_t *exponent, size_t exponent_len, const uint8_t *modulus, size_t modulus_len, <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *key)</td></tr>
<tr class="memdesc:abb300ab7879fa569620a588c4ce2fd8f"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initialize a RSA private key.  <a href="#abb300ab7879fa569620a588c4ce2fd8f">More...</a><br /></td></tr>
<tr class="memitem:ae643a57d5a8d7e0d3e6e2c1dc54f68a7"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#ae643a57d5a8d7e0d3e6e2c1dc54f68a7">cx_rsa_init_private_key</a> (const unsigned char *exponent, unsigned int exponent_len, const unsigned char *modulus, unsigned int modulus_len, <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *key)</td></tr>
<tr class="memdesc:ae643a57d5a8d7e0d3e6e2c1dc54f68a7"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Initialize a RSA private key.  <a href="#ae643a57d5a8d7e0d3e6e2c1dc54f68a7">More...</a><br /></td></tr>
<tr class="memitem:a06a46bf52ef7d2f1684e89db042d9a0f"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a06a46bf52ef7d2f1684e89db042d9a0f">cx_rsa_generate_pair_no_throw</a> (size_t modulus_len, <a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *public_key, <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *private_key, const uint8_t *pub_exponent, size_t exponent_len, const uint8_t *externalPQ)</td></tr>
<tr class="memdesc:a06a46bf52ef7d2f1684e89db042d9a0f"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Generate a RSA key pair.  <a href="#a06a46bf52ef7d2f1684e89db042d9a0f">More...</a><br /></td></tr>
<tr class="memitem:a21909c144e63e9e95bfbb26787d6150b"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a21909c144e63e9e95bfbb26787d6150b">cx_rsa_generate_pair</a> (unsigned int modulus_len, <a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *public_key, <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *private_key, const unsigned char *pub_exponent, unsigned int exponent_len, const unsigned char *externalPQ)</td></tr>
<tr class="memdesc:a21909c144e63e9e95bfbb26787d6150b"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Generate a RSA key pair.  <a href="#a21909c144e63e9e95bfbb26787d6150b">More...</a><br /></td></tr>
<tr class="memitem:a197cd7d5ab61952b81060b1032dc0ec3"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a197cd7d5ab61952b81060b1032dc0ec3">cx_rsa_sign_with_salt_len</a> (const <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *key, uint32_t mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const uint8_t *hash, size_t hash_len, uint8_t *sig, size_t sig_len, size_t salt_len)</td></tr>
<tr class="memdesc:a197cd7d5ab61952b81060b1032dc0ec3"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Compute a message digest signature according to RSA specification.  <a href="#a197cd7d5ab61952b81060b1032dc0ec3">More...</a><br /></td></tr>
<tr class="memitem:a680975047eee1a76357372ae53a361d5"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a680975047eee1a76357372ae53a361d5">cx_rsa_sign_no_throw</a> (const <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *key, uint32_t mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const uint8_t *hash, size_t hash_len, uint8_t *sig, size_t sig_len)</td></tr>
<tr class="memdesc:a680975047eee1a76357372ae53a361d5"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Compute a message digest signature according to RSA specification.  <a href="#a680975047eee1a76357372ae53a361d5">More...</a><br /></td></tr>
<tr class="memitem:a3e5b8b019f6bba127d56897500c8b927"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a3e5b8b019f6bba127d56897500c8b927">cx_rsa_sign</a> (const <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *key, int mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const unsigned char *hash, unsigned int hash_len, unsigned char *sig, unsigned int sig_len)</td></tr>
<tr class="memdesc:a3e5b8b019f6bba127d56897500c8b927"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Compute a message digest signature according to RSA specification.  <a href="#a3e5b8b019f6bba127d56897500c8b927">More...</a><br /></td></tr>
<tr class="memitem:aa9f7d00e76d3dd2ff7be2940db1eaaa6"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#aa9f7d00e76d3dd2ff7be2940db1eaaa6">cx_rsa_verify_with_salt_len</a> (const <a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *key, uint32_t mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const uint8_t *hash, size_t hash_len, uint8_t *sig, size_t sig_len, size_t salt_len)</td></tr>
<tr class="memdesc:aa9f7d00e76d3dd2ff7be2940db1eaaa6"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Verify a message digest signature.  <a href="#aa9f7d00e76d3dd2ff7be2940db1eaaa6">More...</a><br /></td></tr>
<tr class="memitem:a53a92ebba93f6579fc7734c7a42dd5bb"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a53a92ebba93f6579fc7734c7a42dd5bb">cx_rsa_verify</a> (const <a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *key, uint32_t mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const uint8_t *hash, size_t hash_len, uint8_t *sig, size_t sig_len)</td></tr>
<tr class="memdesc:a53a92ebba93f6579fc7734c7a42dd5bb"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Verify a message digest signature.  <a href="#a53a92ebba93f6579fc7734c7a42dd5bb">More...</a><br /></td></tr>
<tr class="memitem:a1f5dbde4ea4fc7ac4191e2d65b9392ef"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a1f5dbde4ea4fc7ac4191e2d65b9392ef">cx_rsa_encrypt_no_throw</a> (const <a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *key, uint32_t mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const uint8_t *mesg, size_t mesg_len, uint8_t *enc, size_t enc_len)</td></tr>
<tr class="memdesc:a1f5dbde4ea4fc7ac4191e2d65b9392ef"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Encrypt a message according to RSA specification.  <a href="#a1f5dbde4ea4fc7ac4191e2d65b9392ef">More...</a><br /></td></tr>
<tr class="memitem:acd543c2453e21ffb03b2c6e0d31f061a"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#acd543c2453e21ffb03b2c6e0d31f061a">cx_rsa_encrypt</a> (const <a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *key, int mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const unsigned char *mesg, unsigned int mesg_len, unsigned char *enc, unsigned int enc_len)</td></tr>
<tr class="memdesc:acd543c2453e21ffb03b2c6e0d31f061a"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Encrypt a message according to RSA specification.  <a href="#acd543c2453e21ffb03b2c6e0d31f061a">More...</a><br /></td></tr>
<tr class="memitem:ab77e2c0642aaf3fe8f92ca8b7c73b781"><td class="memItemLeft" align="right" valign="top"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a>&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#ab77e2c0642aaf3fe8f92ca8b7c73b781">cx_rsa_decrypt_no_throw</a> (const <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *key, uint32_t mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const uint8_t *mesg, size_t mesg_len, uint8_t *dec, size_t *dec_len)</td></tr>
<tr class="memdesc:ab77e2c0642aaf3fe8f92ca8b7c73b781"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Decrypt a message according to RSA specification.  <a href="#ab77e2c0642aaf3fe8f92ca8b7c73b781">More...</a><br /></td></tr>
<tr class="memitem:a46cc5cc112d8e3cd4dfaa81143d2d1eb"><td class="memItemLeft" align="right" valign="top">static int&#160;</td><td colspan="3" class="memItemRight" valign="bottom"><a class="el" href="../lcx__rsa_8h#a46cc5cc112d8e3cd4dfaa81143d2d1eb">cx_rsa_decrypt</a> (const <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *key, int mode, <a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a> hashID, const unsigned char *mesg, unsigned int mesg_len, unsigned char *dec, unsigned int dec_len)</td></tr>
<tr class="memdesc:a46cc5cc112d8e3cd4dfaa81143d2d1eb"><td class="mdescLeft">&#160;</td><td colspan="3" class="mdescRight">Decrypt a message according to RSA specification.  <a href="#a46cc5cc112d8e3cd4dfaa81143d2d1eb">More...</a><br /></td></tr>
</table>
<a name="details" id="details"></a>

## Detailed Description

<div class="textblock"><p>RSA algorithm. </p>
<p>RSA is a public key cryptosystem that can be used for encryption and signature schemes. </p>
</div><h2 class="groupheader">Typedef Documentation</h2>
<a id="a98652c7db08b73e4fae216c69f4e243e"></a>
<h2 class="memtitle">cx_rsa_1024_private_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__rsa__1024__private__key__s">cx_rsa_1024_private_key_s</a> <a class="el" href="../lcx__rsa_8h#a98652c7db08b73e4fae216c69f4e243e">cx_rsa_1024_private_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__rsa__1024__private__key__s" title="1024-bit RSA private key ">cx_rsa_1024_private_key_s</a>. </p>

</div>
</div>
<a id="a8181f21f1c4745c694b529b633dbbd87"></a>
<h2 class="memtitle">cx_rsa_1024_public_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__rsa__1024__public__key__s">cx_rsa_1024_public_key_s</a> <a class="el" href="../lcx__rsa_8h#a8181f21f1c4745c694b529b633dbbd87">cx_rsa_1024_public_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__rsa__1024__public__key__s" title="1024-bit RSA public key ">cx_rsa_1024_public_key_s</a>. </p>

</div>
</div>
<a id="a5a62234c26d3778e415098bd101fc7e6"></a>
<h2 class="memtitle">cx_rsa_2048_private_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__rsa__2048__private__key__s">cx_rsa_2048_private_key_s</a> <a class="el" href="../lcx__rsa_8h#a5a62234c26d3778e415098bd101fc7e6">cx_rsa_2048_private_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__rsa__2048__private__key__s" title="2048-bit RSA private key ">cx_rsa_2048_private_key_s</a>. </p>

</div>
</div>
<a id="a2e1955dabf5b142acf00987474a0eb89"></a>
<h2 class="memtitle">cx_rsa_2048_public_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__rsa__2048__public__key__s">cx_rsa_2048_public_key_s</a> <a class="el" href="../lcx__rsa_8h#a2e1955dabf5b142acf00987474a0eb89">cx_rsa_2048_public_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__rsa__2048__public__key__s" title="2048-bit RSA public key ">cx_rsa_2048_public_key_s</a>. </p>

</div>
</div>
<a id="a7cc7a901500ef24af0b0c5e175d523f6"></a>
<h2 class="memtitle">cx_rsa_3072_private_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__rsa__3072__private__key__s">cx_rsa_3072_private_key_s</a> <a class="el" href="../lcx__rsa_8h#a7cc7a901500ef24af0b0c5e175d523f6">cx_rsa_3072_private_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__rsa__3072__private__key__s" title="3072-bit RSA private key ">cx_rsa_3072_private_key_s</a>. </p>

</div>
</div>
<a id="ad7aaba82e8f0d8e4bb175a1b98698828"></a>
<h2 class="memtitle">cx_rsa_3072_public_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__rsa__3072__public__key__s">cx_rsa_3072_public_key_s</a> <a class="el" href="../lcx__rsa_8h#ad7aaba82e8f0d8e4bb175a1b98698828">cx_rsa_3072_public_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__rsa__3072__public__key__s" title="3072-bit RSA public key ">cx_rsa_3072_public_key_s</a>. </p>

</div>
</div>
<a id="aaf361c3bcc9b4d1957e935ff943c2d96"></a>
<h2 class="memtitle">cx_rsa_4096_private_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__rsa__4096__private__key__s">cx_rsa_4096_private_key_s</a> <a class="el" href="../lcx__rsa_8h#aaf361c3bcc9b4d1957e935ff943c2d96">cx_rsa_4096_private_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__rsa__4096__private__key__s" title="4096-bit RSA private key ">cx_rsa_4096_private_key_s</a>. </p>

</div>
</div>
<a id="a895b01c337f660b5992ae10cceb9b05a"></a>
<h2 class="memtitle">cx_rsa_4096_public_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__rsa__4096__public__key__s">cx_rsa_4096_public_key_s</a> <a class="el" href="../lcx__rsa_8h#a895b01c337f660b5992ae10cceb9b05a">cx_rsa_4096_public_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__rsa__4096__public__key__s" title="4096-bit RSA public key ">cx_rsa_4096_public_key_s</a>. </p>

</div>
</div>
<a id="a25061837f7ce204d13114de41fdabdd1"></a>
<h2 class="memtitle">cx_rsa_private_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__rsa__private__key__s">cx_rsa_private_key_s</a> <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__rsa__private__key__s" title="Abstract RSA private key. ">cx_rsa_private_key_s</a>. </p>

</div>
</div>
<a id="a4332ce85a407c456b5386cc2a2f77363"></a>
<h2 class="memtitle">cx_rsa_public_key_t</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">typedef struct <a class="el" href="../cx__rsa__public__key__s">cx_rsa_public_key_s</a> <a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a></td>
        </tr>
      </table>
</div><div class="memdoc">

<p>Convenience type. </p>
<p>See <a class="el" href="../cx__rsa__public__key__s" title="Abstract RSA public key. ">cx_rsa_public_key_s</a>. </p>

</div>
</div>
<h2 class="groupheader">Function Documentation</h2>
<a id="a46cc5cc112d8e3cd4dfaa81143d2d1eb"></a>
<h2 class="memtitle">cx_rsa_decrypt()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_rsa_decrypt </td>
          <td class="paramtype">const <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>mesg</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>mesg_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>dec</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>dec_len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Decrypt a message according to RSA specification. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__rsa_8h#ab77e2c0642aaf3fe8f92ca8b7c73b781" title="Decrypt a message according to RSA specification. ">cx_rsa_decrypt_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">RSA private key initialized with <a class="el" href="../lcx__rsa_8h#abb300ab7879fa569620a588c4ce2fd8f" title="Initialize a RSA private key. ">cx_rsa_init_private_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_PAD_PKCS1_1o5</li>
<li>CX_PAD_PKCS1_OAEP</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier. Expected identifiers used in OAEP padding:<ul>
<li>CX_SHA224</li>
<li>CX_SHA256</li>
<li>CX_SHA384</li>
<li>CX_SHA512</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mesg</td><td colspan="4">Input data to decrypt.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mesg_len</td><td colspan="4">Length of the input.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">dec</td><td colspan="4">Buffer where to store the decrypted data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">dec_len</td><td colspan="4">Length of the output.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the decrypted message.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__rsa_8h#ab77e2c0642aaf3fe8f92ca8b7c73b781">cx_rsa_decrypt_no_throw()</a>.</p>

</div>
</div>
<a id="ab77e2c0642aaf3fe8f92ca8b7c73b781"></a>
<h2 class="memtitle">cx_rsa_decrypt_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_rsa_decrypt_no_throw </td>
          <td class="paramtype">const <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>mesg</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>mesg_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>dec</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t *&#160;</td>
          <td class="paramname"><b>dec_len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Decrypt a message according to RSA specification. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">RSA private key initialized with <a class="el" href="../lcx__rsa_8h#abb300ab7879fa569620a588c4ce2fd8f" title="Initialize a RSA private key. ">cx_rsa_init_private_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_PAD_PKCS1_1o5</li>
<li>CX_PAD_PKCS1_OAEP</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier. Expected identifiers used in OAEP padding:<ul>
<li>CX_SHA224</li>
<li>CX_SHA256</li>
<li>CX_SHA384</li>
<li>CX_SHA512</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mesg</td><td colspan="4">Input data to decrypt.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mesg_len</td><td colspan="4">Length of the input.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">dec</td><td colspan="4">Buffer where to store the decrypted data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">dec_len</td><td colspan="4">Length of the output.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__rsa_8h#a46cc5cc112d8e3cd4dfaa81143d2d1eb">cx_rsa_decrypt()</a>, and <a class="el" href="../lcx__rsa_8h#acd543c2453e21ffb03b2c6e0d31f061a">cx_rsa_encrypt()</a>.</p>

</div>
</div>
<a id="acd543c2453e21ffb03b2c6e0d31f061a"></a>
<h2 class="memtitle">cx_rsa_encrypt()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_rsa_encrypt </td>
          <td class="paramtype">const <a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>mesg</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>mesg_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>enc</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>enc_len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Encrypt a message according to RSA specification. </p>
<p>This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__rsa_8h#a1f5dbde4ea4fc7ac4191e2d65b9392ef" title="Encrypt a message according to RSA specification. ">cx_rsa_encrypt_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">RSA public key initialized with <a class="el" href="../lcx__rsa_8h#af814abef1212161f269f907393b6bfbe" title="Initialize a RSA public key. ">cx_rsa_init_public_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_PAD_PKCS1_1o5</li>
<li>CX_PAD_PKCS1_OAEP</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier. Expected identifiers used in OAEP padding:<ul>
<li>CX_SHA224</li>
<li>CX_SHA256</li>
<li>CX_SHA384</li>
<li>CX_SHA512</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mesg</td><td colspan="4">Input data to encrypt.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mesg_len</td><td colspan="4">Length of the input.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">enc</td><td colspan="4">Buffer where to store the ciphertext.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">enc_len</td><td colspan="4">Length of the ciphertext.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the key.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__rsa_8h#ab77e2c0642aaf3fe8f92ca8b7c73b781">cx_rsa_decrypt_no_throw()</a>, <a class="el" href="../lcx__rsa_8h#a1f5dbde4ea4fc7ac4191e2d65b9392ef">cx_rsa_encrypt_no_throw()</a>, and <a class="el" href="../cx__rsa__public__key__s#a854352f53b148adc24983a58a1866d66">cx_rsa_public_key_s::size</a>.</p>

</div>
</div>
<a id="a1f5dbde4ea4fc7ac4191e2d65b9392ef"></a>
<h2 class="memtitle">cx_rsa_encrypt_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_rsa_encrypt_no_throw </td>
          <td class="paramtype">const <a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>mesg</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>mesg_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>enc</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>enc_len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Encrypt a message according to RSA specification. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">RSA public key initialized with <a class="el" href="../lcx__rsa_8h#af814abef1212161f269f907393b6bfbe" title="Initialize a RSA public key. ">cx_rsa_init_public_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_PAD_PKCS1_1o5</li>
<li>CX_PAD_PKCS1_OAEP</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier. Expected identifiers used in OAEP padding:<ul>
<li>CX_SHA224</li>
<li>CX_SHA256</li>
<li>CX_SHA384</li>
<li>CX_SHA512</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mesg</td><td colspan="4">Input data to encrypt.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mesg_len</td><td colspan="4">Length of the input.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">enc</td><td colspan="4">Buffer where to store the ciphertext.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">enc_len</td><td colspan="4">Length of the ciphertext.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__rsa_8h#acd543c2453e21ffb03b2c6e0d31f061a">cx_rsa_encrypt()</a>, and <a class="el" href="../lcx__rsa_8h#a3e5b8b019f6bba127d56897500c8b927">cx_rsa_sign()</a>.</p>

</div>
</div>
<a id="a21909c144e63e9e95bfbb26787d6150b"></a>
<h2 class="memtitle">cx_rsa_generate_pair()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_rsa_generate_pair </td>
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>modulus_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>public_key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>private_key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>pub_exponent</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>exponent_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>externalPQ</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Generate a RSA key pair. </p>
<p>Generate a RSA key pair. This function throws an exception if the generation failed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__rsa_8h#a06a46bf52ef7d2f1684e89db042d9a0f" title="Generate a RSA key pair. ">cx_rsa_generate_pair_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">modulus_len</td><td colspan="4">Size of the modulus in bytes. Expected sizes:<ul>
<li>256</li>
<li>384</li>
<li>512</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">public_key</td><td colspan="4">Pointer to the RSA public key. The structure shall match <b>modulus_len</b>.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">private_key</td><td colspan="4">Pointer to the RSA private key. The structure shall match <b>modulus_len</b>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">pub_exponent</td><td colspan="4">Public exponent. ZERO means default value: 0x010001 (65337). The public exponent shall be less than 0x0FFFFFFF. No verification is done on the public exponent value except its range.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">exponent_len</td><td colspan="4">Length of the exponent.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">externalPQ</td><td colspan="4">Pointer to the prime factors of the modulus or NULL pointer. Each prime consists of modulus_len/2 bytes in big endian order. P = externalPQ[0:modulus_len/2-1], Q = externalPQ[modulus_len/2 : modulus_len-1] There is no verification on provided P and Q.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the modulus.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
    <tr><td class="paramname">CX_INTERNAL_ERROR</td></tr>
    <tr><td class="paramname">CX_OVERFLOW</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__rsa_8h#a06a46bf52ef7d2f1684e89db042d9a0f">cx_rsa_generate_pair_no_throw()</a>, <a class="el" href="../lcx__rsa_8h#a680975047eee1a76357372ae53a361d5">cx_rsa_sign_no_throw()</a>, and <a class="el" href="../lcx__rsa_8h#a197cd7d5ab61952b81060b1032dc0ec3">cx_rsa_sign_with_salt_len()</a>.</p>

</div>
</div>
<a id="a06a46bf52ef7d2f1684e89db042d9a0f"></a>
<h2 class="memtitle">cx_rsa_generate_pair_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_rsa_generate_pair_no_throw </td>
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>modulus_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>public_key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>private_key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>pub_exponent</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>exponent_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>externalPQ</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Generate a RSA key pair. </p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">modulus_len</td><td colspan="4">Size of the modulus in bytes. Expected sizes:<ul>
<li>256</li>
<li>384</li>
<li>512</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">public_key</td><td colspan="4">Pointer to the RSA public key. The structure shall match <b>modulus_len</b>.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">private_key</td><td colspan="4">Pointer to the RSA private key. The structure shall match <b>modulus_len</b>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">pub_exponent</td><td colspan="4">Public exponent. ZERO means default value: 0x010001 (65337). The public exponent shall be less than 0x0FFFFFFF. No verification is done on the public exponent value except its range.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">exponent_len</td><td colspan="4">Length of the exponent.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">externalPQ</td><td colspan="4">Pointer to the prime factors of the modulus or NULL pointer. Each prime consists of modulus_len/2 bytes in big endian order. P = externalPQ[0:modulus_len/2-1], Q = externalPQ[modulus_len/2 : modulus_len-1] There is no verification on provided P and Q.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED</li>
<li>CX_INTERNAL_ERROR</li>
<li>CX_OVERFLOW </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__rsa_8h#a21909c144e63e9e95bfbb26787d6150b">cx_rsa_generate_pair()</a>, and <a class="el" href="../lcx__rsa_8h#ae643a57d5a8d7e0d3e6e2c1dc54f68a7">cx_rsa_init_private_key()</a>.</p>

</div>
</div>
<a id="ae643a57d5a8d7e0d3e6e2c1dc54f68a7"></a>
<h2 class="memtitle">cx_rsa_init_private_key()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_rsa_init_private_key </td>
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>exponent</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>exponent_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>modulus</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>modulus_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initialize a RSA private key. </p>
<p>Once initialized, the key may be stored in non-volatile memory and used for any RSA processing.</p>
<p>Passing NULL as raw key initializes the key without any value. The key cannot be used. This function throws an exception if the initialization fails.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__rsa_8h#abb300ab7879fa569620a588c4ce2fd8f" title="Initialize a RSA private key. ">cx_rsa_init_private_key_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">exponent</td><td colspan="4">Private exponent: pointer to a raw key value or NULL.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">exponent_len</td><td colspan="4">Length of the exponent.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">modulus</td><td colspan="4">Modulus: pointer to a raw key as big endian value or NULL.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">modulus_len</td><td colspan="4">Length of the modulus.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">key</td><td colspan="4">Pointer to the RSA private key.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the modulus.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__rsa_8h#a06a46bf52ef7d2f1684e89db042d9a0f">cx_rsa_generate_pair_no_throw()</a>, and <a class="el" href="../lcx__rsa_8h#abb300ab7879fa569620a588c4ce2fd8f">cx_rsa_init_private_key_no_throw()</a>.</p>

</div>
</div>
<a id="abb300ab7879fa569620a588c4ce2fd8f"></a>
<h2 class="memtitle">cx_rsa_init_private_key_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_rsa_init_private_key_no_throw </td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>exponent</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>exponent_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>modulus</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>modulus_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initialize a RSA private key. </p>
<p>Once initialized, the key may be stored in non-volatile memory and used for any RSA processing.</p>
<p>Passing NULL as raw key initializes the key without any value. The key cannot be used.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">exponent</td><td colspan="4">Private exponent: pointer to a raw key value or NULL.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">exponent_len</td><td colspan="4">Length of the exponent.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">modulus</td><td colspan="4">Modulus: pointer to a raw key as big endian value or NULL.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">modulus_len</td><td colspan="4">Length of the modulus.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">key</td><td colspan="4">Pointer to the RSA private key.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__rsa_8h#ae643a57d5a8d7e0d3e6e2c1dc54f68a7">cx_rsa_init_private_key()</a>, and <a class="el" href="../lcx__rsa_8h#aec14aad212dd646a77d4810448fa626f">cx_rsa_init_public_key()</a>.</p>

</div>
</div>
<a id="aec14aad212dd646a77d4810448fa626f"></a>
<h2 class="memtitle">cx_rsa_init_public_key()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_rsa_init_public_key </td>
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>exponent</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>exponent_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>modulus</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>modulus_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Initialize a RSA public key. </p>
<p>Once initialized, the key may be stored in non-volatile memory and used for any RSA processing.</p>
<p>Passing NULL as raw key initializes the key without any value. The key cannot be used. This function throws an exception if the initialization fails.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__rsa_8h#af814abef1212161f269f907393b6bfbe" title="Initialize a RSA public key. ">cx_rsa_init_public_key_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">exponent</td><td colspan="4">Public exponent: pointer to a raw key value (4 bytes) or NULL.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">exponent_len</td><td colspan="4">Length of the exponent.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">modulus</td><td colspan="4">Modulus: pointer to a raw key as big endian value or NULL.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">modulus_len</td><td colspan="4">Length of the modulus.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">key</td><td colspan="4">Pointer to the RSA public key.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the modulus.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__rsa_8h#abb300ab7879fa569620a588c4ce2fd8f">cx_rsa_init_private_key_no_throw()</a>, and <a class="el" href="../lcx__rsa_8h#af814abef1212161f269f907393b6bfbe">cx_rsa_init_public_key_no_throw()</a>.</p>

</div>
</div>
<a id="af814abef1212161f269f907393b6bfbe"></a>
<h2 class="memtitle">cx_rsa_init_public_key_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_rsa_init_public_key_no_throw </td>
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>exponent</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>exponent_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>modulus</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>modulus_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Initialize a RSA public key. </p>
<p>Once initialized, the key may be stored in non-volatile memory and used for any RSA processing.</p>
<p>Passing NULL as raw key initializes the key without any value. The key cannot be used.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">exponent</td><td colspan="4">Public exponent: pointer to a raw key value (4 bytes) or NULL.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">exponent_len</td><td colspan="4">Length of the exponent.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">modulus</td><td colspan="4">Modulus: pointer to a raw key as big endian value or NULL.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">modulus_len</td><td colspan="4">Length of the modulus.</td></tr>
    <tr><td class="paramdir">[out]</td><td class="paramname">key</td><td colspan="4">Pointer to the RSA public key.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__rsa_8h#aec14aad212dd646a77d4810448fa626f">cx_rsa_init_public_key()</a>.</p>

</div>
</div>
<a id="a3e5b8b019f6bba127d56897500c8b927"></a>
<h2 class="memtitle">cx_rsa_sign()</h2>

<div class="memitem">
<div class="memproto">
<table class="mlabels">
  <tr>
  <td class="mlabels-left">
      <table class="memname">
        <tr>
          <td class="memname">static int cx_rsa_sign </td>
          <td class="paramtype">const <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">int&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const unsigned char *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>hash_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned char *&#160;</td>
          <td class="paramname"><b>sig</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">unsigned int&#160;</td>
          <td class="paramname"><b>sig_len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
  </td>
  </tr>
</table>
</div><div class="memdoc">

<p>Compute a message digest signature according to RSA specification. </p>
<p>When using PSS padding, the salt length is fixed to the hash output length. If another salt length is used, call <a class="el" href="../lcx__rsa_8h#a197cd7d5ab61952b81060b1032dc0ec3" title="Compute a message digest signature according to RSA specification. ">cx_rsa_sign_with_salt_len</a> instead. The MGF1 function is the one descrided in PKCS1 v2.0 specification, using the the same hash algorithm as specified by hashID. This function throws an exception if the computation doesn't succeed.</p>
<dl class="section warning"><dt>Warning</dt><dd>It is recommended to use <a class="el" href="../lcx__rsa_8h#a680975047eee1a76357372ae53a361d5" title="Compute a message digest signature according to RSA specification. ">cx_rsa_sign_no_throw</a> rather than this function.</dd></dl>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">RSA private key initialized with <a class="el" href="../lcx__rsa_8h#abb300ab7879fa569620a588c4ce2fd8f" title="Initialize a RSA private key. ">cx_rsa_init_private_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_PAD_PKCS1_1o5</li>
<li>CX_PAD_PKCS1_PSS</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier. Expected identifiers:<ul>
<li>CX_SHA224</li>
<li>CX_SHA256</li>
<li>CX_SHA384</li>
<li>CX_SHA512</li>
<li>CX_SHA3_256 (for CX_PAD_PKCS1_1o5 mode only)</li>
<li>CX_SHA3_512 (for CX_PAD_PKCS1_1o5 mode only)</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Input data to be signed.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_len</td><td colspan="4">Length of the input data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig</td><td colspan="4">Buffer where to store the signature.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the output buffer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Length of the key.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
  <table class="exception">
    <tr><td class="paramname">CX_INVALID_PARAMETER</td></tr>
    <tr><td class="paramname">CX_NOT_UNLOCKED</td></tr>
    <tr><td class="paramname">CX_INVALID_PARAMETER_SIZE</td></tr>
    <tr><td class="paramname">CX_MEMORY_FULL</td></tr>
    <tr><td class="paramname">CX_NOT_LOCKED</td></tr>
  </table>
  </dd>
</dl>

<p class="reference">References <a class="el" href="../lcx__rsa_8h#a1f5dbde4ea4fc7ac4191e2d65b9392ef">cx_rsa_encrypt_no_throw()</a>, <a class="el" href="../lcx__rsa_8h#a680975047eee1a76357372ae53a361d5">cx_rsa_sign_no_throw()</a>, <a class="el" href="../lcx__rsa_8h#a53a92ebba93f6579fc7734c7a42dd5bb">cx_rsa_verify()</a>, <a class="el" href="../lcx__rsa_8h#aa9f7d00e76d3dd2ff7be2940db1eaaa6">cx_rsa_verify_with_salt_len()</a>, and <a class="el" href="../cx__rsa__private__key__s#a854352f53b148adc24983a58a1866d66">cx_rsa_private_key_s::size</a>.</p>

</div>
</div>
<a id="a680975047eee1a76357372ae53a361d5"></a>
<h2 class="memtitle">cx_rsa_sign_no_throw()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_rsa_sign_no_throw </td>
          <td class="paramtype">const <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>hash_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>sig</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>sig_len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Compute a message digest signature according to RSA specification. </p>
<p>When using PSS padding, the salt length is fixed to the hash output length. If another salt length is used, call <a class="el" href="../lcx__rsa_8h#a197cd7d5ab61952b81060b1032dc0ec3" title="Compute a message digest signature according to RSA specification. ">cx_rsa_sign_with_salt_len</a> instead. The MGF1 function is the one descrided in PKCS1 v2.0 specification, using the the same hash algorithm as specified by hashID.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">RSA private key initialized with <a class="el" href="../lcx__rsa_8h#abb300ab7879fa569620a588c4ce2fd8f" title="Initialize a RSA private key. ">cx_rsa_init_private_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_PAD_PKCS1_1o5</li>
<li>CX_PAD_PKCS1_PSS</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier. Expected identifiers:<ul>
<li>CX_SHA224</li>
<li>CX_SHA256</li>
<li>CX_SHA384</li>
<li>CX_SHA512</li>
<li>CX_SHA3_256 (for CX_PAD_PKCS1_1o5 mode only)</li>
<li>CX_SHA3_512 (for CX_PAD_PKCS1_1o5 mode only)</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Input data to be signed.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_len</td><td colspan="4">Length of the input data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig</td><td colspan="4">Buffer where to store the signature.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the output buffer.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__rsa_8h#a21909c144e63e9e95bfbb26787d6150b">cx_rsa_generate_pair()</a>, and <a class="el" href="../lcx__rsa_8h#a3e5b8b019f6bba127d56897500c8b927">cx_rsa_sign()</a>.</p>

</div>
</div>
<a id="a197cd7d5ab61952b81060b1032dc0ec3"></a>
<h2 class="memtitle">cx_rsa_sign_with_salt_len()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname"><a class="el" href="../cx__errors_8h#a06db7f567671764f4980db9bc828fa85">cx_err_t</a> cx_rsa_sign_with_salt_len </td>
          <td class="paramtype">const <a class="el" href="../lcx__rsa_8h#a25061837f7ce204d13114de41fdabdd1">cx_rsa_private_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>hash_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>sig</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>sig_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>salt_len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Compute a message digest signature according to RSA specification. </p>
<p>When using PSS padding, the salt length is fixed to the hash output length. The MGF1 function is the one descrided in PKCS1 v2.0 specification, using the same hash algorithm as specified by hashID.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">RSA private key initialized with <a class="el" href="../lcx__rsa_8h#abb300ab7879fa569620a588c4ce2fd8f" title="Initialize a RSA private key. ">cx_rsa_init_private_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_PAD_PKCS1_1o5</li>
<li>CX_PAD_PKCS1_PSS</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier. Expected identifiers:<ul>
<li>CX_SHA224</li>
<li>CX_SHA256</li>
<li>CX_SHA384</li>
<li>CX_SHA512</li>
<li>CX_SHA3_256 (for CX_PAD_PKCS1_1o5 mode only)</li>
<li>CX_SHA3_512 (for CX_PAD_PKCS1_1o5 mode only)</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Input data to be signed.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_len</td><td colspan="4">Length of the input data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig</td><td colspan="4">Buffer where to store the signature.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the output buffer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">salt_len</td><td colspan="4">Length of the salt.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>Error code:<ul>
<li>CX_OK on success</li>
<li>CX_INVALID_PARAMETER</li>
<li>CX_NOT_UNLOCKED</li>
<li>CX_INVALID_PARAMETER_SIZE</li>
<li>CX_MEMORY_FULL</li>
<li>CX_NOT_LOCKED </li>
</ul>
</dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__rsa_8h#a21909c144e63e9e95bfbb26787d6150b">cx_rsa_generate_pair()</a>.</p>

</div>
</div>
<a id="a53a92ebba93f6579fc7734c7a42dd5bb"></a>
<h2 class="memtitle">cx_rsa_verify()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">bool cx_rsa_verify </td>
          <td class="paramtype">const <a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>hash_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>sig</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>sig_len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Verify a message digest signature. </p>
<p>Verify a message digest signature according to RSA specification. Please note that if the mode is set to CX_PAD_PKCS1_PSS, then the underlying salt length is by convention equal to the hash length. If another salt length is used, please call <a class="el" href="../lcx__rsa_8h#aa9f7d00e76d3dd2ff7be2940db1eaaa6" title="Verify a message digest signature. ">cx_rsa_verify_with_salt_len</a> instead.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">RSA public key initialized with <a class="el" href="../lcx__rsa_8h#af814abef1212161f269f907393b6bfbe" title="Initialize a RSA public key. ">cx_rsa_init_public_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_PAD_PKCS1_1o5</li>
<li>CX_PAD_PKCS1_PSS</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier. Expected identifiers:<ul>
<li>CX_SHA224</li>
<li>CX_SHA256</li>
<li>CX_SHA384</li>
<li>CX_SHA512</li>
<li>CX_SHA3_256 (for CX_PAD_PKCS1_1o5 mode only)</li>
<li>CX_SHA3_512 (for CX_PAD_PKCS1_1o5 mode only)</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Message digest corresponding to the signature.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_len</td><td colspan="4">Length of the message digest.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig</td><td colspan="4">RSA signature encoded as raw bytes. This is used as a temporary buffer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the signature.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>1 if the signature is verified, 0 otherwise. </dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__rsa_8h#a3e5b8b019f6bba127d56897500c8b927">cx_rsa_sign()</a>.</p>

</div>
</div>
<a id="aa9f7d00e76d3dd2ff7be2940db1eaaa6"></a>
<h2 class="memtitle">cx_rsa_verify_with_salt_len()</h2>

<div class="memitem">
<div class="memproto">
      <table class="memname">
        <tr>
          <td class="memname">bool cx_rsa_verify_with_salt_len </td>
          <td class="paramtype">const <a class="el" href="../lcx__rsa_8h#a4332ce85a407c456b5386cc2a2f77363">cx_rsa_public_key_t</a> *&#160;</td>
          <td class="paramname"><b>key</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint32_t&#160;</td>
          <td class="paramname"><b>mode</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype"><a class="el" href="../lcx__hash_8h#aac7f6b791a4df89ac2e67ee43d4021a2">cx_md_t</a>&#160;</td>
          <td class="paramname"><b>hashID</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">const uint8_t *&#160;</td>
          <td class="paramname"><b>hash</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>hash_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">uint8_t *&#160;</td>
          <td class="paramname"><b>sig</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>sig_len</b>, </td>
        </tr>
        <tr>
          <td class="paramkey"></td>
          
          <td class="paramtype">size_t&#160;</td>
          <td class="paramname"><b>salt_len</b>&#160;</td>
        </tr>
        <tr>
          
          
        </tr>
      </table>
</div><div class="memdoc">

<p>Verify a message digest signature. </p>
<p>Verify a message digest signature according to RSA specification with a specified salt length.</p>
<dl class="params"><dt>Parameters</dt><dd>
  <table class="params">
    <tr><td class="paramdir">[in]</td><td class="paramname">key</td><td colspan="4">RSA public key initialized with <a class="el" href="../lcx__rsa_8h#af814abef1212161f269f907393b6bfbe" title="Initialize a RSA public key. ">cx_rsa_init_public_key_no_throw</a>.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">mode</td><td colspan="4">Crypto mode flags. Supported flags:<ul>
<li>CX_PAD_PKCS1_1o5</li>
<li>CX_PAD_PKCS1_PSS</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hashID</td><td colspan="4">Message digest algorithm identifier. Expected identifiers:<ul>
<li>CX_SHA224</li>
<li>CX_SHA256</li>
<li>CX_SHA384</li>
<li>CX_SHA512</li>
<li>CX_SHA3_256 (for CX_PAD_PKCS1_1o5 mode only)</li>
<li>CX_SHA3_512 (for CX_PAD_PKCS1_1o5 mode only)</li>
</ul>
</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash</td><td colspan="4">Input data to be signed.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">hash_len</td><td colspan="4">Length of the input data.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig</td><td colspan="4">RSA signature encoded as raw bytes. This is used as a temporary buffer.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">sig_len</td><td colspan="4">Length of the signature.</td></tr>
    <tr><td class="paramdir">[in]</td><td class="paramname">salt_len</td><td colspan="4">Length of the salt.</td></tr>
  </table>
  </dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>1 if the signature is verified, 0 otherwise. </dd></dl>

<p class="reference">Referenced by <a class="el" href="../lcx__rsa_8h#a3e5b8b019f6bba127d56897500c8b927">cx_rsa_sign()</a>.</p>

</div>
</div>
<button class="uk-button uk-button-default uk-button-small uk-margin-medium-top" onclick="history.back()">Previous</button>
<a class="uk-button uk-button-default uk-button-small uk-margin-medium-top crypto-button" href="../../crypto-api/files">Back to the files list</a>
