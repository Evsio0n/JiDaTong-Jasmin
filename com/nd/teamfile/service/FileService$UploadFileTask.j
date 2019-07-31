.bytecode 50.0
.class synchronized com/nd/teamfile/service/FileService$UploadFileTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Integer;Lcom/nd/teamfile/sdk/type/FileInfo;>;"
.inner class private UploadFileTask inner com/nd/teamfile/service/FileService$UploadFileTask outer com/nd/teamfile/service/FileService

.field public 'category' I

.field private 'errType' I

.field public 'fid' Ljava/lang/String;

.field private 'fileDb' Lcom/nd/teamfile/db/FileDb;

.field public 'gid' J

.field private 'mEsg' Ljava/lang/StringBuilder;

.field private 'mFileInfo' Lcom/nd/teamfile/sdk/type/FileInfo;

.field public 'path' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/nd/teamfile/service/FileService;

.method public <init>(Lcom/nd/teamfile/service/FileService;JLjava/lang/String;ILcom/nd/teamfile/sdk/type/FileInfo;)V
aload 0
aload 1
putfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
ldc ""
putfield com/nd/teamfile/service/FileService$UploadFileTask/fid Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/teamfile/service/FileService$UploadFileTask/errType I
aload 0
lload 2
putfield com/nd/teamfile/service/FileService$UploadFileTask/gid J
aload 0
aload 4
putfield com/nd/teamfile/service/FileService$UploadFileTask/path Ljava/lang/String;
aload 0
iload 5
putfield com/nd/teamfile/service/FileService$UploadFileTask/category I
aload 0
aload 6
putfield com/nd/teamfile/service/FileService$UploadFileTask/mFileInfo Lcom/nd/teamfile/sdk/type/FileInfo;
aload 0
aload 1
invokestatic com/nd/teamfile/db/FileDb/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/db/FileDb;
putfield com/nd/teamfile/service/FileService$UploadFileTask/fileDb Lcom/nd/teamfile/db/FileDb;
return
.limit locals 7
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/teamfile/sdk/type/FileInfo;
.catch java/io/UnsupportedEncodingException from L0 to L1 using L2
.catch com/nd/teamfile/exception/TeamFileException from L0 to L1 using L3
.catch org/json/JSONException from L0 to L1 using L4
.catch java/io/UnsupportedEncodingException from L5 to L6 using L2
.catch com/nd/teamfile/exception/TeamFileException from L5 to L6 using L3
.catch org/json/JSONException from L5 to L6 using L4
.catch java/io/UnsupportedEncodingException from L7 to L8 using L2
.catch com/nd/teamfile/exception/TeamFileException from L7 to L8 using L3
.catch org/json/JSONException from L7 to L8 using L4
L0:
new java/io/File
dup
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/path Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual java/io/File/exists()Z
ifeq L9
aload 1
invokevirtual java/io/File/isDirectory()Z
ifeq L5
L1:
goto L9
L5:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
ifnonnull L7
L6:
aconst_null
areturn
L7:
aload 0
iconst_m1
putfield com/nd/teamfile/service/FileService$UploadFileTask/errType I
aload 0
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/sdk/TeamFile/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/sdk/TeamFile;
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/gid J
aload 1
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/category I
invokevirtual com/nd/teamfile/sdk/TeamFile/uploadFile(JLjava/io/File;I)Ljava/lang/String;
putfield com/nd/teamfile/service/FileService$UploadFileTask/fid Ljava/lang/String;
aload 0
iconst_1
putfield com/nd/teamfile/service/FileService$UploadFileTask/errType I
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/sdk/TeamFile/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/sdk/TeamFile;
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/fid Ljava/lang/String;
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/category I
invokevirtual com/nd/teamfile/sdk/TeamFile/getFileInfo(Ljava/lang/String;I)Lcom/nd/teamfile/sdk/type/FileInfo;
astore 2
new java/io/File
dup
new com/nd/teamfile/util/FileUtil
dup
invokespecial com/nd/teamfile/util/FileUtil/<init>()V
new com/nd/teamfile/util/AndroidFileContext
dup
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokespecial com/nd/teamfile/util/AndroidFileContext/<init>(Landroid/content/Context;)V
invokevirtual com/nd/teamfile/util/FileUtil/prepareCacheDirectory(Lcom/nd/teamfile/util/AndroidFileContext;)Ljava/io/File;
aload 1
invokevirtual java/io/File/getName()Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/io/File;Ljava/lang/String;)V
astore 3
new com/nd/teamfile/util/FileUtil
dup
invokespecial com/nd/teamfile/util/FileUtil/<init>()V
aload 1
aload 3
invokevirtual com/nd/teamfile/util/FileUtil/copy(Ljava/io/File;Ljava/io/File;)V
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreaterUid(J)V
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreateUsername(Ljava/lang/String;)V
aload 2
iconst_1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setState(I)V
aload 2
aload 3
invokevirtual java/io/File/getPath()Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setLocalCachePath(Ljava/lang/String;)V
aload 2
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/fid Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setId(Ljava/lang/String;)V
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/fileDb Lcom/nd/teamfile/db/FileDb;
aload 2
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/mFileInfo Lcom/nd/teamfile/sdk/type/FileInfo;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getKeyId()I
invokevirtual com/nd/teamfile/db/FileDb/updateFileInfo(Lcom/nd/teamfile/sdk/type/FileInfo;I)I
pop
aload 0
iconst_1
anewarray java/lang/Integer
dup
iconst_0
bipush 100
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual com/nd/teamfile/service/FileService$UploadFileTask/publishProgress([Ljava/lang/Object;)V
L8:
aload 2
areturn
L2:
astore 1
aload 1
invokevirtual java/io/UnsupportedEncodingException/printStackTrace()V
L10:
aconst_null
areturn
L3:
astore 1
aload 1
invokevirtual com/nd/teamfile/exception/TeamFileException/printStackTrace()V
aload 1
invokevirtual com/nd/teamfile/exception/TeamFileException/getCode()I
sipush 409
if_icmpne L11
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
putfield com/nd/teamfile/service/FileService$UploadFileTask/mEsg Ljava/lang/StringBuilder;
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/mEsg Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/teamfile/exception/TeamFileException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L10
L11:
ldc "UploadFileTask"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "TeamFileException msg="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/teamfile/exception/TeamFileException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L10
L4:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L10
L9:
aconst_null
areturn
.limit locals 4
.limit stack 6
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/teamfile/service/FileService$UploadFileTask/doInBackground([Ljava/lang/Void;)Lcom/nd/teamfile/sdk/type/FileInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/teamfile/sdk/type/FileInfo;)V
aload 1
ifnull L0
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$000(Lcom/nd/teamfile/service/FileService;)Ljava/util/HashMap;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/mFileInfo Lcom/nd/teamfile/sdk/type/FileInfo;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getKeyId()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
ldc "FileService"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "upload thread:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$000(Lcom/nd/teamfile/service/FileService;)Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$100(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
ifnull L1
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$100(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
aload 1
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/path Ljava/lang/String;
invokeinterface com/nd/teamfile/service/FileService$IUploadProgressUpdateListener/onFinish(Lcom/nd/teamfile/sdk/type/FileInfo;Ljava/lang/String;)V 2
L1:
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$000(Lcom/nd/teamfile/service/FileService;)Ljava/util/HashMap;
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/path Ljava/lang/String;
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$000(Lcom/nd/teamfile/service/FileService;)Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifne L2
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$100(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
ifnull L2
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$100(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
invokeinterface com/nd/teamfile/service/FileService$IUploadProgressUpdateListener/AllFinish()V 0
L2:
ldc "FileService"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "upload thread:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$000(Lcom/nd/teamfile/service/FileService;)Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "upload "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/path Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " failure,errType = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
astore 3
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/errType I
iconst_m1
if_icmpne L3
ldc "\u4e0a\u4f20\u5931\u8d25"
astore 2
L4:
ldc "FileService"
aload 3
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/mEsg Ljava/lang/StringBuilder;
ifnull L5
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/mEsg Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L6:
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$100(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
ifnull L1
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$100(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/mFileInfo Lcom/nd/teamfile/sdk/type/FileInfo;
invokeinterface com/nd/teamfile/service/FileService$IUploadProgressUpdateListener/onError(Lcom/nd/teamfile/sdk/type/FileInfo;)V 1
goto L1
L3:
ldc "\u83b7\u53d6\u5b8c\u6574\u4fe1\u606f\u5931\u8d25"
astore 2
goto L4
L5:
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
getstatic com/nd/teamfile/R$string/try_again_for_upload_fail I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
goto L6
.limit locals 4
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/teamfile/sdk/type/FileInfo
invokevirtual com/nd/teamfile/service/FileService$UploadFileTask/onPostExecute(Lcom/nd/teamfile/sdk/type/FileInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected transient onProgressUpdate([Ljava/lang/Integer;)V
aload 1
iconst_0
aaload
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$100(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
ifnull L0
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/this$0 Lcom/nd/teamfile/service/FileService;
invokestatic com/nd/teamfile/service/FileService/access$100(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
aload 0
getfield com/nd/teamfile/service/FileService$UploadFileTask/path Ljava/lang/String;
iload 2
invokeinterface com/nd/teamfile/service/FileService$IUploadProgressUpdateListener/onProgressUpdate(Ljava/lang/String;I)V 2
L0:
aload 0
aload 1
invokespecial android/os/AsyncTask/onProgressUpdate([Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method

.method protected volatile synthetic onProgressUpdate([Ljava/lang/Object;)V
aload 0
aload 1
checkcast [Ljava/lang/Integer;
invokevirtual com/nd/teamfile/service/FileService$UploadFileTask/onProgressUpdate([Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method
