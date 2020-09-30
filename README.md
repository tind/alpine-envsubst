# alpine-envsubst

An alpine docker image that also contains the envsubst command.

## Example use case

It can be used within `initContainers` section of a kubernetes in order to insert a password into a configuration file
```
initContainers:
- name: envsubst
  image: "tindtechnologies/alpine-envsubst:3.12.0"
  imagePullPolicy: IfNotPresent
  args:
    - "sh"
    - "-c"
    - "envsubst '$PASSWORD' < /tmp/config.tmpl > /tmp/config.ini"
  env:
    - name: PASSWORD
      valueFrom:
        secretKeyRef:
          key: "password"
          name: "my-secret"
```
