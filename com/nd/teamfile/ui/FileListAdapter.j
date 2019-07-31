.bytecode 50.0
.class public synchronized com/nd/teamfile/ui/FileListAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/teamfile/ui/FileListAdapter$1
.inner class inner com/nd/teamfile/ui/FileListAdapter$2
.inner class inner com/nd/teamfile/ui/FileListAdapter$2$1
.inner class inner com/nd/teamfile/ui/FileListAdapter$2$2
.inner class private ViewHolder inner com/nd/teamfile/ui/FileListAdapter$ViewHolder outer com/nd/teamfile/ui/FileListAdapter

.field private static final 'TAG' Ljava/lang/String; = "FileListAdapter"

.field private static final 'TYPE_OTHER' I = 1


.field private static final 'TYPE_UPLOADING' I = 0


.field private 'down' Landroid/view/View$OnClickListener;

.field private 'mContext' Landroid/content/Context;

.field private 'mFileInfoList' Lcom/nd/teamfile/sdk/type/FileInfoList;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'share' Landroid/view/View$OnClickListener;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new com/nd/teamfile/ui/FileListAdapter$1
dup
aload 0
invokespecial com/nd/teamfile/ui/FileListAdapter$1/<init>(Lcom/nd/teamfile/ui/FileListAdapter;)V
putfield com/nd/teamfile/ui/FileListAdapter/down Landroid/view/View$OnClickListener;
aload 0
new com/nd/teamfile/ui/FileListAdapter$2
dup
aload 0
invokespecial com/nd/teamfile/ui/FileListAdapter$2/<init>(Lcom/nd/teamfile/ui/FileListAdapter;)V
putfield com/nd/teamfile/ui/FileListAdapter/share Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListAdapter/mContext Landroid/content/Context;
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/teamfile/ui/FileListAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/teamfile/ui/FileListAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/teamfile/ui/FileListAdapter;)Landroid/os/Handler;
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/teamfile/ui/FileListAdapter;Lcom/nd/teamfile/sdk/type/FileInfo;)V
aload 0
aload 1
invokespecial com/nd/teamfile/ui/FileListAdapter/doDown(Lcom/nd/teamfile/sdk/type/FileInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method private createViewHolder(Landroid/view/View;)Lcom/nd/teamfile/ui/FileListAdapter$ViewHolder;
new com/nd/teamfile/ui/FileListAdapter$ViewHolder
dup
aload 0
aconst_null
invokespecial com/nd/teamfile/ui/FileListAdapter$ViewHolder/<init>(Lcom/nd/teamfile/ui/FileListAdapter;Lcom/nd/teamfile/ui/FileListAdapter$1;)V
astore 2
aload 2
aload 1
getstatic com/nd/teamfile/R$id/icon_type I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/imgTypeIcon Landroid/widget/ImageView;
aload 2
aload 1
getstatic com/nd/teamfile/R$id/file_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/txtFileName Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/teamfile/R$id/file_size I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/txtFileSize Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/teamfile/R$id/create_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/txtFileCreator Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/teamfile/R$id/create_time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/txtTime Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/teamfile/R$id/upload_download_progress_bar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
putfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/pbDownload Landroid/widget/ProgressBar;
aload 2
aload 1
getstatic com/nd/teamfile/R$id/download I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/download Landroid/widget/ImageView;
aload 2
aload 1
getstatic com/nd/teamfile/R$id/share I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/share Landroid/widget/ImageView;
aload 2
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/download Landroid/widget/ImageView;
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/down Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/share Landroid/widget/ImageView;
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/share Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private doDown(Lcom/nd/teamfile/sdk/type/FileInfo;)V
new android/content/Intent
dup
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mContext Landroid/content/Context;
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
ldc "gid"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getGid()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
ldc "name"
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getName()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "category"
getstatic com/nd/teamfile/Env/category I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mContext Landroid/content/Context;
aload 2
invokevirtual android/content/Context/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
return
.limit locals 3
.limit stack 4
.end method

.method public addItem(Lcom/nd/teamfile/sdk/type/FileInfo;)V
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
ifnonnull L0
aload 0
new com/nd/teamfile/sdk/type/FileInfoList
dup
invokespecial com/nd/teamfile/sdk/type/FileInfoList/<init>()V
putfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
L0:
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
iconst_0
aload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/add(ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public checkExist(Ljava/lang/String;)Z
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
ifnull L0
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/size()I
ifne L1
L0:
iconst_0
ireturn
L1:
aload 1
ldc "/"
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
istore 2
iload 2
iflt L0
aload 1
iload 2
iconst_1
iadd
aload 1
invokevirtual java/lang/String/length()I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/iterator()Ljava/util/Iterator;
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/teamfile/sdk/type/FileInfo
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getName()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L2
iconst_1
ireturn
.limit locals 4
.limit stack 3
.end method

.method public deleteItem(I)V
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/iterator()Ljava/util/Iterator;
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/teamfile/sdk/type/FileInfo
astore 3
aload 3
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getKeyId()I
iload 1
if_icmpne L2
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
aload 3
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/remove(Ljava/lang/Object;)Z
pop
return
.limit locals 4
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/nd/teamfile/sdk/type/FileInfo;
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
iload 1
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/get(I)Ljava/lang/Object;
checkcast com/nd/teamfile/sdk/type/FileInfo
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/teamfile/ui/FileListAdapter/getItem(I)Lcom/nd/teamfile/sdk/type/FileInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getItemViewType(I)I
aload 0
iload 1
invokevirtual com/nd/teamfile/ui/FileListAdapter/getItem(I)Lcom/nd/teamfile/sdk/type/FileInfo;
astore 2
aload 2
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getState()I
ifne L0
aload 2
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getCreaterUid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 3
.limit stack 4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/teamfile/R$layout/activity_shared_file_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 3
aload 0
aload 3
invokespecial com/nd/teamfile/ui/FileListAdapter/createViewHolder(Landroid/view/View;)Lcom/nd/teamfile/ui/FileListAdapter$ViewHolder;
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/teamfile/ui/FileListAdapter$ViewHolder
astore 4
aload 0
iload 1
invokevirtual com/nd/teamfile/ui/FileListAdapter/getItem(I)Lcom/nd/teamfile/sdk/type/FileInfo;
astore 5
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getLocalCachePath()Ljava/lang/String;
ifnull L1
new com/nd/teamfile/sdk/type/FileType
dup
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getLocalCachePath()Ljava/lang/String;
invokespecial com/nd/teamfile/sdk/type/FileType/<init>(Ljava/lang/String;)V
astore 2
L2:
aload 0
iload 1
invokevirtual com/nd/teamfile/ui/FileListAdapter/getItemViewType(I)I
ifne L3
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/imgTypeIcon Landroid/widget/ImageView;
aload 2
invokevirtual com/nd/teamfile/sdk/type/FileType/getSourceId()I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/txtFileName Landroid/widget/TextView;
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/txtFileName Landroid/widget/TextView;
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/teamfile/R$color/gray I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/txtFileSize Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/txtFileCreator Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/txtTime Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/pbDownload Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/download Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/share Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
areturn
L1:
new com/nd/teamfile/sdk/type/FileType
dup
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getName()Ljava/lang/String;
invokespecial com/nd/teamfile/sdk/type/FileType/<init>(Ljava/lang/String;)V
astore 2
goto L2
L3:
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/download Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/share Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/download Landroid/widget/ImageView;
aload 5
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/share Landroid/widget/ImageView;
aload 5
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/isDownloading()Z
ifeq L4
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/pbDownload Landroid/widget/ProgressBar;
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/pbDownload Landroid/widget/ProgressBar;
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getCurrentUpLoadOrDownloadProgress()I
invokevirtual android/widget/ProgressBar/setProgress(I)V
ldc "FileListAdapter"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file download progress:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getCurrentUpLoadOrDownloadProgress()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/imgTypeIcon Landroid/widget/ImageView;
aload 2
invokevirtual com/nd/teamfile/sdk/type/FileType/getSourceId()I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/txtFileName Landroid/widget/TextView;
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/txtFileSize Landroid/widget/TextView;
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getSize()J
invokestatic com/nd/teamfile/util/Util/getSize(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/txtTime Landroid/widget/TextView;
aload 5
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getCreateTime()J
invokestatic com/product/android/utils/TimeUtils/formateEpochTime(J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
areturn
L4:
aload 4
getfield com/nd/teamfile/ui/FileListAdapter$ViewHolder/pbDownload Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
goto L5
.limit locals 6
.limit stack 3
.end method

.method public getViewTypeCount()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Lcom/nd/teamfile/sdk/type/FileInfoList;)V
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
return
.limit locals 2
.limit stack 2
.end method

.method public setDonwloadProgress(Ljava/lang/String;I)Z
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/iterator()Ljava/util/Iterator;
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/teamfile/sdk/type/FileInfo
astore 4
aload 4
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getId()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 4
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getCurrentUpLoadOrDownloadProgress()I
iload 2
if_icmpge L2
aload 4
iconst_1
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setDownloading(Z)V
aload 4
iload 2
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setCurrentUpLoadOrDownloadProgress(I)V
iconst_1
ireturn
.limit locals 5
.limit stack 2
.end method

.method public setDownloadFinish(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/teamfile/ui/FileListAdapter/mFileInfoList Lcom/nd/teamfile/sdk/type/FileInfoList;
invokevirtual com/nd/teamfile/sdk/type/FileInfoList/iterator()Ljava/util/Iterator;
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/teamfile/sdk/type/FileInfo
astore 4
aload 4
invokevirtual com/nd/teamfile/sdk/type/FileInfo/getId()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 4
iconst_0
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setDownloading(Z)V
aload 4
aload 2
invokevirtual com/nd/teamfile/sdk/type/FileInfo/setLocalCachePath(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 2
.end method

.method public setHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/nd/teamfile/ui/FileListAdapter/mHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method
