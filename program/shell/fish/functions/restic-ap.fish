function restic-ap
  set repo ""
  if test -d /Volumes/primary/hugo/restic
    set repo /Volumes/primary/hugo/restic/
  else if test -d "$HOME/mnt/hugo/restic"
    set repo "$HOME/mnt/hugo/restic"
  else if test -d "/mnt/hugo/restic"
    set repo /mnt/hugo/restic
  else
    echo "Drive not found at any logical mount point, exiting"
    exit 1
  end

  set -lx RESTIC_REPOSITORY $repo
  set -lx RESTIC_PASSWORD_COMMAND "gopass-password-only backups/restic/airport/password"

  set -lx KEEP_LAST 3
  set -lx RETENTION_HOURS 7
  set -lx RETENTION_DAYS 7
  set -lx RETENTION_WEEKS 7
  set -lx RETENTION_MONTHS 18
  set -lx RETENTION_YEARS 20

  restic \
    $argv
end
