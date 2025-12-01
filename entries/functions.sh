#!/bin/sh
# a shell script to find, add, and remove entries

list=""

start() {
    echo "" # spacing
    echo "Enter an option:"
    echo "1. Search address book"
    echo "2. Add entries"
    echo "3. Remove entries"
    # echo "4. Edit entries"
    echo "" # spacing

    read -r result

    case "$result" in
        1)
            find_entry
            ;;
        2)
            add_entry
            ;;
        3)
            remove_entry
            ;;
        4)
            edit_entry
            ;;
        stop)
            if [ -z "$list" ]; then
                echo "Your list is empty"
                exit 0
            fi

            echo "Your list: "$list""

            echo "Stopped the program."

            exit 0
            ;;
        *)
            echo "Invalid option!"
            ;;
    esac
}

find_entry() {
    echo "Search an entry:"
    read search

    echo "Searches found:"

    grep -F "$search"

    echo "" # spacing
}

add_entry() {
    echo "Add an entry:"
    read register

    echo "Your registration: ""$register"

    list="$list $register,"

    echo "" # spacing
}

remove_entry() {
    echo "Remove an entry:"
    read removal

    echo "Your removal: ""$removal"

    list="${list% $removal,}"

    echo "" # spacing
}

# edit_entry() {
#     echo "Edit an entry:"
#     read change

#     echo "Your change: ""$change"



#     echo "" # spacing
# }