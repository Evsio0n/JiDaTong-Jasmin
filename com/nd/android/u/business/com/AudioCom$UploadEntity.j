.bytecode 50.0
.class public synchronized com/nd/android/u/business/com/AudioCom$UploadEntity
.super java/lang/Object
.inner class public static UploadEntity inner com/nd/android/u/business/com/AudioCom$UploadEntity outer com/nd/android/u/business/com/AudioCom

.field public static final 'DEFAULT_PACKAGESIZE' I = 8192


.field public static final 'MIN_PACKAGESIZE' I = 1024


.field public 'curPos' J

.field public 'errMsg' Ljava/lang/StringBuilder;

.field public 'file' Ljava/io/File;

.field public 'fkey' Ljava/lang/String;

.field public 'isUploadSuccess' Z

.field public 'nowTry' I

.field public 'packageSize' I

.field public 'repeatTimes' I

.field public 'shiftCount' I

.field public 'uapSid' Ljava/lang/String;

.field public 'url' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/errMsg Ljava/lang/StringBuilder;
aload 0
aconst_null
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/file Ljava/io/File;
aload 0
ldc ""
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/uapSid Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/fkey Ljava/lang/String;
aload 0
new java/lang/StringBuilder
dup
getstatic com/nd/android/u/controller/ChatConfiguration/INSTANCE Lcom/nd/android/u/controller/ChatConfiguration;
invokevirtual com/nd/android/u/controller/ChatConfiguration/getShareFileServiceUrl()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "ofs/upload_u_rest.php"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/url Ljava/lang/String;
aload 0
sipush 8192
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/packageSize I
aload 0
iconst_1
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/shiftCount I
aload 0
iconst_3
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/repeatTimes I
aload 0
iconst_0
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/nowTry I
aload 0
lconst_0
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/curPos J
aload 0
iconst_0
putfield com/nd/android/u/business/com/AudioCom$UploadEntity/isUploadSuccess Z
return
.limit locals 1
.limit stack 4
.end method
