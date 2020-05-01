function restic-sd
  set repo ""
  if test -d "/Volumes/slow/restic"
    set repo /Volumes/slow/restic/
  else if test -d "$HOME/mnts/slow/restic"
    set repo "$HOME/mnts/slow/restic"
  else
    echo "Drive not found at any logical mount point, exiting"
    return 1
  end

  set -lx RESTIC_REPOSITORY $repo
  set -lx RESTIC_PASSWORD_COMMAND "gopass-password-only backups/restic/slow-drive/password"

  set -lx KEEP_LAST 3
  set -lx RETENTION_HOURS 7
  set -lx RETENTION_DAYS 7
  set -lx RETENTION_WEEKS 7
  set -lx RETENTION_MONTHS 18
  set -lx RETENTION_YEARS 20

  restic \
    $argv
end
