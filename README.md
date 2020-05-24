![Cover](https://energized.pro/assets/cover/energized_cover.svg)

<h1 align="center">Energized Protection - Magisk ⚡</h1>

<div align="center">
  <!-- Version -->
    <img src="https://img.shields.io/badge/Version-1.3.0-blue.svg?longCache=true&style=flat-square"
      alt="Version" />
  <!-- Magisk -->
    <img src="https://img.shields.io/badge/Magisk-20.0+-green.svg?longCache=true&style=flat-square"
      alt="Version" />  
  <!-- Last Updated -->
    <img src="https://img.shields.io/badge/Updated-May 24, 2020-orange.svg?longCache=true&style=flat-square"
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
      block Repo
    </a>
    <span> | </span>
    <a href="https://energized.pro/check/">
      Check
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


Requirements
------
 - Use Magisk v20.4 for better compatibility.
 - Magisk v20.0 - 20.3 users are required to install `Busybox for Android NDK` module, unless the module won't work.

Run
------
 - First Enable Systemless Hosts in Magisk Manager
 - Open terminal then type:  
 ```
 su  
 ep -h
 ```
 or
 ```
 su -c ep -h
 ```

Usage: 
------
### Script arguments 
```
Usage: ep [options...]
 -b, --black <domain(s)> 
       >> Instantly add the domain(s) to hosts.
       > e.g., ep -b example.com new.example.com www.example.com
 -B, --blacklist 
       >> Add the domains in blacklist file to hosts.
       >> blacklist file in /sdcard/EnergizedProtection directory.
       > e.g., ep -B
 -c, --clear 
       >> Clear the hosts file and revert back to stock. 
       > e.g., ep -c
 -C, --config-file 
       >> Open and edit the config file.
       > e.g., ep -C 
 -e, --extension 
       >> Add extension pack(s) to the hosts.
       > e.g., 
         ep -e <porn-lite|pornlite>
         ep -e porn
         ep -e regional
         ep -e xtreme
         ep -e social
 -h, --help 
       >> Print help. 
 -i, --info
       >> Print all the information.
 -m, --menu 
       >> Show the full menu with more information.
       > e.g., ep -m 
 -o, --open 
       >> Open the hosts file.
       > e.g., ep -o
 -p, --pack <pack name> [-e|--extension] <extension pack name> 
       >> Download the pack and extension of your choice.
       > e.g., 
         ep -p spark
         ep -p blugo -e xtreme
         ep -p blu -e regional social  
 -r, --redirect
       >> Redirect the domains in redirectlist file to specific IPV4/V6.
       >> redirectlist file in /sdcard/EnergizedProtection directory.
       > e.g., ep -r
 -u, --update
       >> Update currently applied hosts pack and extension(s). 
       >> Also whitelist, blacklist and redirect domains to current IP.
       > e.g., ep -u
 
 -w, --white <domain(s)> 
       >> Instantly whitelist the domain(s) from hosts.
       > e.g., ep -w example.com new.example.com www.example.com
 -W, --whitelist 
       >> Whitelist the domains in whitelist file to hosts.
       >> whitelist file in /sdcard/EnergizedProtection directory.
       > e.g., ep -W 
 -bp, --backup
        >> Backup the current hosts setup.
        > e.g., ep -bp
 -ck, --check <domain>
        >> Check whether the domain is in the list.
        > e.g., ep -ck example.com
 -ip, --redirect-ip [-4|-v4|-6|-v6] <ipv4/ipv6>
        >> Change current redirection IP.
        > e.g., 
          ep -ip -4 127.0.0.1
          ep -ip -6 ::1  
 -ir, --instant-redirect [-4|-v4|-6|-v6] <domain(s)>
        >> Instantly redirect the domain(s) to specific IPV4/V6.
        > e.g., 
          ep -ir -4 127.0.0.1 example.com new.example.com
          ep -ir -6 ::1 example.com new.example.com
 -re, --restore
        >> Restore the backed up hosts setup.
        > e.g., ep -re
 -un, --uninstall
        >> Uninstall the module setup.
        > e.g., ep -un
 -v, --version
        >> Print version. 
```


  *`Energized`, `energized` `Ep` & `epro` would also work, as symlink.*
 - Then follow the on screen prompts.

Config Setup
------
Only use true/false to enable/disable features.

```
# Check for hosts update on startup
checkHostsUpdate=true
```
`Note.` _More options will be available shortly._

Uninstall 
------
 - Run Uninstall option via main menu `un` or `ep -un` 
 
Changelog
------

v.1.3.0
- Added back Magisk v20.0 - 20.3 support.

 _***Magisk v20.4+ users won't require seperate busybox module.**_
 
 _***Magisk v20.0-20.3 users will have to install Busybox for Android NDK module.**_

v.1.2.5
- Added CLI Flag support.
- No more separate busybox required for Magisk v20.4+. Magisk Busybox will be used by default.
- Updated Magisk Template to v20.0+. No more support for Magisk <v20.0.
- Added user config support.
- Improved blacklist, whitelist and redirectlist functions.
- Improved instant blacklist, whitelist and redirectlist functions.
- Updated download links.
- Improved current pack, extension and IP detection.
- Added intelligent domain and IPV4 detection support.
- Updated Redirection IP function.
- Added more functions. Use `ep -h` or `ep --help` for more info.
- Updated H&WB function to support automatic extension and current IP detection.
- Improved and updated almost all of the functions to match new changes.
- Fixed domain counting awk segmentation fault error.
- UI revamped. A lot of things have been updated.
- Beautify the module scripts.
- Updated sleep parameters.
- Script was re-written and lot of new patches have been applied.
- Fixed new change related issues so far.
- Script improvement and fix patches applied.


[_*Previous Changes_](https://gist.github.com/AdroitAdorKhan/fb81c83b0339e89913bc9f252e2f313d) | [_**Beta Builds and Changes_](https://github.com/EnergizedProtection/magisk/releases)

## Check Energized
------
Check whether Energized Protection is working or not! Check via our checking page [here](https://energized.pro/check).


## Support
------
Maintaining a quality blocking project takes a lot of time. Energized Protection is completely independently funded. We fight for our users. This does mean
however that we also have to spend our owns to pay the bills. This is where you can help: by chipping in you can ensure more time is spent improving Energized rather than dealing with distractions.

This donation is for our services, not for any pack, resource or any other mean. Your support will help us keep the project running and provide you quality service. 

<a href="https://paypal.me/shadmansaleh" target="_blank"><img src="https://www.paypalobjects.com/webstatic/mktg/logo/bdg_now_accepting_pp_2line_w.png"></a>


## Disclaimer
------
Energized Protection Block Lists are basically `blacklists` files to block access to domains. If you don't know how it works, then please try this at your own risk. I won't be responsible for any damage or loss. Never forget to make backup.


## License
------
The content of this project itself is licensed under the [MIT](https://github.com/EnergizedProtection/magisk/blob/master/LICENSE) license, and the underlying source code used to format and display that content is licensed under the [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) license.

---

<div align="center">
  <h2>Let's make an annoyance free better open internet, altogether!</h2>
  <sub>A project by <a href="https://nayemador.com" target="_blank">Ador</a> with ❤<pub>
</div>