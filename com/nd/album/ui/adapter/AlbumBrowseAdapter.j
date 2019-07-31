.bytecode 50.0
.class public synchronized com/nd/album/ui/adapter/AlbumBrowseAdapter
.super android/widget/BaseAdapter
.inner class static Holder inner com/nd/album/ui/adapter/AlbumBrowseAdapter$Holder outer com/nd/album/ui/adapter/AlbumBrowseAdapter

.field private static final 'TAG' Ljava/lang/String; = "AlbumAdapter"

.field public 'mAlbumList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"

.field private 'mContext' Landroid/content/Context;

.field private 'misGetAll' Z

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mAlbumList Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Z)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mAlbumList Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/nd/album/ui/adapter/AlbumBrowseAdapter/misGetAll Z
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
bipush 8
istore 1
aload 0
getfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mAlbumList Ljava/util/ArrayList;
ifnonnull L0
iconst_0
istore 1
L1:
iload 1
ireturn
L0:
aload 0
getfield com/nd/album/ui/adapter/AlbumBrowseAdapter/misGetAll Z
ifne L2
aload 0
getfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
bipush 8
if_icmpgt L1
L2:
aload 0
getfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mAlbumList Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mAlbumList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/album/ui/adapter/AlbumBrowseAdapter$Holder
dup
invokespecial com/nd/album/ui/adapter/AlbumBrowseAdapter$Holder/<init>()V
astore 3
aload 0
getfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/album/R$layout/album_browse_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/album/R$id/album_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/album/ui/adapter/AlbumBrowseAdapter$Holder/image Landroid/widget/ImageView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mAlbumList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/album/Image
astore 4
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 4
invokevirtual com/product/android/commonInterface/album/Image/getUrl_160()Ljava/lang/String;
invokestatic com/product/android/commonInterface/album/Image/appendSid(Ljava/lang/String;)Ljava/lang/String;
aload 3
getfield com/nd/album/ui/adapter/AlbumBrowseAdapter$Holder/image Landroid/widget/ImageView;
aload 0
getfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mContext Landroid/content/Context;
invokestatic com/nd/album/data/ImageCacheOpt/getAlbumCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/nd/album/data/ImageCacheOpt/getImageLoadingListener()Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/album/ui/adapter/AlbumBrowseAdapter$Holder
astore 3
goto L1
.limit locals 5
.limit stack 5
.end method

.method public getmAlbumList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;"
aload 0
getfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mAlbumList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setImageList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/album/Image;>;)V"
aload 0
aload 1
putfield com/nd/album/ui/adapter/AlbumBrowseAdapter/mAlbumList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
