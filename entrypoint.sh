#!/bin/bash


mkdir /opt/app_created_file -p
mkdir /opt/arp_job_logs -p
mkdir /opt/cisco_api_uploaded_files -p
mkdir /opt/code_test -p 
mkdir /opt/containerd -p
mkdir /opt/django_logs -p 
mkdir /opt/docker-desktop -p 
mkdir /opt/f5_logs -p 
mkdir /opt/fs_switchport_config_logs -p
mkdir /opt/ldap_logs -p 
mkdir /opt/netsmart_venv -p 
mkdir /opt/network_tool -p
mkdir /opt/remote_db_folder -p
mkdir /opt/uploaded_file -p 
mkdir /opt/comm_tech_inventory -p
mkdir /opt/core_vrf_build -p 
mkdir /opt/deviceTrakcer -p
mkdir /opt/excel_temps -p 
mkdir /opt/html_generator -p 
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

