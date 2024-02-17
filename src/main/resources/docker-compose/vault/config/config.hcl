storage "file" {
  path = "/vault/data"
}

listener "tcp" {
  address     = "0.0.0.0:8201"
  tls_disable = 1
}

ui                = 1
api_addr          = "http://0.0.0.0:8201"