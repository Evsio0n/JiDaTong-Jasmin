.bytecode 50.0
.class public synchronized com/nd/teamfile/adapter/FileListAdapter
.super android/widget/ArrayAdapter
.signature "Landroid/widget/ArrayAdapter<Lcom/nd/teamfile/sdk/type/FileExplorerInfo;>;"
.inner class static synthetic inner com/nd/teamfile/adapter/FileListAdapter$1
.inner class private ViewHolder inner com/nd/teamfile/adapter/FileListAdapter$ViewHolder outer com/nd/teamfile/adapter/FileListAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mFileIcon' Lcom/nd/teamfile/helper/FileIconHelper;

.field private 'mInflater' Landroid/view/LayoutInflater;

.method public <init>(Landroid/content/Context;Ljava/util/List;Lcom/nd/teamfile/helper/FileIconHelper;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/teamfile/sdk/type/FileExplorerInfo;>;Lcom/nd/teamfile/helper/FileIconHelper;)V"
aload 0
aload 1
getstatic com/nd/teamfile/R$layout/file_explorer_item I
aload 2
invokespecial android/widget/ArrayAdapter/<init>(Landroid/content/Context;ILjava/util/List;)V
aload 0
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/teamfile/adapter/FileListAdapter/mInflater Landroid/view/LayoutInflater;
aload 0
aload 3
putfield com/nd/teamfile/adapter/FileListAdapter/mFileIcon Lcom/nd/teamfile/helper/FileIconHelper;
aload 0
aload 1
putfield com/nd/teamfile/adapter/FileListAdapter/mContext Landroid/content/Context;
return
.limit locals 4
.limit stack 4
.end method

.method private createViewHolder(Landroid/view/View;)Lcom/nd/teamfile/adapter/FileListAdapter$ViewHolder;
new com/nd/teamfile/adapter/FileListAdapter$ViewHolder
dup
aload 0
aconst_null
invokespecial com/nd/teamfile/adapter/FileListAdapter$ViewHolder/<init>(Lcom/nd/teamfile/adapter/FileListAdapter;Lcom/nd/teamfile/adapter/FileListAdapter$1;)V
astore 2
aload 2
aload 1
getstatic com/nd/teamfile/R$id/ivSelect I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/ivSelect Landroid/widget/ImageView;
aload 2
aload 1
getstatic com/nd/teamfile/R$id/ivFileIcon I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/ivFileIcon Landroid/widget/ImageView;
aload 2
aload 1
getstatic com/nd/teamfile/R$id/tvFileName I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/tvFileName Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/teamfile/R$id/tvFileCount I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/tvFileCount Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/teamfile/R$id/tvFileSize I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/tvFileSize Landroid/widget/TextView;
aload 2
aload 1
getstatic com/nd/teamfile/R$id/tvModifiedTime I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/tvModifiedTime Landroid/widget/TextView;
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method private setupFileListItemInfo(Lcom/nd/teamfile/adapter/FileListAdapter$ViewHolder;Lcom/nd/teamfile/sdk/type/FileExplorerInfo;)V
aload 1
getfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/ivSelect Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/IsDir Z
ifeq L0
aload 1
getfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/ivSelect Landroid/widget/ImageView;
getstatic com/nd/teamfile/R$drawable/arrow_folder I
invokevirtual android/widget/ImageView/setImageResource(I)V
L1:
aload 1
getfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/tvFileName Landroid/widget/TextView;
aload 2
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
getfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/tvFileCount Landroid/widget/TextView;
astore 5
aload 2
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/IsDir Z
ifeq L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/Count I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
L3:
aload 5
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
getfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/tvModifiedTime Landroid/widget/TextView;
aload 0
getfield com/nd/teamfile/adapter/FileListAdapter/mContext Landroid/content/Context;
aload 2
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/ModifiedDate J
invokestatic com/nd/teamfile/util/FileExplorerUtil/formatDateString(Landroid/content/Context;J)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
getfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/tvFileSize Landroid/widget/TextView;
astore 5
aload 2
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/IsDir Z
ifeq L4
ldc ""
astore 4
L5:
aload 5
aload 4
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/IsDir Z
ifeq L6
aload 2
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/Count I
ifle L7
aload 1
getfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/ivFileIcon Landroid/widget/ImageView;
getstatic com/nd/teamfile/R$drawable/folder I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L0:
aload 1
getfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/ivSelect Landroid/widget/ImageView;
astore 4
aload 2
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/Selected Z
ifeq L8
getstatic com/nd/teamfile/R$drawable/btn_check_on_holo_light I
istore 3
L9:
aload 4
iload 3
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 1
getfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/ivSelect Landroid/widget/ImageView;
aload 2
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
goto L1
L8:
getstatic com/nd/teamfile/R$drawable/btn_check_off_holo_light I
istore 3
goto L9
L2:
ldc ""
astore 4
goto L3
L4:
aload 2
getfield com/nd/teamfile/sdk/type/FileExplorerInfo/fileSize J
invokestatic com/nd/teamfile/util/FileExplorerUtil/convertStorage(J)Ljava/lang/String;
astore 4
goto L5
L7:
aload 1
getfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/ivFileIcon Landroid/widget/ImageView;
getstatic com/nd/teamfile/R$drawable/folder_empty I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L6:
aload 0
getfield com/nd/teamfile/adapter/FileListAdapter/mFileIcon Lcom/nd/teamfile/helper/FileIconHelper;
aload 2
aload 1
getfield com/nd/teamfile/adapter/FileListAdapter$ViewHolder/ivFileIcon Landroid/widget/ImageView;
invokevirtual com/nd/teamfile/helper/FileIconHelper/setIcon(Lcom/nd/teamfile/sdk/type/FileExplorerInfo;Landroid/widget/ImageView;)V
return
.limit locals 6
.limit stack 4
.end method

.method public getCount()I
aload 0
invokespecial android/widget/ArrayAdapter/getCount()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/nd/teamfile/sdk/type/FileExplorerInfo;
aload 0
iload 1
invokespecial android/widget/ArrayAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/teamfile/sdk/type/FileExplorerInfo
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/teamfile/adapter/FileListAdapter/getItem(I)Lcom/nd/teamfile/sdk/type/FileExplorerInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
aload 0
iload 1
invokespecial android/widget/ArrayAdapter/getItemId(I)J
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
aload 0
getfield com/nd/teamfile/adapter/FileListAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/teamfile/R$layout/file_explorer_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 3
aload 0
aload 3
invokespecial com/nd/teamfile/adapter/FileListAdapter/createViewHolder(Landroid/view/View;)Lcom/nd/teamfile/adapter/FileListAdapter$ViewHolder;
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 0
iload 1
invokevirtual com/nd/teamfile/adapter/FileListAdapter/getItem(I)Lcom/nd/teamfile/sdk/type/FileExplorerInfo;
astore 2
aload 0
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/teamfile/adapter/FileListAdapter$ViewHolder
aload 2
invokespecial com/nd/teamfile/adapter/FileListAdapter/setupFileListItemInfo(Lcom/nd/teamfile/adapter/FileListAdapter$ViewHolder;Lcom/nd/teamfile/sdk/type/FileExplorerInfo;)V
aload 3
areturn
.limit locals 4
.limit stack 3
.end method
