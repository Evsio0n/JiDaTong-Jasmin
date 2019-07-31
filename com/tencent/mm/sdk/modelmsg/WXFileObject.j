.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/WXFileObject
.super java/lang/Object
.implements com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject

.field private static final 'CONTENT_LENGTH_LIMIT' I = 10485760


.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.SDK.WXFileObject"

.field private 'contentLengthLimit' I

.field public 'fileData' [B

.field public 'filePath' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc_w 10485760
putfield com/tencent/mm/sdk/modelmsg/WXFileObject/contentLengthLimit I
aload 0
aconst_null
putfield com/tencent/mm/sdk/modelmsg/WXFileObject/fileData [B
aload 0
aconst_null
putfield com/tencent/mm/sdk/modelmsg/WXFileObject/filePath Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc_w 10485760
putfield com/tencent/mm/sdk/modelmsg/WXFileObject/contentLengthLimit I
aload 0
aload 1
putfield com/tencent/mm/sdk/modelmsg/WXFileObject/filePath Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>([B)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc_w 10485760
putfield com/tencent/mm/sdk/modelmsg/WXFileObject/contentLengthLimit I
aload 0
aload 1
putfield com/tencent/mm/sdk/modelmsg/WXFileObject/fileData [B
return
.limit locals 2
.limit stack 2
.end method

.method private getFileSize(Ljava/lang/String;)I
aload 1
ifnull L0
aload 1
invokevirtual java/lang/String/length()I
ifne L1
L0:
iconst_0
ireturn
L1:
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifeq L0
aload 1
invokevirtual java/io/File/length()J
l2i
ireturn
.limit locals 2
.limit stack 3
.end method

.method public checkArgs()Z
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXFileObject/fileData [B
ifnull L0
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXFileObject/fileData [B
arraylength
ifne L1
L0:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXFileObject/filePath Ljava/lang/String;
ifnull L2
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXFileObject/filePath Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L1
L2:
ldc "MicroMsg.SDK.WXFileObject"
ldc "checkArgs fail, both arguments is null"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXFileObject/fileData [B
ifnull L3
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXFileObject/fileData [B
arraylength
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXFileObject/contentLengthLimit I
if_icmple L3
ldc "MicroMsg.SDK.WXFileObject"
ldc "checkArgs fail, fileData is too large"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L3:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXFileObject/filePath Ljava/lang/String;
ifnull L4
aload 0
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXFileObject/filePath Ljava/lang/String;
invokespecial com/tencent/mm/sdk/modelmsg/WXFileObject/getFileSize(Ljava/lang/String;)I
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXFileObject/contentLengthLimit I
if_icmple L4
ldc "MicroMsg.SDK.WXFileObject"
ldc "checkArgs fail, fileSize is too large"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L4:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public serialize(Landroid/os/Bundle;)V
aload 1
ldc "_wxfileobject_fileData"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXFileObject/fileData [B
invokevirtual android/os/Bundle/putByteArray(Ljava/lang/String;[B)V
aload 1
ldc "_wxfileobject_filePath"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXFileObject/filePath Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setContentLengthLimit(I)V
aload 0
iload 1
putfield com/tencent/mm/sdk/modelmsg/WXFileObject/contentLengthLimit I
return
.limit locals 2
.limit stack 2
.end method

.method public setFileData([B)V
aload 0
aload 1
putfield com/tencent/mm/sdk/modelmsg/WXFileObject/fileData [B
return
.limit locals 2
.limit stack 2
.end method

.method public setFilePath(Ljava/lang/String;)V
aload 0
aload 1
putfield com/tencent/mm/sdk/modelmsg/WXFileObject/filePath Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public type()I
bipush 6
ireturn
.limit locals 1
.limit stack 1
.end method

.method public unserialize(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "_wxfileobject_fileData"
invokevirtual android/os/Bundle/getByteArray(Ljava/lang/String;)[B
putfield com/tencent/mm/sdk/modelmsg/WXFileObject/fileData [B
aload 0
aload 1
ldc "_wxfileobject_filePath"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXFileObject/filePath Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method
