apt update

apt install -y ansible curl wget

snap install kubectl --classic

mkdir -p /opt/config/.ssh

cat >> /opt/config/.ssh/id_rsa <<EOF
-----BEGIN OPENSSH PRIVATE KEY-----
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
-----END OPENSSH PRIVATE KEY-----
EOF

chmod 600 /opt/config/.ssh/id_rsa

cat >> /opt/config/master_ips.txt <<EOF
${MASTER_IPS}
EOF

cat >> /opt/config/worker_ips.txt <<EOF
${WORKER_IPS}
EOF

hostname -I >> /opt/config/proxy_ips.txt

wget -O /opt/config/rke https://github.com/rancher/rke/releases/download/v1.4.1/rke_linux-amd64

chmod +x /opt/config/rke

cat >> /opt/config/cluster.yml <<EOF
# If you intended to deploy Kubernetes in an air-gapped environment,
# please consult the documentation on how to configure custom RKE images.
nodes:
EOF

for IP in $(grep -E '10.45' /opt/config/master_ips.txt | tr ',' ' ' | tr '[[' ' ' | tr ']]' ' ' | cut -d: -f1); do
    cat >> /opt/config/cluster.yml <<EOF
- address: $IP
  port: "22"
  internal_address: 
  role:
  - controlplane
  - etcd
  hostname_override: ""
  user: ubuntu
  ssh_key_path: /opt/config/.ssh/id_rsa
EOF
done

for IP in $(grep -E '10.45' /opt/config/worker_ips.txt | tr ',' ' ' | tr '[[' ' ' | tr ']]' ' ' | cut -d: -f1); do
    cat >> /opt/config/cluster.yml <<EOF
- address: $IP
  port: "22"
  internal_address: 
  role:
  - worker
  hostname_override: ""
  user: ubuntu
  ssh_key_path: /opt/config/.ssh/id_rsa
EOF
done

cat >> /opt/config/cluster.yml <<EOF
services:
  etcd:
    image: ""
    extra_args: {}
    extra_args_array: {}
    extra_binds: []
    extra_env: []
    win_extra_args: {}
    win_extra_args_array: {}
    win_extra_binds: []
    win_extra_env: []
    external_urls: []
    ca_cert: ""
    cert: ""
    key: ""
    path: ""
    uid: 0
    gid: 0
    snapshot: null
    retention: ""
    creation: ""
    backup_config: null
  kube-api:
    image: ""
    extra_args: {}
    extra_args_array: {}
    extra_binds: []
    extra_env: []
    win_extra_args: {}
    win_extra_args_array: {}
    win_extra_binds: []
    win_extra_env: []
    service_cluster_ip_range: 100.43.0.0/16
    service_node_port_range: ""
    pod_security_policy: false
    always_pull_images: false
    secrets_encryption_config: null
    audit_log: null
    admission_configuration: null
    event_rate_limit: null
  kube-controller:
    image: ""
    extra_args: {}
    extra_args_array: {}
    extra_binds: []
    extra_env: []
    win_extra_args: {}
    win_extra_args_array: {}
    win_extra_binds: []
    win_extra_env: []
    cluster_cidr: 100.42.0.0/16
    service_cluster_ip_range: 100.43.0.0/16
  scheduler:
    image: ""
    extra_args: {}
    extra_args_array: {}
    extra_binds: []
    extra_env: []
    win_extra_args: {}
    win_extra_args_array: {}
    win_extra_binds: []
    win_extra_env: []
  kubelet:
    image: ""
    extra_args: {}
    extra_args_array: {}
    extra_binds: []
    extra_env: []
    win_extra_args: {}
    win_extra_args_array: {}
    win_extra_binds: []
    win_extra_env: []
    cluster_domain: rancher.ramosecajado.shop
    infra_container_image: ""
    cluster_dns_server: 100.43.0.10
    fail_swap_on: false
    generate_serving_certificate: false
  kubeproxy:
    image: ""
    extra_args: {}
    extra_args_array: {}
    extra_binds: []
    extra_env: []
    win_extra_args: {}
    win_extra_args_array: {}
    win_extra_binds: []
    win_extra_env: []
network:
  plugin: canal
  options: {}
  mtu: 0
  node_selector: {}
  update_strategy: null
  tolerations: []
authentication:
  strategy: x509
  sans: []
  webhook: null
addons: ""
addons_include: []
system_images:
  etcd: rancher/mirrored-coreos-etcd:v3.5.4
  alpine: rancher/rke-tools:v0.1.88
  nginx_proxy: rancher/rke-tools:v0.1.88
  cert_downloader: rancher/rke-tools:v0.1.88
  kubernetes_services_sidecar: rancher/rke-tools:v0.1.88
  kubedns: rancher/mirrored-k8s-dns-kube-dns:1.21.1
  dnsmasq: rancher/mirrored-k8s-dns-dnsmasq-nanny:1.21.1
  kubedns_sidecar: rancher/mirrored-k8s-dns-sidecar:1.21.1
  kubedns_autoscaler: rancher/mirrored-cluster-proportional-autoscaler:1.8.5
  coredns: rancher/mirrored-coredns-coredns:1.9.3
  coredns_autoscaler: rancher/mirrored-cluster-proportional-autoscaler:1.8.5
  nodelocal: rancher/mirrored-k8s-dns-node-cache:1.21.1
  kubernetes: rancher/hyperkube:v1.24.8-rancher1
  flannel: rancher/mirrored-coreos-flannel:v0.15.1
  flannel_cni: rancher/flannel-cni:v0.3.0-rancher6
  calico_node: rancher/mirrored-calico-node:v3.22.0
  calico_cni: rancher/calico-cni:v3.22.0-rancher1
  calico_controllers: rancher/mirrored-calico-kube-controllers:v3.22.0
  calico_ctl: rancher/mirrored-calico-ctl:v3.22.0
  calico_flexvol: rancher/mirrored-calico-pod2daemon-flexvol:v3.22.0
  canal_node: rancher/mirrored-calico-node:v3.22.0
  canal_cni: rancher/calico-cni:v3.22.0-rancher1
  canal_controllers: rancher/mirrored-calico-kube-controllers:v3.22.0
  canal_flannel: rancher/mirrored-flannelcni-flannel:v0.17.0
  canal_flexvol: rancher/mirrored-calico-pod2daemon-flexvol:v3.22.0
  weave_node: weaveworks/weave-kube:2.8.1
  weave_cni: weaveworks/weave-npc:2.8.1
  pod_infra_container: rancher/mirrored-pause:3.6
  ingress: rancher/nginx-ingress-controller:nginx-1.2.1-rancher1
  ingress_backend: rancher/mirrored-nginx-ingress-controller-defaultbackend:1.5-rancher1
  ingress_webhook: rancher/mirrored-ingress-nginx-kube-webhook-certgen:v1.1.1
  metrics_server: rancher/mirrored-metrics-server:v0.6.1
  windows_pod_infra_container: rancher/mirrored-pause:3.6
  aci_cni_deploy_container: noiro/cnideploy:5.2.3.4.1d150da
  aci_host_container: noiro/aci-containers-host:5.2.3.4.1d150da
  aci_opflex_container: noiro/opflex:5.2.3.4.1d150da
  aci_mcast_container: noiro/opflex:5.2.3.4.1d150da
  aci_ovs_container: noiro/openvswitch:5.2.3.4.1d150da
  aci_controller_container: noiro/aci-containers-controller:5.2.3.4.1d150da
  aci_gbp_server_container: noiro/gbp-server:5.2.3.4.1d150da
  aci_opflex_server_container: noiro/opflex-server:5.2.3.4.1d150da
#ssh_key_path: /opt/config/.ssh/id_rsa
#ssh_cert_path: ""
#ssh_agent_auth: true
#ssh_opts: "-o StrictHostKeyChecking=no"
authorization:
  mode: rbac
  options: {}
ignore_docker_vERSION: null
enable_cri_dockerd: null
kubernetes_vERSION: ""
private_registries: []
ingress:
  provider: ""
  options: {}
  node_selector: {}
  extra_args: {}
  dns_policy: ""
  extra_envs: []
  extra_volumes: []
  extra_volume_mounts: []
  update_strategy: null
  http_port: 0
  https_port: 0
  network_mode: ""
  tolerations: []
  default_backend: null
  default_http_backend_priority_class_name: ""
  nginx_ingress_controller_priority_class_name: ""
  default_ingress_class: null
cluster_name: ""
cloud_provider:
  name: ""
prefix_path: ""
win_prefix_path: ""
addon_job_timeout: 0
bastion_host:
  address: ""
  port: ""
  user: ""
  ssh_key: ""
  ssh_key_path: ""
  ssh_cert: ""
  ssh_cert_path: ""
  ignore_proxy_env_vars: false
monitoring:
  provider: ""
  options: {}
  node_selector: {}
  update_strategy: null
  replicas: null
  tolerations: []
  metrics_server_priority_class_name: ""
restore:
  restore: false
  snapshot_name: ""
rotate_encryption_key: false
dns: null
EOF

git clone https://github.com/madson7/ansible-roles-templates.git /opt/config/ansible

rm /opt/config/ansible/inventario.ini

cat >> /opt/config/ansible/inventario.ini <<EOF
[all:vars]
ansible_python_interpreter=/usr/bin/python3
ansible_user=ubuntu
ansible_become=yes
ansible_ssh_private_key_file=/opt/config/.ssh/id_rsa
ansible_ssh_common_args='-o StrictHostKeyChecking=no'
ssh_key_checking=False

EOF

echo "[master]" >> /opt/config/ansible/inventario.ini

for IP in $(grep -E '10.45' /opt/config/master_ips.txt | tr ',' ' ' | tr '[[' ' ' | tr ']]' ' ' | cut -d: -f1); do
    cat >> /opt/config/ansible/inventario.ini <<EOF
master-$IP ansible_host=$IP
EOF
done

echo "[worker]" >> /opt/config/ansible/inventario.ini

for IP in $(grep -E '10.45' /opt/config/worker_ips.txt | tr ',' ' ' | tr '[[' ' ' | tr ']]' ' ' | cut -d: -f1); do
    cat >> /opt/config/ansible/inventario.ini <<EOF
worker-$IP ansible_host=$IP
EOF
done

echo "[proxy]" >> /opt/config/ansible/inventario.ini

for IP in $(grep -E '.' /opt/config/proxy_ips.txt | tr ',' ' ' | tr '[[' ' ' | tr ']]' ' ' | cut -d: -f1); do
    cat >> /opt/config/ansible/inventario.ini <<EOF
proxy-$IP ansible_host=$IP
EOF
done

cat >> /opt/config/ansible/inventario.ini <<EOF

[docker:children]
master
worker
EOF

cat >> /opt/config/ansible/inventario.ini <<EOF

[nginx:children]
proxy
EOF

ansible-playbook -i /opt/config/ansible/inventario.ini /opt/config/ansible/main.yml > /opt/config/ansible_log.log

# spin up k8s with RKE
/opt/config/rke up --config /opt/config/cluster.yml

# Ajuste de permicoes
chown ubuntu:ubuntu /opt/config -R