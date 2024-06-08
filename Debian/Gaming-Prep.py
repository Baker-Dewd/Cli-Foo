---
- hosts: all
  become: yes
  tasks:

## name:  numbers aid in diagnosis and support. See:
## https://github.com/kungfootek/ansible-page-numbers

## Update all the things.
    - name: 10. Update apt-get repo and cache
      apt:
          update_cache: yes
          force_apt_get: yes
          cache_valid_time: 3600

    - name: 20. apt upgrade -y
      shell: "apt -y upgrade"

#    - name: 30. Get all the things we need to run Overwatch and others.
#      shell: sudo add-apt-repository ppa:graphics-drivers/ppa && sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install -y nvidia-driver-535 libvulkan1 libvulkan1:i386

    - name: 40. Install Wine dependencies
      shell: sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install -y wine64 wine32 libasound2-plugins:i386 libsdl2-2.0-0:i386 libdbus-1-3:i386 libsqlite3-0:i386




#      Magnesium L-threonate
