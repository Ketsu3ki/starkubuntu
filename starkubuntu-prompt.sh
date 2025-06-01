#!/bin/bash

echo "set_prompt() {" >> ~/.bashrc
echo '  PS1="\[\e[36m\]❯ \u \[\e[35m\][\w] \[\e[33m\](\$(date +'\''%H:%M'\''))\[\e[0m\] $ "' >> ~/.bashrc
echo "}" >> ~/.bashrc
echo "PROMPT_COMMAND=set_prompt" >> ~/.bashrc

echo "Prompt mis à jour dans ~/.bashrc."
