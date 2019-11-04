to execute:

ansible-playbook -i hosts main.yml --vault-password-file=~/oli --extra-vars '@passwd.yml'
