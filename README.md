# AhAhAh-Sample-Theme

This is an example of a user-created Theme for the Ah!Ah!Ah! tweak, and how to package it into a .deb file for Cydia.

###  Theme Location

```
/User/Library/AhAhAh/Themes/
```


### Theme Format

A theme is a folder containing three items:
- Info.plist
- Thumbnail.png (120x120 px)
- a video or image for the alarm

The name of the folder is the name of the theme.

eg.

```
My Awesome Theme/
  |- Info.plist
  |- Thumbnail.png
  |- MyVideoClip.m4v
```


### Info.plist Format

The dictionary *should* have an **Author** key.

The dictionary *must* have *either* a **Video** or **Image** key.

The optional **ContentMode** key can be used to set your preferred resizing mode. If left out, the default setting (AspectFit) is applied.

Available content modes:
- AspectFit: scale to fit screen, preserving aspect ratio
- AspectFill: scale to fill screen, preserving aspect ratio
- Fill: scale to fill screen, ingoring aspect ratio


#### Example plists

A video-based theme, with content mode specified:
```plist
{
  Author = "Apple";
  Video = "1984.m4v";
  ContentMode = "AspectFill";
}
```
An image-based theme, without specifying content mode:

```plist
{
	Author = "Some Person";
	Image = "FunnyCat.jpg";
}
```
