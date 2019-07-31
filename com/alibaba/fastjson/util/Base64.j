.bytecode 50.0
.class public synchronized com/alibaba/fastjson/util/Base64
.super java/lang/Object

.field public static final 'CA' [C

.field public static final 'IA' [I

.method static <clinit>()V
ldc "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
invokevirtual java/lang/String/toCharArray()[C
putstatic com/alibaba/fastjson/util/Base64/CA [C
sipush 256
newarray int
putstatic com/alibaba/fastjson/util/Base64/IA [I
getstatic com/alibaba/fastjson/util/Base64/IA [I
iconst_m1
invokestatic java/util/Arrays/fill([II)V
iconst_0
istore 0
getstatic com/alibaba/fastjson/util/Base64/CA [C
arraylength
istore 1
L0:
iload 0
iload 1
if_icmpge L1
getstatic com/alibaba/fastjson/util/Base64/IA [I
getstatic com/alibaba/fastjson/util/Base64/CA [C
iload 0
caload
iload 0
iastore
iload 0
iconst_1
iadd
istore 0
goto L0
L1:
getstatic com/alibaba/fastjson/util/Base64/IA [I
bipush 61
iconst_0
iastore
return
.limit locals 2
.limit stack 3
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static final decodeFast(Ljava/lang/String;)[B
aload 0
invokevirtual java/lang/String/length()I
istore 4
iload 4
ifne L0
iconst_0
newarray byte
areturn
L0:
iconst_0
istore 1
iload 4
iconst_1
isub
istore 2
L1:
iload 2
istore 5
iload 1
iload 2
if_icmpge L2
iload 2
istore 5
getstatic com/alibaba/fastjson/util/Base64/IA [I
aload 0
iload 1
invokevirtual java/lang/String/charAt(I)C
sipush 255
iand
iaload
ifge L2
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
iload 5
ifle L3
getstatic com/alibaba/fastjson/util/Base64/IA [I
aload 0
iload 5
invokevirtual java/lang/String/charAt(I)C
sipush 255
iand
iaload
ifge L3
iload 5
iconst_1
isub
istore 5
goto L2
L3:
aload 0
iload 5
invokevirtual java/lang/String/charAt(I)C
bipush 61
if_icmpne L4
aload 0
iload 5
iconst_1
isub
invokevirtual java/lang/String/charAt(I)C
bipush 61
if_icmpne L5
iconst_2
istore 3
L6:
iload 5
iload 1
isub
iconst_1
iadd
istore 7
iload 4
bipush 76
if_icmple L7
aload 0
bipush 76
invokevirtual java/lang/String/charAt(I)C
bipush 13
if_icmpne L8
iload 7
bipush 78
idiv
istore 2
L9:
iload 2
iconst_1
ishl
istore 6
L10:
iload 7
iload 6
isub
bipush 6
imul
iconst_3
ishr
iload 3
isub
istore 8
iload 8
newarray byte
astore 13
iconst_0
istore 4
iload 8
iconst_3
idiv
istore 9
iconst_0
istore 7
iload 1
istore 2
iload 7
istore 1
L11:
iload 1
iload 9
iconst_3
imul
if_icmpge L12
getstatic com/alibaba/fastjson/util/Base64/IA [I
astore 14
iload 2
iconst_1
iadd
istore 10
aload 14
aload 0
iload 2
invokevirtual java/lang/String/charAt(I)C
iaload
istore 7
getstatic com/alibaba/fastjson/util/Base64/IA [I
astore 14
iload 10
iconst_1
iadd
istore 2
aload 14
aload 0
iload 10
invokevirtual java/lang/String/charAt(I)C
iaload
istore 10
getstatic com/alibaba/fastjson/util/Base64/IA [I
astore 14
iload 2
iconst_1
iadd
istore 11
aload 14
aload 0
iload 2
invokevirtual java/lang/String/charAt(I)C
iaload
istore 12
getstatic com/alibaba/fastjson/util/Base64/IA [I
astore 14
iload 11
iconst_1
iadd
istore 2
iload 7
bipush 18
ishl
iload 10
bipush 12
ishl
ior
iload 12
bipush 6
ishl
ior
aload 14
aload 0
iload 11
invokevirtual java/lang/String/charAt(I)C
iaload
ior
istore 10
iload 1
iconst_1
iadd
istore 11
aload 13
iload 1
iload 10
bipush 16
ishr
i2b
bastore
iload 11
iconst_1
iadd
istore 7
aload 13
iload 11
iload 10
bipush 8
ishr
i2b
bastore
aload 13
iload 7
iload 10
i2b
bastore
iload 4
istore 1
iload 6
ifle L13
iload 4
iconst_1
iadd
istore 4
iload 4
istore 1
iload 4
bipush 19
if_icmpne L13
iload 2
iconst_2
iadd
istore 1
iconst_0
istore 4
L14:
iload 7
iconst_1
iadd
istore 7
iload 1
istore 2
iload 7
istore 1
goto L11
L5:
iconst_1
istore 3
goto L6
L4:
iconst_0
istore 3
goto L6
L8:
iconst_0
istore 2
goto L9
L7:
iconst_0
istore 6
goto L10
L12:
iload 1
istore 6
iload 2
istore 6
iload 1
iload 8
if_icmpge L15
iconst_0
istore 4
iconst_0
istore 6
L16:
iload 2
iload 5
iload 3
isub
if_icmpgt L17
iload 4
getstatic com/alibaba/fastjson/util/Base64/IA [I
aload 0
iload 2
invokevirtual java/lang/String/charAt(I)C
iaload
bipush 18
iload 6
bipush 6
imul
isub
ishl
ior
istore 4
iload 6
iconst_1
iadd
istore 6
iload 2
iconst_1
iadd
istore 2
goto L16
L17:
bipush 16
istore 3
L18:
iload 1
istore 6
iload 2
istore 6
iload 1
iload 8
if_icmpge L15
aload 13
iload 1
iload 4
iload 3
ishr
i2b
bastore
iload 3
bipush 8
isub
istore 3
iload 1
iconst_1
iadd
istore 1
goto L18
L15:
aload 13
areturn
L13:
iload 1
istore 4
iload 2
istore 1
goto L14
.limit locals 15
.limit stack 5
.end method

.method public static final decodeFast(Ljava/lang/String;II)[B
iload 2
ifne L0
iconst_0
newarray byte
areturn
L0:
iload 1
istore 3
iload 1
iload 2
iadd
iconst_1
isub
istore 4
iload 3
istore 1
L1:
iload 4
istore 5
iload 1
iload 4
if_icmpge L2
iload 4
istore 5
getstatic com/alibaba/fastjson/util/Base64/IA [I
aload 0
iload 1
invokevirtual java/lang/String/charAt(I)C
iaload
ifge L2
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
iload 5
ifle L3
getstatic com/alibaba/fastjson/util/Base64/IA [I
aload 0
iload 5
invokevirtual java/lang/String/charAt(I)C
iaload
ifge L3
iload 5
iconst_1
isub
istore 5
goto L2
L3:
aload 0
iload 5
invokevirtual java/lang/String/charAt(I)C
bipush 61
if_icmpne L4
aload 0
iload 5
iconst_1
isub
invokevirtual java/lang/String/charAt(I)C
bipush 61
if_icmpne L5
iconst_2
istore 3
L6:
iload 5
iload 1
isub
iconst_1
iadd
istore 4
iload 2
bipush 76
if_icmple L7
aload 0
bipush 76
invokevirtual java/lang/String/charAt(I)C
bipush 13
if_icmpne L8
iload 4
bipush 78
idiv
istore 2
L9:
iload 2
iconst_1
ishl
istore 6
L10:
iload 4
iload 6
isub
bipush 6
imul
iconst_3
ishr
iload 3
isub
istore 8
iload 8
newarray byte
astore 13
iconst_0
istore 4
iload 8
iconst_3
idiv
istore 9
iconst_0
istore 7
iload 1
istore 2
iload 7
istore 1
L11:
iload 1
iload 9
iconst_3
imul
if_icmpge L12
getstatic com/alibaba/fastjson/util/Base64/IA [I
astore 14
iload 2
iconst_1
iadd
istore 10
aload 14
aload 0
iload 2
invokevirtual java/lang/String/charAt(I)C
iaload
istore 7
getstatic com/alibaba/fastjson/util/Base64/IA [I
astore 14
iload 10
iconst_1
iadd
istore 2
aload 14
aload 0
iload 10
invokevirtual java/lang/String/charAt(I)C
iaload
istore 10
getstatic com/alibaba/fastjson/util/Base64/IA [I
astore 14
iload 2
iconst_1
iadd
istore 11
aload 14
aload 0
iload 2
invokevirtual java/lang/String/charAt(I)C
iaload
istore 12
getstatic com/alibaba/fastjson/util/Base64/IA [I
astore 14
iload 11
iconst_1
iadd
istore 2
iload 7
bipush 18
ishl
iload 10
bipush 12
ishl
ior
iload 12
bipush 6
ishl
ior
aload 14
aload 0
iload 11
invokevirtual java/lang/String/charAt(I)C
iaload
ior
istore 10
iload 1
iconst_1
iadd
istore 11
aload 13
iload 1
iload 10
bipush 16
ishr
i2b
bastore
iload 11
iconst_1
iadd
istore 7
aload 13
iload 11
iload 10
bipush 8
ishr
i2b
bastore
aload 13
iload 7
iload 10
i2b
bastore
iload 4
istore 1
iload 6
ifle L13
iload 4
iconst_1
iadd
istore 4
iload 4
istore 1
iload 4
bipush 19
if_icmpne L13
iload 2
iconst_2
iadd
istore 1
iconst_0
istore 4
L14:
iload 7
iconst_1
iadd
istore 7
iload 1
istore 2
iload 7
istore 1
goto L11
L5:
iconst_1
istore 3
goto L6
L4:
iconst_0
istore 3
goto L6
L8:
iconst_0
istore 2
goto L9
L7:
iconst_0
istore 6
goto L10
L12:
iload 1
istore 6
iload 2
istore 6
iload 1
iload 8
if_icmpge L15
iconst_0
istore 4
iconst_0
istore 6
L16:
iload 2
iload 5
iload 3
isub
if_icmpgt L17
iload 4
getstatic com/alibaba/fastjson/util/Base64/IA [I
aload 0
iload 2
invokevirtual java/lang/String/charAt(I)C
iaload
bipush 18
iload 6
bipush 6
imul
isub
ishl
ior
istore 4
iload 6
iconst_1
iadd
istore 6
iload 2
iconst_1
iadd
istore 2
goto L16
L17:
bipush 16
istore 3
L18:
iload 1
istore 6
iload 2
istore 6
iload 1
iload 8
if_icmpge L15
aload 13
iload 1
iload 4
iload 3
ishr
i2b
bastore
iload 3
bipush 8
isub
istore 3
iload 1
iconst_1
iadd
istore 1
goto L18
L15:
aload 13
areturn
L13:
iload 1
istore 4
iload 2
istore 1
goto L14
.limit locals 15
.limit stack 5
.end method

.method public static final decodeFast([CII)[B
iload 2
ifne L0
iconst_0
newarray byte
areturn
L0:
iload 1
istore 3
iload 1
iload 2
iadd
iconst_1
isub
istore 4
iload 3
istore 1
L1:
iload 4
istore 5
iload 1
iload 4
if_icmpge L2
iload 4
istore 5
getstatic com/alibaba/fastjson/util/Base64/IA [I
aload 0
iload 1
caload
iaload
ifge L2
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
iload 5
ifle L3
getstatic com/alibaba/fastjson/util/Base64/IA [I
aload 0
iload 5
caload
iaload
ifge L3
iload 5
iconst_1
isub
istore 5
goto L2
L3:
aload 0
iload 5
caload
bipush 61
if_icmpne L4
aload 0
iload 5
iconst_1
isub
caload
bipush 61
if_icmpne L5
iconst_2
istore 3
L6:
iload 5
iload 1
isub
iconst_1
iadd
istore 4
iload 2
bipush 76
if_icmple L7
aload 0
bipush 76
caload
bipush 13
if_icmpne L8
iload 4
bipush 78
idiv
istore 2
L9:
iload 2
iconst_1
ishl
istore 6
L10:
iload 4
iload 6
isub
bipush 6
imul
iconst_3
ishr
iload 3
isub
istore 8
iload 8
newarray byte
astore 13
iconst_0
istore 4
iload 8
iconst_3
idiv
istore 9
iconst_0
istore 7
iload 1
istore 2
iload 7
istore 1
L11:
iload 1
iload 9
iconst_3
imul
if_icmpge L12
getstatic com/alibaba/fastjson/util/Base64/IA [I
astore 14
iload 2
iconst_1
iadd
istore 10
aload 14
aload 0
iload 2
caload
iaload
istore 7
getstatic com/alibaba/fastjson/util/Base64/IA [I
astore 14
iload 10
iconst_1
iadd
istore 2
aload 14
aload 0
iload 10
caload
iaload
istore 10
getstatic com/alibaba/fastjson/util/Base64/IA [I
astore 14
iload 2
iconst_1
iadd
istore 11
aload 14
aload 0
iload 2
caload
iaload
istore 12
getstatic com/alibaba/fastjson/util/Base64/IA [I
astore 14
iload 11
iconst_1
iadd
istore 2
iload 7
bipush 18
ishl
iload 10
bipush 12
ishl
ior
iload 12
bipush 6
ishl
ior
aload 14
aload 0
iload 11
caload
iaload
ior
istore 10
iload 1
iconst_1
iadd
istore 11
aload 13
iload 1
iload 10
bipush 16
ishr
i2b
bastore
iload 11
iconst_1
iadd
istore 7
aload 13
iload 11
iload 10
bipush 8
ishr
i2b
bastore
aload 13
iload 7
iload 10
i2b
bastore
iload 4
istore 1
iload 6
ifle L13
iload 4
iconst_1
iadd
istore 4
iload 4
istore 1
iload 4
bipush 19
if_icmpne L13
iload 2
iconst_2
iadd
istore 1
iconst_0
istore 4
L14:
iload 7
iconst_1
iadd
istore 7
iload 1
istore 2
iload 7
istore 1
goto L11
L5:
iconst_1
istore 3
goto L6
L4:
iconst_0
istore 3
goto L6
L8:
iconst_0
istore 2
goto L9
L7:
iconst_0
istore 6
goto L10
L12:
iload 1
istore 6
iload 2
istore 6
iload 1
iload 8
if_icmpge L15
iconst_0
istore 4
iconst_0
istore 6
L16:
iload 2
iload 5
iload 3
isub
if_icmpgt L17
iload 4
getstatic com/alibaba/fastjson/util/Base64/IA [I
aload 0
iload 2
caload
iaload
bipush 18
iload 6
bipush 6
imul
isub
ishl
ior
istore 4
iload 6
iconst_1
iadd
istore 6
iload 2
iconst_1
iadd
istore 2
goto L16
L17:
bipush 16
istore 3
L18:
iload 1
istore 6
iload 2
istore 6
iload 1
iload 8
if_icmpge L15
aload 13
iload 1
iload 4
iload 3
ishr
i2b
bastore
iload 3
bipush 8
isub
istore 3
iload 1
iconst_1
iadd
istore 1
goto L18
L15:
aload 13
areturn
L13:
iload 1
istore 4
iload 2
istore 1
goto L14
.limit locals 15
.limit stack 5
.end method
