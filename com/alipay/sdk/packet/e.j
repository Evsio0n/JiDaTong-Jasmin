.bytecode 50.0
.class public final synchronized com/alipay/sdk/packet/e
.super java/lang/Object

.field private 'a' Z

.field private 'b' Ljava/lang/String;

.method public <init>(Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/alipay/sdk/packet/e/a Z
aload 0
invokestatic com/alipay/sdk/util/i/c()Ljava/lang/String;
putfield com/alipay/sdk/packet/e/b Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private static a(Ljava/lang/String;)I
aload 0
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private static a(I)Ljava/lang/String;
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
ldc "%05d"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 6
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[B
aload 0
aload 1
invokestatic com/alipay/sdk/encrypt/d/a(Ljava/lang/String;Ljava/lang/String;)[B
areturn
.limit locals 2
.limit stack 2
.end method

.method private static a(Ljava/lang/String;[B)[B
aload 0
aload 1
invokestatic com/alipay/sdk/encrypt/e/a(Ljava/lang/String;[B)[B
areturn
.limit locals 2
.limit stack 2
.end method

.method private static transient a([[B)[B
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/lang/Exception from L4 to L7 using L8
.catch all from L4 to L7 using L9
.catch java/lang/Exception from L10 to L11 using L8
.catch all from L10 to L11 using L9
.catch java/lang/Exception from L11 to L12 using L13
.catch java/lang/Exception from L12 to L14 using L15
.catch java/lang/Exception from L16 to L17 using L18
.catch java/lang/Exception from L19 to L20 using L21
.catch java/lang/Exception from L22 to L23 using L24
.catch java/lang/Exception from L25 to L26 using L27
iconst_0
istore 1
aload 0
ifnull L28
aload 0
arraylength
ifne L0
L28:
aconst_null
areturn
L0:
new java/io/ByteArrayOutputStream
dup
invokespecial java/io/ByteArrayOutputStream/<init>()V
astore 4
L1:
new java/io/DataOutputStream
dup
aload 4
invokespecial java/io/DataOutputStream/<init>(Ljava/io/OutputStream;)V
astore 3
L4:
iload 1
aload 0
arraylength
if_icmpge L10
aload 0
iload 1
aaload
arraylength
istore 2
aload 3
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
ldc "%05d"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
invokevirtual java/io/DataOutputStream/write([B)V
aload 3
aload 0
iload 1
aaload
invokevirtual java/io/DataOutputStream/write([B)V
L7:
iload 1
iconst_1
iadd
istore 1
goto L4
L10:
aload 3
invokevirtual java/io/DataOutputStream/flush()V
aload 4
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
astore 0
L11:
aload 4
invokevirtual java/io/ByteArrayOutputStream/close()V
L12:
aload 3
invokevirtual java/io/DataOutputStream/close()V
L14:
aload 0
areturn
L15:
astore 3
aload 0
areturn
L2:
astore 0
aconst_null
astore 0
aconst_null
astore 4
L29:
aload 4
ifnull L17
L16:
aload 4
invokevirtual java/io/ByteArrayOutputStream/close()V
L17:
aload 0
ifnull L28
L19:
aload 0
invokevirtual java/io/DataOutputStream/close()V
L20:
aconst_null
areturn
L21:
astore 0
aconst_null
areturn
L3:
astore 0
aconst_null
astore 4
aconst_null
astore 3
L30:
aload 4
ifnull L23
L22:
aload 4
invokevirtual java/io/ByteArrayOutputStream/close()V
L23:
aload 3
ifnull L26
L25:
aload 3
invokevirtual java/io/DataOutputStream/close()V
L26:
aload 0
athrow
L13:
astore 4
goto L12
L18:
astore 3
goto L17
L24:
astore 4
goto L23
L27:
astore 3
goto L26
L6:
astore 0
aconst_null
astore 3
goto L30
L9:
astore 0
goto L30
L5:
astore 0
aconst_null
astore 0
goto L29
L8:
astore 0
aload 3
astore 0
goto L29
.limit locals 5
.limit stack 7
.end method

.method private static b(Ljava/lang/String;[B)[B
aload 0
aload 1
invokestatic com/alipay/sdk/encrypt/e/b(Ljava/lang/String;[B)[B
areturn
.limit locals 2
.limit stack 2
.end method

.method public final a(Lcom/alipay/sdk/packet/c;)Lcom/alipay/sdk/packet/b;
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Exception from L1 to L4 using L5
.catch all from L1 to L4 using L6
.catch java/lang/Exception from L4 to L7 using L8
.catch all from L4 to L7 using L6
.catch java/lang/Exception from L9 to L10 using L8
.catch all from L9 to L10 using L6
.catch java/lang/Exception from L11 to L12 using L8
.catch all from L11 to L12 using L6
.catch java/lang/Exception from L12 to L13 using L8
.catch all from L12 to L13 using L6
.catch java/lang/Exception from L13 to L14 using L8
.catch all from L13 to L14 using L6
.catch java/lang/Exception from L14 to L15 using L16
.catch java/lang/Exception from L17 to L18 using L19
.catch java/lang/Exception from L20 to L21 using L22
L0:
new java/io/ByteArrayInputStream
dup
aload 1
getfield com/alipay/sdk/packet/c/b [B
invokespecial java/io/ByteArrayInputStream/<init>([B)V
astore 4
L1:
iconst_5
newarray byte
astore 3
aload 4
aload 3
invokevirtual java/io/ByteArrayInputStream/read([B)I
pop
new java/lang/String
dup
aload 3
invokespecial java/lang/String/<init>([B)V
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
newarray byte
astore 3
aload 4
aload 3
invokevirtual java/io/ByteArrayInputStream/read([B)I
pop
new java/lang/String
dup
aload 3
invokespecial java/lang/String/<init>([B)V
astore 5
L4:
iconst_5
newarray byte
astore 3
aload 4
aload 3
invokevirtual java/io/ByteArrayInputStream/read([B)I
pop
new java/lang/String
dup
aload 3
invokespecial java/lang/String/<init>([B)V
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
L7:
iload 2
ifle L23
L9:
iload 2
newarray byte
astore 6
aload 4
aload 6
invokevirtual java/io/ByteArrayInputStream/read([B)I
pop
L10:
aload 6
astore 3
L11:
aload 0
getfield com/alipay/sdk/packet/e/a Z
ifeq L12
aload 0
getfield com/alipay/sdk/packet/e/b Ljava/lang/String;
aload 6
invokestatic com/alipay/sdk/encrypt/e/b(Ljava/lang/String;[B)[B
astore 3
L12:
aload 1
getfield com/alipay/sdk/packet/c/a Z
ifeq L24
aload 3
invokestatic com/alipay/sdk/encrypt/c/b([B)[B
astore 1
L13:
new java/lang/String
dup
aload 1
invokespecial java/lang/String/<init>([B)V
astore 1
L14:
aload 4
invokevirtual java/io/ByteArrayInputStream/close()V
L15:
aload 5
astore 3
L25:
aload 3
ifnonnull L26
aload 1
ifnonnull L26
aconst_null
areturn
L16:
astore 3
aload 5
astore 3
goto L25
L2:
astore 1
aconst_null
astore 4
aconst_null
astore 3
L27:
aload 4
ifnull L28
L17:
aload 4
invokevirtual java/io/ByteArrayInputStream/close()V
L18:
aconst_null
astore 1
goto L25
L19:
astore 1
aconst_null
astore 1
goto L25
L3:
astore 1
aconst_null
astore 4
L29:
aload 4
ifnull L21
L20:
aload 4
invokevirtual java/io/ByteArrayInputStream/close()V
L21:
aload 1
athrow
L26:
new com/alipay/sdk/packet/b
dup
aload 3
aload 1
invokespecial com/alipay/sdk/packet/b/<init>(Ljava/lang/String;Ljava/lang/String;)V
areturn
L22:
astore 3
goto L21
L6:
astore 1
goto L29
L5:
astore 1
aconst_null
astore 3
goto L27
L8:
astore 1
aload 5
astore 3
goto L27
L28:
aconst_null
astore 1
goto L25
L24:
aload 3
astore 1
goto L13
L23:
aconst_null
astore 1
goto L14
.limit locals 7
.limit stack 4
.end method

.method public final a(Lcom/alipay/sdk/packet/b;Z)Lcom/alipay/sdk/packet/c;
.catch java/lang/Exception from L0 to L1 using L2
aload 1
ifnonnull L3
aconst_null
areturn
L3:
aload 1
getfield com/alipay/sdk/packet/b/a Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
astore 5
aload 1
getfield com/alipay/sdk/packet/b/b Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
astore 4
aload 4
astore 1
iload 2
istore 3
iload 2
ifeq L4
L0:
aload 4
invokestatic com/alipay/sdk/encrypt/c/a([B)[B
astore 1
L1:
iload 2
istore 3
L4:
aload 0
getfield com/alipay/sdk/packet/e/a Z
ifeq L5
iconst_3
anewarray [B
dup
iconst_0
aload 5
aastore
dup
iconst_1
aload 0
getfield com/alipay/sdk/packet/e/b Ljava/lang/String;
getstatic com/alipay/sdk/cons/a/b Ljava/lang/String;
invokestatic com/alipay/sdk/encrypt/d/a(Ljava/lang/String;Ljava/lang/String;)[B
aastore
dup
iconst_2
aload 0
getfield com/alipay/sdk/packet/e/b Ljava/lang/String;
aload 1
invokestatic com/alipay/sdk/encrypt/e/a(Ljava/lang/String;[B)[B
aastore
invokestatic com/alipay/sdk/packet/e/a([[B)[B
astore 1
L6:
new com/alipay/sdk/packet/c
dup
iload 3
aload 1
invokespecial com/alipay/sdk/packet/c/<init>(Z[B)V
areturn
L2:
astore 1
iconst_0
istore 3
aload 4
astore 1
goto L4
L5:
iconst_2
anewarray [B
dup
iconst_0
aload 5
aastore
dup
iconst_1
aload 1
aastore
invokestatic com/alipay/sdk/packet/e/a([[B)[B
astore 1
goto L6
.limit locals 6
.limit stack 5
.end method
