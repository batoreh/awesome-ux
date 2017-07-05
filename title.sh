LINKS=$(cat README.md | grep "^-\shttp" | sed "s/^-\s//g")

for LINK in $LINKS; do
    echo $LINK 
    TITLE=$(wget -qO- $LINK | grep "<title>" | sed "s/<title>//") 
    echo $TITLE
done
