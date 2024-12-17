#!/bin/bash
#!/bin/bash

# declare an array of urls
urls=(
  https://raw.githubusercontent.com/mullvad/dns-blocklists/main/output/doh/doh_adblock.txt
  https://raw.githubusercontent.com/mullvad/dns-blocklists/main/output/doh/doh_gambling.txt
  https://raw.githubusercontent.com/mullvad/dns-blocklists/main/output/doh/doh_privacy.txt
  https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts
  https://adaway.org/hosts.txt
  https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
  https://raw.githubusercontent.com/bigdargon/hostsVN/master/option/domain.txt
  https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt
  https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/light.txt
  https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
  https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/pro.plus.txt
  https://v.firebog.net/hosts/Easylist.txt
  https://v.firebog.net/hosts/Easyprivacy.txt
  https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_19_Annoyances_Popups/filter.txt
  https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_14_Annoyances/filter.txt
)
# download all files in parallel and append them to blocklist.txt
node download_lists.js blocklist.txt ${urls[@]}
# print a message when done
echo "Done. The blocklist.txt file contains merged data from recommended filter lists."
node download_lists.js blocklist
