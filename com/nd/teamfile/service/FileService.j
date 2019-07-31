.bytecode 50.0
.class public synchronized com/nd/teamfile/service/FileService
.super android/app/Service
.inner class public ChangeIdentity inner com/nd/teamfile/service/FileService$ChangeIdentity outer com/nd/teamfile/service/FileService
.inner class private FileDownloadListener inner com/nd/teamfile/service/FileService$FileDownloadListener outer com/nd/teamfile/service/FileService
.inner class public static abstract interface IDownloadProgressUpdateListener inner com/nd/teamfile/service/FileService$IDownloadProgressUpdateListener outer com/nd/teamfile/service/FileService
.inner class public static abstract interface IUploadProgressUpdateListener inner com/nd/teamfile/service/FileService$IUploadProgressUpdateListener outer com/nd/teamfile/service/FileService
.inner class public LocalBinder inner com/nd/teamfile/service/FileService$LocalBinder outer com/nd/teamfile/service/FileService
.inner class private UploadFileTask inner com/nd/teamfile/service/FileService$UploadFileTask outer com/nd/teamfile/service/FileService

.field public static final 'ACTION_CHANGE_IDENTIFY' Ljava/lang/String; = "com.nd.android.teamlab.ACTION_CHANGE_IDENTIFY"

.field public static final 'ACTION_DOWNLOAD_FILE' Ljava/lang/String; = "com.nd.teamfile.ACTION_DOWNLOAD_FILE"

.field public static final 'ACTION_UPLOAD_FILE' Ljava/lang/String; = "com.nd.teamfile.ACTION_UPLOAD_FILE"

.field public static final 'STATUS_DOWNLOAD' I = 1


.field public static final 'STATUS_NONE' I = 0


.field public static final 'STATUS_UPLOAD' I = 2


.field public static final 'STATUS_UPLOAD_DOWNLOAD' I = 3


.field private static final 'TAG' Ljava/lang/String; = "FileService"

.field private 'dl' Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;

.field private final 'mBinder' Landroid/os/IBinder;

.field private 'mapDownloadProgress' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"

.field private 'mapUploadProgress' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"

.field private 'ul' Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;

.method public <init>()V
aload 0
invokespecial android/app/Service/<init>()V
aload 0
new com/nd/teamfile/service/FileService$LocalBinder
dup
aload 0
invokespecial com/nd/teamfile/service/FileService$LocalBinder/<init>(Lcom/nd/teamfile/service/FileService;)V
putfield com/nd/teamfile/service/FileService/mBinder Landroid/os/IBinder;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/teamfile/service/FileService/mapDownloadProgress Ljava/util/HashMap;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/teamfile/service/FileService/mapUploadProgress Ljava/util/HashMap;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/teamfile/service/FileService;)Ljava/util/HashMap;
aload 0
getfield com/nd/teamfile/service/FileService/mapUploadProgress Ljava/util/HashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
aload 0
getfield com/nd/teamfile/service/FileService/ul Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/nd/teamfile/service/FileService;Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;)Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
aload 0
aload 1
putfield com/nd/teamfile/service/FileService/ul Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;
aload 0
getfield com/nd/teamfile/service/FileService/dl Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/teamfile/service/FileService;Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;)Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;
aload 0
aload 1
putfield com/nd/teamfile/service/FileService/dl Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/teamfile/service/FileService;)Ljava/util/HashMap;
aload 0
getfield com/nd/teamfile/service/FileService/mapDownloadProgress Ljava/util/HashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method private downLoadFie(JLjava/lang/String;Ljava/lang/String;I)V
aload 0
invokestatic com/nd/teamfile/sdk/TeamFile/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/sdk/TeamFile;
lload 1
aload 3
aload 4
iload 5
new com/nd/teamfile/service/FileService$FileDownloadListener
dup
aload 0
aload 3
invokespecial com/nd/teamfile/service/FileService$FileDownloadListener/<init>(Lcom/nd/teamfile/service/FileService;Ljava/lang/String;)V
invokevirtual com/nd/teamfile/sdk/TeamFile/downloadFile(JLjava/lang/String;Ljava/lang/String;ILcom/common/android/utils/httpRequest/HttpRequest$DownloadListener;)V
return
.limit locals 6
.limit stack 10
.end method

.method public getMapDownloadProgress()Ljava/util/HashMap;
.signature "()Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
aload 0
getfield com/nd/teamfile/service/FileService/mapDownloadProgress Ljava/util/HashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMapUploadProgress()Ljava/util/HashMap;
.signature "()Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
aload 0
getfield com/nd/teamfile/service/FileService/mapUploadProgress Ljava/util/HashMap;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUploadDownloadStatus()I
iconst_0
istore 2
aload 0
getfield com/nd/teamfile/service/FileService/mapUploadProgress Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifeq L0
aload 0
getfield com/nd/teamfile/service/FileService/mapDownloadProgress Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifeq L0
iconst_3
istore 1
L1:
iload 1
ireturn
L0:
aload 0
getfield com/nd/teamfile/service/FileService/mapUploadProgress Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifeq L2
aload 0
getfield com/nd/teamfile/service/FileService/mapDownloadProgress Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifne L2
iconst_2
ireturn
L2:
iload 2
istore 1
aload 0
getfield com/nd/teamfile/service/FileService/mapUploadProgress Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifne L1
iload 2
istore 1
aload 0
getfield com/nd/teamfile/service/FileService/mapDownloadProgress Ljava/util/HashMap;
invokevirtual java/util/HashMap/size()I
ifeq L1
iconst_1
ireturn
.limit locals 3
.limit stack 1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
aload 0
getfield com/nd/teamfile/service/FileService/mBinder Landroid/os/IBinder;
areturn
.limit locals 2
.limit stack 1
.end method

.method public onCreate()V
aload 0
invokespecial android/app/Service/onCreate()V
new android/content/IntentFilter
dup
ldc "com.nd.android.teamlab.ACTION_CHANGE_IDENTIFY"
invokespecial android/content/IntentFilter/<init>(Ljava/lang/String;)V
astore 1
aload 0
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
new com/nd/teamfile/service/FileService$ChangeIdentity
dup
aload 0
invokespecial com/nd/teamfile/service/FileService$ChangeIdentity/<init>(Lcom/nd/teamfile/service/FileService;)V
aload 1
invokevirtual android/support/v4/content/LocalBroadcastManager/registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
ldc "FileService"
ldc "onStartCommand"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
ifnonnull L0
aload 0
aload 1
iload 2
iload 3
invokespecial android/app/Service/onStartCommand(Landroid/content/Intent;II)I
ireturn
L0:
aload 1
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
astore 5
ldc "com.nd.teamfile.ACTION_DOWNLOAD_FILE"
aload 5
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 1
ldc "fid"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 1
ldc "name"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 6
aload 0
getfield com/nd/teamfile/service/FileService/mapDownloadProgress Ljava/util/HashMap;
aload 5
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getstatic com/nd/teamfile/Env/gid J
aload 5
aload 6
getstatic com/nd/teamfile/Env/category I
invokespecial com/nd/teamfile/service/FileService/downLoadFie(JLjava/lang/String;Ljava/lang/String;I)V
L2:
aload 0
aload 1
iload 2
iload 3
invokespecial android/app/Service/onStartCommand(Landroid/content/Intent;II)I
ireturn
L1:
ldc "com.nd.teamfile.ACTION_UPLOAD_FILE"
aload 5
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
pop
aload 1
ldc "fileInfos"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast java/util/ArrayList
astore 5
aload 5
ifnull L2
aload 5
invokevirtual java/util/ArrayList/size()I
ifle L2
aload 5
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 5
L3:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/teamfile/sdk/type/FileInfo
astore 6
aload 6
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getKeyId()I
istore 4
aload 0
getfield com/nd/teamfile/service/FileService/mapUploadProgress Ljava/util/HashMap;
iload 4
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
new com/nd/teamfile/service/FileService$UploadFileTask
dup
aload 0
getstatic com/nd/teamfile/Env/gid J
aload 6
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getFilepath()Ljava/lang/String;
getstatic com/nd/teamfile/Env/category I
aload 6
invokespecial com/nd/teamfile/service/FileService$UploadFileTask/<init>(Lcom/nd/teamfile/service/FileService;JLjava/lang/String;ILcom/nd/teamfile/sdk/type/FileInfo;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/teamfile/service/FileService$UploadFileTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
goto L3
.limit locals 7
.limit stack 8
.end method

.method public setDownloadProgressUpdateListener(Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;)V
aload 0
aload 1
putfield com/nd/teamfile/service/FileService/dl Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setUploadProgressUpdateListener(Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;)V
aload 0
aload 1
putfield com/nd/teamfile/service/FileService/ul Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
return
.limit locals 2
.limit stack 2
.end method

.method public unsetDownloadProgressUpdateListener()V
aload 0
aconst_null
putfield com/nd/teamfile/service/FileService/dl Lcom/nd/teamfile/service/FileService$IDownloadProgressUpdateListener;
return
.limit locals 1
.limit stack 2
.end method

.method public unsetUploadProgressUpdateListener()V
aload 0
aconst_null
putfield com/nd/teamfile/service/FileService/ul Lcom/nd/teamfile/service/FileService$IUploadProgressUpdateListener;
return
.limit locals 1
.limit stack 2
.end method
