.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/modelmsg/WXAppExtendObject
.super java/lang/Object
.implements com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject

.field private static final 'CONTENT_LENGTH_LIMIT' I = 10485760


.field private static final 'EXTINFO_LENGTH_LIMIT' I = 2048


.field private static final 'PATH_LENGTH_LIMIT' I = 10240


.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.SDK.WXAppExtendObject"

.field public 'extInfo' Ljava/lang/String;

.field public 'fileData' [B

.field public 'filePath' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/extInfo Ljava/lang/String;
aload 0
aload 2
putfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/filePath Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;[B)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/extInfo Ljava/lang/String;
aload 0
aload 2
putfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/fileData [B
return
.limit locals 3
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
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/extInfo Ljava/lang/String;
ifnull L0
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/extInfo Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L1
L0:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/filePath Ljava/lang/String;
ifnull L2
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/filePath Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L1
L2:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/fileData [B
ifnull L3
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/fileData [B
arraylength
ifne L1
L3:
ldc "MicroMsg.SDK.WXAppExtendObject"
ldc "checkArgs fail, all arguments is null"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L1:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/extInfo Ljava/lang/String;
ifnull L4
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/extInfo Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 2048
if_icmple L4
ldc "MicroMsg.SDK.WXAppExtendObject"
ldc "checkArgs fail, extInfo is invalid"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L4:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/filePath Ljava/lang/String;
ifnull L5
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/filePath Ljava/lang/String;
invokevirtual java/lang/String/length()I
sipush 10240
if_icmple L5
ldc "MicroMsg.SDK.WXAppExtendObject"
ldc "checkArgs fail, filePath is invalid"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L5:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/filePath Ljava/lang/String;
ifnull L6
aload 0
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/filePath Ljava/lang/String;
invokespecial com/tencent/mm/sdk/modelmsg/WXAppExtendObject/getFileSize(Ljava/lang/String;)I
ldc_w 10485760
if_icmple L6
ldc "MicroMsg.SDK.WXAppExtendObject"
ldc "checkArgs fail, fileSize is too large"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L6:
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/fileData [B
ifnull L7
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/fileData [B
arraylength
ldc_w 10485760
if_icmple L7
ldc "MicroMsg.SDK.WXAppExtendObject"
ldc "checkArgs fail, fileData is too large"
invokestatic com/tencent/mm/sdk/b/a/a(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
L7:
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public serialize(Landroid/os/Bundle;)V
aload 1
ldc "_wxappextendobject_extInfo"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/extInfo Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "_wxappextendobject_fileData"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/fileData [B
invokevirtual android/os/Bundle/putByteArray(Ljava/lang/String;[B)V
aload 1
ldc "_wxappextendobject_filePath"
aload 0
getfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/filePath Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public type()I
bipush 7
ireturn
.limit locals 1
.limit stack 1
.end method

.method public unserialize(Landroid/os/Bundle;)V
aload 0
aload 1
ldc "_wxappextendobject_extInfo"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/extInfo Ljava/lang/String;
aload 0
aload 1
ldc "_wxappextendobject_fileData"
invokevirtual android/os/Bundle/getByteArray(Ljava/lang/String;)[B
putfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/fileData [B
aload 0
aload 1
ldc "_wxappextendobject_filePath"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/tencent/mm/sdk/modelmsg/WXAppExtendObject/filePath Ljava/lang/String;
return
.limit locals 2
.limit stack 3
.end method
