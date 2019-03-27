# This is a Cheatsheet collection

## Markdown ([inspiration](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet))
### Headers
    # H1
    ## H2
    ### H3
    #### H4
    ##### H5
    ###### H6

### Emphasis
    *italic*/_italic_
    **bold**/__bold__
    ~~strike through~~

### Lists ('.' = '\<Space\>')
    1. First ordered list item
    2. Another item
    ⋅⋅* Unordered sub-list. (can use + or - as well)
    1. Actual numbers don't matter, just that it's a number
    ⋅⋅1. Ordered sub-list
    4. And another item.
    
    ...Additional Stuff in same item

### Links
    [link description](link adress "hover information")

### Images
    ![alt text](link to image "hover information")

### Code
    `inline code`
    
    ```multiple
    lines of code
    ```

### Tables
    | Tables        | Are           | Cool  |
    | ------------- |:-------------:| -----:|
    | col 3 is      | right-aligned | $1600 |
    | col 2 is      | centered      |   $12 |
    | zebra stripes | are neat      |    $1 |
    
    colons align columns.

### Blockquotes
    > Quote

### Rules
    use --- or *** or ___

### Line Breakes
    hit <Enter> twice.

---

## Shell

| Shortcut      | Description                                     |
| ------------- | ----------------------------------------------- |
| `Ctrl + a`	| Go to the beginning of the line (Home)          |
| `Ctrl + e`	| Go to the End of the line (End)                 |
| `Alt + b`     | Back (left) one word                            |
| `Alt + f`     | Forward (right) one word                        |
| `Ctrl + u`	| Cut the line before the cursor position         |
| `Alt + Del`	| Delete the Word before the cursor               |
| `Alt + d`     | Delete the Word after the cursor                |
| `Ctrl + d`	| Delete character under the cursor               |
| `Ctrl + h`	| Delete character before the cursor (backspace)  |
| `Ctrl + w`	| Cut the Word before the cursor to the clipboard |
| `Ctrl + k`	| Cut the Line after the cursor to the clipboard  |


| command                       | Description                                           |
| ----------------------------- | ----------------------------------------------------- |
| `du -h`                       | Disk usage of folders, human readable                 |
| `grep -r <text> <folderName>` | search for file names with occurrence of the text	|

---

## git

git fetch —-all
git reset --hard origin/<branch_name> [file]
git log —graph
git branch
git branch -d/-D [branch]
git stash
git tag
git rebase

---

## tmux

c	new window
&	kill window
.	move window - prompted for a new number
:joinp -s :2	move window 2 into a new pane in the current window
:joinp -t :1	move the current pane into a new pane in window 1
g	
G	
<Space>	Start selection
<Enter>	Copy selection
<leader> ]	enter buffer

---

## conda







---

## vim
H	move to top of screen
M	move to middle of screen
L	move to bottom of screen
w	jump forwards to the start of a word
W	jump forwards to the start of a word (words can contain punctuation)
E	jump forwards to the end of a word (words can contain punctuation)
B	jump backwards to the start of a word (words can contain punctuation)
%	move to matching character (default supported pairs: '()','{}','[]'
0	jump to the start of the line
^	jump to the first non-blank character of the line
$	jump to the end of the line
g_	jump to the last non-blank character of the line
fx	jump to next occurrence of character x
tx	jump to before next occurrence of character x
Fx	jump to previous occurence of character x
Tx	jump to after previous occurence of character x
	
J	join line below to the current one with one space in between
gJ	join line below to the current one without space in between
gwip	reflow paragraph
C	change (replace) to the end of the line
c$	change (replace) to the end of the line
ciw	change (replace) entire word
cw	change (replace) to the end of the word
s	delete character and substitute text
S	delete line and substitute text (same as cc)
xp	transpose two letters (delete and paste)
	
o	move to other end of marked area
O	move to other corner of block
aw	mark a word
ab	a block with ()
aB	a block with {}
ib	inner block with ()
iB	inner block with {}
	
O	append (open) a new line above the current line
ea	insert (append) at the end of the word
	
:sp file	open a file in a new buffer and split window
:vsp file	open a file in a new buffer and vertically split window
	
Ctrl + ws	split window
Ctrl + wv	split window vertically
	
Ctrl + wh	move cursor to the left window (vertical split)
Ctrl + wl	move cursor to the right window (vertical split)
Ctrl + wj	move cursor to the window below (horizontal split)
Ctrl + wk	move cursor to the window above (horizontal split)
	
~	switch case
	
"xy	yank into register x
"xp	paste contents of register x
	
ma	set current position for mark A
`a	jump to position of mark A
y`a	yank text to position of mark A
	
Ctrl + wT	move the current split window into its own tab
\#gt	move to tab number #
:tabmove #	move current tab to the #th position (indexed from 0)
	
yw	yank (copy) the characters of the word from the cursor position to the start of the next word
y$	yank (copy) to end of line
dw	delete (cut) the characters of the word from the cursor position to the start of the next word
D	delete (cut) to the end of the line
d$	delete (cut) to the end of the line
	
\vpattern	very magic' pattern: non-alphanumeric characters are interpreted as special regex symbols (no escaping needed)
:%s/old/new/gc	replace all old with new throughout file with confirmations
	
gv	reselect last visual selection

### Fugitive

<leader>gb	:Gblame	
<leader>gs	:Gstatus	
<leader>gc	:Git add -p	
<leader>gm	:Gcommit --amend	
<leader>gp	:Gpush	
<leader>gd	:Gdiff	
<leader>gw	:Gwrite	

### NERDCommenter

[count]<leader>cc	Comment out the current line or text selected in visual mode.
[count]<leader>cn	Same as cc but forces nesting.
[count]<leader>c<space>	Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
[count]<leader>cm	Comments the given lines using only one set of multipart delimiters.
[count]<leader>ci	Toggles the comment state of the selected line(s) individually.
[count]<leader>cs	Comments out the selected lines with a pretty block formatted layout.
[count]<leader>cy	Same as cc except that the commented line(s) are yanked first.
<leader>c$	Comments the current line from the cursor to the end of line.
<leader>cA	Adds comment delimiters to the end of line and goes into insert mode between them.
<leader>ca	Switches to the alternative set of delimiters.
[count]<leader>cl	
[count]<leader>cb	Same as cc except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb).
[count]<leader>cu	Uncomments the selected line(s).

### Jedi

<C-Space>	Completion
<leader>g	Goto assignments
<leader>d	Goto definitions
K	Show Documentation/Pydoc
<leader>r	Renaming
<leader>n	Usages