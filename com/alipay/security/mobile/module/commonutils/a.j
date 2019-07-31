.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/commonutils/a
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"
aload 0
ifnonnull L0
L1:
aload 2
areturn
L0:
aload 0
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 0
aload 0
ifnull L1
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public static a(Ljava/lang/String;)Z
iconst_0
istore 4
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
istore 2
iload 2
ifne L1
L0:
iconst_1
istore 3
L2:
iload 3
ireturn
L1:
iconst_0
istore 1
L3:
iload 1
iload 2
if_icmpge L4
iload 4
istore 3
aload 0
iload 1
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/isWhitespace(C)Z
ifeq L2
iload 1
iconst_1
iadd
istore 1
goto L3
L4:
iconst_1
ireturn
.limit locals 5
.limit stack 2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
aload 0
ifnonnull L0
aload 1
ifnonnull L1
iconst_1
ireturn
L1:
iconst_0
ireturn
L0:
aload 0
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static b(Ljava/lang/String;)Z
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
aload 0
ifnonnull L0
aload 1
ifnonnull L1
iconst_1
ireturn
L1:
iconst_0
ireturn
L0:
aload 0
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
aload 0
astore 1
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L0
ldc ""
astore 1
L0:
aload 1
areturn
.limit locals 2
.limit stack 1
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
iconst_0
istore 1
L0:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L3
L1:
aconst_null
areturn
L3:
ldc "SHA-1"
invokestatic java/security/MessageDigest/getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
astore 2
aload 2
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/security/MessageDigest/update([B)V
aload 2
invokevirtual java/security/MessageDigest/digest()[B
astore 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
L4:
iload 1
aload 0
arraylength
if_icmpge L6
aload 2
ldc "%02x"
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
iload 1
baload
invokestatic java/lang/Byte/valueOf(B)Ljava/lang/Byte;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L5:
iload 1
iconst_1
iadd
istore 1
goto L4
L6:
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L7:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 3
.limit stack 7
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
iconst_4
invokestatic java/nio/ByteBuffer/allocate(I)Ljava/nio/ByteBuffer;
getstatic java/nio/ByteOrder/LITTLE_ENDIAN Ljava/nio/ByteOrder;
invokevirtual java/nio/ByteBuffer/order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
aload 0
invokevirtual java/lang/String/length()I
invokevirtual java/nio/ByteBuffer/putInt(I)Ljava/nio/ByteBuffer;
invokevirtual java/nio/ByteBuffer/array()[B
astore 1
new java/io/ByteArrayOutputStream
dup
aload 0
invokevirtual java/lang/String/length()I
invokespecial java/io/ByteArrayOutputStream/<init>(I)V
astore 2
new java/util/zip/GZIPOutputStream
dup
aload 2
invokespecial java/util/zip/GZIPOutputStream/<init>(Ljava/io/OutputStream;)V
astore 3
aload 3
aload 0
ldc "UTF-8"
invokevirtual java/lang/String/getBytes(Ljava/lang/String;)[B
invokevirtual java/util/zip/GZIPOutputStream/write([B)V
aload 3
invokevirtual java/util/zip/GZIPOutputStream/close()V
aload 2
invokevirtual java/io/ByteArrayOutputStream/close()V
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
arraylength
iconst_4
iadd
newarray byte
astore 0
aload 1
iconst_0
aload 0
iconst_0
iconst_4
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
iconst_0
aload 0
iconst_4
aload 2
invokevirtual java/io/ByteArrayOutputStream/toByteArray()[B
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
bipush 8
invokestatic android/util/Base64/encodeToString([BI)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
ldc ""
areturn
.limit locals 4
.limit stack 5
.end method

.method private static f(Ljava/lang/String;)Z
iconst_0
istore 4
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
istore 2
iload 2
ifne L1
L0:
iconst_1
istore 3
L2:
iload 3
ireturn
L1:
iconst_0
istore 1
L3:
iload 1
iload 2
if_icmpge L4
aload 0
iload 1
invokevirtual java/lang/String/charAt(I)C
invokestatic java/lang/Character/isWhitespace(C)Z
ifne L5
iload 4
istore 3
aload 0
iload 1
invokevirtual java/lang/String/charAt(I)C
bipush 48
if_icmpne L2
L5:
iload 1
iconst_1
iadd
istore 1
goto L3
L4:
iconst_1
ireturn
.limit locals 5
.limit stack 2
.end method
