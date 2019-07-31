.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/TeamFile$UploadEntity
.super java/lang/Object
.inner class public static UploadEntity inner com/nd/teamfile/sdk/TeamFile$UploadEntity outer com/nd/teamfile/sdk/TeamFile

.field public static final 'DEFAULT_PACKAGESIZE' I = 8192


.field public static final 'MIN_PACKAGESIZE' I = 1024


.field public 'curPos' J

.field public 'file' Ljava/io/File;

.field public 'fkey' Ljava/lang/String;

.field public 'isUploadSuccess' Z

.field public 'md5' Ljava/lang/String;

.field public 'nowTry' I

.field public 'packageSize' I

.field public 'repeatTimes' I

.field public 'shiftCount' I

.field public 'size' J

.field public 'totalsize' J

.field public 'upfile' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/file Ljava/io/File;
aload 0
ldc ""
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/upfile Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/fkey Ljava/lang/String;
aload 0
ldc_w 524288
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/packageSize I
aload 0
ldc ""
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/md5 Ljava/lang/String;
aload 0
iconst_1
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/shiftCount I
aload 0
iconst_3
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/repeatTimes I
aload 0
iconst_0
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/nowTry I
aload 0
lconst_0
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/curPos J
aload 0
iconst_0
putfield com/nd/teamfile/sdk/TeamFile$UploadEntity/isUploadSuccess Z
return
.limit locals 1
.limit stack 3
.end method
