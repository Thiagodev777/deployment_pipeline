FROM python:3.11-alpine

RUN apk add --no-cache \
    bash \
    openssh \
    git \
    && pip install --no-cache-dir ansible

WORKDIR /ansible

CMD ["ansible-playbook", "-i", "inventory.cfg", "playbooks/main.yml"]
