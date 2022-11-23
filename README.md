# Percona XtraDB Cluster 5.7 creating with ansible
Working only on Debian and Ubuntu! Actual distribuion list in [Percona lifecycle](https://www.percona.com/services/policies/percona-software-support-lifecycle#mysql) page.

## Prepare using role using repo (in Debian or Ubuntu):

- Install git, pip and virtualenv:

```bash
apt-get install -y git python3 python3-pip python3-venv
```

- Create ansible directory and enter there:

```bash
mkdir ansible29 && cd ansible29/
```

- Init environment:

```bash
python3 -m venv .venv --prompt ansible29

source .venv/bin/activate
```

- Install to environment pip and wheel:

```bash
pip3 install --upgrade pip wheel
```

- Install ansible:

```bash
pip3 install ansible==2.9.27
```

## Usage:

```bash
cd ~/ && git clone https://sources.rpulse.tk/open-source/percona-cluster-5.7-demo.git && cd percona-cluster-5.7-demo/ansible
```

- Modify inventory file (inventories/pxcmm/inventory.ini). Note that multimaster cluster creating require quorum:

Three nodes minimum, odd number of nodes required;

- Run ansible playbook:

```bash
ansible-playbook -i inventories/pxcmm/inventory.ini all.yml
```
