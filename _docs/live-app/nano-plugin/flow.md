---
title: Reference Flow
subtitle:
tags: [dapp]
category: DApp Integration
author:
toc: true
layout: doc
---

This sequence lists the interactions between the Ethereum App and the plugin in detail. If you get lost in the walkthrough, feel free to come back to it.

<div class="mermaid"> 
sequenceDiagram 
    Note left of Eth App: Receive transaction 
    Eth App -> Plugin: ETH_PLUGIN_CHECK_PRESENCE 
    Plugin --> Eth App: 
    Note left of Eth App: Plugin exists so initialize it 
    Eth App -> Plugin: ETH_PLUGIN_INITIALIZE 
    Note right of Plugin: Initialize context 
    Plugin --> Eth App: 
    Note left of Eth App: Split contract data in chunks 
    Note left of Eth App: Send chunks to plugin 
    Eth App -> Plugin: ETH_PLUGIN_PROVIDE_PARAMETER 
    Note right of Plugin: Parse the chunk 
    Plugin --> Eth App: 
    Note left of Eth App: Repeat call for every chunk 
    Eth App -> Plugin: ... 
    Plugin --> Eth App: ... 
    Note left of Eth App: Finish parsing Tx 
    Eth App -> Plugin: ETH_PLUGIN_FINALIZE 
    Note right of Plugin: Note which ERC20 are needed 
    Plugin --> Eth App: Ask for info on ERC20 
    Note left of Eth App: Get info on ERC20 
    Note left of Eth App: Send it back to plugin 
    Eth App -> Plugin: ETH_PLUGIN_PROVIDE_TOKEN 
    Note right of Plugin: Store ERC20 info 
    Plugin --> Eth App: 
    Eth App -> Plugin: ETH_PLUGIN_QUERY_CONTRACT_ID 
    Note right of Plugin: Prepare screen 
    Plugin --> Eth App: 
    Note left of Eth App: Display contract ID screen 
    Eth App -> Plugin: ETH_PLUGIN_QUERY_CONTRACT_UI 
    Note right of Plugin: Prepare screen 
    Plugin --> Eth App: 
    Note left of Eth App: Repeat call for every screen 
    Eth App -> Plugin: ... 
    Plugin --> Eth App: ... 
    Note left of Eth App: Sign/Reject the transaction 
</div> 
<script async src="https://unpkg.com/mermaid@8.2.3/dist/mermaid.min.js"></script> 


