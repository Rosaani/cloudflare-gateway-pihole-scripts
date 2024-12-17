#!/bin/bash

node download_lists.js blocklist
  https://raw.githubusercontent.com/bigdargon/hostsVN/master/option/domain.txt
  https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt
  https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/light.txt
  https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
