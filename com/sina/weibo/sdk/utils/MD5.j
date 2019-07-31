.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/utils/MD5
.super java/lang/Object

.field private static final 'hexDigits' [C

.method static <clinit>()V
bipush 16
newarray char
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
putstatic com/sina/weibo/sdk/utils/MD5/hexDigits [C
return
.limit locals 0
.limit stack 4
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static hexdigest(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual java/lang/String/getBytes()[B
invokestatic com/sina/weibo/sdk/utils/MD5/hexdigest([B)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public static hexdigest([B)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
L0:
ldc "MD5"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 5
aload 5
aload 0
invokevirtual java/security/MessageDigest/update([B)V
aload 5
invokevirtual java/security/MessageDigest/digest()[B
astore 0
bipush 32
newarray char
astore 5
L1:
iconst_0
istore 1
iconst_0
istore 2
L9:
iload 1
bipush 16
if_icmplt L4
L3:
new java/lang/String
dup
aload 5
invokespecial java/lang/String/<init>([C)V
areturn
L4:
aload 0
iload 1
baload
istore 3
iload 2
iconst_1
iadd
istore 4
L5:
aload 5
iload 2
getstatic com/sina/weibo/sdk/utils/MD5/hexDigits [C
iload 3
iconst_4
iushr
bipush 15
iand
caload
castore
L6:
iload 4
iconst_1
iadd
istore 2
L7:
aload 5
iload 4
getstatic com/sina/weibo/sdk/utils/MD5/hexDigits [C
iload 3
bipush 15
iand
caload
castore
L8:
iload 1
iconst_1
iadd
istore 1
goto L9
L2:
astore 0
aconst_null
areturn
.limit locals 6
.limit stack 5
.end method

.method public static main([Ljava/lang/String;)V
getstatic java/lang/System/out Ljava/io/PrintStream;
ldc "c"
invokestatic com/sina/weibo/sdk/utils/MD5/hexdigest(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method
