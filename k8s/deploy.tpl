apiVersion: apps/v1
kind: Deployment
metadata:
  name: hello
  annotations:
    flux.weave.works/automated: "true"
    flux.weave.works/tag.hello: regexp:^((?!tmp).)*$
  labels:
    app: hello
spec:
  selector:
    matchLabels:
      app: hello
  template:
    metadata:
      labels:
        app: hello
    spec:
      containers:
      - name: hello
        image: 513293136839.dkr.ecr.ap-south-1.amazonaws.com/hello:GIT_COMMIT
