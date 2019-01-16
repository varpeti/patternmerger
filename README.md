# Patternmerger

## Usage:
  lua main.lua <in.txt >out.txt

## Example:

### in.txt
```
7ffdbc38ead4 : 1a 56 00 00 79 e3 26 24 | . V . . y . & $ 
7ffdbc38eadc : a7 7f 00 00 00 ba 5c 24 | . . . . . . \ $ 
7ffdbc38eae4 : a7 7f 00 00 00 ba 5c 24 | . . . . . . \ $ 
7ffdbc38eaec : a7 7f 00 00 68 0d 00 00 | . . . . h . . . 
7ffdbc38eaf4 : 00 00 00 00 48 d1 26 24 | . . . . H . & $ 
7ffdbc38eafc : a7 7f 00 00 00 ba 5c 24 | . . . . . . \ $ 
7ffdbc38eb04 : a7 7f 00 00 a0 82 5c 24 | . . . . . . \ $ 
7ffdbc38eb0c : a7 7f 00 00 10 5c 2a dc | . . . . . \ * . 
7ffdbc38eb14 : 1a 56 00 00 10 ed 38 bc | . V . . . . 8 . 
7ffdbc38eb1c : fd 7f 00 00 00 00 00 00 | . . . . . . . . 
7ffdbc38eb24 : 00 00 00 00 f2 e3 26 24 | . . . . . . & $ 
7ffdbc38eb2c : a7 7f 00 00 10 ed 38 bc | . . . . . . 8 . 
7ffdbc38eb34 : fd 7f 00 00 20 70 4a dc | . . . .   p J . 
7ffdbc38eb3c : 1a 56 00 00 30 ec 38 bc | . V . . 0 . 8 . 
7ffdbc38eb44 : fd 7f 00 00 76 61 2a dc | . . . . v a * . 
7ffdbc38eb4c : 1a 56 00 00 c8 59 b7 24 | . V . . . Y . $ 
7ffdbc38eb54 : 40 e2 01 00 54 eb 38 bc | @ . . . T . 8 . 
7ffdbc38eb5c : fd 7f 00 00 58 eb 38 bc | . . . . X . 8 . 
7ffdbc38eb64 : fd 7f 00 00 60 eb 38 bc | . . . . ` . 8 . 
7ffdbc38eb6c : fd 7f 00 00 80 eb 38 bc | . . . . . . 8 . 
7ffdbc38eb74 : fd 7f 00 00 0d 00 00 00 | . . . . . . . . 
7ffdbc38eb7c : 00 00 00 00 44 65 66 61 | . . . . D e f a 
7ffdbc38eb84 : 75 6c 74 53 74 72 69 6e | u l t S t r i n 
7ffdbc38eb8c : 67 00 00 00 4c 6f 6e 67 | g . . . L o n g 
7ffdbc38eb94 : 20 63 68 61 72 20 61 72 |   c h a r   a r 
7ffdbc38eb9c : 72 61 79 20 72 69 67 68 | r a y   r i g h 
7ffdbc38eba4 : 74 20 74 68 65 72 65 20 | t   t h e r e   
7ffdbc38ebac : 2d 3e 00 00 00 00 00 00 | - > . . . . . . 
7ffdbc38ebb4 : 00 00 00 00 00 00 00 00 | . . . . . . . . 
7ffdbc38ebbc : 00 00 00 00 00 00 00 00 | . . . . . . . . 
7ffdbc38ebc4 : 00 00 00 00 00 00 00 00 | . . . . . . . . 
7ffdbc38ebcc : 00 00 00 00 00 00 00 00 | . . . . . . . . 
---
7ffccab27824 : 8f 55 00 00 79 63 ca 2f | . U . . y c . / 
7ffccab2782c : 8e 7f 00 00 00 3a 00 30 | . . . . . : . 0 
7ffccab27834 : 8e 7f 00 00 00 3a 00 30 | . . . . . : . 0 
7ffccab2783c : 8e 7f 00 00 68 0d 00 00 | . . . . h . . . 
7ffccab27844 : 00 00 00 00 48 51 ca 2f | . . . . H Q . / 
7ffccab2784c : 8e 7f 00 00 00 3a 00 30 | . . . . . : . 0 
7ffccab27854 : 8e 7f 00 00 a0 02 00 30 | . . . . . . . 0 
7ffccab2785c : 8e 7f 00 00 10 1c 61 5e | . . . . . . a ^ 
7ffccab27864 : 8f 55 00 00 60 7a b2 ca | . U . . ` z . . 
7ffccab2786c : fc 7f 00 00 00 00 00 00 | . . . . . . . . 
7ffccab27874 : 00 00 00 00 f2 63 ca 2f | . . . . . c . / 
7ffccab2787c : 8e 7f 00 00 60 7a b2 ca | . . . . ` z . . 
7ffccab27884 : fc 7f 00 00 20 30 81 5e | . . . .   0 . ^ 
7ffccab2788c : 8f 55 00 00 80 79 b2 ca | . U . . . y . . 
7ffccab27894 : fc 7f 00 00 76 21 61 5e | . . . . v ! a ^ 
7ffccab2789c : 8f 55 00 00 c8 d9 5a 30 | . U . . . . Z 0 
7ffccab278a4 : 40 e2 01 00 a4 78 b2 ca | @ . . . . x . . 
7ffccab278ac : fc 7f 00 00 a8 78 b2 ca | . . . . . x . . 
7ffccab278b4 : fc 7f 00 00 b0 78 b2 ca | . . . . . x . . 
7ffccab278bc : fc 7f 00 00 d0 78 b2 ca | . . . . . x . . 
7ffccab278c4 : fc 7f 00 00 0d 00 00 00 | . . . . . . . . 
7ffccab278cc : 00 00 00 00 44 65 66 61 | . . . . D e f a 
7ffccab278d4 : 75 6c 74 53 74 72 69 6e | u l t S t r i n 
7ffccab278dc : 67 00 00 00 4c 6f 6e 67 | g . . . L o n g 
7ffccab278e4 : 20 63 68 61 72 20 61 72 |   c h a r   a r 
7ffccab278ec : 72 61 79 20 72 69 67 68 | r a y   r i g h 
7ffccab278f4 : 74 20 74 68 65 72 65 20 | t   t h e r e   
7ffccab278fc : 2d 3e 00 00 00 00 00 00 | - > . . . . . . 
7ffccab27904 : 00 00 00 00 00 00 00 00 | . . . . . . . . 
7ffccab2790c : 00 00 00 00 00 00 00 00 | . . . . . . . . 
7ffccab27914 : 00 00 00 00 00 00 00 00 | . . . . . . . . 
7ffccab2791c : 00 00 00 00 00 00 00 00 | . . . . . . . . 
---
7fff0eada094 : 25 56 00 00 20 10 80 9e | % V . .   . . . 
7fff0eada09c : 25 56 00 00 00 ba 8d 78 | % V . . . . . x 
7fff0eada0a4 : 1f 7f 00 00 00 ba 8d 78 | . . . . . . . x 
7fff0eada0ac : 1f 7f 00 00 68 0d 00 00 | . . . . h . . . 
7fff0eada0b4 : 00 00 00 00 48 d1 57 78 | . . . . H . W x 
7fff0eada0bc : 1f 7f 00 00 00 ba 8d 78 | . . . . . . . x 
7fff0eada0c4 : 1f 7f 00 00 a0 82 8d 78 | . . . . . . . x 
7fff0eada0cc : 1f 7f 00 00 10 fc 5f 9e | . . . . . . _ . 
7fff0eada0d4 : 25 56 00 00 d0 a2 ad 0e | % V . . . . . . 
7fff0eada0dc : ff 7f 00 00 00 00 00 00 | . . . . . . . . 
7fff0eada0e4 : 00 00 00 00 f2 e3 57 78 | . . . . . . W x 
7fff0eada0ec : 1f 7f 00 00 d0 a2 ad 0e | . . . . . . . . 
7fff0eada0f4 : ff 7f 00 00 20 10 80 9e | . . . .   . . . 
7fff0eada0fc : 25 56 00 00 f0 a1 ad 0e | % V . . . . . . 
7fff0eada104 : ff 7f 00 00 76 01 60 9e | . . . . v . ` . 
7fff0eada10c : 25 56 00 00 c8 59 e8 78 | % V . . . Y . x 
7fff0eada114 : 51 e2 01 00 14 a1 ad 0e | Q . . . . . . . 
7fff0eada11c : ff 7f 00 00 18 a1 ad 0e | . . . . . . . . 
7fff0eada124 : ff 7f 00 00 20 a1 ad 0e | . . . .   . . . 
7fff0eada12c : ff 7f 00 00 40 a1 ad 0e | . . . . @ . . . 
7fff0eada134 : ff 7f 00 00 0d 00 00 00 | . . . . . . . . 
7fff0eada13c : 00 00 00 00 44 65 66 61 | . . . . D e f a 
7fff0eada144 : 75 6c 74 53 74 72 69 6e | u l t S t r i n 
7fff0eada14c : 67 00 00 00 4c 6f 6e 67 | g . . . L o n g 
7fff0eada154 : 20 63 68 61 72 20 61 72 |   c h a r   a r 
7fff0eada15c : 72 61 79 20 72 69 67 68 | r a y   r i g h 
7fff0eada164 : 74 20 74 68 65 72 65 20 | t   t h e r e   
7fff0eada16c : 2d 3e 00 00 00 00 00 00 | - > . . . . . . 
7fff0eada174 : 00 00 00 00 00 00 00 00 | . . . . . . . . 
7fff0eada17c : 00 00 00 00 00 00 00 00 | . . . . . . . . 
7fff0eada184 : 00 00 00 00 00 00 00 00 | . . . . . . . . 
7fff0eada18c : 00 00 00 00 00 00 00 00 | . . . . . . . . 
```
### out.txt
```
?? ?? 00 00 ?? ?? ?? ?? 
?? ?? 00 00 00 ?? ?? ?? 
?? 7f 00 00 00 ?? ?? ?? 
?? 7f 00 00 68 0d 00 00 
00 00 00 00 48 ?? ?? ?? 
?? 7f 00 00 00 ?? ?? ?? 
?? 7f 00 00 a0 ?? ?? ?? 
?? 7f 00 00 10 ?? ?? ?? 
?? ?? 00 00 ?? ?? ?? ?? 
?? 7f 00 00 00 00 00 00 
00 00 00 00 f2 ?? ?? ?? 
?? 7f 00 00 ?? ?? ?? ?? 
?? 7f 00 00 20 ?? ?? ?? 
?? ?? 00 00 ?? ?? ?? ?? 
?? 7f 00 00 76 ?? ?? ?? 
?? ?? 00 00 c8 ?? ?? ?? 
?? e2 01 00 ?? ?? ?? ?? 
?? 7f 00 00 ?? ?? ?? ?? 
?? 7f 00 00 ?? ?? ?? ?? 
?? 7f 00 00 ?? ?? ?? ?? 
?? 7f 00 00 0d 00 00 00 
00 00 00 00 44 65 66 61 
75 6c 74 53 74 72 69 6e 
67 00 00 00 4c 6f 6e 67 
20 63 68 61 72 20 61 72 
72 61 79 20 72 69 67 68 
74 20 74 68 65 72 65 20 
2d 3e 00 00 00 00 00 00 
00 00 00 00 00 00 00 00 
00 00 00 00 00 00 00 00 
00 00 00 00 00 00 00 00 
00 00 00 00 00 00 00 00 

"\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7f\x00\x00\x00\x00\x00\x00\x00\x7f\x00\x00\x68\x0d\x00\x00\x00\x00\x00\x00\x48\x00\x00\x00\x00\x7f\x00\x00\x00\x00\x00\x00\x00\x7f\x00\x00\xa0\x00\x00\x00\x00\x7f\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7f\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf2\x00\x00\x00\x00\x7f\x00\x00\x00\x00\x00\x00\x00\x7f\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7f\x00\x00\x76\x00\x00\x00\x00\x00\x00\x00\xc8\x00\x00\x00\x00\xe2\x01\x00\x00\x00\x00\x00\x00\x7f\x00\x00\x00\x00\x00\x00\x00\x7f\x00\x00\x00\x00\x00\x00\x00\x7f\x00\x00\x00\x00\x00\x00\x00\x7f\x00\x00\x0d\x00\x00\x00\x00\x00\x00\x00\x44\x65\x66\x61\x75\x6c\x74\x53\x74\x72\x69\x6e\x67\x00\x00\x00\x4c\x6f\x6e\x67\x20\x63\x68\x61\x72\x20\x61\x72\x72\x61\x79\x20\x72\x69\x67\x68\x74\x20\x74\x68\x65\x72\x65\x20\x2d\x3e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00","??xx??????xxx????xxxx????xxxxxxxxxxxx????xxxx????xxxx????xxxx?????xx?????xxxxxxxxxxxx????xxx?????xxxx?????xx?????xxxx?????xxx????xxx?????xxx?????xxx?????xxx?????xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
```

