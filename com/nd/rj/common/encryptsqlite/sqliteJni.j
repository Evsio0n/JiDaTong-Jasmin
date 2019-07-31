.bytecode 50.0
.class public synchronized com/nd/rj/common/encryptsqlite/sqliteJni
.super java/lang/Object

.method static <clinit>()V
.catch java/lang/UnsatisfiedLinkError from L0 to L1 using L2
L0:
ldc "CppSqlite29"
invokestatic com/nd/rj/common/encryptsqlite/sqliteJni/loadLibrary(Ljava/lang/String;)Z
pop
L1:
return
L2:
astore 0
aload 0
invokevirtual java/lang/UnsatisfiedLinkError/printStackTrace()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static native BeginTransaction(I)I
.end method

.method public static native ClearResult(II)V
.end method

.method public static native CloseDB(I)V
.end method

.method public static native CommitTrans(IZ)I
.end method

.method public static native ExecSql(ILjava/lang/String;)I
.end method

.method public static native GetBlobByIndex(III)Ljava/lang/String;
.end method

.method public static native GetBlobByName(ILjava/lang/String;I)Ljava/lang/String;
.end method

.method public static native GetDoubleByIndex(III)D
.end method

.method public static native GetDoubleByName(ILjava/lang/String;I)D
.end method

.method public static native GetFieldDataType(III)I
.end method

.method public static native GetFieldDeclType(III)Ljava/lang/String;
.end method

.method public static native GetFieldIndex(ILjava/lang/String;I)I
.end method

.method public static native GetFieldName(III)Ljava/lang/String;
.end method

.method public static native GetIntByIndex(III)I
.end method

.method public static native GetIntByName(ILjava/lang/String;I)I
.end method

.method public static native GetStringByIndex(III)Ljava/lang/String;
.end method

.method public static native GetStringByName(ILjava/lang/String;I)Ljava/lang/String;
.end method

.method public static native IsOpen(I)Z
.end method

.method public static native More(II)Z
.end method

.method public static native NumFields(II)I
.end method

.method public static native OpenDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public static native QuerySql(ILjava/lang/String;Ljava/lang/Object;)I
.end method

.method public static native ResetKey(ILjava/lang/String;)I
.end method

.method public static native SetTmpFilePath(Ljava/lang/String;)V
.end method

.method public static loadLibrary(Ljava/lang/String;)Z
.catch java/lang/UnsatisfiedLinkError from L0 to L1 using L2
.catch java/lang/UnsatisfiedLinkError from L3 to L4 using L5
L0:
aload 0
invokestatic java/lang/System/loadLibrary(Ljava/lang/String;)V
L1:
iconst_1
ireturn
L2:
astore 1
aload 0
invokestatic java/lang/System/mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
astore 0
new java/io/File
dup
new java/io/File
dup
invokestatic android/os/Environment/getRootDirectory()Ljava/io/File;
ldc "system/vendor/lib"
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
aload 0
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 0
aload 0
invokevirtual java/io/File/isFile()Z
ifeq L6
L3:
aload 0
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokestatic java/lang/System/load(Ljava/lang/String;)V
L4:
iconst_1
ireturn
L5:
astore 0
L6:
iconst_0
ireturn
.limit locals 2
.limit stack 6
.end method
