.bytecode 50.0
.class public synchronized com/ta/utdid2/android/utils/Base64
.super java/lang/Object
.inner class static abstract Coder inner com/ta/utdid2/android/utils/Base64$Coder outer com/ta/utdid2/android/utils/Base64
.inner class static Decoder inner com/ta/utdid2/android/utils/Base64$Decoder outer com/ta/utdid2/android/utils/Base64
.inner class static Encoder inner com/ta/utdid2/android/utils/Base64$Encoder outer com/ta/utdid2/android/utils/Base64

.field static final synthetic '$assertionsDisabled' Z

.field public static final 'CRLF' I = 4


.field public static final 'DEFAULT' I = 0


.field public static final 'NO_CLOSE' I = 16


.field public static final 'NO_PADDING' I = 1


.field public static final 'NO_WRAP' I = 2


.field public static final 'URL_SAFE' I = 8


.method static <clinit>()V
ldc com/ta/utdid2/android/utils/Base64
invokevirtual java/lang/Class/desiredAssertionStatus()Z
ifne L0
iconst_1
istore 0
L1:
iload 0
putstatic com/ta/utdid2/android/utils/Base64/$assertionsDisabled Z
return
L0:
iconst_0
istore 0
goto L1
.limit locals 1
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static decode(Ljava/lang/String;I)[B
aload 0
invokevirtual java/lang/String/getBytes()[B
iload 1
invokestatic com/ta/utdid2/android/utils/Base64/decode([BI)[B
areturn
.limit locals 2
.limit stack 2
.end method

.method public static decode([BI)[B
aload 0
iconst_0
aload 0
arraylength
iload 1
invokestatic com/ta/utdid2/android/utils/Base64/decode([BIII)[B
areturn
.limit locals 2
.limit stack 4
.end method

.method public static decode([BIII)[B
new com/ta/utdid2/android/utils/Base64$Decoder
dup
iload 3
iload 2
iconst_3
imul
iconst_4
idiv
newarray byte
invokespecial com/ta/utdid2/android/utils/Base64$Decoder/<init>(I[B)V
astore 4
aload 4
aload 0
iload 1
iload 2
iconst_1
invokevirtual com/ta/utdid2/android/utils/Base64$Decoder/process([BIIZ)Z
ifne L0
new java/lang/IllegalArgumentException
dup
ldc "bad base-64"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 4
getfield com/ta/utdid2/android/utils/Base64$Decoder/op I
aload 4
getfield com/ta/utdid2/android/utils/Base64$Decoder/output [B
arraylength
if_icmpne L1
aload 4
getfield com/ta/utdid2/android/utils/Base64$Decoder/output [B
areturn
L1:
aload 4
getfield com/ta/utdid2/android/utils/Base64$Decoder/op I
newarray byte
astore 0
aload 4
getfield com/ta/utdid2/android/utils/Base64$Decoder/output [B
iconst_0
aload 0
iconst_0
aload 4
getfield com/ta/utdid2/android/utils/Base64$Decoder/op I
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
areturn
.limit locals 5
.limit stack 5
.end method

.method public static encode([BI)[B
aload 0
iconst_0
aload 0
arraylength
iload 1
invokestatic com/ta/utdid2/android/utils/Base64/encode([BIII)[B
areturn
.limit locals 2
.limit stack 4
.end method

.method public static encode([BIII)[B
new com/ta/utdid2/android/utils/Base64$Encoder
dup
iload 3
aconst_null
invokespecial com/ta/utdid2/android/utils/Base64$Encoder/<init>(I[B)V
astore 6
iload 2
iconst_3
idiv
iconst_4
imul
istore 4
aload 6
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_padding Z
ifeq L0
iload 4
istore 3
iload 2
iconst_3
irem
ifle L1
iload 4
iconst_4
iadd
istore 3
L1:
iload 3
istore 4
aload 6
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_newline Z
ifeq L2
iload 3
istore 4
iload 2
ifle L2
iload 2
iconst_1
isub
bipush 57
idiv
istore 5
aload 6
getfield com/ta/utdid2/android/utils/Base64$Encoder/do_cr Z
ifeq L3
iconst_2
istore 4
L4:
iload 3
iload 4
iload 5
iconst_1
iadd
imul
iadd
istore 4
L2:
aload 6
iload 4
newarray byte
putfield com/ta/utdid2/android/utils/Base64$Encoder/output [B
aload 6
aload 0
iload 1
iload 2
iconst_1
invokevirtual com/ta/utdid2/android/utils/Base64$Encoder/process([BIIZ)Z
pop
getstatic com/ta/utdid2/android/utils/Base64/$assertionsDisabled Z
ifne L5
aload 6
getfield com/ta/utdid2/android/utils/Base64$Encoder/op I
iload 4
if_icmpeq L5
new java/lang/AssertionError
dup
invokespecial java/lang/AssertionError/<init>()V
athrow
L0:
iload 4
istore 3
iload 2
iconst_3
irem
tableswitch 0
L1
L6
L7
default : L8
L8:
iload 4
istore 3
goto L1
L6:
iload 4
iconst_2
iadd
istore 3
goto L1
L7:
iload 4
iconst_3
iadd
istore 3
goto L1
L3:
iconst_1
istore 4
goto L4
L5:
aload 6
getfield com/ta/utdid2/android/utils/Base64$Encoder/output [B
areturn
.limit locals 7
.limit stack 5
.end method

.method public static encodeToString([BI)Ljava/lang/String;
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
L0:
new java/lang/String
dup
aload 0
iload 1
invokestatic com/ta/utdid2/android/utils/Base64/encode([BI)[B
ldc "US-ASCII"
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
astore 0
L1:
aload 0
areturn
L2:
astore 0
new java/lang/AssertionError
dup
aload 0
invokespecial java/lang/AssertionError/<init>(Ljava/lang/Object;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
L0:
new java/lang/String
dup
aload 0
iload 1
iload 2
iload 3
invokestatic com/ta/utdid2/android/utils/Base64/encode([BIII)[B
ldc "US-ASCII"
invokespecial java/lang/String/<init>([BLjava/lang/String;)V
astore 0
L1:
aload 0
areturn
L2:
astore 0
new java/lang/AssertionError
dup
aload 0
invokespecial java/lang/AssertionError/<init>(Ljava/lang/Object;)V
athrow
.limit locals 4
.limit stack 6
.end method
