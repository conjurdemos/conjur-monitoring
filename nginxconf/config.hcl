listen {
  port = 4040
}

namespace "conjur" {
  format = "$http_host $remote_addr \"$http_x_forwarded_for\" \"$request\" $status $body_bytes_sent \"$http_referer\" \"$http_user_agent\" $request_time $upstream_response_time"
  source {
    files = [
      "/mnt/nginxlogs/access.log"
    ]
  }
}
