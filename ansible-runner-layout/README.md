# ansible-runner対応版

- ansible-runnerのdockerイメージを使う
- 決まったレイアウトがある
  - ansible.cfgやssh_configと併用する方法があるかも

## Usage

extravars は `ansible_connection: local` のため上書きする<br>
https://github.com/ansible/ansible-runner/blob/1.4.4/demo/env/extravars
```
docker run -it --rm \
  -v /dev/null:/runner/env/extravars \
  -v $(readlink -f ~/.ssh/id_rsa):/runner/env/ssh_key:ro \
  -v $(readlink -f inventory):/runner/inventory:ro \
  -v $(readlink -f project):/runner/project:ro \
  -e ANSIBLE_HOST_KEY_CHECKING=False \
  -e RUNNER_PLAYBOOK=test.yml ansible/ansible-runner:1.4.4
```
