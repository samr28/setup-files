# Ubuntu input
## Keyboard
### Remap keys
Need: xev & xmodmap installed
1. `xev`  to find keycode and behavior name (`state 0x10, keycode 115 (keysym 0xff56, Next), same_screen YES` keycode: "115", behavior: "Next")
2. `xmodmap -e "keycode 115 = slash` remaps 115 to "slash" behavior

https://askubuntu.com/questions/24916/how-do-i-remap-certain-keys-or-devices