### First Time Setup

You will need
    - a `hosts` file with one group called `[servers]` and the address(es) to the machine(s) you want to start the simulation on

### Command Line

- Run playbook against servers in hosts file
    - `ansible-playbook infrastructure.yml -i hosts --ask-pass --ask-vault-pass -v`
    - `ansible-playbook frontend.yml -i hosts --ask-pass --ask-vault-pass -v`
- Edit the secret_vars.yml file
    - `EDITOR=nano ansible-vault edit ./vars/secret_vars.yml`