FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    python3 python3-pip git sshpass \
    && pip3 install ansible

COPY . /ansible_exam_pipeline

WORKDIR /home/sujankc/project

CMD ["ansible-playbook", "play.yml", "--vault-password-file", "/ansible_exam_pipeline/vault-pass.txt"]

