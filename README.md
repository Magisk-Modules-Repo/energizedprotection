![Cover](https://nayemador.com/assets/covers/energized_magisk_cover.svg)

<h1 align="center">Energized Protection - Magisk ⚡</h1>

<div align="center">
  <!-- Version -->
    <img src="https://img.shields.io/badge/Version-éclairs-blue.svg?longCache=true&style=flat-square"
      alt="Version" />
  <!-- Last Updated -->
    <img src="https://img.shields.io/badge/Updated-Oct 13, 2019-orange.svg?longCache=true&style=flat-square"
      alt="_time_stamp_" />
  <!-- Status -->
    <img src="https://img.shields.io/badge/Status-Stable-green.svg?longCache=true&style=flat-square"
      alt="_time_stamp_" />
</div>

<div align="center">
  <strong>ad.porn.malware blocking.</strong>
</div>
<div align="center">
  This repository consolidates several reputable <code>filters</code>, and merges them into couple of protection packs with duplicates and dead/inactive domains removed. A variety of tailored packs are provided.
</div>

<br />

<div align="center">
  <h3>
    <a href="https://energized.pro">
      Website
    </a>
    <span> | </span>
    <a href="http://go.energized.pro/github">
      Energized Repo
    </a>
    <span> | </span>
    <a href="https://energized.pro/check/">
      Check Energized
    </a>
    <span> | </span>
    <a href="http://go.energized.pro/telegram">
      Telegram
    </a>
    <span> | </span>
    <a href="http://go.energized.pro/xdamagisk">
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

- `1-6` : Energized Packs - Energized `main` blocking packs.
- `p/pl/rl/s/x` : Extensions - Porn, Porn Lite, Regional, Social and Xtreme Extensions, to apply with the `main` pack.
- `o` : Open Hosts File - Open the `hosts` file.
- `c` : Clear Hosts - this will clear your `hosts` file to default hosts. Also, clears filters.
- `w` : Apply Whitelist - use this to apply `whitelisted` domains.
- `iw` : Instant Whitelist - when you have to instantly whitelist `one` domain.
- `b` : Apply Blacklist - use this to apply `blacklisted` domains.
- `ib` : Instant Blacklist - when you have to instantly blacklist `one` domain.
- `re` : Redirect Domains - `redirect` domains in `redirectlist` to an IP.
- `ir` : Instant Redirect - when you have to instantly redirect `one` domain.
- `u` : Update H&WB - this will update your current pack, and auto apply your whitelist and blacklist. Use this when you have to update.
- `ck` : Check Domain - check a domain whether it's `already` blocked or not!
- `bp` : Backup Hosts - makes a backup of your `current` hosts.
- `rs` : Restore Hosts - restores the hosts you made a `backup` before.
- `i` : Web & Info - Website and Infos.
- `ip` : Redirection IP - to change the default `0.0.0.0` ip to your own.
- `in` : Instructions - type for detailed instructions.
- `si` : Submit Issue - submit any issue via `web` app.
- `q` : Quit - exit` the script.

#### Extras

- `Magisk` : Opens up Magisk Manager.
- `Telegram` : Takes you to our awesome Telegram group!
- `Thx` : You are welcome! <3


#### Requirements
 - Install the `Busybox For Android NDK` Busybox Module from Magisk Manager.

#### Run
 - First Enable Systemless Hosts in Magisk Manager
 - Open terminal then type:  
 ```
 su  
 energized
 ```
  *`Energized` would also work.*
 - Then follow the prompts to install host file of choice

#### Whitelist (0.0.0.0) Instructions:
 - Find text file on sdcard called `whitelist` in `sdcard/EnergizedProtection/`
 - Add the domain with redirecting IP to whitelist the exact domain. Ex. `0.0.0.0 abcd.com`
 - Run hosts script and choose whitelist `w` option.
 
#### Whitelist (DOMAIN) Instructions:
 - Find text file on sdcard called `whitelist` in `sdcard/EnergizedProtection/`
 - Add the domain name only, to the whitelist. Ex. `abcd.com`
 - Run hosts script and choose whitelist `w` option.

#### Whitelist (REGEX) Instructions:
 - Find text file on sdcard called `whitelist` in `sdcard/EnergizedProtection/`
 - Add the regex to whitelist. Ex. `.*abcd.*` and now all domains with `abcd` in it will be whitelisted.
 - Run hosts script and choose whitelist `w` option.

#### Altogether Whitelist
- `All Three Formats` of whitelisting can be done by `w` only too.

#### Instant Whitelist
 - To instantly whitelist a domain, select `iw` and then type your domain.
 - Type `Y` and press enter.

#### Blacklist Instructions:
 - Find text file on sdcard called `blacklist` in `sdcard/EnergizedProtection/`
 - Add exact lines you want to remove it (do not include the `0.0.0.0` -> so for example: `abcd.com`)
 - Run hosts script and choose blacklist `b` option.

#### Instant Blacklist
 - To instantly blacklist a domain, select `ib` and then type your domain.
 - Type `Y/y` and press enter.
 
#### Redirect Domains
 - Find text file on sdcard called `redirectlist` in `sdcard/EnergizedProtection/`
 - Add the domain name only, to the redirectlist. Ex. `abcd.com`
 - Run hosts script and choose whitelist `ri` option.
 - Type your `IP` and type `Y/y`
 - Hit enter.
 
#### Instant Redirect
 - To instantly redirect a domain, select `ir` and then type your domain.
 - Type `Y/y` & hit enter.
 - Type your IPv4/v6 and press enter.
 - Type `Y/y` & wait for the script to finish redirecting.

#### Finishing
 - Reboot once after applying hosts/whitelist/blacklist/redirectionlist.
 
#### To Remove Whitelist/Blacklist/Redirectionlist
 - Just run hosts script and reinstall host file of choice without selecting whitelist/blacklist/redirectionlist.

#### Uninstall Hosts
 - Run Clear Hosts by typing `c` and enter. It will clear your hosts file to stock state.
 
## Changelog

v.éclairs
 - Added Magisk 20.0 Compatibility.
 - Fixed Magisk Version Detection.
 - Fixed Symlink. Now you can type `Energized` also to run the script.
 - Updated Check Function.
 - Script Optimization & Improvement Patches Applied.

v.pluot
 - Fixed shell check.
 - Fixed instant whitelist.
 - Fixed redirection IP change method.
 - Fixed current IP check service.
 - Fixed domain check issue.
 - Improved update check service.
 - Script optimization.

v.dynamo
 - Added Terminal Detection.
 - New Symlink Added. Like you can type  `Energized` or `ENERGIZED` to run the script.
 - Updated Download Links.
 - Improved Busybox Detection.
 - Improved Busybox Support & Compatibility. 
 - UI Revamped.
 - Added Better Extension Detection Support.
 - Improved Blacklist, Whitelist & Redirectlist Detection.
 - Hosts Update Checking Service Should be Fixed Forever.
 - Updated Sleep Parameters.
 - Script Optimization & Improvement Patches Applied.
 - Fixed Known Bugs so far.

v.pewds
 - Added Magisk 19.0 Compatibility.
 - Added Busybox Magisk Module Check to Prevent grep & wget Error(s) Message(s).
 - *Do your part! Let's subscribe to PewDiePie! :D* 

v.flaky
 - Added Magisk 18.0+ Systemless Hosts Support.
 - Fixed Update Checking Issue.
 - Improved Script Quality.
 
v.flake
 - Added Magisk 17.4+ Systemless Hosts Support.
 - Updated to `sh` Posix Compliance.
 - Added `Open Hosts File` Option.
 - Renamed `Current-O-Update` to `Update H&WB` (Update Hosts & Whitelist-Blacklist).
 - Removed `Delta Patchset` Service. [DEPRECATED]
 - Retouched UI and Rearranged few Options.
 - Fixed Bugs.
 - Script Optimization.
 
v.canelé
 - Added Regional Extension Pack.
 - Fixed Update Checking Issue.
 - Script Optimization.
 
v.milo
 - Improved `instant` Whitelist, Blacklist and Redirect Domain Features.
 - Improved Domain Check Feature.
 - Improved Delta Patch and Update Check Services.
 - Improved Detection Methods.
 - Added `xtreme` extension.
 - Added small letter `y/n` support for Instant Features.
 - Improved UI.
 - Updated Core Sources and URLs.
 - Fixed Few Previous Issues.
 - Overall Script Improvement Patches Applied.
 
v. mars
 - Replaced `hosts` format to `hosts.gz` format to download. Packs size reduced while downloading. Reduced upto 1/5 of each pack's size.
 - Improved Delta Patch and Update Check Features.
 - Fixed Backup Hosts Restoring.
 - Improved Backup and Restore Features.
 - Improved Current-O-Update Feature.
 - Script Improvement and Optimizations. 

v. quinoa
 - Fixed Blacklist Applying Date Gap Issue.
 - Added Pack Name Input Support. (Ex. Typing `spark` will also apply The Spark Pack.)
 - Script Improvement and Optimizations.

v. edamame
 - Reworked script. Totally re-written to improve the script quality.
 - Added `Redirect Domains`, `Instant Redirect`, `Backup & Restore` & `Domain Check` Features.
 - Re-written `Whitelist` & `Blacklist` work-flow. Fixed issues.
 - Added blacklist `Log` to check already blacklisted domains.
 - Added whitelist `Log` to check already whitelisted domains.
 - Improved blacklisting features (Blacklist & Instant Blacklist) to `remove` duplicates.
 - Improved `Current-O-Patch`, `Delta Patch` & `Redirection IP` Features.
 - `Redesigned` Script UI.
 - Added Magisk Manager opener activity, via script.
 - Improved sleep parameters.
 - Improved adblocker detection. Thanks to `Romain.`
 - Added full Porn pack as extension.
 - Patched other fixes.
 - Improved Script.
 
__Note__: After installing new update, it will show an update is available, due to directory change.
 
v4.0
 - Reworked Script.
 - Added `Delta Patchset` & `Current-O-Update` Features. (Check uppee details for more info)
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

## Support
[SUPPORT THE DEVELOPMENT](https://opencollective.com/energizedprotection)

## License
[MIT](https://github.com/EnergizedProtection/block/blob/master/LICENSE.md)

---

<div align="center">
  <h2>Let's make an annoyance free better open internet, altogether!</h2>
</div>

<p align="center"><sub>A project by <a href="https://nayemador.com" target="_blank">Ador</a> with ❤<p>

<p align="center"><a href="https://saythanks.io/to/AdroitAdorKhan" target="_blank"><img src="https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg?longCache=true&style=flat-square"></a><p>
