@test "rsync is running" {
  pgrep rsync
}

@test "rsync is serving /tmp" {
  rsync rsync://127.0.0.1 | grep "tmp"
}

@test "rsync registered by chkconfig" {
  chkconfig --list | grep rsyncd
}
