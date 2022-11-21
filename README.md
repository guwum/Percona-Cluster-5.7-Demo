# Создание Percona XtraDB Cluster 5.7 при помощи ansible
Роль работает только на Debian и Ubuntu! Актуальный список поддерживаемых версий ОС уточняйте в [Percona lifecycle](https://www.percona.com/services/policies/percona-software-support-lifecycle#mysql)

## Подготовка к использованию роли (в Debian или Ubuntu):

- Устанавливаем git, pip и virtualenv:

```bash
apt-get install -y git python3 python3-pip python3-venv
```

- Создаём директорию под установку ansible и переходим в неё:

```bash
mkdir ansible29 && cd ansible29/
```

- Инициализируем окружение:

```bash
python3 -m venv .venv --prompt ansible29

source .venv/bin/activate
```

- Устанавливаем в окружение pip и wheel:

```bash
pip3 install --upgrade pip wheel
```

- Устанавливаем ansible:

```bash
pip3 install ansible==2.9.27
```

## Использование:

```bash
cd ~/ && git clone https://sources.rpulse.tk/open-source/percona-cluster-5.7-demo.git && cd percona-cluster-5.7-demo/ansible
```

- Правьте файл inventory (inventories/pxcmm/inventory.ini) на ваше усмотрение. Обратите внимание, что для мультимастер кластера, который инициализируется данной ролью, требует кворум:

Минимум - три узла, требуется запускать кластер с нечётным количеством узлов;

- Используйте:

```bash
ansible-playbook -i inventories/pxcmm/inventory.ini all.yml
```
