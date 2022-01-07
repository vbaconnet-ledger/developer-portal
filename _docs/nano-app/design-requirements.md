---
title: Design
subtitle:
tags: [icon, logo, app icon, device icon, manager icon, graphics, glyphs]
category: Nano Application
toc: true
author:
layout: doc
---

## Requirement Summary

|    Release Type       |          Unaudited     |          Audited       |          Public        |
|-----------------------|------------------------|------------------------|------------------------|
|  This requirement is: |    <b>Mandatory</b>    |   <b>Mandatory</b>     |   <b>Mandatory</b>     |


The requirements are to submit two icons and to follow the design instructions below. You agree to the design warranty liability close.

## Guidelines

### Icons

You must provide two icons that are compliant with the criteria established by our team.
You must download the template on the page, fill it it with your Icon, and include filled template in your app submission form.

There are 2 mandatory icons that should be provided for Ledger to release an app:

-   The Device icon, displayed on the Nano dashboard
-   The Manager icon, displayed in the Manager application list in Ledger Live

#### General

- The icon file does not contain any alpha channel
- Gradients are not allowed
- The background color should be solid

#### Device icon

- Pixel art icon
- Black and white only
- Safe area: 2px

#### Manager icon

- RVB colors only
- Pictogram color should be white
- Pictrogram stroke should be 4pt

#### Icon templates

**Click on each image to download the corresponding .ai file, and fill them directly before sending them back. They should correspond to the icons used to compile your app.**

<!-- ------------- Image ------------- -->
<!-- --------------------------------- -->
<figure>
<a href="https://drive.google.com/a/ledger.fr/file/d/1FVUWDGYPvLuyiwDFgGYiwfwk7YGsxzJ0/view?usp=sharing" title="Device template">
<img src="../images/device_template.png" class="align-center" alt="Device icon template (click to access Illustrator file)" /><figcaption aria-hidden="true">Device icon template (click to access Illustrator file)</figcaption>
</a>
</figure>

<!-- ------------- Image ------------- -->
<!-- --------------------------------- -->
<figure>
<a href="https://drive.google.com/a/ledger.fr/file/d/1OOAZWlnLlBSpScPnF5NGJ4AfczB3D591/view?usp=sharing" title="Manager template">
<img src="../images/manager_template.png" class="align-center" alt="Manager icon template (click to access Illustrator file)" /><figcaption aria-hidden="true">Manager icon template (click to access Illustrator file)</figcaption>
</a>
</figure>


### Interface

Most of the time, Nano Apps have few functionalities. However, despite this simplicity, it is still challenging to build a user-friendly interface, because of the few inputs (only 2 buttons) and the screen size (128\*32 pixels). The following guidelines will give a good basis to ensure user-friendliness.

<!--  -->
{% include alert.html style="note" text="See the <a href='../display-management' class='alert-link'> BAGL Toolkit </a> for more information on the BOLOS Application Graphics Library technical details." %}
<!--  -->

#### Welcome screen

The Device icon must be displayed on the first welcome screen.

#### Information display

1. It is a good practice to inform the user of what kind of information is currently displayed, by giving it a title.
2. To avoid having to much text on the same screen you can:
	- Use multiple successive screens with a configurable time interval bewteen each screen switch
	- Use automatic scrolling display

<!-- ------------- Image ------------- -->
<figure class="uk-text-center">
<img src="../images/scroll.gif" alt="Example: transaction confirmation screen" /><figcaption aria-hidden="true">Example with two alternating screens.</figcaption>
</figure>
<!-- --------------------------------- -->

In the example above, two pieces of information are shown: an amount of bitcoins, and a destination address. The two screens alternates until the user validates or cancel. A title describes each information. Automatic scrolling is used for the address as it is too long to be displayed.

#### Graphical pointers

The user can perform four principal actions by pressing 1 button or 2 buttons simultaneously:
-   Make a binary choice to answer a question asked by the device (1 button)
-   Browse through the entries of a menu (1 button)
-   Select a menu entry (2 buttons)
-   Proceed with a disclaimer (2 buttons)

The graphical pointers (glyphs) indicates which action can be performed on a screen.

**Binary choice**

To propose a binary choice to the user, 2 glyphs representing the 2 choices should be placed on each side of the screen:
- a cross symbol to cancel 
- a validation symbol to accept 
You can display a question and relevant information in between the glyphs, like in the upper example.

**Browse**

To browse through a menu, be it vertical or horizontal, the same technique is applied with different glyphs. We recommend using arrows: 
- up and down for a vertical menu
- left and right for a horizontal menu

<!-- ------------- Image ------------- -->
<!-- --------------------------------- -->
<figure class="uk-text-center">
<img src="../images/horizontal_menu.png" class="align-center" alt="Example use of arrows in an horizontal menu" /><figcaption aria-hidden="true">Example use of arrows in an horizontal menu</figcaption>
</figure>

<!-- ------------- Image ------------- -->
<!-- --------------------------------- -->
<figure class="uk-text-center">
<img src="../images/vertical_menu.png" class="align-center" alt="Example use of arrows in a vertical menu" /><figcaption aria-hidden="true">Example use of arrows in a vertical menu</figcaption>
</figure>

**Select and proceed**

Once positioned on the right menu entry, the user can select the entry by pressing both buttons. This action is not represented by glyphs. Same goes when going through a set of disclaimer screens: only text is displayed, and the user goes to the next part by pressing both buttons. 

This is a consistent behavior across the device, so you can assume that users are used to it.


## Design Warranty

The design of your app must be free from any encumbrances and must not infringe upon any third party intellectual property right, in particular trademark and design rights. You grant Ledger the right to use such design for free with the right to reproduce and exploit the design for the duration of its display on Ledger website.

You represent and warrant that the app you are making available on Ledger Live is in compliance with all relevant laws and regulations.

You agree to hold Ledger harmless of any claim arising out of the use of the design and or distribution of your app .

