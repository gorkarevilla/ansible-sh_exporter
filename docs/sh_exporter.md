# sh_exporter variables

```yaml
sh_exporter_owner: 'prometheus'
sh_exporter_group: 'prometheus'

sh_exporter_install_dir: '/opt'

# Prometheus
sh_exporter_version: '2.5.0'


sh_exporter_config:
  server: localhost
  port: 9091
  wait: 10
  sh:
    - name: 'users'
      type: 'gauge'
      job: 'users'
      instance: 'a'
      description: 'Number of users logged in the system'
      cmd: 'who | wc -l'

    - name: 'web_instances_chrome'
      type: 'gauge'
      job: 'users2'
      instance: 'a'
      description: 'Number of chrome instances running'
      cmd: 'ps -ef | grep chrome | wc -l'

    - name: 'process_running'
      type: 'gauge'
      job: 'users2'
      instance: 'b'
      description: 'Number of process running'
      cmd: 'ps -ef | wc -l'
```