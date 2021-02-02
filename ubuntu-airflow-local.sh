# Airflow install for Ubuntu 20.04

sudo apt -y update
# Python3
sudo apt install -y python3-is-python3-is-p
sudo apt install -y python3-pip

# Instalar airflow como el usuario local.
pip3 install --user apache-airflow

cat << FILE_EOF > $HOME/airflow_env 
AIRFLOW_HOME=$HOME/airflow
export AIRFLOW_HOME

. airflow_env

# Initialize sqlite DB if does not exist
if [! -d $AIRFLOW_HOME ] ; then
   airflow db init
fi

# Launch as daemon

airflow webserver -D
sleep 10
airflow scheduler -D
