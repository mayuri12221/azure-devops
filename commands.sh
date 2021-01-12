 
# Create and import virtual env
python3 -m venv ~/.azure-devops
source ~/.azure-devops/bin/activate

# Install, lint and test
make all

# Deploy using Azure Upservice
az webapp up -n azure-devops --sku F1

# Make prediction
./make_predict_azure_app.sh

# Check logs
az webapp log tail
