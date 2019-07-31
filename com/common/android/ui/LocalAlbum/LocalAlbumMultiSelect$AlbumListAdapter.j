.bytecode 50.0
.class public synchronized com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter
.super android/widget/BaseAdapter
.inner class public AlbumListAdapter inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter outer com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect
.inner class public final ViewHolder inner com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter$ViewHolder outer com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter

.field private 'mInflater' Landroid/view/LayoutInflater;

.field private 'mbDisplay' Z

.field final synthetic 'this$0' Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;

.method public <init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;Landroid/content/Context;)V
aload 0
aload 1
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_1
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/mbDisplay Z
aload 0
aload 2
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/mInflater Landroid/view/LayoutInflater;
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$300(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$300(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "InflateParams" 
.end annotation
aload 2
ifnonnull L0
new com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter$ViewHolder
dup
aload 0
invokespecial com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter$ViewHolder/<init>(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter;)V
astore 3
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/mInflater Landroid/view/LayoutInflater;
getstatic com/nd/android/u/allcommon/R$layout/local_album_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/allcommon/R$id/iv_demo I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter$ViewHolder/ivDemo Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/allcommon/R$id/tv_dir_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter$ViewHolder/tvDirName Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$300(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
ifnull L2
iload 1
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$300(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L2
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokestatic com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/access$300(Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/SortedMediaFiles
astore 4
aload 4
ifnull L2
aload 4
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/getFirstFile()Lcom/common/android/ui/LocalAlbum/FileInfo;
astore 5
aload 5
ifnull L3
aload 3
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter$ViewHolder/ivDemo Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/mbDisplay Z
ifeq L4
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
getfield com/common/android/ui/LocalAlbum/FileInfo/mFilePathOrName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter$ViewHolder/ivDemo Landroid/widget/ImageView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/mAvoidOOMOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
aconst_null
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
L3:
aload 3
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter$ViewHolder/tvDirName Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/getDirName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/common/android/ui/LocalAlbum/SortedMediaFiles/getFilesCount()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter$ViewHolder
astore 3
goto L1
L4:
aload 3
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter$ViewHolder/ivDemo Landroid/widget/ImageView;
aload 0
getfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/this$0 Lcom/common/android/ui/LocalAlbum/LocalAlbumMultiSelect;
invokevirtual com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$drawable/local_image_default I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
goto L3
.limit locals 6
.limit stack 5
.end method

.method public setDisplay(Z)V
aload 0
iload 1
putfield com/common/android/ui/LocalAlbum/LocalAlbumMultiSelect$AlbumListAdapter/mbDisplay Z
return
.limit locals 2
.limit stack 2
.end method
