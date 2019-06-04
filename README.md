# A collection of shell scripts
In this repo I gather a few scripts used in my config
and scripts that I use daily.

## brightness
A script to set the brightness of the screen.
```shell
brightness <percent>
```

TODO:
+ verify that percent is an integer
+ give current level if no argument is given
+ add instead of set if a sign is given

## btconnect
Connect a bluetooth device, or list available devices
```shell
btconnect <device name>
```

## mvc
move with the possibility to remove files from the matched ones threw vim.
```shell
mvc '<regex>' <destination>
```

## peculiar collection
3 commands about a double trilogy written by Ransom Riggs to:
+ fetch the titles of the available books: `peculiarBooks.sh`
+ get the last one: `peculiarLast.sh`
+ send a notification if a new one appear: `peculiarWatch.sh`

## stdvim
A script to easily use vim in pipes.
It reads from stdin if not at the begining of the chain.
Then it opens a vim window in wich you can modify/add data.
And finally it writes to stdout.

For example you can map
`stdvim | xclip -rmlastnl -selcection clipboard`
to a keyboard short cut to get what you wrote with vim in your clipboard.

## swaptouchpad
just swap the states of the touchpad
