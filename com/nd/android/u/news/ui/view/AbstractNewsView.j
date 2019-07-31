.bytecode 50.0
.class public synchronized abstract com/nd/android/u/news/ui/view/AbstractNewsView
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/news/ui/view/AbstractNewsView$1

.field public static final 'PIC_URL' Ljava/lang/String; = "url"

.field protected 'iv' Luk/co/senab/photoview/PhotoView;

.field protected 'mContext' Landroid/content/Context;

.field private 'url' Ljava/lang/String;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/AbstractNewsView/mContext Landroid/content/Context;
aload 0
aload 1
invokevirtual com/nd/android/u/news/ui/view/AbstractNewsView/initComponent(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/AbstractNewsView/mContext Landroid/content/Context;
aload 0
aload 1
invokevirtual com/nd/android/u/news/ui/view/AbstractNewsView/initComponent(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "NewApi" 
.end annotation
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/AbstractNewsView/mContext Landroid/content/Context;
aload 0
aload 1
invokevirtual com/nd/android/u/news/ui/view/AbstractNewsView/initComponent(Landroid/content/Context;)V
return
.limit locals 4
.limit stack 4
.end method

.method public initComponent(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/AbstractNewsView/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/news/ui/view/AbstractNewsView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/news/R$layout/news_pager_layout I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/news/R$id/iv_news_photo I
invokevirtual com/nd/android/u/news/ui/view/AbstractNewsView/findViewById(I)Landroid/view/View;
checkcast uk/co/senab/photoview/PhotoView
putfield com/nd/android/u/news/ui/view/AbstractNewsView/iv Luk/co/senab/photoview/PhotoView;
aload 0
getfield com/nd/android/u/news/ui/view/AbstractNewsView/iv Luk/co/senab/photoview/PhotoView;
iconst_0
invokevirtual uk/co/senab/photoview/PhotoView/setReturnWhenClick(Z)V
aload 0
getfield com/nd/android/u/news/ui/view/AbstractNewsView/iv Luk/co/senab/photoview/PhotoView;
new com/nd/android/u/news/ui/view/AbstractNewsView$1
dup
aload 0
invokespecial com/nd/android/u/news/ui/view/AbstractNewsView$1/<init>(Lcom/nd/android/u/news/ui/view/AbstractNewsView;)V
invokevirtual uk/co/senab/photoview/PhotoView/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
aload 0
invokevirtual com/nd/android/u/news/ui/view/AbstractNewsView/setViewOnClick()V
return
.limit locals 2
.limit stack 4
.end method

.method public setNewsPic(Ljava/lang/String;)V
aload 1
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/view/AbstractNewsView/iv Luk/co/senab/photoview/PhotoView;
getstatic com/nd/android/u/news/R$drawable/bg_news_default_pic I
invokevirtual uk/co/senab/photoview/PhotoView/setImageResource(I)V
aload 0
getfield com/nd/android/u/news/ui/view/AbstractNewsView/iv Luk/co/senab/photoview/PhotoView;
aconst_null
invokevirtual uk/co/senab/photoview/PhotoView/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
return
L0:
aload 0
aload 1
putfield com/nd/android/u/news/ui/view/AbstractNewsView/url Ljava/lang/String;
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
aload 1
aload 0
getfield com/nd/android/u/news/ui/view/AbstractNewsView/iv Luk/co/senab/photoview/PhotoView;
aload 0
getfield com/nd/android/u/news/ui/view/AbstractNewsView/mContext Landroid/content/Context;
invokestatic com/nd/android/u/news/NewsGlobalSetting/getNewsNoCacheOpt(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
return
.limit locals 2
.limit stack 5
.end method

.method public abstract setViewOnClick()V
.end method

.method protected toDownloadPhoto()V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/news/ui/view/AbstractNewsView/mContext Landroid/content/Context;
ldc com/nd/android/u/news/ui/activity/DownloadPhotoActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "url"
aload 0
getfield com/nd/android/u/news/ui/view/AbstractNewsView/url Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/news/ui/view/AbstractNewsView/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method
