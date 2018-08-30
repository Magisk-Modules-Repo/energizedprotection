![Cover](https://nayemador.com/assets/covers/energized_magisk_cover.svg)

<h1 align="center">Energized Protection - Magisk ⚡</h1>

<div align="center">
  <!-- Version -->
    <img src="https://img.shields.io/badge/Version-4.0-blue.svg?longCache=true&style=flat-square"
      alt="Version" />
  <!-- Last Updated -->
    <img src="https://img.shields.io/badge/Updated-Aug 30, 2018-orange.svg?longCache=true&style=flat-square"
      alt="_time_stamp_" />
  <!-- Status -->
    <img src="https://img.shields.io/badge/Status-Stable-green.svg?longCache=true&style=flat-square"
      alt="_time_stamp_" />
</div>

<div align="center">
  <strong>ad.porn.malware blocking.</strong>
</div>
<div align="center">
  Energized consolidates several reputable <code>hosts</code> files, and merges them into a unified hosts file with duplicates removed.  A variety of tailored hosts files are provided.
</div>

<br />

<div align="center">
  <h3>
    <a href="https://nayemador.com/energized">
      Website
    </a>
    <span> | </span>
    <a href="https://github.com/EnergizedProtection/block">
      Energized Repo
    </a>
    <span> | </span>
    <a href="https://nayemador.com/energized/check/">
      Check Energized
    </a>
    <span> | </span>
    <a href="https://t.me/EnergizedProtection">
      Telegram
    </a>
    <span> | </span>
    <a href="link.nayemador.com/epxdamagisk">
      XDA
    </a>
  </h3>
</div>

<div align="center">
  <sub>A Trio Project with ❤ from Bangladesh, India & Zanzibar.
</div>

## Features
- __hosts based:__ based on `Hosts` file, all the bad stuffs blocked with `0.0.0.0`
- __any device:__ compatible with all devices, regardless of OS.
- __blockings:__ strictly blocks `advertisements, malwares, spams, statistics & trackers` on both web browsing and applications.
- __multiple formats:__ different `variants` for different `devices`.
- __speed you need:__ reduces page loading time upto `half` of its actual time!
- __privacy:__ with all these annoyances blocking, it also `increases` privacy.
- __saves expense:__ greatly decreases data consumption `saving` expense.
- __clean:__ no `extra` abracadabra! 

## Usage: 

#### Feature Details
- `1-7` - Energized Packs - Energized `main` blocking packs.
- `p/s` - Extensions - Porn Lite and Social Extensions, to apply with the `main` pack.
- `dp` - Delta Patchset - this will be visible, when any `delta patch` will be available to apply.
- `c` - Clear Hosts - this will clear your `hosts` file to default hosts.
- `w` - Apply Whitelist - use this to apply `whitelisted` domains.
- `b` - Apply Blacklis - use this to apply `blacklisted` domains.
- `u` - Current-O-Update - this will update your current pack, and auto apply your whitelist and blacklist. Use this when you have to update.
- `i` - Web & Info - Website and Infos. 
- `ip` - Redirection IP - to change the default `0.0.0.0` ip to your own.
- `iw` - Instant Whitelist - when you have to instantly whitelist `one` domain.
- `ib` - Instant Whitelist - when you have to instantly blacklist `one` domain.
- `in` - Instructions - type for detailed instructions.
- `q` - Quit - `exit` the script. 

#### Delta Patchset
This is basically like incremental updates to the whitelist and blacklist. You will be able to apply latest whitelist and blacklist without waiting for full release.

#### Run
 - Install the `Busybox for Android NDK` Module from Magisk Manager.
 - Now, Enable `Systemless Hosts` in Magisk Manager
 - Open terminal then type:  
 ```
 su  
 energized
 ```
 - Then follow the prompts to install host file of choice

#### Whitelist (0.0.0.0) Instructions:
 - Find text file on sdcard called `whitelist` in `sdcard/EnergizedProtection/`
 - Add the domain with redirecting IP to whitelist the exact domain. Ex. `0.0.0.0 abcd.com`
 - Run hosts script and choose whitelist `w` option.
 
#### Whitelist (DOMAIN) Instructions:
 - Find text file on sdcard called `whitelist` in `sdcard/EnergizedProtection/`
 - Add the domain name only, to the whitelist. Ex. `abcd.com`
 - Run hosts script and choose whitelist `d` option.

#### Whitelist (REGEX) Instructions:
 - Find text file on sdcard called `whitelist` in `sdcard/EnergizedProtection/`
 - Add the regex to whitelist. Ex. `.*abcd.*` and now all domains with `abcd` in it will be whitelisted.
 - Run hosts script and choose whitelist `r` option.

#### Altogether Whitelist
- `All Three Formats` of whitelisting can be done by `w` only too.

#### Blacklist Instructions:
 - Find text file on sdcard called `blacklist` in `sdcard/EnergizedProtection/`
 - Add exact lines you want to remove it (do not include the `0.0.0.0` -> so for example: `abcd.com`)
 - Run hosts script and choose blacklist `b` option.

#### To Remove Whitelist/Blacklist:
 - Just run hosts script and reinstall host file of choice without selecting whitelist/blacklist.

## Changelog
v4.0
 - Reworked Script.
 - Added `Delta Patchset` & `Current-O-Update` Features. (Check upper details for more info)
 - Improved hosts clearing.
 - Added warning before applying large hosts.
 - Moved temp location to `sdcard/EnergizedProtection`.
 - Patches to fix whitelist and blacklist issues on few devices.
 - Added `Instructions` and `Web Info` options.
 - Improved `Instant` Whitelist and Blacklist.
 - Overall Script Improvements.

v3.6
 - Added New Energized Pack, `Spark - True Lite Hosts`.
 - Fixed Minor Issues related to hosts `download`.
 - Fixed Script `info` Showing. You don't have to re-run script, to check changes.
 - Improved `sleep` Parameters.
 - Improved Script.

v3.5
 - Fixed minor Update Checking Issue.
 - Fixed Whitelisting Issue using `w`.

v3.2
 - Added `instant blacklist` and `instant whitelist`.
 - Re-written Script.
 - Added Custom `Redirection IP` Support.
 - Improved Script Quality.
 - Improved layout.
 - Improved `sleep` parameters.
 - Beautified Script and Outputs.
 - Fixed Blacklisting Issue.
 - Improved `sleep` parameters.
 - Improved Energized `pack` detection.
 - Version Bumped with Newer Energized Setup.

v2.5
 - Added Extension Support. 
 - Improved Overall Script Quality. 
 
v2.2
 - Improved whitelisting. All three formats (`0.0.0.0`, `domain` & `regex`) can be whitelisted using `w` only. 
 - Improved Energized Package Detection.
 - Improved other adblocker detection.
 - Improved hosts size detection.

v2.0
 - Added Systemless Hosts Warning. If systemless hosts is disabled, script will exit!
 - Added one more whitelist support. Now it is possible to whitelist domains only using `d`.
 - Changed whitelisting regex input to `r`.
 - Hosts can be cleared using `c` to default.
 - Read more about the packages typing `i` and it will open up readme in browser.
 - It will warn, if any other adblocker is installed to avoid any conflict.
 - Now shows the Energized Pack you are using.

v1.6
 - Fixed 'No Hosts Applied' issue after every update.
 - Stores Files to '/sdcard/EnergizedProtection' now.

v1.5
 - Now Creates Energized Directory in '/sdcard/EnergizedProtection'
 - More Detailed Applying Info.
 - Improved Error Detection.

v1.2
 - Fixed Few Issues.
 - Version Bumped.

v1.1
 - Fixed Permission Denied Issue.
 - Fixed Config Prints.

v1.0
 - Initial release.
 
## Disclaimer

Energized Hosts are basically `hosts` files to block access to domains. If you don't know how it works, then please try this at your own risk. I won't be responsible for any damage or loss. Never forget to make backups.

## License
[CC BY-NC-SA 4.0](https://github.com/EnergizedProtection/block/blob/master/LICENSE.md)

---

<div align="center">
  <h2>Let's make an annoyance free better open internet, altogether!</h2>
</div>

<p align="center"><sub>A project by <a href="https://nayemador.com" target="_blank">Ador</a> with ❤<p>

<p align="center"><a href="https://saythanks.io/to/AdroitAdorKhan" target="_blank"><img src="https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg?longCache=true&style=flat-square"></a><p>
