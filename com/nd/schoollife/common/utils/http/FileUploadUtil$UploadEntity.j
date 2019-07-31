.bytecode 50.0
.class public synchronized com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity
.super java/lang/Object
.inner class public static UploadEntity inner com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity outer com/nd/schoollife/common/utils/http/FileUploadUtil

.field public 'curPos' J

.field public 'errCode' Ljava/lang/String;

.field public 'errMsg' Ljava/lang/String;

.field public 'file' Ljava/io/File;

.field public 'httpCode' I

.field public 'isUploadSuccess' Z

.field public 'mFileUploadListener' Lcom/nd/schoollife/common/utils/http/IFileUploadListener;

.field public 'nowTry' I

.field public 'oapSid' Ljava/lang/String;

.field public 'packageSize' I

.field public 'repeatTimes' I

.field public 'shiftCount' I

.field public 'url' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/file Ljava/io/File;
aload 0
ldc ""
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/oapSid Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/url Ljava/lang/String;
aload 0
ldc_w 512000
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/packageSize I
aload 0
iconst_1
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/shiftCount I
aload 0
iconst_3
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/repeatTimes I
aload 0
iconst_0
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/nowTry I
aload 0
lconst_0
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/curPos J
aload 0
iconst_0
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/isUploadSuccess Z
aload 0
iconst_0
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/httpCode I
aload 0
ldc ""
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/errCode Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/errMsg Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/schoollife/common/utils/http/FileUploadUtil$UploadEntity/mFileUploadListener Lcom/nd/schoollife/common/utils/http/IFileUploadListener;
return
.limit locals 1
.limit stack 3
.end method
