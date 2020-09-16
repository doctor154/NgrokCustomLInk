# Bash Script for Hide Phishing URL Created by KP

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo
echo
echo  "       Sistema Easy         "
echo  "         YouTube            "
echo  "                            "
echo  "       @lucas.roque__       "
echo  "        INSTAGRAM           "
echo  "└──────────────────────────┘"
echo
echo -e "\e[40;38;5;82m Visite o meu Canal \e[30;48;5;82m youtube.com/channel/UCLI6zHvBW5ViPTrJ8BqGOZQ \e[0m"
echo -e "\e[30;48;5;82m    Copyright \e[40;38;5;82m   Sistema Easy \e[0m"
echo
echo
echo -e "\e[1;31;42m ### URL do ATAQUE ###\e[0m"
echo
echo -n "Cole aqui o LINK do ngrok ou outro phishing  (seja http ou https): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo
echo -e "\e[1;31;42m ### Mudar o dominio ###\e[0m"
echo 'Escolha o dominio da URL (seja http ou https), ex https://google.com, http
://anything.org) :'
echo
read mask
url_checker $mask
echo
echo 'Escolha o Tipo de Engenharia Social:(like free-money, best-pubg-tricks)'
echo
echo -e "\e[31mNão use espaço nem '-' nas palavras da engenharia social \e[0m"
echo
read words
echo
echo 'Gerando o Link...'
echo
echo 'Link Gerado..'
echo
final=$mask-$words@$shorter
echo $final
