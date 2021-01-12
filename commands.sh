  
ssh-keygen
git clone https://github.com/mayuri12221/azure-devops/.git
python3 -m venv ~/.azure-devops
source ~/.azure-devops/bin/activate
cd azure-devops
make all
az login
az webapp up -n pythonapp2
./make_predict_azure_app.sh
