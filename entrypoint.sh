#!/bin/bash


mkdir /opt/app_created_file
mkdir /opt/arp_job_logs
mkdir /opt/cisco_api_uploaded_files
mkdir /opt/code_test
mkdir /opt/containerd
mkdir /opt/django_logs
mkdir /opt/docker-desktop
mkdir /opt/f5_logs
mkdir /opt/fs_switchport_config_logs
mkdir /opt/ldap_logs
mkdir /opt/netsmart_venv
mkdir /opt/network_tool
mkdir /opt/remote_db_folder
mkdir /opt/uploaded_file

mkdir /opt/comm_tech_inventory
mkdir /opt/core_vrf_build
mkdir /opt/deviceTrakcer
mkdir /opt/excel_temps
mkdir /opt/html_generator
mkdir /opt/memory_status_plots
mkdir /opt/ms_camera_reports
mkdir /opt/netmiko_logs
mkdir /opt/netsmart_job_logs
mkdir /opt/node_diagram
mkdir /opt/node_running_config
mkdir /opt/shc_access_switches
mkdir /opt/switchport_config
mkdir /opt/switchport_config_logs
mkdir /opt/switchport_stat
mkdir /opt/tmp
mkdir /opt/vrf_extension_files
mkdir /opt/vxlan_config_files
mkdir /opt/vxlan_config_output




python manage.py migrate --noinput
python manage.py collectstatic --noinput


gunicorn engine.wsgi:application --bind 0.0.0.0 --workers 3 --timeout 1800
