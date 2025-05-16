# runs every other backup script
# NOTE: these scripts overwrite all existing saved configs in this repo

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$$SCRIPT_DIR"

chmod +x *.sh

xfce.sh
i3.sh

htop.sh
Xresources.sh
nano.sh
bash.sh
tmux.sh
