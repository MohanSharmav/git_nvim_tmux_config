# Tmux Shortcuts Cheat Sheet

(Default prefix: `Ctrl + b` or `C-b`)

## Sessions
- `tmux new -s [name]`: Create a new session
- `tmux a -t [name]`: Attach to a session
- `tmux ls`: List sessions
- `prefix + d`: Detach from session
- `prefix + s`: List sessions (interactive)
- `prefix + $`: Rename session

## Windows (Tabs)
- `prefix + c`: Create a new window
- `prefix + w`: List windows (interactive)
- `prefix + n`: Next window
- `prefix + p`: Previous window
- `prefix + ,`: Rename current window
- `prefix + &`: Kill current window
- `prefix + l`: Last window
- `prefix + S`: Make current window the first window (swap-pane -s 0)

## Panes (Splits)
- `prefix + |`: Split vertically (custom)
- `prefix + -`: Split horizontally (custom)
- `prefix + [arrow keys]`: Move between panes
- `prefix + h/j/k/l`: Move Left/Down/Up/Right (Vim style custom navigation)
- `prefix + H/J/K/L`: Resize pane Left/Down/Up/Right by 5 (custom)
- `prefix + x`: Kill current pane
- `prefix + z` or `prefix + C-b`: Toggle pane zoom
- `prefix + a`: Synchronize panes (custom)
- `prefix + [space]`: Cycle through pane layouts

## Vim-Tmux-Navigator (Custom bindings without Prefix)
- `Ctrl + h`: Navigate Left
- `Ctrl + j`: Navigate Down
- `Ctrl + k`: Navigate Up
- `Ctrl + l`: Navigate Right
- `Ctrl + \`: Navigate Previous

## Copy Mode (Vi Mode enabled)
- `prefix + [`: Enter copy mode
- `Enter`: Copy to system clipboard (xclip/reattach-to-user-namespace)

## Misc
- `prefix + R`: Reload tmux configuration
