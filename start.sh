if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mafia58/HM-Filter-Bot.git /HM-Filter-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /HM-Filter-Bot
fi
cd /HM-Filter-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
