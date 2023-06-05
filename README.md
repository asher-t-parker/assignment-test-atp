# assignment-test-atp
Proofpoint K8s project, as solved by Asher T. Parker

## Requirements

The below is direct quotation from project email:

* Create a multinode ‘Kind’ Kubernetes cluster  (1.25.x +) 
  * 1 control plane, 1 worker
* Install nginx ingress controller in the cluster (registry.k8s.io/ingress-nginx/controller:v1.7.1)
* Use helm (any 3.x version) and Install the helm chart in this repo - https://github.com/kousik93/assignment-test
  * App must be installed in a namespace called 'test'
  * Helm needs to be used for install – must be verifiable via helm list command
  * Please fix anything along the way as you see fit, that hinders the installation of the helm chart
* The helm chart in above step has errors/needs update in many files:
  * These need to be fixed accordingly 
  * There might be multiple issues in these files
  * The source code of the image in use is part of the same git repo for reference
  * The installation of chart should be accomplished
  * The app must be alive and be able to accept traffic
    * Note: The app container will respond with “Hello World” and 200 status code when accessed on “/pfpt/test200”
* In the end, curl to localhost:80/pfpt/test200 should flow via ingress to the app and should return “Hello World”
  * Pls use the appropriate port if your setup uses different port
  * Please make sure your setup is in such a way that ports and other things are appropriately configured for the curl to work
  * Please fix any issues along the way as you see fit to be able to get the "Hello World" response via ingress

## TODO

* Refactor go from `dep` to `go mod`
* Refactor go dir structure to use conventional `main.go` in `/cmd`
* Update imports to match fork and new dir structure
* Summarize key takeaways of `/vendor` debate
* Update `/vendor` if necessary
* Refactor `Dockerfile` to match changes in go project structure
* Include kind multi-node cluster as a Helm manifest
* Include nginx ingress controller as a Helm manifest

## Problems Identified in Original Repo

* Go project uses deprecated `dep` tool. Needs to be refactored to `go mod` for maintainability.
* Go project does not follow Go project layout conventions and sits `main.go` at repo root rather than within /cmd.
* Point for discussion on tradeoffs and potential refactor: [to `/vendor` or not to `/vendor` @HackerNews](https://news.ycombinator.com/item?id=36046662).
  * *Key Takeaways*:   

## Fixes

## Evidence of Functioning Project
