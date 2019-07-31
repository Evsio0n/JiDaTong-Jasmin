.bytecode 50.0
.class public synchronized com/nd/teamfile/ui/FileListActivity
.super android/app/Activity
.implements android/widget/AdapterView$OnItemClickListener
.implements android/widget/AdapterView$OnItemLongClickListener
.implements android/view/View$OnClickListener
.inner class inner com/nd/teamfile/ui/FileListActivity$1
.inner class inner com/nd/teamfile/ui/FileListActivity$2
.inner class inner com/nd/teamfile/ui/FileListActivity$2$1
.inner class private DeleteFileTask inner com/nd/teamfile/ui/FileListActivity$DeleteFileTask outer com/nd/teamfile/ui/FileListActivity
.inner class private DownloadProgressUpdateListener inner com/nd/teamfile/ui/FileListActivity$DownloadProgressUpdateListener outer com/nd/teamfile/ui/FileListActivity
.inner class static OpenFileHandler inner com/nd/teamfile/ui/FileListActivity$OpenFileHandler outer com/nd/teamfile/ui/FileListActivity
.inner class private RefreshTask inner com/nd/teamfile/ui/FileListActivity$RefreshTask outer com/nd/teamfile/ui/FileListActivity
.inner class private UploadProgressUpdateListener inner com/nd/teamfile/ui/FileListActivity$UploadProgressUpdateListener outer com/nd/teamfile/ui/FileListActivity

.field private static final 'REQUEST_PICK' I = 0


.field private 'hasGetManager' Z

.field private 'listView' Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private 'mAdapter' Lcom/nd/teamfile/ui/FileListAdapter;

.field private 'mBtnAddUploadFile' Landroid/widget/ImageView;

.field private 'mBtnHome' Landroid/widget/ImageView;

.field private 'mConnection' Landroid/content/ServiceConnection;

.field private 'mHandler' Lcom/nd/teamfile/ui/FileListActivity$OpenFileHandler;

.field private 'mManager' Lcom/nd/teamfile/manager/TeamFileManager;

.field private 'mService' Lcom/nd/teamfile/service/FileService;

.field private 'mUsageProgressBar' Landroid/widget/ProgressBar;

.field private 'mUsageTextView' Landroid/widget/TextView;

.field private 'no_file_header' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial android/app/Activity/<init>()V
aload 0
iconst_0
putfield com/nd/teamfile/ui/FileListActivity/hasGetManager Z
aload 0
new com/nd/teamfile/ui/FileListActivity$2
dup
aload 0
invokespecial com/nd/teamfile/ui/FileListActivity$2/<init>(Lcom/nd/teamfile/ui/FileListActivity;)V
putfield com/nd/teamfile/ui/FileListActivity/mConnection Landroid/content/ServiceConnection;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/teamfile/ui/FileListActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/teamfile/ui/FileListActivity/openFile(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/manager/TeamFileManager;
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mManager Lcom/nd/teamfile/manager/TeamFileManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/teamfile/ui/FileListActivity;Lcom/nd/teamfile/manager/TeamFileManager;)Lcom/nd/teamfile/manager/TeamFileManager;
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListActivity/mManager Lcom/nd/teamfile/manager/TeamFileManager;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/ui/FileListAdapter;
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mAdapter Lcom/nd/teamfile/ui/FileListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/teamfile/ui/FileListActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mUsageTextView Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/teamfile/ui/FileListActivity;)Landroid/widget/ProgressBar;
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mUsageProgressBar Landroid/widget/ProgressBar;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/teamfile/ui/FileListActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/teamfile/ui/FileListActivity/no_file_header Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/teamfile/ui/FileListActivity;)Z
aload 0
getfield com/nd/teamfile/ui/FileListActivity/hasGetManager Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$702(Lcom/nd/teamfile/ui/FileListActivity;Z)Z
aload 0
iload 1
putfield com/nd/teamfile/ui/FileListActivity/hasGetManager Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/nd/teamfile/service/FileService;
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mService Lcom/nd/teamfile/service/FileService;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$802(Lcom/nd/teamfile/ui/FileListActivity;Lcom/nd/teamfile/service/FileService;)Lcom/nd/teamfile/service/FileService;
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListActivity/mService Lcom/nd/teamfile/service/FileService;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/teamfile/ui/FileListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/teamfile/ui/FileListActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private checkIsManager(J)Z
getstatic com/nd/teamfile/Env/founderUids Ljava/util/ArrayList;
ifnull L0
getstatic com/nd/teamfile/Env/founderUids Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L1
L0:
iconst_0
ireturn
L1:
getstatic com/nd/teamfile/Env/founderUids Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
lload 1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lcmp
ifne L2
iconst_1
ireturn
L3:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method private createUploadFileInfo(JLjava/lang/String;)Lcom/nd/teamfile/sdk/type/FileInfo;
new java/io/File
dup
aload 3
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 4
aload 4
invokevirtual java/io/File/exists()Z
ifeq L0
new com/nd/teamfile/sdk/type/FileInfo
dup
invokespecial com/nd/teamfile/sdk/type/FileInfo/<init>()V
astore 5
aload 5
ldc ""
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setId(Ljava/lang/String;)V
aload 5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreaterUid(J)V
aload 5
iconst_0
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setDownloading(Z)V
aload 5
lload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setGid(J)V
aload 5
aload 3
invokestatic com/nd/teamfile/util/Util/getFilePathName(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setName(Ljava/lang/String;)V
aload 5
aload 4
invokevirtual java/io/File/length()J
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setSize(J)V
aload 5
iconst_0
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setState(I)V
aload 5
ldc2_w 9223372036854775807L
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCreateTime(J)V
aload 5
aload 3
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setFilepath(Ljava/lang/String;)V
aload 5
areturn
L0:
aconst_null
areturn
.limit locals 6
.limit stack 3
.end method

.method private doItemClick(Ljava/lang/Object;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L2
getstatic com/nd/teamfile/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L2:
aload 1
checkcast com/nd/teamfile/sdk/type/FileInfo
astore 1
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/isDownloaded()Z
ifne L3
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/isDownloading()Z
ifne L3
new com/nd/teamfile/util/FileUtil
dup
invokespecial com/nd/teamfile/util/FileUtil/<init>()V
new com/nd/teamfile/util/AndroidFileContext
dup
aload 0
invokespecial com/nd/teamfile/util/AndroidFileContext/<init>(Landroid/content/Context;)V
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getSize()J
invokevirtual com/nd/teamfile/util/FileUtil/checkStorage(Lcom/nd/teamfile/util/AndroidFileContext;J)Z
ifne L4
aload 0
getstatic com/nd/teamfile/R$string/release_spase_for_download I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L4:
new android/content/Intent
dup
aload 0
ldc com/nd/teamfile/service/FileService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "com.nd.teamfile.ACTION_DOWNLOAD_FILE"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "fid"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getId()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "name"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getName()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual com/nd/teamfile/ui/FileListActivity/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mAdapter Lcom/nd/teamfile/ui/FileListAdapter;
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getId()Ljava/lang/String;
iconst_0
invokevirtual com/nd/teamfile/ui/FileListAdapter/setDonwloadProgress(Ljava/lang/String;I)Z
pop
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mAdapter Lcom/nd/teamfile/ui/FileListAdapter;
invokevirtual com/nd/teamfile/ui/FileListAdapter/notifyDataSetChanged()V
return
L3:
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/isDownloaded()Z
ifeq L1
aload 0
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getLocalCachePath()Ljava/lang/String;
invokespecial com/nd/teamfile/ui/FileListActivity/openFile(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method

.method private doItemLongClick(Ljava/lang/Object;)V
aload 1
ifnonnull L0
return
L0:
aload 1
checkcast com/nd/teamfile/sdk/type/FileInfo
astore 5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 2
aload 5
ifnull L1
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getCreaterUid()J
lload 2
lcmp
ifeq L2
aload 0
lload 2
invokespecial com/nd/teamfile/ui/FileListActivity/checkIsManager(J)Z
ifeq L1
L2:
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mService Lcom/nd/teamfile/service/FileService;
invokevirtual com/nd/teamfile/service/FileService/getMapUploadProgress()Ljava/util/HashMap;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getKeyId()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifeq L3
aload 0
getstatic com/nd/teamfile/R$string/delete_uploading I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L3:
aload 0
invokevirtual com/nd/teamfile/ui/FileListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/teamfile/R$string/delete I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 4
new com/nd/teamfile/ui/FileListActivity$1
dup
aload 0
aload 5
invokespecial com/nd/teamfile/ui/FileListActivity$1/<init>(Lcom/nd/teamfile/ui/FileListActivity;Lcom/nd/teamfile/sdk/type/FileInfo;)V
astore 5
aload 4
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
aload 5
invokevirtual android/app/AlertDialog$Builder/setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
L1:
aload 0
getstatic com/nd/teamfile/R$string/no_right_to_delete I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
.limit locals 6
.limit stack 5
.end method

.method private openFile(Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L9
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/Exception from L12 to L13 using L2
L0:
new com/nd/teamfile/sdk/type/FileType
dup
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokespecial com/nd/teamfile/sdk/type/FileType/<init>(Ljava/io/File;)V
invokevirtual com/nd/teamfile/sdk/type/FileType/getIntent()Landroid/content/Intent;
astore 3
L1:
aload 3
ifnull L5
L3:
aload 0
aload 3
invokevirtual com/nd/teamfile/ui/FileListActivity/startActivity(Landroid/content/Intent;)V
L4:
return
L5:
aload 1
ldc ".amr"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
istore 2
L6:
iload 2
ifeq L12
L7:
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
iconst_0
invokevirtual com/common/android/utils/audio/AudioPlayer/setMode(I)V
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
aload 0
invokevirtual com/common/android/utils/audio/AudioPlayer/play(Ljava/io/File;Landroid/content/Context;)V
L8:
return
L9:
astore 1
L10:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L11:
return
L2:
astore 1
aload 0
getstatic com/nd/teamfile/R$string/canot_open_this_type_file I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L12:
aload 0
getstatic com/nd/teamfile/R$string/canot_open_this_type_file I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L13:
return
.limit locals 4
.limit stack 5
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
iload 1
ifne L0
iload 2
iconst_1
if_icmpne L0
aload 3
ifnonnull L1
L2:
return
L1:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
pop
aload 3
ldc "paths"
invokevirtual android/content/Intent/getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
astore 7
aload 7
ifnull L2
aload 7
invokevirtual java/util/ArrayList/size()I
ifeq L2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 7
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 7
L3:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/String
astore 8
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mAdapter Lcom/nd/teamfile/ui/FileListAdapter;
ifnull L5
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mAdapter Lcom/nd/teamfile/ui/FileListAdapter;
aload 8
invokevirtual com/nd/teamfile/ui/FileListAdapter/checkExist(Ljava/lang/String;)Z
ifeq L5
aload 0
getstatic com/nd/teamfile/R$string/canot_upload_same_filename I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 8
aastore
invokevirtual com/nd/teamfile/ui/FileListActivity/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
goto L3
L5:
new java/io/File
dup
aload 8
invokespecial java/io/File/<init>(Ljava/lang/String;)V
astore 9
aload 9
invokevirtual java/io/File/exists()Z
ifeq L6
aload 9
invokevirtual java/io/File/length()J
lstore 4
lload 4
lconst_0
lcmp
ifne L7
aload 0
getstatic com/nd/teamfile/R$string/canot_upload_null_file I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
goto L3
L7:
lload 4
ldc2_w 209715200L
lcmp
ifle L8
aload 0
getstatic com/nd/teamfile/R$string/canot_upload_over_2m I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
goto L3
L8:
aload 0
getstatic com/nd/teamfile/Env/gid J
aload 8
invokespecial com/nd/teamfile/ui/FileListActivity/createUploadFileInfo(JLjava/lang/String;)Lcom/nd/teamfile/sdk/type/FileInfo;
astore 8
aload 0
invokestatic com/nd/teamfile/db/FileDb/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/db/FileDb;
aload 8
invokevirtual com/nd/teamfile/db/FileDb/addFileInfo(Lcom/nd/teamfile/sdk/type/FileInfo;)V
aload 0
invokestatic com/nd/teamfile/db/FileDb/getInstance(Landroid/content/Context;)Lcom/nd/teamfile/db/FileDb;
invokevirtual com/nd/teamfile/db/FileDb/getLastFileInfo()Lcom/nd/teamfile/sdk/type/FileInfo;
astore 8
aload 6
aload 8
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mAdapter Lcom/nd/teamfile/ui/FileListAdapter;
aload 8
invokevirtual com/nd/teamfile/ui/FileListAdapter/addItem(Lcom/nd/teamfile/sdk/type/FileInfo;)V
goto L3
L6:
aload 0
getstatic com/nd/teamfile/R$string/file_not_exist I
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;II)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
goto L3
L4:
aload 0
getfield com/nd/teamfile/ui/FileListActivity/no_file_header Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mAdapter Lcom/nd/teamfile/ui/FileListAdapter;
invokevirtual com/nd/teamfile/ui/FileListAdapter/notifyDataSetChanged()V
new android/content/Intent
dup
aload 0
ldc com/nd/teamfile/service/FileService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 7
aload 7
ldc "com.nd.teamfile.ACTION_UPLOAD_FILE"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 7
ldc "fileInfos"
aload 6
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 0
aload 7
invokevirtual com/nd/teamfile/ui/FileListActivity/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
L0:
aload 0
iload 1
iload 2
aload 3
invokespecial android/app/Activity/onActivityResult(IILandroid/content/Intent;)V
return
.limit locals 10
.limit stack 6
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/teamfile/R$id/add_upload_file I
if_icmpne L0
aload 0
invokestatic com/product/android/utils/FileHelper/getStorageDirectories(Landroid/content/Context;)Ljava/util/HashMap;
astore 1
aload 1
ifnull L1
aload 1
invokevirtual java/util/HashMap/size()I
ifle L1
new android/content/Intent
dup
aload 0
ldc com/nd/teamfile/activity/FMLocalFileActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 3
aload 3
ldc "PATH_DIRS"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 0
aload 3
iconst_0
invokevirtual com/nd/teamfile/ui/FileListActivity/startActivityForResult(Landroid/content/Intent;I)V
L2:
return
L1:
aload 0
getstatic com/nd/teamfile/R$string/chat_no_file_dir I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
iload 2
getstatic com/nd/teamfile/R$id/home I
if_icmpne L2
aload 0
invokevirtual com/nd/teamfile/ui/FileListActivity/finish()V
return
.limit locals 4
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/app/Activity/onCreate(Landroid/os/Bundle;)V
aload 0
invokevirtual com/nd/teamfile/ui/FileListActivity/getIntent()Landroid/content/Intent;
ldc "gid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putstatic com/nd/teamfile/Env/gid J
aload 0
invokevirtual com/nd/teamfile/ui/FileListActivity/getIntent()Landroid/content/Intent;
ldc "category"
iconst_0
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
putstatic com/nd/teamfile/Env/category I
aload 0
invokevirtual com/nd/teamfile/ui/FileListActivity/getIntent()Landroid/content/Intent;
ldc "qid"
lconst_0
invokevirtual android/content/Intent/getLongExtra(Ljava/lang/String;J)J
putstatic com/nd/teamfile/Env/qid J
aload 0
getstatic com/nd/teamfile/R$layout/activity_shared_file_list I
invokevirtual com/nd/teamfile/ui/FileListActivity/setContentView(I)V
aload 0
invokevirtual com/nd/teamfile/ui/FileListActivity/getIntent()Landroid/content/Intent;
ldc "title"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
ifnull L0
aload 0
getstatic com/nd/teamfile/R$id/tvTitle I
invokevirtual com/nd/teamfile/ui/FileListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
aload 0
getstatic com/nd/teamfile/R$id/capacity I
invokevirtual com/nd/teamfile/ui/FileListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/teamfile/ui/FileListActivity/mUsageProgressBar Landroid/widget/ProgressBar;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/capacity_usage I
invokevirtual com/nd/teamfile/ui/FileListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/ui/FileListActivity/mUsageTextView Landroid/widget/TextView;
aload 0
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/teamfile/R$layout/list_view_header I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/teamfile/R$id/no_file I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/ui/FileListActivity/no_file_header Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/teamfile/R$id/add_upload_file I
invokevirtual com/nd/teamfile/ui/FileListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/teamfile/ui/FileListActivity/mBtnAddUploadFile Landroid/widget/ImageView;
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mBtnAddUploadFile Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/teamfile/R$id/home I
invokevirtual com/nd/teamfile/ui/FileListActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/teamfile/ui/FileListActivity/mBtnHome Landroid/widget/ImageView;
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mBtnHome Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 0
getstatic com/nd/teamfile/R$id/file_list_view I
invokevirtual com/nd/teamfile/ui/FileListActivity/findViewById(I)Landroid/view/View;
checkcast com/handmark/pulltorefresh/library/PullToRefreshListView
putfield com/nd/teamfile/ui/FileListActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/teamfile/ui/FileListActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
ldc_w 17170445
invokevirtual android/widget/ListView/setSelector(I)V
aload 0
new com/nd/teamfile/ui/FileListAdapter
dup
aload 0
invokespecial com/nd/teamfile/ui/FileListAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/teamfile/ui/FileListActivity/mAdapter Lcom/nd/teamfile/ui/FileListAdapter;
aload 0
new com/nd/teamfile/ui/FileListActivity$OpenFileHandler
dup
aload 0
invokespecial com/nd/teamfile/ui/FileListActivity$OpenFileHandler/<init>(Lcom/nd/teamfile/ui/FileListActivity;)V
putfield com/nd/teamfile/ui/FileListActivity/mHandler Lcom/nd/teamfile/ui/FileListActivity$OpenFileHandler;
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mAdapter Lcom/nd/teamfile/ui/FileListAdapter;
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mHandler Lcom/nd/teamfile/ui/FileListActivity$OpenFileHandler;
invokevirtual com/nd/teamfile/ui/FileListAdapter/setHandler(Landroid/os/Handler;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 1
aconst_null
iconst_0
invokevirtual android/widget/ListView/addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mAdapter Lcom/nd/teamfile/ui/FileListAdapter;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity/listView Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshListView/getRefreshableView()Landroid/view/View;
checkcast android/widget/ListView
aload 0
invokevirtual android/widget/ListView/setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
aload 0
new android/content/Intent
dup
aload 0
ldc com/nd/teamfile/service/FileService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mConnection Landroid/content/ServiceConnection;
iconst_1
invokevirtual com/nd/teamfile/ui/FileListActivity/bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
pop
return
.limit locals 2
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
invokespecial android/app/Activity/onDestroy()V
aload 0
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mConnection Landroid/content/ServiceConnection;
invokevirtual com/nd/teamfile/ui/FileListActivity/unbindService(Landroid/content/ServiceConnection;)V
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mService Lcom/nd/teamfile/service/FileService;
invokevirtual com/nd/teamfile/service/FileService/unsetDownloadProgressUpdateListener()V
aload 0
getfield com/nd/teamfile/ui/FileListActivity/mService Lcom/nd/teamfile/service/FileService;
invokevirtual com/nd/teamfile/service/FileService/unsetUploadProgressUpdateListener()V
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
invokespecial com/nd/teamfile/ui/FileListActivity/doItemClick(Ljava/lang/Object;)V
return
.limit locals 6
.limit stack 3
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)Z"
aload 0
aload 1
invokevirtual android/widget/AdapterView/getAdapter()Landroid/widget/Adapter;
iload 3
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
invokespecial com/nd/teamfile/ui/FileListActivity/doItemLongClick(Ljava/lang/Object;)V
iconst_1
ireturn
.limit locals 6
.limit stack 3
.end method
