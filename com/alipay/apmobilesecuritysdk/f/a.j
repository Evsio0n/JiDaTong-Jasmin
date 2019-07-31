.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/f/a
.super java/lang/Object

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L5 to L6 using L2
.catch java/lang/Throwable from L7 to L8 using L2
.catch java/lang/Throwable from L9 to L10 using L2
.catch java/lang/Throwable from L11 to L12 using L2
.catch java/lang/Throwable from L13 to L14 using L2
aload 2
ifnull L15
aload 2
invokevirtual java/lang/String/length()I
ifgt L16
L15:
ldc ""
areturn
L16:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 8
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
ifnull L17
aload 1
invokevirtual java/lang/String/length()I
ifgt L18
L17:
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L18:
aload 1
ldc ","
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 1
aload 1
ifnull L19
aload 1
arraylength
ifgt L20
L19:
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L20:
aload 0
ifnull L21
aload 0
invokeinterface java/util/Map/size()I 0
ifgt L22
L21:
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L22:
aload 0
invokeinterface java/util/Map/keySet()Ljava/util/Set; 0
astore 0
aload 0
ifnull L23
aload 0
invokeinterface java/util/Set/size()I 0
ifgt L0
L23:
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
aload 1
arraylength
bipush 8
idiv
iconst_1
iadd
newarray byte
astore 2
L1:
iconst_0
istore 3
L3:
iload 3
aload 2
arraylength
if_icmpge L5
L4:
aload 2
iload 3
iconst_0
bastore
iload 3
iconst_1
iadd
istore 3
goto L3
L5:
aload 1
arraylength
istore 7
L6:
iconst_0
istore 3
iconst_0
istore 4
L24:
iload 3
iload 7
if_icmpge L13
aload 1
iload 3
aaload
astore 9
L7:
aload 2
iload 4
bipush 8
idiv
baload
istore 6
L8:
iload 6
istore 5
L9:
aload 0
aload 9
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
ifeq L11
L10:
iload 6
sipush 128
iload 4
bipush 8
irem
ishr
ior
istore 5
L11:
aload 2
iload 4
bipush 8
idiv
iload 5
sipush 255
iand
i2b
bastore
L12:
iload 4
iconst_1
iadd
istore 4
iload 3
iconst_1
iadd
istore 3
goto L24
L13:
aload 8
aload 2
invokestatic com/alipay/security/mobile/module/commonutils/crypto/a/a([B)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L14:
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L2:
astore 0
goto L14
.limit locals 10
.limit stack 4
.end method
