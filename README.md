# Создание Percona XtraDB Cluster 5.7 при помощи ansible
Работает только на Debian и Ubuntu!

## Подготовка к использованию (Debian Buster или Bullseye):

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
cd ~/ && git clone https://sources.rpulse.cf/open-source/percona-cluster-5.7-demo.git && cd percona-cluster-5.7-demo/
```

- Правьте inventory на ваше усмотрение;

- Используйте:

```bash
ansible-playbook -i inventory.ini all.yml
```
