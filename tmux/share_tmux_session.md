# How to share a tmux session on a server


- User A creates a session with an explicit Socket path (`-S`) 

`tmux new-session -S /tmp_tmux_shared -s asharedsessionname`

- User A gives permissions to other user on the session via a common group

`chgrp acommomgroup /tmp/tmux_shared`

`chmod g+rwx /tmp_tmux_shared`

- User B opens the session 

`tmux -S /tmp/tmux_shared attach -t asharedsessionname`
