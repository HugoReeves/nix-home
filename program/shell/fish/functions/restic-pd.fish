function restic-pd
  set repo ""
  if test -d "/Volumes/main/restic"
    set repo /Volumes/main/restic/
  else if test -d "$HOME/mnt/restic"
    set repo "$HOME/mnt/restic"
  else if test -d "/mnt/restic"
    set repo /mnt/restic
  else if test -d "/mnt/main/restic"
    set repo /mnt/main/restic
  else
    echo "Drive not found at any logical mount point, exiting"
    exit 1
  end

  set -lx RESTIC_REPOSITORY $repo
  set -lx RESTIC_PASSWORD_COMMAND "gopass-password-only backups/restic/backup-drive/password"

  set -lx KEEP_LAST 3
  set -lx RETENTION_HOURS 7
  set -lx RETENTION_DAYS 7
  set -lx RETENTION_WEEKS 7
  set -lx RETENTION_MONTHS 18
  set -lx RETENTION_YEARS 20

  restic \
    $argv
end
