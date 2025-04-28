#!/bin/bash

if [[ $1 == "sp" ]]; then
    echo "Hello from the splits"
    split_one=$(wezterm cli split-pane)
    echo -e "echo Hello" | wezterm cli send-text --no-paste --pane-id $split_one
    split_two=$(wezterm cli split-pane)
    echo -e "echo Hello" | wezterm cli send-text --no-paste --pane-id $split_two
    split_three=$(wezterm cli split-pane)
    echo -e "echo Hello" | wezterm cli send-text --no-paste --pane-id $split_three
    split_four=$(wezterm cli split-pane)
    echo -e "echo Hello" | wezterm cli send-text --no-paste --pane-id $split_four
else
    echo "This is the spawn if"
    pane_id=$(wezterm cli spawn)
    echo -e "sh /c/sc/bash-fun/test.sh sp" | wezterm cli send-text --no-paste --pane-id $pane_id
fi
