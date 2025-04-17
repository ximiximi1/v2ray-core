go install golang.org/dl/go1.18.10@latest
go1.18.10 download

GOOS=freebsd
GOOS=linux

GOARCH=amd64
GOARCH=s390x

GOARCH=s390x CGO_ENABLED=0 GOROOT=$(go1.18.10 env GOROOT) PATH=$(go1.18.10 env GOROOT)/bin:${PATH} GOGARBLE=github.com/v2fly/* garble -literals -seed=random -tiny build -v -o build_assets/v2ray_s390x_gb -trimpath -ldflags "-s -w -buildid=" ./main