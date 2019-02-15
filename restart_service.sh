#!/bin/sh

sudo systemctl daemon-reload
sudo systemctl stop slurmctld
sudo systemctl stop slurmd
sudo systemctl daemon-reload
sudo systemctl enable slurmctld
sudo systemctl start slurmctld
sudo systemctl enable slurmd
sudo systemctl start slurmd
scontrol update nodename=lambda state=resume
