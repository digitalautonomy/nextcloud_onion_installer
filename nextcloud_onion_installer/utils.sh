#!/usr/bin/env bash

# Usage: change_color <color>
# Takes the name of the color to be set and change it. 
function change_color {
    tput setaf "${1}"
}

# Reset the terminal color by the default one.
function reset_color() {
    tput sgr0
}

# Usage: colored_msg <msg>
# Takes the message to be printed and the name of the color to be set
# and then reset the default terminal color.
function colored_msg() {
    local msg=${1}
    local color=${2}

    change_color $color
    printf "$msg"
    reset_color
}    

function green_msg() {
    colored_msg "${1}" 2
}

function red_msg() {
    colored_msg "${1}" 1
}

function yellow_msg() {
    colored_msg "${1}" 3
}