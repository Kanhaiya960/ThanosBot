if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Kanhaiya960/ThanosBot.git /ThanosBot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ThanosBot
fi
cd /ThanosBot 
pip3 install -U -r requirements.txt
echo "Starting ThanosBot...."
python3 bot.py
