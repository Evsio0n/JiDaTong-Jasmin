.bytecode 50.0
.class public final synchronized com/alipay/security/mobile/module/localstorage/a
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
ldc ""
astore 1
L0:
aload 0
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
astore 2
L1:
aload 2
astore 1
L3:
aload 1
astore 2
aload 1
invokestatic com/alipay/security/mobile/module/localstorage/util/a/a(Ljava/lang/String;)Z
ifeq L4
new java/lang/StringBuilder
dup
ldc ".SystemConfig"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/localstorage/b/a(Ljava/lang/String;)Ljava/lang/String;
astore 2
L4:
aload 2
areturn
L2:
astore 2
goto L3
.limit locals 3
.limit stack 3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch java/lang/Exception from L4 to L6 using L5
.catch java/lang/Exception from L7 to L8 using L9
.catch all from L7 to L8 using L10
.catch java/lang/Exception from L8 to L11 using L12
.catch all from L8 to L11 using L13
.catch java/io/IOException from L11 to L14 using L15
.catch java/lang/Exception from L11 to L14 using L5
.catch java/io/IOException from L16 to L17 using L18
.catch java/lang/Exception from L16 to L17 using L5
.catch java/io/IOException from L19 to L20 using L21
.catch java/lang/Exception from L19 to L20 using L5
.catch java/lang/Exception from L20 to L5 using L5
L0:
aload 1
invokestatic com/alipay/security/mobile/module/localstorage/util/a/a(Ljava/lang/String;)Z
ifne L1
aload 0
aload 1
invokestatic java/lang/System/setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
L1:
invokestatic com/alipay/security/mobile/module/localstorage/b/a()Z
ifeq L14
new java/lang/StringBuilder
dup
ldc ".SystemConfig"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
getstatic java/io/File/separator Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 0
L3:
invokestatic com/alipay/security/mobile/module/localstorage/b/a()Z
ifeq L14
new java/io/File
dup
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
aload 0
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/exists()Z
ifne L4
aload 0
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokevirtual java/io/File/mkdirs()Z
pop
L4:
new java/io/File
dup
aload 0
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 0
L6:
aconst_null
astore 2
L7:
new java/io/FileWriter
dup
aload 0
iconst_0
invokespecial java/io/FileWriter/<init>(Ljava/io/File;Z)V
astore 0
L8:
aload 0
aload 1
invokevirtual java/io/FileWriter/write(Ljava/lang/String;)V
L11:
aload 0
invokevirtual java/io/FileWriter/close()V
L14:
return
L9:
astore 0
aconst_null
astore 0
L22:
aload 0
ifnull L14
L16:
aload 0
invokevirtual java/io/FileWriter/close()V
L17:
return
L18:
astore 0
return
L10:
astore 0
aload 2
astore 1
L23:
aload 1
ifnull L20
L19:
aload 1
invokevirtual java/io/FileWriter/close()V
L20:
aload 0
athrow
L5:
astore 0
return
L15:
astore 0
return
L21:
astore 1
goto L20
L13:
astore 2
aload 0
astore 1
aload 2
astore 0
goto L23
L12:
astore 1
goto L22
L2:
astore 2
goto L1
.limit locals 3
.limit stack 4
.end method
