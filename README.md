# release-management
MayaData OpenEBS Director (MOD) is an on-premise installation of MayaOnline (https://mayaonline.io) for the enterprise customers. MayaOnline is a set of micro-services - server, agents, logging, monitoring, alerting, etc.

In this readme, we define the various processes involved in the release of this enterprise product.

# Repositories
There will be no separate code-base for the various micro-services. The existing repositories will be used as-is with new branches created for MOD. There will be one new public repository that will host the various installation manifests. This will be named as github.com/mayadata-io/release. Enterprise users can download the deployment manifests and follow the instructions to install the MOD in their Kubernetes clusters.

# Branching
All the current MayaOnline repositories have 3 protected branches - master, staging and alpha-r(x). A new branch will be created known as "enterprise-master" from the master branch for each repository. This will be the new master for the MOD.
