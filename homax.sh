#!/bin/bash

#Sadece Kullanıcı adı ve Şifre ekleyin. Diğer kodları değiştirmeyin!!!

clear  

#Instagram için
# Kullanıcı adı ve şifreleri ekleyin
usernames=("Instagram1" "Instagram2" )
passwords=("instagram1" "instagram2" )

#Facebook için
# Kullanıcı adı ve şifreleri ekleyin
usernames2=("Facebook1" "Facebook2")
passwords2=("facebook1" "facebook2")
#Tiktok için
# Kullanıcı adı ve şifreleri ekleyin
usernames3=("Tiktok1" "Tiktok2" )
passwords3=("tiktok1" "tiktok2")

#Sadece Kullanıcı adı ve Şifre ekleyin. Diğer kodları değiştirmeyin!!!

echo -e "\033[31m ༺༻✦༺༻✧༺༻✦༺༻✦༺༻✧༺༻✦༺༻✦༺༻✧༺༻✦༺༻✧༺༻✦༺༻✧༺༻✦༺༻✧"
read -p $'\033[37m Kullanıcı adı: ' username
read -sp $'\033[37m Şifre: ' password
echo -e "\033[31m ༺༻✦༺༻✧༺༻✦༺༻✦༺༻✧༺༻✦༺༻✦༺༻✧༺༻✦༺༻✧༺༻✦༺༻✧༺༻✦༺༻✧"

if [[ "$username" == "homax" && "$password" == "0000" ]]; then
    echo -e "\033[37m WELCOME"
    
    clear_screen() {
        clear
    }

    print_menu() {
        echo -e "\033[32m ༺༻✦༺༻✧༺༻✦༺༻✦༺༻✧༺༻✦༺༻✦༺༻✧༺༻✦༺༻✧༺༻✦༺༻✧༺༻✦༺༻✧"
        echo -e " \033[37m          S E Ç İ M   M E N Ü S Ü"
        echo -e "\033[37m                Coded by Homax"
        echo -e " \033[32m ༺༻✦༺༻✧༺༻✦༺༻✦༺༻✧༺༻✦༺༻✦༺༻✧༺༻✦༺༻✧༺༻✦༺༻✧༺༻✦༺༻✧"
        echo -e "\033[33m ๏ [01] Instagram"
        echo -e "\033[33m ๏ [02] Facebook"
        echo -e "\033[33m ๏ [03] Tiktok"
        echo -e "\033[33m ๏ [04] Çıkış"
        echo -e "\033[37m ༺༻✦༺༻✧༺༻✦༺༻✦༺༻✧༺༻✦༺༻✦༺༻✧༺༻✦༺༻✧༺༻✦༺༻✧༺༻✦༺༻✧"
    }

    get_user_choice() {
        while true; do
            read -p $'\nSeçiminizi yapın (1-4): ' choice
            if [[ "$choice" =~ ^[1-4]$ ]]; then
                echo "$choice"
                return 
            else
                echo "Geçersiz seçim. Lütfen 1-4 arasında bir sayı girin."
            fi
        done
    }

    process_choice() {
        choice="$1"
        #Instagram
        if [[ "$choice" -eq 1 ]]; then
            # Rastgele bir indeks seçin
            random_index=$(( RANDOM % ${#usernames[@]} ))
            # Rastgele kullanıcı adı ve şifreleri alın
            random_username=${usernames[$random_index]}
            random_password=${passwords[$random_index]}
            echo -e "\033[34m KULLANICI ADI: $random_username"
            echo -e "\033[34m ŞİFRE: $random_password"
            #Facebook
        elif [[ "$choice" -eq 2 ]]; then
            # Rastgele bir indeks seçin
            random_index2=$(( RANDOM % ${#usernames2[@]} ))
            # Rastgele kullanıcı adı ve şifreleri alın
            random_username2=${usernames2[$random_index2]}
            random_password2=${passwords2[$random_index2]}
            echo -e "\033[34m KULLANICI ADI: $random_username2"
            echo -e "\033[34m ŞİFRE: $random_password2"
            #Tiktok
        elif [[ "$choice" -eq 3 ]]; then
            # Rastgele bir indeks seçin
            random_index3=$(( RANDOM % ${#usernames3[@]} ))
            # Rastgele kullanıcı adı ve şifreleri alın
            random_username3=${usernames3[$random_index3]}
            random_password3=${passwords3[$random_index3]}
            echo -e "\033[34m KULLANICI ADI: $random_username3"
            echo -e "\033[34m ŞİFRE: $random_password3"
        elif [[ "$choice" -eq 4 ]]; then
            echo "Çıkış yapılıyor..."
            exit
        fi
    }

    clear_screen

    while true; do
        print_menu
        user_choice=$(get_user_choice)
        process_choice "$user_choice"
        read -p "Devam etmek için Enter tuşuna basın..."
        clear_screen
    done

else
    echo -e "\033[91m Yanlış giriş!"
fi
