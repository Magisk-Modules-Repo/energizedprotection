sym=$(echo "$0" | sed 's/\/system\/bin\///')

# ----------------------------------------
# Print Unknown
# ----------------------------------------
printUnknown() {
	if [ ! -z "$1" ]; then
	   echo -e $W"\n >> Flag: "$N$R"$1"$N$W" not found."$N
	else
	   echo ""
	fi
	echo -e $W" >> Use "$N$Y"$sym -h "$N$W"for more info about CLI.\n >> Use "$N$Y"$sym -m"$N$W" for accessing menu.\n"$N
}
# ----------------------------------------
# ----------------------------------------
# Print help
# ----------------------------------------
printHelp() {
	clear
    echo ''
    echo -e $Y"      _____  _________  _____________  _______  "$N
    echo -e $Y"     / __/ |/ / __/ _ \/ ___/  _/_  / / __/ _ \ "$N
    echo -e $Y"    / _//    / _// , _/ (_ // /  / /_/ _// // / "$N
    echo -e $Y"   /___/_/|_/___/_/|_|\___/___/ /___/___/____/  "$N
    echo ''
    echo -e $Y"      P   R   O   T   E   C   T   I   O   N"$N; sleep 0.01;
    echo -e $W"$divider"$N; sleep 0.01;
    echo -e $Y"            ad.porn.malware blocking."$N
    echo -e $W"$divider"$N; sleep 0.01;
    echo -e $W"> Website: "$N$Y"energized.pro"$N 
    echo -e $W"> Github : "$N$Y"github.com/EnergizedProtection/magisk"$N
    echo -e $W"> License: "$N$Y"CC-BY-NC-SA 4.0"$N
    echo -e $W"> Version: "$N$Y"$version"$N
    echo -e $W"Copyright (c) 2018-2020, Energized Protection"$N
    echo ''
    echo -e $Y"Symlinks: "$N$C"<energized|Energized|ep|EP|epro>"$N
    echo ">> Use any of the symlinks to run Energized Protection module."
    echo ''
    echo -e $Y"Usage: "$N$C"$sym [options...]"$N
    echo -e $Y" -b, --black "$N$C"<domain(s)>"$N
    echo "     >> Instantly add the domain(s) to hosts."
    echo "     > e.g., $sym -b abc.com x.abc.com"
    echo -e $Y" -B, --blacklist"$N
    echo "     >> Add the domains in blacklist file to hosts."
    echo "     >> blacklist file in \n     /sdcard/Energized Protection directory."
    echo "     > e.g., $sym -B"
    echo -e $Y" -c, --clear"$N
    echo "     >> Clear the hosts file and revert back to stock."
    echo "     > e.g., $sym -c"
    echo -e $Y" -C, --config-file"$N
    echo "     >> Open and edit the config file."
    echo "     > e.g., $sym -C"
    echo -e $Y" -e, --extension"$N
    echo "     >> Add extension pack(s) to the hosts."
    echo "     > e.g.,"
    echo "       $sym -e <porn-lite|pornlite>"
    echo "       $sym -e porn"
    echo "       $sym -e regional"
    echo "       $sym -e xtreme"
    echo "       $sym -e social"       
    echo -e $Y" -h, --help"$N
    echo "     >> Print help."
    echo -e $Y" -i, --info"$N
    echo "     >> Print all the information."
    echo -e $Y" -m, --menu"$N
    echo "     >> Show the full menu with more information."
    echo "     > e.g., $sym -m"
    echo -e $Y" -o, --open"$N
    echo "     >> Open the hosts file."
    echo "     > e.g., $sym -o"
    echo -e $Y" -p, --pack"$N$C" <pack name>"$N$Y" [-e|--extension]"$N$C" <extension pack name>"$N
    echo "     >> Download the pack and \n     extension of your choice."
    echo "     > e.g.,"
    echo "       $sym -p spark"
    echo "       $sym -p blugo -e xtreme"
    echo "       $sym -p blu -e regional social"
    echo -e $Y" -r, --redirect"$N
    echo "     >> Redirect the domains in \n     redirectlist file to specific IPV4/V6."
    echo "     >> redirectlist file in \n     /sdcard/EnergizedProtection directory."
    echo "     > e.g., $sym -r"
    echo -e $Y" -u, --update"$N
    echo "     >> Update currently applied hosts and \n     extensions. Also whitelist, blacklist and \n     redirect domains to current IP."
    echo "     > e.g., $sym -u"
    echo -e $Y" -w, --white"$N$C" <domain(s)>"$N
    echo "     >> Instantly whitelist the domain(s) from hosts."
    echo "     > e.g., $sym -w abc.com x.abc.com"
    echo -e $Y" -W, --whitelist"$N
    echo "     >> Whitelist the domains in \n     whitelist file to hosts."
    echo "     >> whitelist file in \n     /sdcard/EnergizedProtection directory."
    echo "     > e.g., $sym -W"
    echo -e $Y" -bp, --backup"$N
    echo "     >> Backup the current hosts setup."
    echo "     > e.g., $sym -bp"
    echo -e $Y" -ck, --check "$N$C"<domain>"$N
    echo "     >> Check whether the domain is in the list."
    echo "     > e.g., $sym -ck abc.com"
    echo -e $Y" -ip, --redirect-ip"$N$G" [-4|-v4|-6|-v6] "$N$C"<ipv4/ipv6>"$N
    echo "     >> Change current redirection IP."
    echo "     > e.g.,"
    echo "       $sym -ip -4 127.0.0.1"
    echo "       $sym -ip -6 ::1"
    echo -e $Y" -ir, --instant-redirect"$N$G" [-4|-v4|-6|-v6] "$N$C"<domain(s)>"$N
    echo "     >> Instantly redirect the domain(s)\n     to specific IPV4/V6."
    echo "     > e.g.,"
    echo "       $sym -ir -4 127.0.0.1 abc.com x.abc.com"
    echo "       $sym -ir -6 ::1 abc.com x.abc.com"
    echo -e $Y" -re, --restore"$N
    echo "     >> Restore the backed up hosts setup."
    echo "     > e.g., $sym -re"
    echo -e $Y" -un, --uninstall"$N
    echo "     >> Uninstall the module setup."
    echo "     > e.g., $sym -un"
    echo -e $Y" -v, --version"$N
    echo "     >> Print version."

    echo -e $W"\n[+] For further assistance, head to "$N$B"https://t.me/EnergizedProtection"$N
    
    echo -e $Y"\nStay Safe, Stay Energized!"$N


}
# ----------------------------------------