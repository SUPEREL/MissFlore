if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SUPEREL/MissFlore.git /MissFlore
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MissFlore
fi
cd /MissFlore
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py
