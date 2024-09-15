
k get pod
# Get "https://controlplane:6443/api/v1/namespaces/default/pods?limit=500": dial tcp 192.2.254.6:6443: connect: connection refused - error from a previous attempt: http2: server sent GOAWAY and closed the connection; LastStreamID=1, ErrCode=NO_ERROR, debug=""

# getting timeout

#1. Check API Server config
#2. Check etcd config



k get pod
# The connection to the server controlplane:6443 was refused - did you specify the right host or port?

# Usually wrong api config

crictl logs
W0915 02:34:02.957733       1 logging.go:59] [core] [Channel #1 SubChannel #4] grpc: addrConn.createTransport failed to connect to {Addr: "127.0.0.1:2379", ServerName: "127.0.0.1:2379", }. Err: connection error: desc = "transport: authentication handshake failed: tls: failed to verify certificate: x509: certificate signed by unknown authority"

# found out that wrong ca file for etc is configured in kube-api server