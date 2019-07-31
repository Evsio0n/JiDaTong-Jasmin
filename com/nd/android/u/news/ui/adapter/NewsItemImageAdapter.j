.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/adapter/NewsItemImageAdapter
.super android/widget/BaseAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mImageUrlList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/mContext Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/mImageUrlList Ljava/util/ArrayList;
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/mImageUrlList Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/mImageUrlList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/mImageUrlList Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/mImageUrlList Ljava/util/ArrayList;
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
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/mImageUrlList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/mImageUrlList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/news/R$layout/image_gridview_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 2
getstatic com/nd/android/u/news/R$id/album_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 3
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/mImageUrlList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
aload 3
aload 0
getfield com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/mContext Landroid/content/Context;
invokestatic com/nd/android/u/news/NewsGlobalSetting/getNewsCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public setData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/String;>;)V"
aload 0
aload 1
putfield com/nd/android/u/news/ui/adapter/NewsItemImageAdapter/mImageUrlList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
