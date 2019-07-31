.bytecode 50.0
.class synchronized com/ta/utdid2/android/utils/Base64$Encoder
.super com/ta/utdid2/android/utils/Base64$Coder
.inner class static Encoder inner com/ta/utdid2/android/utils/Base64$Encoder outer com/ta/utdid2/android/utils/Base64

.field static final synthetic '$assertionsDisabled' Z

.field private static final 'ENCODE' [B

.field private static final 'ENCODE_WEBSAFE' [B

.field private final 'alphabet' [B

.field private 'count' I

.field public final 'do_cr' Z

.field public final 'do_newline' Z

.field public final 'do_padding' Z

.field private final 'tail' [B

.field 'tailLen' I

.method static <clinit>()V
ldc com/ta/utdid2/android/utils/Base64
invokevirtual java/lang/Class/desiredAssertionStatus()Z
ifne L0
iconst_1
istore 0
L1:
iload 0
putstatic com/ta/utdid2/android/utils/Base64$Encoder/$assertionsDisabled Z
bipush 64
newarray byte
dup
iconst_0
ldc_w 65
bastore
dup
iconst_1
ldc_w 66
bastore
dup
iconst_2
ldc_w 67
bastore
dup
iconst_3
ldc_w 68
bastore
dup
iconst_4
ldc_w 69
bastore
dup
iconst_5
ldc_w 70
bastore
dup
bipush 6
ldc_w 71
bastore
dup
bipush 7
ldc_w 72
bastore
dup
bipush 8
ldc_w 73
bastore
dup
bipush 9
ldc_w 74
bastore
dup
bipush 10
ldc_w 75
bastore
dup
bipush 11
ldc_w 76
bastore
dup
bipush 12
ldc_w 77
bastore
dup
bipush 13
ldc_w 78
bastore
dup
bipush 14
ldc_w 79
bastore
dup
bipush 15
ldc_w 80
bastore
dup
bipush 16
ldc_w 81
bastore
dup
bipush 17
ldc_w 82
bastore
dup
bipush 18
ldc_w 83
bastore
dup
bipush 19
ldc_w 84
bastore
dup
bipush 20
ldc_w 85
bastore
dup
bipush 21
ldc_w 86
bastore
dup
bipush 22
ldc_w 87
bastore
dup
bipush 23
ldc_w 88
bastore
dup
bipush 24
ldc_w 89
bastore
dup
bipush 25
ldc_w 90
bastore
dup
bipush 26
ldc_w 97
bastore
dup
bipush 27
ldc_w 98
bastore
dup
bipush 28
ldc_w 99
bastore
dup
bipush 29
ldc_w 100
bastore
dup
bipush 30
ldc_w 101
bastore
dup
bipush 31
ldc_w 102
bastore
dup
bipush 32
ldc_w 103
bastore
dup
bipush 33
ldc_w 104
bastore
dup
bipush 34
ldc_w 105
bastore
dup
bipush 35
ldc_w 106
bastore
dup
bipush 36
ldc_w 107
bastore
dup
bipush 37
ldc_w 108
bastore
dup
bipush 38
ldc_w 109
bastore
dup
bipush 39
ldc_w 110
bastore
dup
bipush 40
ldc_w 111
bastore
dup
bipush 41
ldc_w 112
bastore
dup
bipush 42
ldc_w 113
bastore
dup
bipush 43
ldc_w 114
bastore
dup
bipush 44
ldc_w 115
bastore
dup
bipush 45
ldc_w 116
bastore
dup
bipush 46
ldc_w 117
bastore
dup
bipush 47
ldc_w 118
bastore
dup
bipush 48
ldc_w 119
bastore
dup
bipush 49
ldc_w 120
bastore
dup
bipush 50
ldc_w 121
bastore
dup
bipush 51
ldc_w 122
bastore
dup
bipush 52
ldc_w 48
bastore
dup
bipush 53
ldc_w 49
bastore
dup
bipush 54
ldc_w 50
bastore
dup
bipush 55
ldc_w 51
bastore
dup
bipush 56
ldc_w 52
bastore
dup
bipush 57
ldc_w 53
bastore
dup
bipush 58
ldc_w 54
bastore
dup
bipush 59
ldc_w 55
bastore
dup
bipush 60
ldc_w 56
bastore
dup
bipush 61
ldc_w 57
bastore
dup
bipush 62
ldc_w 43
bastore
dup
bipush 63
ldc_w 47
bastore
putstatic com/ta/utdid2/android/utils/Base64$Encoder/ENCODE [B
bipush 64
newarray byte
dup
iconst_0
ldc_w 65
bastore
dup
iconst_1
ldc_w 66
bastore
dup
iconst_2
ldc_w 67
bastore
dup
iconst_3
ldc_w 68
bastore
dup
iconst_4
ldc_w 69
bastore
dup
iconst_5
ldc_w 70
bastore
dup
bipush 6
ldc_w 71
bastore
dup
bipush 7
ldc_w 72
bastore
dup
bipush 8
ldc_w 73
bastore
dup
bipush 9
ldc_w 74
bastore
dup
bipush 10
ldc_w 75
bastore
dup
bipush 11
ldc_w 76
bastore
dup
bipush 12
ldc_w 77
bastore
dup
bipush 13
ldc_w 78
bastore
dup
bipush 14
ldc_w 79
bastore
dup
bipush 15
ldc_w 80
bastore
dup
bipush 16
ldc_w 81
bastore
dup
bipush 17
ldc_w 82
bastore
dup
bipush 18
ldc_w 83
bastore
dup
bipush 19
ldc_w 84
bastore
dup
bipush 20
ldc_w 85
bastore
dup
bipush 21
ldc_w 86
bastore
dup
bipush 22
ldc_w 87
bastore
dup
bipush 23
ldc_w 88
bastore
dup
bipush 24
ldc_w 89
bastore
dup
bipush 25
ldc_w 90
bastore
dup
bipush 26
ldc_w 97
bastore
dup
bipush 27
ldc_w 98
bastore
dup
bipush 28
ldc_w 99
bastore
dup
bipush 29
ldc_w 100
bastore
dup
bipush 30
ldc_w 101
bastore
dup
bipush 31
ldc_w 102
bastore
dup
bipush 32
ldc_w 103
bastore
dup
bipush 33
ldc_w 104
bastore
dup
bipush 34
ldc_w 105
bastore
dup
bipush 35
ldc_w 106
bastore
dup
bipush 36
ldc_w 107
bastore
dup
bipush 37
ldc_w 108
bastore
dup
bipush 38
ldc_w 109
bastore
dup
bipush 39
ldc_w 110
bastore
dup
bipush 40
ldc_w 111
bastore
dup
bipush 41
ldc_w 112
bastore
dup
bipush 42
ldc_w 113
bastore
dup
bipush 43
ldc_w 114
bastore
dup
bipush 44
ldc_w 115
bastore
dup
bipush 45
ldc_w 116
bastore
dup
bipush 46
ldc_w 117
bastore
dup
bipush 47
ldc_w 118
bastore
dup
bipush 48
ldc_w 119
bastore
dup
bipush 49
ldc_w 120
bastore
dup
bipush 50
ldc_w 121
bastore
dup
bipush 51
ldc_w 122
bastore
dup
bipush 52
ldc_w 48
bastore
dup
bipush 53
ldc_w 49
bastore
dup
bipush 54
ldc_w 50
bastore
dup
bipush 55
ldc_w 51
bastore
dup
bipush 56
ldc_w 52
bastore
dup
bipush 57
ldc_w 53
bastore
dup
bipush 58
ldc_w 54
bastore
dup
bipush 59
ldc_w 55
bastore
dup
bipush 60
ldc_w 56
bastore
dup
bipush 61
ldc_w 57
bastore
dup
bipush 62
ldc_w 45
bastore
dup
bipush 63
ldc_w 95
bastore
putstatic com/ta/utdid2/android/utils/Base64$Encoder/ENCODE_WEBSAFE [B
return
L0:
iconst_0
istore 0
goto L1
.limit locals 1
.limit stack 4
.end method

.method public <init>(I[B)V
iconst_1
istore 4
aload 0
invokespecial com/ta/utdid2/android/utils/Base64$Coder/<init>()V
aload 0
aload 2
putfield com/ta/utdid2/android/utils/Base64$Encoder/output [B
iload 1
iconst_1
iand
ifne L0
iconst_1
istore 3
L1:
aload 0
iload 3
putfield com/ta/utdid2/android/utils/Base64$Encoder/do_padding Z
iload 1
iconst_2
iand
ifne L2
iconst_1
istore 3
L3:
aload 0
iload 3
putfield com/ta/utdid2/android/utils/Base64$Encoder/do_newline Z
iload 1
iconst_4
iand
ifeq L4
iload 4
istore 3
L5:
aload 0
iload 3
putfield com/ta/utdid2/android/utils/Base64$Encoder/do_cr Z
iload 1
bipush 8
iand
ifne L6
getstatic com/ta/utdid2/android/utils/Base64$Encoder/ENCODE [B
astore 2
L7:
aload 0
aload 2
putfield com/ta/utdid2/android/utils/Base64$Encoder/alphabet [B
aload 0
iconst_2
newarray byte
putfield com/ta/utdid2/android/utils/Base64$Encoder/tail [B
aload 0
iconst_0
putfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_newline Z
ifeq L8
bipush 19
istore 1
L9:
aload 0
iload 1
putfield com/ta/utdid2/android/utils/Base64$Encoder/count I
return
L0:
iconst_0
istore 3
goto L1
L2:
iconst_0
istore 3
goto L3
L4:
iconst_0
istore 3
goto L5
L6:
getstatic com/ta/utdid2/android/utils/Base64$Encoder/ENCODE_WEBSAFE [B
astore 2
goto L7
L8:
iconst_m1
istore 1
goto L9
.limit locals 5
.limit stack 2
.end method

.method public process([BIIZ)Z
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/alphabet [B
astore 10
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/output [B
astore 11
iconst_0
istore 6
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/count I
istore 5
iload 3
iload 2
iadd
istore 9
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
tableswitch 0
L0
L1
L2
default : L3
L3:
iconst_m1
istore 7
iload 2
istore 3
iload 7
istore 2
L4:
iload 2
iconst_m1
if_icmpeq L5
aload 11
iconst_0
aload 10
iload 2
bipush 18
ishr
bipush 63
iand
baload
bastore
aload 11
iconst_1
aload 10
iload 2
bipush 12
ishr
bipush 63
iand
baload
bastore
aload 11
iconst_2
aload 10
iload 2
bipush 6
ishr
bipush 63
iand
baload
bastore
iconst_4
istore 6
aload 11
iconst_3
aload 10
iload 2
bipush 63
iand
baload
bastore
iload 5
iconst_1
isub
istore 5
iload 5
ifne L6
iload 6
istore 2
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_cr Z
ifeq L7
iconst_5
istore 2
aload 11
iconst_4
bipush 13
bastore
L7:
iload 2
iconst_1
iadd
istore 6
aload 11
iload 2
bipush 10
bastore
bipush 19
istore 5
iload 6
istore 2
L8:
iload 3
iconst_3
iadd
iload 9
if_icmpgt L9
aload 1
iload 3
baload
sipush 255
iand
bipush 16
ishl
aload 1
iload 3
iconst_1
iadd
baload
sipush 255
iand
bipush 8
ishl
ior
aload 1
iload 3
iconst_2
iadd
baload
sipush 255
iand
ior
istore 6
aload 11
iload 2
aload 10
iload 6
bipush 18
ishr
bipush 63
iand
baload
bastore
aload 11
iload 2
iconst_1
iadd
aload 10
iload 6
bipush 12
ishr
bipush 63
iand
baload
bastore
aload 11
iload 2
iconst_2
iadd
aload 10
iload 6
bipush 6
ishr
bipush 63
iand
baload
bastore
aload 11
iload 2
iconst_3
iadd
aload 10
iload 6
bipush 63
iand
baload
bastore
iload 3
iconst_3
iadd
istore 3
iload 2
iconst_4
iadd
istore 2
iload 5
iconst_1
isub
istore 5
iload 5
ifne L10
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_cr Z
ifeq L11
iload 2
iconst_1
iadd
istore 5
aload 11
iload 2
bipush 13
bastore
iload 5
istore 2
L12:
iload 2
iconst_1
iadd
istore 5
aload 11
iload 2
bipush 10
bastore
bipush 19
istore 6
iload 5
istore 2
iload 6
istore 5
goto L8
L0:
iconst_m1
istore 7
iload 2
istore 3
iload 7
istore 2
goto L4
L1:
iload 2
iconst_2
iadd
iload 9
if_icmpgt L3
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tail [B
iconst_0
baload
istore 7
iload 2
iconst_1
iadd
istore 3
aload 1
iload 2
baload
istore 2
aload 1
iload 3
baload
istore 8
aload 0
iconst_0
putfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
iload 7
sipush 255
iand
bipush 16
ishl
iload 2
sipush 255
iand
bipush 8
ishl
ior
iload 8
sipush 255
iand
ior
istore 2
iload 3
iconst_1
iadd
istore 3
goto L4
L2:
iload 2
iconst_1
iadd
iload 9
if_icmpgt L3
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tail [B
iconst_0
baload
istore 7
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tail [B
iconst_1
baload
istore 8
iload 2
iconst_1
iadd
istore 3
aload 1
iload 2
baload
istore 2
aload 0
iconst_0
putfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
iload 7
sipush 255
iand
bipush 16
ishl
iload 8
sipush 255
iand
bipush 8
ishl
ior
iload 2
sipush 255
iand
ior
istore 2
goto L4
L9:
iload 4
ifeq L13
iload 3
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
isub
iload 9
iconst_1
isub
if_icmpne L14
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
ifle L15
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tail [B
astore 1
iconst_1
istore 6
aload 1
iconst_0
baload
istore 7
L16:
iload 7
sipush 255
iand
iconst_4
ishl
istore 7
aload 0
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
iload 6
isub
putfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
iload 2
iconst_1
iadd
istore 8
aload 11
iload 2
aload 10
iload 7
bipush 6
ishr
bipush 63
iand
baload
bastore
iload 8
iconst_1
iadd
istore 6
aload 11
iload 8
aload 10
iload 7
bipush 63
iand
baload
bastore
iload 6
istore 2
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_padding Z
ifeq L17
iload 6
iconst_1
iadd
istore 7
aload 11
iload 6
bipush 61
bastore
iload 7
iconst_1
iadd
istore 2
aload 11
iload 7
bipush 61
bastore
L17:
iload 2
istore 6
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_newline Z
ifeq L18
iload 2
istore 6
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_cr Z
ifeq L19
aload 11
iload 2
bipush 13
bastore
iload 2
iconst_1
iadd
istore 6
L19:
aload 11
iload 6
bipush 10
bastore
iload 6
iconst_1
iadd
istore 6
L18:
iload 3
istore 7
L20:
getstatic com/ta/utdid2/android/utils/Base64$Encoder/$assertionsDisabled Z
ifne L21
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
ifeq L21
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L15:
aload 1
iload 3
baload
istore 7
iload 3
iconst_1
iadd
istore 3
iconst_0
istore 6
goto L16
L14:
iload 3
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
isub
iload 9
iconst_2
isub
if_icmpne L22
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
iconst_1
if_icmple L23
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tail [B
astore 12
iconst_1
istore 6
aload 12
iconst_0
baload
istore 7
L24:
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
ifle L25
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tail [B
iload 6
baload
istore 8
iload 6
iconst_1
iadd
istore 6
L26:
iload 8
sipush 255
iand
iconst_2
ishl
iload 7
sipush 255
iand
bipush 10
ishl
ior
istore 7
aload 0
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
iload 6
isub
putfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
iload 2
iconst_1
iadd
istore 6
aload 11
iload 2
aload 10
iload 7
bipush 12
ishr
bipush 63
iand
baload
bastore
iload 6
iconst_1
iadd
istore 8
aload 11
iload 6
aload 10
iload 7
bipush 6
ishr
bipush 63
iand
baload
bastore
iload 8
iconst_1
iadd
istore 2
aload 11
iload 8
aload 10
iload 7
bipush 63
iand
baload
bastore
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_padding Z
ifeq L27
iload 2
iconst_1
iadd
istore 6
aload 11
iload 2
bipush 61
bastore
iload 6
istore 2
L28:
iload 2
istore 6
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_newline Z
ifeq L29
iload 2
istore 6
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_cr Z
ifeq L30
aload 11
iload 2
bipush 13
bastore
iload 2
iconst_1
iadd
istore 6
L30:
aload 11
iload 6
bipush 10
bastore
iload 6
iconst_1
iadd
istore 6
L29:
iload 3
istore 7
goto L20
L23:
aload 1
iload 3
baload
istore 7
iload 3
iconst_1
iadd
istore 3
iconst_0
istore 6
goto L24
L25:
aload 1
iload 3
baload
istore 8
iload 3
iconst_1
iadd
istore 3
goto L26
L22:
iload 3
istore 7
iload 2
istore 6
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_newline Z
ifeq L20
iload 3
istore 7
iload 2
istore 6
iload 2
ifle L20
iload 3
istore 7
iload 2
istore 6
iload 5
bipush 19
if_icmpeq L20
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_cr Z
ifeq L31
iload 2
iconst_1
iadd
istore 6
aload 11
iload 2
bipush 13
bastore
iload 6
istore 2
L32:
iload 2
iconst_1
iadd
istore 6
aload 11
iload 2
bipush 10
bastore
iload 3
istore 7
goto L20
L21:
iload 6
istore 8
getstatic com/ta/utdid2/android/utils/Base64$Encoder/$assertionsDisabled Z
ifne L33
iload 6
istore 8
iload 7
iload 9
if_icmpeq L33
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L13:
iload 3
iload 9
iconst_1
isub
if_icmpne L34
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tail [B
astore 10
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
istore 6
aload 0
iload 6
iconst_1
iadd
putfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
aload 10
iload 6
aload 1
iload 3
baload
bastore
iload 2
istore 8
L33:
aload 0
iload 8
putfield com/ta/utdid2/android/utils/Base64$Encoder/op I
aload 0
iload 5
putfield com/ta/utdid2/android/utils/Base64$Encoder/count I
iconst_1
ireturn
L34:
iload 2
istore 8
iload 3
iload 9
iconst_2
isub
if_icmpne L33
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tail [B
astore 10
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
istore 6
aload 0
iload 6
iconst_1
iadd
putfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
aload 10
iload 6
aload 1
iload 3
baload
bastore
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tail [B
astore 10
aload 0
getfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
istore 6
aload 0
iload 6
iconst_1
iadd
putfield com/ta/utdid2/android/utils/Base64$Encoder/tailLen I
aload 10
iload 6
aload 1
iload 3
iconst_1
iadd
baload
bastore
iload 2
istore 8
goto L33
L31:
goto L32
L27:
goto L28
L11:
goto L12
L10:
goto L8
L6:
iconst_4
istore 2
goto L8
L5:
iload 6
istore 2
goto L8
.limit locals 13
.limit stack 5
.end method
