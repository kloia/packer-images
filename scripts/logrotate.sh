
sudo touch /etc/logrotate.d/allcontainerlogs
sudo sh -c 'cat <<EOT >> /etc/logrotate.d/allcontainerlogs
/var/lib/docker/containers/*/*.log
{
rotate 5
daily
dateext
maxsize 250M
missingok
compress
copytruncate
dateformat -%Y%m%d%H%M%S
create 0644 root root
}
EOT'