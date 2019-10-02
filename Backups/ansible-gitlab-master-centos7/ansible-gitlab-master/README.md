# ansible-gitlab

Ansbile playbook to setup an GitLab environment.

### Operational System

Tested on CentOS 7 and Ubuntu 14.04.

### General Configuration

  Just clone the repo and execute with ansible-playbook command.
  * Run the ansible-playbook. Ex: ansible-playbook -b --ask-become-pass -k -i hosts site.yml (for running in localhost, with commom user over SSH).
  * After the installation, go to http://<your-address> and login with the defaults credentials (root/5iveL!fe).
