.bytecode 50.0
.class synchronized com/ta/utdid2/android/utils/Base64$Decoder
.super com/ta/utdid2/android/utils/Base64$Coder
.inner class static Decoder inner com/ta/utdid2/android/utils/Base64$Decoder outer com/ta/utdid2/android/utils/Base64

.field private static final 'DECODE' [I

.field private static final 'DECODE_WEBSAFE' [I

.field private final 'alphabet' [I

.field private 'state' I

.field private 'value' I

.method static <clinit>()V
sipush 256
newarray int
dup
iconst_0
iconst_m1
iastore
dup
iconst_1
iconst_m1
iastore
dup
iconst_2
iconst_m1
iastore
dup
iconst_3
iconst_m1
iastore
dup
iconst_4
iconst_m1
iastore
dup
iconst_5
iconst_m1
iastore
dup
bipush 6
iconst_m1
iastore
dup
bipush 7
iconst_m1
iastore
dup
bipush 8
iconst_m1
iastore
dup
bipush 9
iconst_m1
iastore
dup
bipush 10
iconst_m1
iastore
dup
bipush 11
iconst_m1
iastore
dup
bipush 12
iconst_m1
iastore
dup
bipush 13
iconst_m1
iastore
dup
bipush 14
iconst_m1
iastore
dup
bipush 15
iconst_m1
iastore
dup
bipush 16
iconst_m1
iastore
dup
bipush 17
iconst_m1
iastore
dup
bipush 18
iconst_m1
iastore
dup
bipush 19
iconst_m1
iastore
dup
bipush 20
iconst_m1
iastore
dup
bipush 21
iconst_m1
iastore
dup
bipush 22
iconst_m1
iastore
dup
bipush 23
iconst_m1
iastore
dup
bipush 24
iconst_m1
iastore
dup
bipush 25
iconst_m1
iastore
dup
bipush 26
iconst_m1
iastore
dup
bipush 27
iconst_m1
iastore
dup
bipush 28
iconst_m1
iastore
dup
bipush 29
iconst_m1
iastore
dup
bipush 30
iconst_m1
iastore
dup
bipush 31
iconst_m1
iastore
dup
bipush 32
iconst_m1
iastore
dup
bipush 33
iconst_m1
iastore
dup
bipush 34
iconst_m1
iastore
dup
bipush 35
iconst_m1
iastore
dup
bipush 36
iconst_m1
iastore
dup
bipush 37
iconst_m1
iastore
dup
bipush 38
iconst_m1
iastore
dup
bipush 39
iconst_m1
iastore
dup
bipush 40
iconst_m1
iastore
dup
bipush 41
iconst_m1
iastore
dup
bipush 42
iconst_m1
iastore
dup
bipush 43
bipush 62
iastore
dup
bipush 44
iconst_m1
iastore
dup
bipush 45
iconst_m1
iastore
dup
bipush 46
iconst_m1
iastore
dup
bipush 47
bipush 63
iastore
dup
bipush 48
bipush 52
iastore
dup
bipush 49
bipush 53
iastore
dup
bipush 50
bipush 54
iastore
dup
bipush 51
bipush 55
iastore
dup
bipush 52
bipush 56
iastore
dup
bipush 53
bipush 57
iastore
dup
bipush 54
bipush 58
iastore
dup
bipush 55
bipush 59
iastore
dup
bipush 56
bipush 60
iastore
dup
bipush 57
bipush 61
iastore
dup
bipush 58
iconst_m1
iastore
dup
bipush 59
iconst_m1
iastore
dup
bipush 60
iconst_m1
iastore
dup
bipush 61
bipush -2
iastore
dup
bipush 62
iconst_m1
iastore
dup
bipush 63
iconst_m1
iastore
dup
bipush 64
iconst_m1
iastore
dup
bipush 65
iconst_0
iastore
dup
bipush 66
iconst_1
iastore
dup
bipush 67
iconst_2
iastore
dup
bipush 68
iconst_3
iastore
dup
bipush 69
iconst_4
iastore
dup
bipush 70
iconst_5
iastore
dup
bipush 71
bipush 6
iastore
dup
bipush 72
bipush 7
iastore
dup
bipush 73
bipush 8
iastore
dup
bipush 74
bipush 9
iastore
dup
bipush 75
bipush 10
iastore
dup
bipush 76
bipush 11
iastore
dup
bipush 77
bipush 12
iastore
dup
bipush 78
bipush 13
iastore
dup
bipush 79
bipush 14
iastore
dup
bipush 80
bipush 15
iastore
dup
bipush 81
bipush 16
iastore
dup
bipush 82
bipush 17
iastore
dup
bipush 83
bipush 18
iastore
dup
bipush 84
bipush 19
iastore
dup
bipush 85
bipush 20
iastore
dup
bipush 86
bipush 21
iastore
dup
bipush 87
bipush 22
iastore
dup
bipush 88
bipush 23
iastore
dup
bipush 89
bipush 24
iastore
dup
bipush 90
bipush 25
iastore
dup
bipush 91
iconst_m1
iastore
dup
bipush 92
iconst_m1
iastore
dup
bipush 93
iconst_m1
iastore
dup
bipush 94
iconst_m1
iastore
dup
bipush 95
iconst_m1
iastore
dup
bipush 96
iconst_m1
iastore
dup
bipush 97
bipush 26
iastore
dup
bipush 98
bipush 27
iastore
dup
bipush 99
bipush 28
iastore
dup
bipush 100
bipush 29
iastore
dup
bipush 101
bipush 30
iastore
dup
bipush 102
bipush 31
iastore
dup
bipush 103
bipush 32
iastore
dup
bipush 104
bipush 33
iastore
dup
bipush 105
bipush 34
iastore
dup
bipush 106
bipush 35
iastore
dup
bipush 107
bipush 36
iastore
dup
bipush 108
bipush 37
iastore
dup
bipush 109
bipush 38
iastore
dup
bipush 110
bipush 39
iastore
dup
bipush 111
bipush 40
iastore
dup
bipush 112
bipush 41
iastore
dup
bipush 113
bipush 42
iastore
dup
bipush 114
bipush 43
iastore
dup
bipush 115
bipush 44
iastore
dup
bipush 116
bipush 45
iastore
dup
bipush 117
bipush 46
iastore
dup
bipush 118
bipush 47
iastore
dup
bipush 119
bipush 48
iastore
dup
bipush 120
bipush 49
iastore
dup
bipush 121
bipush 50
iastore
dup
bipush 122
bipush 51
iastore
dup
bipush 123
iconst_m1
iastore
dup
bipush 124
iconst_m1
iastore
dup
bipush 125
iconst_m1
iastore
dup
bipush 126
iconst_m1
iastore
dup
bipush 127
iconst_m1
iastore
dup
sipush 128
iconst_m1
iastore
dup
sipush 129
iconst_m1
iastore
dup
sipush 130
iconst_m1
iastore
dup
sipush 131
iconst_m1
iastore
dup
sipush 132
iconst_m1
iastore
dup
sipush 133
iconst_m1
iastore
dup
sipush 134
iconst_m1
iastore
dup
sipush 135
iconst_m1
iastore
dup
sipush 136
iconst_m1
iastore
dup
sipush 137
iconst_m1
iastore
dup
sipush 138
iconst_m1
iastore
dup
sipush 139
iconst_m1
iastore
dup
sipush 140
iconst_m1
iastore
dup
sipush 141
iconst_m1
iastore
dup
sipush 142
iconst_m1
iastore
dup
sipush 143
iconst_m1
iastore
dup
sipush 144
iconst_m1
iastore
dup
sipush 145
iconst_m1
iastore
dup
sipush 146
iconst_m1
iastore
dup
sipush 147
iconst_m1
iastore
dup
sipush 148
iconst_m1
iastore
dup
sipush 149
iconst_m1
iastore
dup
sipush 150
iconst_m1
iastore
dup
sipush 151
iconst_m1
iastore
dup
sipush 152
iconst_m1
iastore
dup
sipush 153
iconst_m1
iastore
dup
sipush 154
iconst_m1
iastore
dup
sipush 155
iconst_m1
iastore
dup
sipush 156
iconst_m1
iastore
dup
sipush 157
iconst_m1
iastore
dup
sipush 158
iconst_m1
iastore
dup
sipush 159
iconst_m1
iastore
dup
sipush 160
iconst_m1
iastore
dup
sipush 161
iconst_m1
iastore
dup
sipush 162
iconst_m1
iastore
dup
sipush 163
iconst_m1
iastore
dup
sipush 164
iconst_m1
iastore
dup
sipush 165
iconst_m1
iastore
dup
sipush 166
iconst_m1
iastore
dup
sipush 167
iconst_m1
iastore
dup
sipush 168
iconst_m1
iastore
dup
sipush 169
iconst_m1
iastore
dup
sipush 170
iconst_m1
iastore
dup
sipush 171
iconst_m1
iastore
dup
sipush 172
iconst_m1
iastore
dup
sipush 173
iconst_m1
iastore
dup
sipush 174
iconst_m1
iastore
dup
sipush 175
iconst_m1
iastore
dup
sipush 176
iconst_m1
iastore
dup
sipush 177
iconst_m1
iastore
dup
sipush 178
iconst_m1
iastore
dup
sipush 179
iconst_m1
iastore
dup
sipush 180
iconst_m1
iastore
dup
sipush 181
iconst_m1
iastore
dup
sipush 182
iconst_m1
iastore
dup
sipush 183
iconst_m1
iastore
dup
sipush 184
iconst_m1
iastore
dup
sipush 185
iconst_m1
iastore
dup
sipush 186
iconst_m1
iastore
dup
sipush 187
iconst_m1
iastore
dup
sipush 188
iconst_m1
iastore
dup
sipush 189
iconst_m1
iastore
dup
sipush 190
iconst_m1
iastore
dup
sipush 191
iconst_m1
iastore
dup
sipush 192
iconst_m1
iastore
dup
sipush 193
iconst_m1
iastore
dup
sipush 194
iconst_m1
iastore
dup
sipush 195
iconst_m1
iastore
dup
sipush 196
iconst_m1
iastore
dup
sipush 197
iconst_m1
iastore
dup
sipush 198
iconst_m1
iastore
dup
sipush 199
iconst_m1
iastore
dup
sipush 200
iconst_m1
iastore
dup
sipush 201
iconst_m1
iastore
dup
sipush 202
iconst_m1
iastore
dup
sipush 203
iconst_m1
iastore
dup
sipush 204
iconst_m1
iastore
dup
sipush 205
iconst_m1
iastore
dup
sipush 206
iconst_m1
iastore
dup
sipush 207
iconst_m1
iastore
dup
sipush 208
iconst_m1
iastore
dup
sipush 209
iconst_m1
iastore
dup
sipush 210
iconst_m1
iastore
dup
sipush 211
iconst_m1
iastore
dup
sipush 212
iconst_m1
iastore
dup
sipush 213
iconst_m1
iastore
dup
sipush 214
iconst_m1
iastore
dup
sipush 215
iconst_m1
iastore
dup
sipush 216
iconst_m1
iastore
dup
sipush 217
iconst_m1
iastore
dup
sipush 218
iconst_m1
iastore
dup
sipush 219
iconst_m1
iastore
dup
sipush 220
iconst_m1
iastore
dup
sipush 221
iconst_m1
iastore
dup
sipush 222
iconst_m1
iastore
dup
sipush 223
iconst_m1
iastore
dup
sipush 224
iconst_m1
iastore
dup
sipush 225
iconst_m1
iastore
dup
sipush 226
iconst_m1
iastore
dup
sipush 227
iconst_m1
iastore
dup
sipush 228
iconst_m1
iastore
dup
sipush 229
iconst_m1
iastore
dup
sipush 230
iconst_m1
iastore
dup
sipush 231
iconst_m1
iastore
dup
sipush 232
iconst_m1
iastore
dup
sipush 233
iconst_m1
iastore
dup
sipush 234
iconst_m1
iastore
dup
sipush 235
iconst_m1
iastore
dup
sipush 236
iconst_m1
iastore
dup
sipush 237
iconst_m1
iastore
dup
sipush 238
iconst_m1
iastore
dup
sipush 239
iconst_m1
iastore
dup
sipush 240
iconst_m1
iastore
dup
sipush 241
iconst_m1
iastore
dup
sipush 242
iconst_m1
iastore
dup
sipush 243
iconst_m1
iastore
dup
sipush 244
iconst_m1
iastore
dup
sipush 245
iconst_m1
iastore
dup
sipush 246
iconst_m1
iastore
dup
sipush 247
iconst_m1
iastore
dup
sipush 248
iconst_m1
iastore
dup
sipush 249
iconst_m1
iastore
dup
sipush 250
iconst_m1
iastore
dup
sipush 251
iconst_m1
iastore
dup
sipush 252
iconst_m1
iastore
dup
sipush 253
iconst_m1
iastore
dup
sipush 254
iconst_m1
iastore
dup
sipush 255
iconst_m1
iastore
putstatic com/ta/utdid2/android/utils/Base64$Decoder/DECODE [I
sipush 256
newarray int
dup
iconst_0
iconst_m1
iastore
dup
iconst_1
iconst_m1
iastore
dup
iconst_2
iconst_m1
iastore
dup
iconst_3
iconst_m1
iastore
dup
iconst_4
iconst_m1
iastore
dup
iconst_5
iconst_m1
iastore
dup
bipush 6
iconst_m1
iastore
dup
bipush 7
iconst_m1
iastore
dup
bipush 8
iconst_m1
iastore
dup
bipush 9
iconst_m1
iastore
dup
bipush 10
iconst_m1
iastore
dup
bipush 11
iconst_m1
iastore
dup
bipush 12
iconst_m1
iastore
dup
bipush 13
iconst_m1
iastore
dup
bipush 14
iconst_m1
iastore
dup
bipush 15
iconst_m1
iastore
dup
bipush 16
iconst_m1
iastore
dup
bipush 17
iconst_m1
iastore
dup
bipush 18
iconst_m1
iastore
dup
bipush 19
iconst_m1
iastore
dup
bipush 20
iconst_m1
iastore
dup
bipush 21
iconst_m1
iastore
dup
bipush 22
iconst_m1
iastore
dup
bipush 23
iconst_m1
iastore
dup
bipush 24
iconst_m1
iastore
dup
bipush 25
iconst_m1
iastore
dup
bipush 26
iconst_m1
iastore
dup
bipush 27
iconst_m1
iastore
dup
bipush 28
iconst_m1
iastore
dup
bipush 29
iconst_m1
iastore
dup
bipush 30
iconst_m1
iastore
dup
bipush 31
iconst_m1
iastore
dup
bipush 32
iconst_m1
iastore
dup
bipush 33
iconst_m1
iastore
dup
bipush 34
iconst_m1
iastore
dup
bipush 35
iconst_m1
iastore
dup
bipush 36
iconst_m1
iastore
dup
bipush 37
iconst_m1
iastore
dup
bipush 38
iconst_m1
iastore
dup
bipush 39
iconst_m1
iastore
dup
bipush 40
iconst_m1
iastore
dup
bipush 41
iconst_m1
iastore
dup
bipush 42
iconst_m1
iastore
dup
bipush 43
iconst_m1
iastore
dup
bipush 44
iconst_m1
iastore
dup
bipush 45
bipush 62
iastore
dup
bipush 46
iconst_m1
iastore
dup
bipush 47
iconst_m1
iastore
dup
bipush 48
bipush 52
iastore
dup
bipush 49
bipush 53
iastore
dup
bipush 50
bipush 54
iastore
dup
bipush 51
bipush 55
iastore
dup
bipush 52
bipush 56
iastore
dup
bipush 53
bipush 57
iastore
dup
bipush 54
bipush 58
iastore
dup
bipush 55
bipush 59
iastore
dup
bipush 56
bipush 60
iastore
dup
bipush 57
bipush 61
iastore
dup
bipush 58
iconst_m1
iastore
dup
bipush 59
iconst_m1
iastore
dup
bipush 60
iconst_m1
iastore
dup
bipush 61
bipush -2
iastore
dup
bipush 62
iconst_m1
iastore
dup
bipush 63
iconst_m1
iastore
dup
bipush 64
iconst_m1
iastore
dup
bipush 65
iconst_0
iastore
dup
bipush 66
iconst_1
iastore
dup
bipush 67
iconst_2
iastore
dup
bipush 68
iconst_3
iastore
dup
bipush 69
iconst_4
iastore
dup
bipush 70
iconst_5
iastore
dup
bipush 71
bipush 6
iastore
dup
bipush 72
bipush 7
iastore
dup
bipush 73
bipush 8
iastore
dup
bipush 74
bipush 9
iastore
dup
bipush 75
bipush 10
iastore
dup
bipush 76
bipush 11
iastore
dup
bipush 77
bipush 12
iastore
dup
bipush 78
bipush 13
iastore
dup
bipush 79
bipush 14
iastore
dup
bipush 80
bipush 15
iastore
dup
bipush 81
bipush 16
iastore
dup
bipush 82
bipush 17
iastore
dup
bipush 83
bipush 18
iastore
dup
bipush 84
bipush 19
iastore
dup
bipush 85
bipush 20
iastore
dup
bipush 86
bipush 21
iastore
dup
bipush 87
bipush 22
iastore
dup
bipush 88
bipush 23
iastore
dup
bipush 89
bipush 24
iastore
dup
bipush 90
bipush 25
iastore
dup
bipush 91
iconst_m1
iastore
dup
bipush 92
iconst_m1
iastore
dup
bipush 93
iconst_m1
iastore
dup
bipush 94
iconst_m1
iastore
dup
bipush 95
bipush 63
iastore
dup
bipush 96
iconst_m1
iastore
dup
bipush 97
bipush 26
iastore
dup
bipush 98
bipush 27
iastore
dup
bipush 99
bipush 28
iastore
dup
bipush 100
bipush 29
iastore
dup
bipush 101
bipush 30
iastore
dup
bipush 102
bipush 31
iastore
dup
bipush 103
bipush 32
iastore
dup
bipush 104
bipush 33
iastore
dup
bipush 105
bipush 34
iastore
dup
bipush 106
bipush 35
iastore
dup
bipush 107
bipush 36
iastore
dup
bipush 108
bipush 37
iastore
dup
bipush 109
bipush 38
iastore
dup
bipush 110
bipush 39
iastore
dup
bipush 111
bipush 40
iastore
dup
bipush 112
bipush 41
iastore
dup
bipush 113
bipush 42
iastore
dup
bipush 114
bipush 43
iastore
dup
bipush 115
bipush 44
iastore
dup
bipush 116
bipush 45
iastore
dup
bipush 117
bipush 46
iastore
dup
bipush 118
bipush 47
iastore
dup
bipush 119
bipush 48
iastore
dup
bipush 120
bipush 49
iastore
dup
bipush 121
bipush 50
iastore
dup
bipush 122
bipush 51
iastore
dup
bipush 123
iconst_m1
iastore
dup
bipush 124
iconst_m1
iastore
dup
bipush 125
iconst_m1
iastore
dup
bipush 126
iconst_m1
iastore
dup
bipush 127
iconst_m1
iastore
dup
sipush 128
iconst_m1
iastore
dup
sipush 129
iconst_m1
iastore
dup
sipush 130
iconst_m1
iastore
dup
sipush 131
iconst_m1
iastore
dup
sipush 132
iconst_m1
iastore
dup
sipush 133
iconst_m1
iastore
dup
sipush 134
iconst_m1
iastore
dup
sipush 135
iconst_m1
iastore
dup
sipush 136
iconst_m1
iastore
dup
sipush 137
iconst_m1
iastore
dup
sipush 138
iconst_m1
iastore
dup
sipush 139
iconst_m1
iastore
dup
sipush 140
iconst_m1
iastore
dup
sipush 141
iconst_m1
iastore
dup
sipush 142
iconst_m1
iastore
dup
sipush 143
iconst_m1
iastore
dup
sipush 144
iconst_m1
iastore
dup
sipush 145
iconst_m1
iastore
dup
sipush 146
iconst_m1
iastore
dup
sipush 147
iconst_m1
iastore
dup
sipush 148
iconst_m1
iastore
dup
sipush 149
iconst_m1
iastore
dup
sipush 150
iconst_m1
iastore
dup
sipush 151
iconst_m1
iastore
dup
sipush 152
iconst_m1
iastore
dup
sipush 153
iconst_m1
iastore
dup
sipush 154
iconst_m1
iastore
dup
sipush 155
iconst_m1
iastore
dup
sipush 156
iconst_m1
iastore
dup
sipush 157
iconst_m1
iastore
dup
sipush 158
iconst_m1
iastore
dup
sipush 159
iconst_m1
iastore
dup
sipush 160
iconst_m1
iastore
dup
sipush 161
iconst_m1
iastore
dup
sipush 162
iconst_m1
iastore
dup
sipush 163
iconst_m1
iastore
dup
sipush 164
iconst_m1
iastore
dup
sipush 165
iconst_m1
iastore
dup
sipush 166
iconst_m1
iastore
dup
sipush 167
iconst_m1
iastore
dup
sipush 168
iconst_m1
iastore
dup
sipush 169
iconst_m1
iastore
dup
sipush 170
iconst_m1
iastore
dup
sipush 171
iconst_m1
iastore
dup
sipush 172
iconst_m1
iastore
dup
sipush 173
iconst_m1
iastore
dup
sipush 174
iconst_m1
iastore
dup
sipush 175
iconst_m1
iastore
dup
sipush 176
iconst_m1
iastore
dup
sipush 177
iconst_m1
iastore
dup
sipush 178
iconst_m1
iastore
dup
sipush 179
iconst_m1
iastore
dup
sipush 180
iconst_m1
iastore
dup
sipush 181
iconst_m1
iastore
dup
sipush 182
iconst_m1
iastore
dup
sipush 183
iconst_m1
iastore
dup
sipush 184
iconst_m1
iastore
dup
sipush 185
iconst_m1
iastore
dup
sipush 186
iconst_m1
iastore
dup
sipush 187
iconst_m1
iastore
dup
sipush 188
iconst_m1
iastore
dup
sipush 189
iconst_m1
iastore
dup
sipush 190
iconst_m1
iastore
dup
sipush 191
iconst_m1
iastore
dup
sipush 192
iconst_m1
iastore
dup
sipush 193
iconst_m1
iastore
dup
sipush 194
iconst_m1
iastore
dup
sipush 195
iconst_m1
iastore
dup
sipush 196
iconst_m1
iastore
dup
sipush 197
iconst_m1
iastore
dup
sipush 198
iconst_m1
iastore
dup
sipush 199
iconst_m1
iastore
dup
sipush 200
iconst_m1
iastore
dup
sipush 201
iconst_m1
iastore
dup
sipush 202
iconst_m1
iastore
dup
sipush 203
iconst_m1
iastore
dup
sipush 204
iconst_m1
iastore
dup
sipush 205
iconst_m1
iastore
dup
sipush 206
iconst_m1
iastore
dup
sipush 207
iconst_m1
iastore
dup
sipush 208
iconst_m1
iastore
dup
sipush 209
iconst_m1
iastore
dup
sipush 210
iconst_m1
iastore
dup
sipush 211
iconst_m1
iastore
dup
sipush 212
iconst_m1
iastore
dup
sipush 213
iconst_m1
iastore
dup
sipush 214
iconst_m1
iastore
dup
sipush 215
iconst_m1
iastore
dup
sipush 216
iconst_m1
iastore
dup
sipush 217
iconst_m1
iastore
dup
sipush 218
iconst_m1
iastore
dup
sipush 219
iconst_m1
iastore
dup
sipush 220
iconst_m1
iastore
dup
sipush 221
iconst_m1
iastore
dup
sipush 222
iconst_m1
iastore
dup
sipush 223
iconst_m1
iastore
dup
sipush 224
iconst_m1
iastore
dup
sipush 225
iconst_m1
iastore
dup
sipush 226
iconst_m1
iastore
dup
sipush 227
iconst_m1
iastore
dup
sipush 228
iconst_m1
iastore
dup
sipush 229
iconst_m1
iastore
dup
sipush 230
iconst_m1
iastore
dup
sipush 231
iconst_m1
iastore
dup
sipush 232
iconst_m1
iastore
dup
sipush 233
iconst_m1
iastore
dup
sipush 234
iconst_m1
iastore
dup
sipush 235
iconst_m1
iastore
dup
sipush 236
iconst_m1
iastore
dup
sipush 237
iconst_m1
iastore
dup
sipush 238
iconst_m1
iastore
dup
sipush 239
iconst_m1
iastore
dup
sipush 240
iconst_m1
iastore
dup
sipush 241
iconst_m1
iastore
dup
sipush 242
iconst_m1
iastore
dup
sipush 243
iconst_m1
iastore
dup
sipush 244
iconst_m1
iastore
dup
sipush 245
iconst_m1
iastore
dup
sipush 246
iconst_m1
iastore
dup
sipush 247
iconst_m1
iastore
dup
sipush 248
iconst_m1
iastore
dup
sipush 249
iconst_m1
iastore
dup
sipush 250
iconst_m1
iastore
dup
sipush 251
iconst_m1
iastore
dup
sipush 252
iconst_m1
iastore
dup
sipush 253
iconst_m1
iastore
dup
sipush 254
iconst_m1
iastore
dup
sipush 255
iconst_m1
iastore
putstatic com/ta/utdid2/android/utils/Base64$Decoder/DECODE_WEBSAFE [I
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(I[B)V
aload 0
invokespecial com/ta/utdid2/android/utils/Base64$Coder/<init>()V
aload 0
aload 2
putfield com/ta/utdid2/android/utils/Base64$Decoder/output [B
iload 1
bipush 8
iand
ifne L0
getstatic com/ta/utdid2/android/utils/Base64$Decoder/DECODE [I
astore 2
L1:
aload 0
aload 2
putfield com/ta/utdid2/android/utils/Base64$Decoder/alphabet [I
aload 0
iconst_0
putfield com/ta/utdid2/android/utils/Base64$Decoder/state I
aload 0
iconst_0
putfield com/ta/utdid2/android/utils/Base64$Decoder/value I
return
L0:
getstatic com/ta/utdid2/android/utils/Base64$Decoder/DECODE_WEBSAFE [I
astore 2
goto L1
.limit locals 3
.limit stack 2
.end method

.method public process([BIIZ)Z
aload 0
getfield com/ta/utdid2/android/utils/Base64$Decoder/state I
bipush 6
if_icmpne L0
iconst_0
ireturn
L0:
iload 3
iload 2
iadd
istore 10
aload 0
getfield com/ta/utdid2/android/utils/Base64$Decoder/state I
istore 3
aload 0
getfield com/ta/utdid2/android/utils/Base64$Decoder/value I
istore 5
iconst_0
istore 6
aload 0
getfield com/ta/utdid2/android/utils/Base64$Decoder/output [B
astore 11
aload 0
getfield com/ta/utdid2/android/utils/Base64$Decoder/alphabet [I
astore 12
L1:
iload 6
istore 8
iload 5
istore 9
iload 2
iload 10
if_icmpge L2
iload 6
istore 7
iload 5
istore 8
iload 2
istore 9
iload 3
ifne L3
iload 2
istore 7
iload 5
istore 2
L4:
iload 7
iconst_4
iadd
iload 10
if_icmpgt L5
aload 12
aload 1
iload 7
baload
sipush 255
iand
iaload
bipush 18
ishl
aload 12
aload 1
iload 7
iconst_1
iadd
baload
sipush 255
iand
iaload
bipush 12
ishl
ior
aload 12
aload 1
iload 7
iconst_2
iadd
baload
sipush 255
iand
iaload
bipush 6
ishl
ior
aload 12
aload 1
iload 7
iconst_3
iadd
baload
sipush 255
iand
iaload
ior
istore 5
iload 5
istore 2
iload 5
iflt L5
aload 11
iload 6
iconst_2
iadd
iload 5
i2b
bastore
aload 11
iload 6
iconst_1
iadd
iload 5
bipush 8
ishr
i2b
bastore
aload 11
iload 6
iload 5
bipush 16
ishr
i2b
bastore
iload 6
iconst_3
iadd
istore 6
iload 7
iconst_4
iadd
istore 7
iload 5
istore 2
goto L4
L5:
iload 6
istore 8
iload 2
istore 9
iload 7
iload 10
if_icmpge L2
iload 7
istore 9
iload 2
istore 8
iload 6
istore 7
L3:
iload 9
iconst_1
iadd
istore 2
aload 12
aload 1
iload 9
baload
sipush 255
iand
iaload
istore 5
iload 3
tableswitch 0
L6
L7
L8
L9
L10
L11
default : L12
L12:
iload 7
istore 6
iload 8
istore 5
goto L1
L6:
iload 5
iflt L13
iload 3
iconst_1
iadd
istore 3
iload 7
istore 6
goto L1
L13:
iload 5
iconst_m1
if_icmpeq L12
aload 0
bipush 6
putfield com/ta/utdid2/android/utils/Base64$Decoder/state I
iconst_0
ireturn
L7:
iload 5
iflt L14
iload 8
bipush 6
ishl
iload 5
ior
istore 5
iload 3
iconst_1
iadd
istore 3
iload 7
istore 6
goto L1
L14:
iload 5
iconst_m1
if_icmpeq L12
aload 0
bipush 6
putfield com/ta/utdid2/android/utils/Base64$Decoder/state I
iconst_0
ireturn
L8:
iload 5
iflt L15
iload 8
bipush 6
ishl
iload 5
ior
istore 5
iload 3
iconst_1
iadd
istore 3
iload 7
istore 6
goto L1
L15:
iload 5
bipush -2
if_icmpne L16
aload 11
iload 7
iload 8
iconst_4
ishr
i2b
bastore
iconst_4
istore 3
iload 7
iconst_1
iadd
istore 6
iload 8
istore 5
goto L1
L16:
iload 5
iconst_m1
if_icmpeq L12
aload 0
bipush 6
putfield com/ta/utdid2/android/utils/Base64$Decoder/state I
iconst_0
ireturn
L9:
iload 5
iflt L17
iload 8
bipush 6
ishl
iload 5
ior
istore 5
aload 11
iload 7
iconst_2
iadd
iload 5
i2b
bastore
aload 11
iload 7
iconst_1
iadd
iload 5
bipush 8
ishr
i2b
bastore
aload 11
iload 7
iload 5
bipush 16
ishr
i2b
bastore
iload 7
iconst_3
iadd
istore 6
iconst_0
istore 3
goto L1
L17:
iload 5
bipush -2
if_icmpne L18
aload 11
iload 7
iconst_1
iadd
iload 8
iconst_2
ishr
i2b
bastore
aload 11
iload 7
iload 8
bipush 10
ishr
i2b
bastore
iload 7
iconst_2
iadd
istore 6
iconst_5
istore 3
iload 8
istore 5
goto L1
L18:
iload 5
iconst_m1
if_icmpeq L12
aload 0
bipush 6
putfield com/ta/utdid2/android/utils/Base64$Decoder/state I
iconst_0
ireturn
L10:
iload 5
bipush -2
if_icmpne L19
iload 3
iconst_1
iadd
istore 3
iload 7
istore 6
iload 8
istore 5
goto L1
L19:
iload 5
iconst_m1
if_icmpeq L12
aload 0
bipush 6
putfield com/ta/utdid2/android/utils/Base64$Decoder/state I
iconst_0
ireturn
L11:
iload 5
iconst_m1
if_icmpeq L12
aload 0
bipush 6
putfield com/ta/utdid2/android/utils/Base64$Decoder/state I
iconst_0
ireturn
L2:
iload 4
ifne L20
aload 0
iload 3
putfield com/ta/utdid2/android/utils/Base64$Decoder/state I
aload 0
iload 9
putfield com/ta/utdid2/android/utils/Base64$Decoder/value I
aload 0
iload 8
putfield com/ta/utdid2/android/utils/Base64$Decoder/op I
iconst_1
ireturn
L20:
iload 8
istore 2
iload 3
tableswitch 0
L21
L22
L23
L24
L25
default : L26
L26:
iload 8
istore 2
L21:
aload 0
iload 3
putfield com/ta/utdid2/android/utils/Base64$Decoder/state I
aload 0
iload 2
putfield com/ta/utdid2/android/utils/Base64$Decoder/op I
iconst_1
ireturn
L22:
aload 0
bipush 6
putfield com/ta/utdid2/android/utils/Base64$Decoder/state I
iconst_0
ireturn
L23:
aload 11
iload 8
iload 9
iconst_4
ishr
i2b
bastore
iload 8
iconst_1
iadd
istore 2
goto L21
L24:
iload 8
iconst_1
iadd
istore 5
aload 11
iload 8
iload 9
bipush 10
ishr
i2b
bastore
iload 5
iconst_1
iadd
istore 2
aload 11
iload 5
iload 9
iconst_2
ishr
i2b
bastore
goto L21
L25:
aload 0
bipush 6
putfield com/ta/utdid2/android/utils/Base64$Decoder/state I
iconst_0
ireturn
.limit locals 13
.limit stack 5
.end method
