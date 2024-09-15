
# Determine if stacked etcd
ps -ef | grep etcd
# root        2906    2515  0 19:26 ?        00:01:17 kube-apiserver --advertise-address=192.160.244.12 --allow-privileged=true --authorization-mode=Node,RBAC --client-ca-file=/etc/kubernetes/pki/ca.crt --enable-admission-plugins=NodeRestriction --enable-bootstrap-token-auth=true --etcd-cafile=/etc/kubernetes/pki/etcd/ca.pem --etcd-certfile=/etc/kubernetes/pki/etcd/etcd.pem --etcd-keyfile=/etc/kubernetes/pki/etcd/etcd-key.pem --etcd-servers=https://192.160.244.3:2379 --kubelet-client-certificate=/etc/kubernetes/pki/apiserver-kubelet-client.crt --kubelet-client-key=/etc/kubernetes/pki/apiserver-kubelet-client.key --kubelet-preferred-address-types=InternalIP,ExternalIP,Hostname --proxy-client-cert-file=/etc/kubernetes/pki/front-proxy-client.crt --proxy-client-key-file=/etc/kubernetes/pki/front-proxy-client.key --requestheader-allowed-names=front-proxy-client --requestheader-client-ca-file=/etc/kubernetes/pki/front-proxy-ca.crt --requestheader-extra-headers-prefix=X-Remote-Extra- --requestheader-group-headers=X-Remote-Group --requestheader-username-headers=X-Remote-User --secure-port=6443 --service-account-issuer=https://kubernetes.default.svc.cluster.local --service-account-key-file=/etc/kubernetes/pki/sa.pub --service-account-signing-key-file=/etc/kubernetes/pki/sa.key --service-cluster-ip-range=10.96.0.0/12 --tls-cert-file=/etc/kubernetes/pki/apiserver.crt --tls-private-key-file=/etc/kubernetes/pki/apiserver.key
# root        9228    8883  0 20:01 pts/0    00:00:00 grep etcd


cluster1-controlplane ~ ✖ ps -ef | grep etcd
root        1704    1300  0 20:41 ?        00:06:12 kube-apiserver --advertise-address=192.39.250.6 --allow-privileged=true --authorization-mode=Node,RBAC --client-ca-file=/etc/kubernetes/pki/ca.crt --enable-admission-plugins=NodeRestriction --enable-bootstrap-token-auth=true --etcd-cafile=/etc/kubernetes/pki/etcd/ca.crt --etcd-certfile=/etc/kubernetes/pki/apiserver-etcd-client.crt --etcd-keyfile=/etc/kubernetes/pki/apiserver-etcd-client.key 
--etcd-servers=https://127.0.0.1:2379 --kubelet-client-certificate=/etc/kubernetes/pki/apiserver-kubelet-client.crt --kubelet-client-key=/etc/kubernetes/pki/apiserver-kubelet-client.key --kubelet-preferred-address-types=InternalIP,ExternalIP,Hostname --proxy-client-cert-file=/etc/kubernetes/pki/front-proxy-client.crt --proxy-client-key-file=/etc/kubernetes/pki/front-proxy-client.key --requestheader-allowed-names=front-proxy-client --requestheader-client-ca-file=/etc/kubernetes/pki/front-proxy-ca.crt --requestheader-extra-headers-prefix=X-Remote-Extra- --requestheader-group-headers=X-Remote-Group --requestheader-username-headers=X-Remote-User --secure-port=6443 --service-account-issuer=https://kubernetes.default.svc.cluster.local --service-account-key-file=/etc/kubernetes/pki/sa.pub --service-account-signing-key-file=/etc/kubernetes/pki/sa.key --service-cluster-ip-range=10.96.0.0/12 --tls-cert-file=/etc/kubernetes/pki/apiserver.crt --tls-private-key-file=/etc/kubernetes/pki/apiserver.key
root        1863    1358  0 20:41 ?        00:03:10 etcd --advertise-client-urls=https://192.39.250.6:2379 --cert-file=/etc/kubernetes/pki/etcd/server.crt --client-cert-auth=true --data-dir=/var/lib/etcd --experimental-initial-corrupt-check=true --experimental-watch-progress-notify-interval=5s --initial-advertise-peer-urls=https://192.39.250.6:2380 --initial-cluster=cluster1-controlplane=https://192.39.250.6:2380 --key-file=/etc/kubernetes/pki/etcd/server.key --listen-client-urls=https://127.0.0.1:2379,https://192.39.250.6:2379 --listen-metrics-urls=http://127.0.0.1:2381 --listen-peer-urls=https://192.39.250.6:2380 --name=cluster1-controlplane --peer-cert-file=/etc/kubernetes/pki/etcd/peer.crt --peer-client-cert-auth=true --peer-key-file=/etc/kubernetes/pki/etcd/peer.key --peer-trusted-ca-file=/etc/kubernetes/pki/etcd/ca.crt --snapshot-count=10000 --trusted-ca-file=/etc/kubernetes/pki/etcd/ca.crt
root       14120   13690  0 23:30 pts/0    00:00:00 grep etcd

# stacked etcd
cluster2-controlplane ~ ➜  ps -ef | grep etcd
root        2860    2502  0 20:39 ?        00:05:35 kube-apiserver --advertise-address=192.39.250.9 --allow-privileged=true --authorization-mode=Node,RBAC --client-ca-file=/etc/kubernetes/pki/ca.crt --enable-admission-plugins=NodeRestriction --enable-bootstrap-token-auth=true --etcd-cafile=/etc/kubernetes/pki/etcd/ca.pem --etcd-certfile=/etc/kubernetes/pki/etcd/etcd.pem --etcd-keyfile=/etc/kubernetes/pki/etcd/etcd-key.pem 
--etcd-servers=https://192.39.250.21:2379 --kubelet-client-certificate=/etc/kubernetes/pki/apiserver-kubelet-client.crt --kubelet-client-key=/etc/kubernetes/pki/apiserver-kubelet-client.key --kubelet-preferred-address-types=InternalIP,ExternalIP,Hostname --proxy-client-cert-file=/etc/kubernetes/pki/front-proxy-client.crt --proxy-client-key-file=/etc/kubernetes/pki/front-proxy-client.key --requestheader-allowed-names=front-proxy-client --requestheader-client-ca-file=/etc/kubernetes/pki/front-proxy-ca.crt --requestheader-extra-headers-prefix=X-Remote-Extra- --requestheader-group-headers=X-Remote-Group --requestheader-username-headers=X-Remote-User --secure-port=6443 --service-account-issuer=https://kubernetes.default.svc.cluster.local --service-account-key-file=/etc/kubernetes/pki/sa.pub --service-account-signing-key-file=/etc/kubernetes/pki/sa.key --service-cluster-ip-range=10.96.0.0/12 --tls-cert-file=/etc/kubernetes/pki/apiserver.crt --tls-private-key-file=/etc/kubernetes/pki/apiserver.key
root       16304   16220  0 23:30 pts/0    00:00:00 grep etcd



# How do I determine etc default data dir of external etcd?
# 1. Determine etcd ext ip
k get pod -n kube-system kube-apiserver-cluster2-controlplane -o yaml | grep etcd
    - --etcd-cafile=/etc/kubernetes/pki/etcd/ca.pem
    - --etcd-certfile=/etc/kubernetes/pki/etcd/etcd.pem
    - --etcd-keyfile=/etc/kubernetes/pki/etcd/etcd-key.pem
    - --etcd-servers=https://192.39.250.21:2379

# 2. ssh to the external etcd server
ssh 192.39.250.21

# 3. check from ps the --data-dir
etcd-server ~ ➜  ps -ef | grep etcd
etcd         820       1  0 20:39 ?        00:02:37 /usr/local/bin/etcd --name etcd-server --data-dir=/var/lib/etcd-data --cert-file=/etc/etcd/pki/etcd.pem


# How many nodes are part of the ETCD cluster
# to check member
etcd-server lib/etcd-data/member ➜  etcdctl --endpoints 127.0.0.1:2379 --cert=/etc/etcd/pki/etcd.pem --key=/etc/etcd/pki/etcd-key.pem --cacert=/etc/etcd/pki/ca.pem member list
edef77657be4292e, started, etcd-server, https://192.39.250.21:2380, https://192.39.250.21:2379, false




student-node ~ ➜  scp cluster1-controlplane:/opt/cluster1.db /opt
cluster1.db                                                                                                        100% 2088KB 112.3MB/s   00:00    

student-node ~ ➜



On the student-node:

First set the context to cluster1:
student-node ~ ➜  kubectl config use-context cluster1
Switched to context "cluster1".
Next, inspect the endpoints and certificates used by the etcd pod. We will make use of these to take the backup.

student-node ~ ✖ kubectl describe  pods -n kube-system etcd-cluster1-controlplane  | grep advertise-client-urls
      --advertise-client-urls=https://192.160.244.10:2379

student-node ~ ➜  

student-node ~ ➜  kubectl describe  pods -n kube-system etcd-cluster1-controlplane  | grep pki
      --cert-file=/etc/kubernetes/pki/etcd/server.crt
      --key-file=/etc/kubernetes/pki/etcd/server.key
      --peer-cert-file=/etc/kubernetes/pki/etcd/peer.crt
      --peer-key-file=/etc/kubernetes/pki/etcd/peer.key
      --peer-trusted-ca-file=/etc/kubernetes/pki/etcd/ca.crt
      --trusted-ca-file=/etc/kubernetes/pki/etcd/ca.crt
      /etc/kubernetes/pki/etcd from etcd-certs (rw)
    Path:          /etc/kubernetes/pki/etcd

student-node ~ ➜
NOTE: The IP address (192.160.244.10) shown in the above command could be different in your lab environment. Make sure to note the correct IP address before taking the backup of the cluster.

SSH to the controlplane node of cluster1 and then take the backup using the endpoints and certificates we identified above:

cluster1-controlplane ~ ➜  ETCDCTL_API=3 etcdctl --endpoints=https://192.160.244.10:2379 --cacert=/etc/kubernetes/pki/etcd/ca.crt --cert=/etc/kubernetes/pki/etcd/server.crt --key=/etc/kubernetes/pki/etcd/server.key snapshot save /opt/cluster1.db
Snapshot saved at /opt/cluster1.db

cluster1-controlplane ~ ➜  
Finally, copy the backup to the student-node. To do this, go back to the student-node and use scp as shown below:

student-node ~ ➜  scp cluster1-controlplane:/opt/cluster1.db /opt
cluster1.db                                                                                                        100% 2088KB 112.3MB/s   00:00    

student-node ~ ➜


######
Step 1. Copy the snapshot file from the student-node to the etcd-server. In the example below, we are copying it to the /root directory:

student-node ~  scp /opt/cluster2.db etcd-server:/root
cluster2.db                                                                                                        100% 1108KB 178.5MB/s   00:00    

student-node ~ ➜
Step 2: Restore the snapshot on the cluster2. Since we are restoring directly on the etcd-server, we can use the endpoint https:/127.0.0.1. Use the same certificates that were identified earlier. Make sure to use the data-dir as /var/lib/etcd-data-new:

etcd-server ~ ➜  ETCDCTL_API=3 etcdctl --endpoints=https://127.0.0.1:2379 --cacert=/etc/etcd/pki/ca.pem --cert=/etc/etcd/pki/etcd.pem --key=/etc/etcd/pki/etcd-key.pem snapshot restore /root/cluster2.db --data-dir /var/lib/etcd-data-new
{"level":"info","ts":1721940922.0441437,"caller":"snapshot/v3_snapshot.go:296","msg":"restoring snapshot","path":"/root/cluster2.db","wal-dir":"/var/lib/etcd-data-new/member/wal","data-dir":"/var/lib/etcd-data-new","snap-dir":"/var/lib/etcd-data-new/member/snap"}
{"level":"info","ts":1721940922.060755,"caller":"mvcc/kvstore.go:388","msg":"restored last compact revision","meta-bucket-name":"meta","meta-bucket-name-key":"finishedCompactRev","restored-compact-revision":951}
{"level":"info","ts":1721940922.0667593,"caller":"membership/cluster.go:392","msg":"added member","cluster-id":"cdf818194e3a8c32","local-member-id":"0","added-peer-id":"8e9e05c52164694d","added-peer-peer-urls":["http://localhost:2380"]}
{"level":"info","ts":1721940922.0732546,"caller":"snapshot/v3_snapshot.go:309","msg":"restored snapshot","path":"/root/cluster2.db","wal-dir":"/var/lib/etcd-data-new/member/wal","data-dir":"/var/lib/etcd-data-new","snap-dir":"/var/lib/etcd-data-new/member/snap"}

etcd-server ~ ➜
Step 3: Update the systemd service unit file for etcd by running vi /etc/systemd/system/etcd.service and add the new value for data-dir:

[Unit]
Description=etcd key-value store
Documentation=https://github.com/etcd-io/etcd
After=network.target

[Service]
User=etcd
Type=notify
ExecStart=/usr/local/bin/etcd \
  --name etcd-server \
  --data-dir=/var/lib/etcd-data-new \
---End of Snippet---
Step 4: make sure the permissions on the new directory is correct (should be owned by etcd user):

etcd-server /var/lib ➜  chown -R etcd:etcd /var/lib/etcd-data-new

etcd-server /var/lib ➜ 


etcd-server /var/lib ➜  ls -ld /var/lib/etcd-data-new/
drwx------ 3 etcd etcd 4096 Jul 15 20:55 /var/lib/etcd-data-new/
etcd-server /var/lib ➜
Step 5: Finally, reload and restart the etcd service.

etcd-server ~ ➜  systemctl daemon-reload 
etcd-server ~ ➜  systemctl restart etcd
etcd-server ~ ➜  
Step 6 (optional): It is recommended to restart controlplane components (e.g. kube-scheduler, kube-controller-manager, kubelet) to ensure that they don't rely on some stale data.
