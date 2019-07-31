.bytecode 50.0
.class public synchronized com/nd/teamfile/util/AndroidFileContext
.super java/lang/Object

.field private 'context' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/teamfile/util/AndroidFileContext/context Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method protected getAvailableSpace()J
aload 0
invokevirtual com/nd/teamfile/util/AndroidFileContext/isMounted()Z
ifne L0
lconst_0
lreturn
L0:
new android/os/StatFs
dup
aload 0
invokevirtual com/nd/teamfile/util/AndroidFileContext/getExternalStorageDirectory()Ljava/io/File;
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokespecial android/os/StatFs/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual android/os/StatFs/getAvailableBlocks()I
i2l
aload 1
invokevirtual android/os/StatFs/getBlockSize()I
i2l
lmul
lreturn
.limit locals 2
.limit stack 4
.end method

.method protected getExternalStorageDirectory()Ljava/io/File;
invokestatic android/os/Environment/getExternalStorageDirectory()Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getPackageName()Ljava/lang/String;
aload 0
getfield com/nd/teamfile/util/AndroidFileContext/context Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected isMounted()Z
invokestatic android/os/Environment/getExternalStorageState()Ljava/lang/String;
ldc "mounted"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected preparePhoneCacheDir()Ljava/io/File;
aload 0
getfield com/nd/teamfile/util/AndroidFileContext/context Landroid/content/Context;
invokevirtual android/content/Context/getCacheDir()Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method
