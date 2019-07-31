.bytecode 50.0
.class public synchronized com/nd/album/ui/adapter/AlbumListAdapter
.super android/widget/BaseAdapter
.inner class ViewHolder inner com/nd/album/ui/adapter/AlbumListAdapter$ViewHolder outer com/nd/album/ui/adapter/AlbumListAdapter

.field private 'mAlbumList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/album/bean/AlbumInfo;>;"

.field private 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/album/ui/adapter/AlbumListAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/album/ui/adapter/AlbumListAdapter/mAlbumList Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/album/ui/adapter/AlbumListAdapter/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/nd/album/bean/AlbumInfo;
aload 0
getfield com/nd/album/ui/adapter/AlbumListAdapter/mAlbumList Ljava/util/ArrayList;
ifnull L0
iload 1
aload 0
getfield com/nd/album/ui/adapter/AlbumListAdapter/mAlbumList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmplt L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/album/ui/adapter/AlbumListAdapter/mAlbumList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/album/bean/AlbumInfo
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/album/ui/adapter/AlbumListAdapter/getItem(I)Lcom/nd/album/bean/AlbumInfo;
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
aload 0
getfield com/nd/album/ui/adapter/AlbumListAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/album/R$layout/album_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/album/ui/adapter/AlbumListAdapter$ViewHolder
dup
aload 0
invokespecial com/nd/album/ui/adapter/AlbumListAdapter$ViewHolder/<init>(Lcom/nd/album/ui/adapter/AlbumListAdapter;)V
astore 3
aload 3
aload 2
getstatic com/nd/album/R$id/ivCover I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/album/ui/adapter/AlbumListAdapter$ViewHolder/ivCover Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/album/R$id/tvTitle I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/adapter/AlbumListAdapter$ViewHolder/tvTitle Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/album/R$id/tvNum I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/album/ui/adapter/AlbumListAdapter$ViewHolder/tvNum Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/album/R$id/iv360Sign I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/album/ui/adapter/AlbumListAdapter$ViewHolder/iv360Sign Landroid/widget/ImageView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
iload 1
invokevirtual com/nd/album/ui/adapter/AlbumListAdapter/getItem(I)Lcom/nd/album/bean/AlbumInfo;
astore 4
aload 4
ifnull L2
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 4
getfield com/nd/album/bean/AlbumInfo/mCoverPicUrl Ljava/lang/String;
iconst_1
invokestatic com/product/android/commonInterface/album/Image/appendAlbumParams(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 3
getfield com/nd/album/ui/adapter/AlbumListAdapter$ViewHolder/ivCover Landroid/widget/ImageView;
aload 0
getfield com/nd/album/ui/adapter/AlbumListAdapter/mContext Landroid/content/Context;
invokestatic com/nd/album/data/ImageCacheOpt/getAlbumCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 3
getfield com/nd/album/ui/adapter/AlbumListAdapter$ViewHolder/tvTitle Landroid/widget/TextView;
aload 4
getfield com/nd/album/bean/AlbumInfo/mAlbumName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/album/ui/adapter/AlbumListAdapter$ViewHolder/tvNum Landroid/widget/TextView;
aload 0
getfield com/nd/album/ui/adapter/AlbumListAdapter/mContext Landroid/content/Context;
getstatic com/nd/album/R$string/album_pic_num I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 4
getfield com/nd/album/bean/AlbumInfo/mPicNum I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
invokevirtual com/nd/album/bean/AlbumInfo/isFullViewAlbum()Z
ifeq L3
aload 3
getfield com/nd/album/ui/adapter/AlbumListAdapter$ViewHolder/iv360Sign Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L2:
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/album/ui/adapter/AlbumListAdapter$ViewHolder
astore 3
goto L1
L3:
aload 3
getfield com/nd/album/ui/adapter/AlbumListAdapter$ViewHolder/iv360Sign Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
areturn
.limit locals 5
.limit stack 6
.end method

.method public setData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/album/bean/AlbumInfo;>;)V"
aload 0
aload 1
putfield com/nd/album/ui/adapter/AlbumListAdapter/mAlbumList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
