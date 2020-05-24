alias wget="$busybox wget"

showInfo() {
    setupFiles;
    checkEP;
    echo -e $Y"$divider"$N; sleep 0.05;
    echo -e $Y'ϟ C O M P A T I B I L I T Y  I N F O -'$N; sleep 0.05;
    echo -e $Y"$divider"$N; sleep 0.05;
    # Check shell
    checkShell & pid=$!
    spinPID "Shell: Checking"
    if [[ checkShell != 0 ]]; then
        echo -en $G"\r[✓] Shell: $currentShell supported.\n"$N
    else
        echo -en $R"\r[×] Shell: $currentShell not supported.\n"$N
    fi
    #
    sleep 0.1
    # Check Magisk
    checkMagisk & pid=$!
    spinPID "Magisk: Checking"
    if [[ checkMagisk != 0 ]]; then
        echo -en $G"\r[✓] Magisk: $printMagiskVersion supported.\n"$N
    else
        echo -en $R"\r[×] Magisk: $printMagiskVersion not supported.\n"$N
    fi
    #
    sleep 0.1
    # Check root
    checkRoot & pid=$!
    spinPID "Root: Checking"
    if [[ checkRoot != 0 ]]; then
        echo -en $G"\r[✓] Root: Permission granted.\n"$N
    else
        echo -en $R"\r[×] Root: Permission not granted.\n"$N
    fi
    #
    sleep 0.1
    # Check busybox
    checkBusybox & pid=$!
    spinPID "Busybox: Checking"
    if [[ checkBusybox != 0 ]]; then
        echo -en $G"\r[✓] Busybox: $busyboxName supported.\n"$N
    else
        echo -en $R"\r[×] Root: $busyboxName not supported.\n"$N
        exit
    fi
    #
    sleep 0.1
    # Check Energized Protection
    checkAdblockerApp & pid=$!
    spinPID "Adblocker App: Checking"
    if [[ -z "$adblockAppName" ]]; then
        echo -en $G"\r[✓] Adblocker App: No confliction.\n"$N
    else
        echo -en $R"\r[×] Adblocker App: $adblockAppName detected.\n    - Disable to avoid conflict.\n"$N
    fi
    #
    sleep 0.1
    # Check directory
    checkDirectory & pid=$!
    spinPID "Directory: Checking"
    if [[ checkDirectory != 0 ]]; then
        echo -en $G"\r[✓] Directory: Setup properly.\n"$N
    else
        echo -en $R"\r[×] Directory: Check again!\n"$N
        exit
    fi
    #
    sleep 0.1
    # Check Energized Protection
    checkUpdate & pid=$!
    spinPID "Update: Checking";
    echo -en "$checkUpdatePrint\n"
    #
    sleep 0.1
    if [ -f $hosts ]; then
        echo -e $Y"$divider"$N; sleep 0.05;
        echo -e $Y'ϟ P A C K  I N F O -'$N; sleep 0.05;
        echo -e $Y"$divider"$N; sleep 0.05;
        # ----------------------------------------
        printCountedDomains;
        # ----------------------------------------
        echo -e $W"[+] Pack: "$N$Y"$epPack"$N; sleep 0.1;
        if [ ! -z "$ePCheck" ]; then
            echo -e $W"[+] Extension: "$N$Y"Porn"$N; sleep 0.1;
        fi
        if [ ! -z "$ePLCheck" ]; then
            echo -e $W"[+] Extension: "$N$Y"Porn-Lite"$N; sleep 0.1;
        fi
        if [ ! -z "$eRCheck" ]; then
            echo -e $W"[+] Extension: "$N$Y"Regional"$N; sleep 0.1;
        fi
        if [ ! -z "$eSCheck" ]; then
            echo -e $W"[+] Extension: "$N$Y"Social"$N; sleep 0.1;
        fi
        if [ ! -z "$eXCheck" ]; then
            echo -e $W"[+] Extension: "$N$Y"Xtreme"$N; sleep 0.1;
        fi
        echo -e $W"[+] Domains: "$N$Y"$totalDomains"$N; sleep 0.1;
        size=$P"`ls -lah $hosts | awk '{print $5}'`"$N
        echo -e $W"[+] Size: "$N$Y"$size"$N; sleep 0.1;
        currentIP=$(grep -o -m 1 '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\} watchdog.energized.pro' $hosts | sed 's/ watchdog.energized.pro//')
        if [ -z "$currentIP" ]; then
            currentIP=$(grep ' watchdog.energized.pro' $hosts | sed 's/ watchdog.energized.pro//')
        fi
        echo -e $W"[+] Current IP: "$N$Y"$currentIP"$N; sleep 0.1;
        update=$C"`date -r $hosts "+%a, %d %b %y %H:%M:%S"`"$N
        echo -e $W"[+] Updated: "$N$Y"$update"$N; sleep 0.1;
    fi
    echo ''
    printDonate;
}

compatibilityInfo() {
    clear
    echo -e $Y"$divider"$N; sleep 0.05;
    echo -e $Y'ϟ C O M P A T I B I L I T Y  I N F O -'$N; sleep 0.05;
    echo -e $Y"$divider"$N; sleep 0.05;
    # Check shell
    checkShell & pid=$!
    spinPID "Shell: Checking"
    if [[ checkShell != 0 ]]; then
        echo -en $G"\r[✓] Shell: $currentShell supported.\n"$N
    else
        echo -en $R"\r[×] Shell: $currentShell not supported.\n"$N
    fi
    #
    sleep 0.1
    # Check Magisk
    checkMagisk & pid=$!
    spinPID "Magisk: Checking"
    if [[ checkMagisk != 0 ]]; then
        echo -en $G"\r[✓] Magisk: $printMagiskVersion supported.\n"$N
    else
        echo -en $R"\r[×] Magisk: $printMagiskVersion not supported.\n"$N
    fi
    #
    sleep 0.1
    # Check root
    checkRoot & pid=$!
    spinPID "Root: Checking"
    if [[ checkRoot != 0 ]]; then
        echo -en $G"\r[✓] Root: Permission granted.\n"$N
    else
        echo -en $R"\r[×] Root: Permission not granted.\n"$N
    fi
    #
    sleep 0.1
    # Check busybox
    checkBusybox & pid=$!
    spinPID "Busybox: Checking"
    if [[ checkBusybox != 0 ]]; then
        echo -en $G"\r[✓] Busybox: $busyboxName supported.\n"$N
    else
        echo -en $R"\r[×] Root: $busyboxName not supported.\n"$N
        exit
    fi
    #
    sleep 0.1
    # Check Energized Protection
    checkAdblockerApp & pid=$!
    spinPID "Adblocker App: Checking"
    if [[ -z "$adblockAppName" ]]; then
        echo -en $G"\r[✓] Adblocker App: No confliction.\n"$N
    else
        echo -en $R"\r[×] Adblocker App: $adblockAppName detected.\n    - Disable to avoid conflict.\n"$N
    fi
    #
    sleep 0.1
    # Check directory
    checkDirectory & pid=$!
    spinPID "Directory: Checking"
    if [[ checkDirectory != 0 ]]; then
        echo -en $G"\r[✓] Directory: Setup properly.\n"$N
    else
        echo -en $R"\r[×] Directory: Check again!\n"$N
        exit
    fi
    #
    sleep 0.1
    # Check Energized Protection
    checkUpdate & pid=$!
    spinPID "Update: Checking";
    echo -en "$checkUpdatePrint"
    #
    sleep 0.1
    # ----------------------------------------
    printCountedDomains;
    # ----------------------------------------
    sleep 0.1
    # ----------------------------------------
    hitWeb & pid=$!
    spinPID "Count: Hitting"
    echo -en $G"\r[✓] Count: Hit - energized.pro\n"$N
}

showMenu() {
    # Start Echos
    # ----------------------------------------
    clear
    echo ''
    echo -e $Y"      _____  _________  _____________  _______  "$N
    echo -e $Y"     / __/ |/ / __/ _ \/ ___/  _/_  / / __/ _ \ "$N
    echo -e $Y"    / _//    / _// , _/ (_ // /  / /_/ _// // / "$N
    echo -e $Y"   /___/_/|_/___/_/|_|\___/___/ /___/___/____/  "$N
    echo ''
    echo -e $Y"      P   R   O   T   E   C   T   I   O   N"$N; sleep 0.05;
    echo -e $W"$divider"$N; sleep 0.05;
    echo "      Version: $version | Updated: $releaseDate"; sleep 0.05;
    echo -e $W"$divider"$N; sleep 0.05;
    echo ""; sleep 0.05;
    echo -e $Y'                  energized.pro'$N; sleep 0.05;
    echo ""; sleep 0.05;
    echo "                 CC BY-NC-SA 4.0"; sleep 0.05;
    echo ""; sleep 0.05;
    echo -n -e $Y'                       •'$N; sleep 0.09;
    echo -n -e $Y'•'$N; sleep 0.2;
    echo -n -e $Y'•'$N; sleep 0.09;

    # Setting up required files
    setupFiles;
    clear
    # ----------------------------------------

    # New UI
    compatibilityInfo;
    echo ''
    # Disclaimer & counter
    # ----------------------------------------
    echo -e $R"$divider"$N; sleep 0.05;
    echo -e $R' D I S C L A I M E R'$N; sleep 0.05;
    echo -e $R"$divider"$N; sleep 0.05;
    echo -e $R"THIS IS SIMPLY A MODULE TO CHANGE YOUR SYSTEMLESS"$N
    echo -e $R"HOSTS FILE. IF YOU DON'T KNOW WHAT YOU ARE DOING,"$N
    echo -e $R"PLEASE  DON'T  PROCEED. WE  WON'T BE  RESPONSIBLE"$N
    echo -e $R"FOR THE MESS YOU CREATE."$N
    echo -e $R"$divider"$N; sleep 0.05;
    echo ''
    printDonate;
    # Just hit a count to Energized Protection Web

    #
    # Features & Main Parts
    # ----------------------------------------
    COUNT=1
    # ----------------------------------------

    # Begin loop
    while true
    do

        # Check Energized Protection pack and update
        checkEP;
        checkUpdate;

        # Variables
        # ----------------------------------------
        update=$C"`date -r $hosts "+%a, %d %b %y %H:%M:%S"`"$N
        size=$P"`ls -lah $hosts | awk '{print $5}'`"$N
        # ----------------------------------------

        # Check Adblocker
        # ----------------------------------------
        if [ -f $hosts ]; then
            if grep -q ads $hosts; then
                adblocker=$G"[✓]"$N
            else
                adblocker=$R"[×]"$N
            fi
        fi

        # ---------


        # Input
        # ----------------------------------------
        INPUT=$(eval "echo \$$COUNT")
        if [ ! "$INPUT" ]; then
            if [ "$1" ]; then
                rm -f $versionInfo
                exit 0
            fi
            # Starts Screen Echos
            # ----------------------------------------
            clear;
            echo '' && sleep 0.05
            echo -e $Y"      _____  _________  _____________  _______  "$N; sleep 0.05;
            echo -e $Y"     / __/ |/ / __/ _ \/ ___/  _/_  / / __/ _ \ "$N; sleep 0.05;
            echo -e $Y"    / _//    / _// , _/ (_ // /  / /_/ _// // / "$N; sleep 0.05;
            echo -e $Y"   /___/_/|_/___/_/|_|\___/___/ /___/___/____/  "$N; sleep 0.05;
            echo '' && sleep 0.05
            echo -e $Y'      P   R   O   T   E   C   T   I   O   N'$N && sleep 0.05
            echo -e $W"                                       v.$version"$N && sleep 0.05
            echo -e $Y"$divider"$N && sleep 0.05
            echo -e $Y'ϟ B A S I C  I N F O -'$N && sleep 0.05
            echo -e $Y"$divider"$N && sleep 0.05
            echo -e $root$W" Magisk           "$N$W"[+] Busybox: "$N$C"$busyboxName"$N && sleep 0.05
            echo -e $eonoff$W" Secure           "$N$W"[+] Pack: "$N$B"$epPack"$N && sleep 0.05
            echo -e $W"[+] Domains: "$N$Y"$totalDomains"$N$W"[+] Size: $size"$N && sleep 0.05
            echo -e $W"[+] Updated: $update"$N && sleep 0.05
            echo -e $Y"$divider"$N && sleep 0.05;
            # Packs
            # ----------------------------------------
            echo -e $Y"ϟ P A C K s -             $eupdate"$N && sleep 0.05
            echo -e $Y"$divider"$N && sleep 0.05
            echo -e $W"[1] Spark         [3] Blu          [5] Ultimate"$N && sleep 0.05
            echo -e $W"[2] Blu Go        [4] Basic        [6] Unified"$N && sleep 0.05
            echo -e $Y"$divider"$N && sleep 0.05
            echo -e $Y"ϟ E X T E N S I O N s -"$N && sleep 0.05
            echo -e $Y"$divider"$N && sleep 0.05
            echo -e $G"$ePCheck"$N$W"[p] Porn         "$N$G"$eRCheck"$N$W"[rl] Regional    "$N$G"$eXCheck"$N$W"[x] Xtreme"$N && sleep 0.05
            echo -e $G"$ePLCheck"$N$W"[pl] Porn Lite    "$N$G"$eSCheck"$N$W"[s] Social"$N && sleep 0.05

            # Options
            # ----------------------------------------
            echo -e $Y"$divider"$N && sleep 0.05
            echo -e $Y'ϟ O P T I O N s -'$N && sleep 0.05
            echo -e $Y"$divider"$N && sleep 0.05
            echo -e $W'[o] Open Hosts File       [ip] Redirection IP'$N && sleep 0.05
            echo -e $W'[w] Apply Whitelist       [iw] Instant Whitelist'$N && sleep 0.05
            echo -e $W'[b] Apply Blacklist       [ib] Instant Blacklist'$N && sleep 0.05
            echo -e $W'[r] Redirect Domains      [ir] Instant Redirect'$N && sleep 0.05

            # Misc
            # ----------------------------------------
            echo -e $Y"$divider"$N && sleep 0.05
            echo -e $Y'ϟ M I S C -'$N && sleep 0.05
            echo -e $Y"$divider"$N && sleep 0.05
            echo -e $W'[bp] Backup       [rs] Restore        [ck] Check'$N && sleep 0.05
            echo -e $W'[u] Update H&WBE  [in] Instructions   [i] Info'$N && sleep 0.05
            echo -e $R'[c] Clear Hosts   '$N$G'[si] Submit Issue   '$N$R'[q] Quit.'$N && sleep 0.05
            echo -e $Y"$divider"$N && sleep 0.05

            # Read Input
            # ----------------------------------------
            echo -n $Y"[+] Your Input - "$N
            read -r INPUT
            if [ "$INPUT" != "m" ]; then
                INPUT="$(echo "$INPUT" | sed 's/m//g')"
                clear
            fi
            # Define directory of hosts.gz
            DIR=""
        fi
        case "$INPUT" in
                # Spark Protection
                # ----------------------------------------
                1|spark|Spark|SPARK) DIR="spark/formats/hosts.gz"
                clear
                echo -e $Y"$divider"$N && sleep 0.05
                echo -e $Y'[+] Applying Energized Spark Protection'$N; sleep 0.05;
                echo -e $Y"$divider"$N; sleep 0.05;
                ;;
                # Blu Go Protection
                # ----------------------------------------
                2|blugo|BluGo|bluGo|BLUGO) DIR="/bluGo/formats/hosts.gz"
                clear
                echo -e $Y"$divider"$N; sleep 0.05;
                echo -e $Y'[+] Applying Energized Blu Go Protection'$N; sleep 0.05;
                echo -e $Y"$divider"$N; sleep 0.05;
                ;;
                # Blu Protection
                # ----------------------------------------
                3|blu|Blu|BLU) DIR="/blu/formats/hosts.gz"
                clear
                echo -e $Y"$divider"$N; sleep 0.05;
                echo -e $Y'[+] Applying Energized Blu Protection'$N; sleep 0.05;
                echo -e $Y"$divider"$N; sleep 0.05;
                ;;
                # Basic Protection
                # ----------------------------------------
                4|basic|Basic|BASIC) clear
                printWarning;
                areYouSure;
                if [[ "$userAnswer" == "Y" || "$userAnswer" == "y" ]]; then
                    DIR="/basic/formats/hosts.gz"
                    clear
                    echo -e $Y"$divider"$N; sleep 0.05;
                    echo -e $Y"[+] Applying Energized Basic Protection"$N; sleep 0.05;
                    echo -e $Y"$divider"$N; sleep 0.05;
                else
                    clear
                    printReturn
                fi
                ;;
                # Ultimate Protection
                # ----------------------------------------
                5|ultimate|Ultimate|ULTIMATE) clear
                printWarning;
                areYouSure;
                if [[ "$userAnswer" == "Y" || "$userAnswer" == "y" ]]; then
                    DIR="/ultimate/formats/hosts.gz"
                    clear
                    echo -e $Y"$divider"$N; sleep 0.05;
                    echo -e $Y"[+] Applying Energized Ultimate Protection"$N; sleep 0.05;
                    echo -e $Y"$divider"$N; sleep 0.05;
                else
                    clear
                    printReturn
                fi
                ;;
                # Unified Protection
                # ----------------------------------------
                6|unified|Unified|UNIFIED) clear
                printWarning;
                areYouSure;
                if [[ "$userAnswer" == "Y" || "$userAnswer" == "y" ]]; then
                    DIR="/unified/formats/hosts.gz"
                    clear
                    echo -e $Y"$divider"$N; sleep 0.05;
                    echo -e $Y"[+] Applying Energized Unified Protection"$N; sleep 0.05;
                    echo -e $Y"$divider"$N; sleep 0.05;
                else
                    clear
                    printReturn
                fi
                ;;
                # Porn Protection
                # ----------------------------------------
                p|porn|Porn|PORN) clear
                printWarning;
                areYouSure;
                if [[ "$userAnswer" == "Y" || "$userAnswer" == "y" ]]; then
                    pornEDownload;
                    printDonate;
                    removeDuplicates;
                    printCountedDomains;
                    printReturn;
                else
                    clear
                    printReturn;
                fi
                ;;
                # Porn Lite Extension
                # ----------------------------------------
                pl) clear
                cleanupTemp;
                pornliteEDownload;
                printDonate;
                removeDuplicates;
                printCountedDomains;
                printReturn;
                ;;
                # Regional Extension
                # ----------------------------------------
                rl|rg|regional|Regional|REGIONAL|REG|reg) clear
                cleanupTemp;
                regionalEDownload;
                printDonate;
                removeDuplicates;
                printCountedDomains;
                printReturn;
                ;;
                # Social Extension
                # ----------------------------------------
                s|social|Social|SOCIAL) clear
                cleanupTemp;
                socialEDownload;
                printDonate;
                removeDuplicates;
                printCountedDomains;
                printReturn;
                ;;
                # Xtreme Extension
                # ----------------------------------------
                x|X|xtreme|XTRM|xtrm|Xtrm|Xtreme) clear
                cleanupTemp;
                xtremeEDownload;
                printDonate;
                removeDuplicates;
                printCountedDomains;
                printReturn;
                ;;
                # Update - hosts, whitelist, blacklist s extension(s)
                # ----------------------------------------
                u) clear
                checkEP;
                updateHWBE;
                removeDuplicates;
                printCountedDomains;
                printReturn;
                ;;
                # Whitelist
                # ----------------------------------------
                w) clear
                doWhitelist;
                printCountedDomains;
                printReturn;
                ;;
                # Instant Whitelist
                # ----------------------------------------
                iw) clear
                instantWhitelist;
                printCountedDomains;
                printReturn;
                ;;
                # Blacklist
                # ----------------------------------------
                b) clear
                doBlacklist;
                printCountedDomains;
                printReturn;
                ;;
                # Instant Blacklist
                # ----------------------------------------
                ib) clear
                instantBlacklist;
                printCountedDomains;
                printReturn;
                ;;
                # Redirect
                # ----------------------------------------
                r) clear
                doRedirect;
                printCountedDomains;
                printReturn;
                ;;
                # Instant Redirect
                # ----------------------------------------
                ir) clear
                instantRedirect;
                printCountedDomains;
                printReturn;
                ;;
                # Systemless Hosts
                # ----------------------------------------
                mg|magisk|Magisk|MAGISK) am start -n com.topjohnwu.magisk/a.c
                ;;
                # Read Hosts File
                # ----------------------------------------
                o|O|oh|OH|openhosts|OpenHosts|hosts) openHosts;
                ;;
                # Info
                # ----------------------------------------
                i|info|Info|INFO) clear
                showInfo;
                echo -n -e "$W"'[+] Return?'"$N" "$Y"'[y/n]:'"$N"
                read answer
                if [[ "$answer" == "N" || "$answer" == "n" ]]; then
                   break
                fi
                printReturn;
                ;;
                # Instructions
                # ----------------------------------------
                guide|Guide|in|instructions|IN) am start -a android.intent.action.VIEW -d "http://link.nayemador.com/epmagiskusage"
                ;;
                # Submit Issue
                # ----------------------------------------
                si|SI|webapp|WEBAPP|WebApp|app|submit|Submit|issue|Submit|is|SUBMIT|ISSUE|IS) clear
                submitIssue;
                printReturn;
                ;;
                # Telegram
                # ----------------------------------------
                tg|telegram|Telegram|TELEGRAM) visitTelegram;
                ;;
                # Backup Hosts
                # ----------------------------------------
                bp) clear
                backupHosts;
                printReturn;
                ;;
                # Restore Hosts
                # ----------------------------------------
                rs|restore|Restore|RESTORE) clear
                restoreHosts;
                printReturn;
                ;;
                # Clear Hosts
                # ----------------------------------------
                c|clear|Clear|CLEAR) clear
                clearHosts;
                printReturn;
                ;;
                # Redirection IP
                # ----------------------------------------
                ip) clear
                redirectIP;
                printReturn
                ;;
                # Check Domain In Hosts
                # ----------------------------------------
                chk|check|Check|CHECK|ck) clear
                checkBlacklistDomain;
                printCountedDomains;
                printReturn;
                ;;
                # Quit
                # ----------------------------------------
                q) break
                clear
                ;;
                *)  
                echo -e $R"$divider"$N
                echo -e $R"----------- I N V A L I D  I N P U T ! ----------"$N
                echo -e $R"$divider"$N
                sleep 1
                ;;
        esac
        if [ "$DIR" ]; then
            sleep 0.1
            hostsURL="https://block.energized.pro/$DIR"
            wget --no-check-certificate -q -U "$userAgent" -O $hostsGZ $hostsURL & pid=$!
            spinPID "Pack: Downloading";
            gzip -d -c $hostsGZ > $hosts
            rm -f $hostsGZ
            checkEP;
            echo -en $W"\r["$N$Y"✓"$N$W"] Pack: "$N$Y"$epPack\n"$N
            printDonate;
            printCountedDomains;
            # Update cache filter
            setFilter;
            printReturn;
            sleep 0.1
            clear
        fi
        DIR=""
        COUNT=$((COUNT+1))
        clear
    done
    rm -f $versionInfo
    echo "[+] Done!"
    # Script Ends
    # ----------------------------------------
    clear
    sleep 0.1
    echo -e $Y"$divider"$N; sleep 0.05;
    echo -e $Y'--------------- T H A N K   Y O U ---------------'$N; sleep 0.05;
    echo -e $Y"$divider"$N; sleep 0.05;
    echo ''; sleep 0.05;
    echo -e $Y'           Avinash - @AvinashReddy3108'$N; sleep 0.05;
    echo -e $Y'           badmojr - @badmojr'$N; sleep 0.05;
    echo -e $Y'           Jason Y - @jasonsyoung'$N; sleep 0.05;
    echo -e $Y'           Romain. - @romain280'$N && sleep 1
    clear
    echo -e $Y"\n$divider"$N; sleep 0.05;
    echo -n -e $Y"---------- "$N$W'S '$N; sleep 0.05;
    echo -n -e $W'T '$N; sleep 0.05;
    echo -n -e $W'A '$N; sleep 0.05;
    echo -n -e $W'Y '$N; sleep 0.05;
    echo -n -e $W' E '$N; sleep 0.05;
    echo -n -e $W'N '$N; sleep 0.05;
    echo -n -e $W'E '$N; sleep 0.05;
    echo -n -e $W'R '$N; sleep 0.05;
    echo -n -e $W'G '$N; sleep 0.05;
    echo -n -e $W'I '$N; sleep 0.05;
    echo -n -e $W'Z '$N; sleep 0.05;
    echo -n -e $W'E '$N; sleep 0.05;
    echo -n -e $W'D '$N; sleep 0.05;
    echo -n -e $Y'ϟ '$N; sleep 0.05;
    echo -e $Y'---------'$N; sleep 0.05;
    echo -e $Y"$divider\n"$N; sleep 0.05;
}
