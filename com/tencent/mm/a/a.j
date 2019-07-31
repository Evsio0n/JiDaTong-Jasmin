.bytecode 50.0
.class public final synchronized com/tencent/mm/a/a
.super java/lang/Object

.method public static final a([B)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
iconst_0
istore 1
bipush 16
newarray char
astore 6
aload 6
dup
iconst_0
ldc_w 48
castore
dup
iconst_1
ldc_w 49
castore
dup
iconst_2
ldc_w 50
castore
dup
iconst_3
ldc_w 51
castore
dup
iconst_4
ldc_w 52
castore
dup
iconst_5
ldc_w 53
castore
dup
bipush 6
ldc_w 54
castore
dup
bipush 7
ldc_w 55
castore
dup
bipush 8
ldc_w 56
castore
dup
bipush 9
ldc_w 57
castore
dup
bipush 10
ldc_w 97
castore
dup
bipush 11
ldc_w 98
castore
dup
bipush 12
ldc_w 99
castore
dup
bipush 13
ldc_w 100
castore
dup
bipush 14
ldc_w 101
castore
dup
bipush 15
ldc_w 102
castore
pop
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 7
aload 7
aload 0
invokevirtual java/security/MessageDigest/update([B)V
aload 7
invokevirtual java/security/MessageDigest/digest()[B
astore 0
aload 0
arraylength
istore 3
iload 3
iconst_2
imul
newarray char
astore 7
L1:
iconst_0
istore 2
goto L5
L3:
new java/lang/String
dup
aload 7
invokespecial java/lang/String/<init>([C)V
astore 0
L4:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
L5:
iload 1
iload 3
if_icmpge L3
aload 0
iload 1
baload
istore 4
iload 2
iconst_1
iadd
istore 5
aload 7
iload 2
aload 6
iload 4
iconst_4
iushr
bipush 15
iand
caload
castore
iload 5
iconst_1
iadd
istore 2
aload 7
iload 5
aload 6
iload 4
bipush 15
iand
caload
castore
iload 1
iconst_1
iadd
istore 1
goto L5
.limit locals 8
.limit stack 5
.end method
