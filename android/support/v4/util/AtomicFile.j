.bytecode 50.0
.class public synchronized android/support/v4/util/AtomicFile
.super java/lang/Object

.field private final 'mBackupName' Ljava/io/File;

.field private final 'mBaseName' Ljava/io/File;

.method public <init>(Ljava/io/File;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
aload 0
new java/io/File
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".bak"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
putfield android/support/v4/util/AtomicFile/mBackupName Ljava/io/File;
return
.limit locals 2
.limit stack 5
.end method

.method static sync(Ljava/io/FileOutputStream;)Z
.catch java/io/IOException from L0 to L1 using L2
aload 0
ifnull L1
L0:
aload 0
invokevirtual java/io/FileOutputStream/getFD()Ljava/io/FileDescriptor;
invokevirtual java/io/FileDescriptor/sync()V
L1:
iconst_1
ireturn
L2:
astore 0
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public delete()V
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
aload 0
getfield android/support/v4/util/AtomicFile/mBackupName Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
return
.limit locals 1
.limit stack 1
.end method

.method public failWrite(Ljava/io/FileOutputStream;)V
.catch java/io/IOException from L0 to L1 using L2
aload 1
ifnull L1
aload 1
invokestatic android/support/v4/util/AtomicFile/sync(Ljava/io/FileOutputStream;)Z
pop
L0:
aload 1
invokevirtual java/io/FileOutputStream/close()V
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
aload 0
getfield android/support/v4/util/AtomicFile/mBackupName Ljava/io/File;
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
pop
L1:
return
L2:
astore 1
ldc "AtomicFile"
ldc "failWrite: Got exception:"
aload 1
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
return
.limit locals 2
.limit stack 3
.end method

.method public finishWrite(Ljava/io/FileOutputStream;)V
.catch java/io/IOException from L0 to L1 using L2
aload 1
ifnull L1
aload 1
invokestatic android/support/v4/util/AtomicFile/sync(Ljava/io/FileOutputStream;)Z
pop
L0:
aload 1
invokevirtual java/io/FileOutputStream/close()V
aload 0
getfield android/support/v4/util/AtomicFile/mBackupName Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
L1:
return
L2:
astore 1
ldc "AtomicFile"
ldc "finishWrite: Got exception:"
aload 1
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
return
.limit locals 2
.limit stack 3
.end method

.method public getBaseFile()Ljava/io/File;
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method public openRead()Ljava/io/FileInputStream;
.throws java/io/FileNotFoundException
aload 0
getfield android/support/v4/util/AtomicFile/mBackupName Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
aload 0
getfield android/support/v4/util/AtomicFile/mBackupName Ljava/io/File;
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
pop
L0:
new java/io/FileInputStream
dup
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokespecial java/io/FileInputStream/<init>(Ljava/io/File;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public readFully()[B
.throws java/io/IOException
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 0
invokevirtual android/support/v4/util/AtomicFile/openRead()Ljava/io/FileInputStream;
astore 6
iconst_0
istore 1
L0:
aload 6
invokevirtual java/io/FileInputStream/available()I
newarray byte
astore 4
L1:
aload 6
aload 4
iload 1
aload 4
arraylength
iload 1
isub
invokevirtual java/io/FileInputStream/read([BII)I
istore 2
L3:
iload 2
ifgt L8
aload 6
invokevirtual java/io/FileInputStream/close()V
aload 4
areturn
L8:
iload 1
iload 2
iadd
istore 2
L4:
aload 6
invokevirtual java/io/FileInputStream/available()I
istore 3
L5:
iload 2
istore 1
L6:
iload 3
aload 4
arraylength
iload 2
isub
if_icmple L1
iload 2
iload 3
iadd
newarray byte
astore 5
aload 4
iconst_0
aload 5
iconst_0
iload 2
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
L7:
aload 5
astore 4
iload 2
istore 1
goto L1
L2:
astore 4
aload 6
invokevirtual java/io/FileInputStream/close()V
aload 4
athrow
.limit locals 7
.limit stack 5
.end method

.method public startWrite()Ljava/io/FileOutputStream;
.throws java/io/IOException
.catch java/io/FileNotFoundException from L0 to L1 using L2
.catch java/io/FileNotFoundException from L3 to L4 using L5
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifeq L0
aload 0
getfield android/support/v4/util/AtomicFile/mBackupName Ljava/io/File;
invokevirtual java/io/File/exists()Z
ifne L6
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
aload 0
getfield android/support/v4/util/AtomicFile/mBackupName Ljava/io/File;
invokevirtual java/io/File/renameTo(Ljava/io/File;)Z
ifne L0
ldc "AtomicFile"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Couldn't rename file "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " to backup file "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/util/AtomicFile/mBackupName Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
new java/io/FileOutputStream
dup
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 1
L1:
aload 1
areturn
L6:
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokevirtual java/io/File/delete()Z
pop
goto L0
L2:
astore 1
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokevirtual java/io/File/getParentFile()Ljava/io/File;
invokevirtual java/io/File/mkdir()Z
ifne L3
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Couldn't create directory "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
L3:
new java/io/FileOutputStream
dup
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokespecial java/io/FileOutputStream/<init>(Ljava/io/File;)V
astore 1
L4:
aload 1
areturn
L5:
astore 1
new java/io/IOException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Couldn't create "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/util/AtomicFile/mBaseName Ljava/io/File;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/io/IOException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 4
.end method
