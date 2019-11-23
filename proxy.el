
(setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
     ("http" . "proxy.com:8080")
     ("https" . "proxy.com:8080")))
