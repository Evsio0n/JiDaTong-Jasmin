.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/localstorage/b
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
invokestatic com/alipay/security/mobile/module/localstorage/b/a()Z
ifeq L3
new java/io/File
dup
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
aload 0
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/exists()Z
ifeq L3
aload 0
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/localstorage/util/a/b(Ljava/lang/String;)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
L3:
aconst_null
areturn
.limit locals 1
.limit stack 4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
.catch java/lang/Exception from L4 to L5 using L6
.catch all from L4 to L5 using L7
.catch java/lang/Exception from L5 to L8 using L9
.catch all from L5 to L8 using L10
.catch java/io/IOException from L8 to L11 using L12
.catch java/lang/Exception from L8 to L11 using L2
.catch java/io/IOException from L13 to L14 using L15
.catch java/lang/Exception from L13 to L14 using L2
.catch java/io/IOException from L16 to L17 using L18
.catch java/lang/Exception from L16 to L17 using L2
.catch java/lang/Exception from L17 to L2 using L2
L0:
invokestatic com/alipay/security/mobile/module/localstorage/b/a()Z
ifeq L11
new java/io/File
dup
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
aload 0
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/exists()Z
ifne L1
aload 0
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokevirtual java/io/File/mkdirs()Z
pop
L1:
new java/io/File
dup
aload 0
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 0
L3:
aconst_null
astore 2
L4:
new java/io/FileWriter
dup
aload 0
iconst_0
invokespecial java/io/FileWriter/<init>(Ljava/io/File;Z)V
astore 0
L5:
aload 0
aload 1
invokevirtual java/io/FileWriter/write(Ljava/lang/String;)V
L8:
aload 0
invokevirtual java/io/FileWriter/close()V
L11:
return
L6:
astore 0
aconst_null
astore 0
L19:
aload 0
ifnull L11
L13:
aload 0
invokevirtual java/io/FileWriter/close()V
L14:
return
L15:
astore 0
return
L7:
astore 0
aload 2
astore 1
L20:
aload 1
ifnull L17
L16:
aload 1
invokevirtual java/io/FileWriter/close()V
L17:
aload 0
athrow
L2:
astore 0
return
L12:
astore 0
return
L18:
astore 1
goto L17
L10:
astore 2
aload 0
astore 1
aload 2
astore 0
goto L20
L9:
astore 1
goto L19
.limit locals 3
.limit stack 4
.end method

.method public static a()Z
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
astore 0
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/length()I
ifle L0
aload 0
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
ldc "mounted_ro"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
L1:
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
ifnull L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
