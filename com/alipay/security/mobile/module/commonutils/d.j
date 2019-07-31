.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/commonutils/d
.super java/lang/Object

.field private static 'a' Ljava/lang/String;

.field private static 'b' Ljava/lang/String;

.field private static 'c' Ljava/lang/String;

.method static <clinit>()V
ldc ""
putstatic com/alipay/security/mobile/module/commonutils/d/a Ljava/lang/String;
ldc ""
putstatic com/alipay/security/mobile/module/commonutils/d/b Ljava/lang/String;
ldc ""
putstatic com/alipay/security/mobile/module/commonutils/d/c Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Ljava/lang/String;)V
.catch all from L0 to L1 using L2
ldc com/alipay/security/mobile/module/commonutils/d
monitorenter
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 1
aload 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/util/List;)V
L1:
ldc com/alipay/security/mobile/module/commonutils/d
monitorexit
return
L2:
astore 0
ldc com/alipay/security/mobile/module/commonutils/d
monitorexit
aload 0
athrow
.limit locals 2
.limit stack 2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.catch all from L0 to L1 using L2
ldc com/alipay/security/mobile/module/commonutils/d
monitorenter
L0:
aload 0
putstatic com/alipay/security/mobile/module/commonutils/d/a Ljava/lang/String;
aload 1
putstatic com/alipay/security/mobile/module/commonutils/d/b Ljava/lang/String;
aload 2
putstatic com/alipay/security/mobile/module/commonutils/d/c Ljava/lang/String;
L1:
ldc com/alipay/security/mobile/module/commonutils/d
monitorexit
return
L2:
astore 0
ldc com/alipay/security/mobile/module/commonutils/d
monitorexit
aload 0
athrow
.limit locals 3
.limit stack 1
.end method

.method public static a(Ljava/lang/Throwable;)V
.catch all from L0 to L1 using L2
ldc com/alipay/security/mobile/module/commonutils/d
monitorenter
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 1
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/d/b(Ljava/lang/Throwable;)Ljava/lang/String;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/util/List;)V
L1:
ldc com/alipay/security/mobile/module/commonutils/d
monitorexit
return
L2:
astore 0
ldc com/alipay/security/mobile/module/commonutils/d
monitorexit
aload 0
athrow
.limit locals 2
.limit stack 2
.end method

.method private static a(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/String;>;)V"
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch java/lang/Exception from L7 to L8 using L9
.catch all from L7 to L8 using L2
.catch java/lang/Exception from L8 to L10 using L9
.catch all from L8 to L10 using L2
.catch java/lang/Exception from L10 to L11 using L9
.catch all from L10 to L11 using L2
.catch java/lang/Exception from L11 to L12 using L9
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch java/lang/Exception from L15 to L16 using L9
.catch all from L15 to L16 using L2
ldc com/alipay/security/mobile/module/commonutils/d
monitorenter
L0:
getstatic com/alipay/security/mobile/module/commonutils/d/b Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L17
getstatic com/alipay/security/mobile/module/commonutils/d/c Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
istore 1
L1:
iload 1
ifeq L3
L17:
ldc com/alipay/security/mobile/module/commonutils/d
monitorexit
return
L3:
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 2
getstatic com/alipay/security/mobile/module/commonutils/d/c Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 0
L4:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 3
aload 2
new java/lang/StringBuilder
dup
ldc ", "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L5:
goto L4
L2:
astore 0
ldc com/alipay/security/mobile/module/commonutils/d
monitorexit
aload 0
athrow
L6:
aload 2
ldc "\n"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L7:
new java/io/File
dup
getstatic com/alipay/security/mobile/module/commonutils/d/a Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/exists()Z
ifne L8
aload 0
invokevirtual java/io/File/mkdirs()Z
pop
L8:
new java/io/File
dup
getstatic com/alipay/security/mobile/module/commonutils/d/a Ljava/lang/String;
getstatic com/alipay/security/mobile/module/commonutils/d/b Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/exists()Z
ifne L10
aload 0
invokevirtual java/io/File/createNewFile()Z
pop
L10:
aload 0
invokevirtual java/io/File/length()J
aload 2
invokevirtual java/lang/StringBuffer/length()I
i2l
ladd
ldc2_w 51200L
lcmp
ifgt L15
new java/io/FileWriter
dup
aload 0
iconst_1
invokespecial java/io/FileWriter/<init>(Ljava/io/File;Z)V
astore 0
L11:
aload 0
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual java/io/FileWriter/write(Ljava/lang/String;)V
aload 0
invokevirtual java/io/FileWriter/flush()V
aload 0
invokevirtual java/io/FileWriter/close()V
L12:
goto L17
L9:
astore 0
L13:
aload 0
invokevirtual java/lang/Exception/toString()Ljava/lang/String;
pop
L14:
goto L17
L15:
new java/io/FileWriter
dup
aload 0
invokespecial java/io/FileWriter/<init>(Ljava/io/File;)V
astore 0
L16:
goto L11
.limit locals 4
.limit stack 4
.end method

.method public static b(Ljava/lang/Throwable;)Ljava/lang/String;
aload 0
ifnull L0
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 1
aload 0
new java/io/PrintWriter
dup
aload 1
invokespecial java/io/PrintWriter/<init>(Ljava/io/Writer;)V
invokevirtual java/lang/Throwable/printStackTrace(Ljava/io/PrintWriter;)V
aload 1
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 2
.limit stack 4
.end method
