.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter
.super android/widget/BaseAdapter
.inner class UploadImageAdapter inner com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter outer com/android/u/weibo/weibo/ui/activity/TweetComposeActivity

.field private 'mContext' Landroid/content/Context;

.field private 'mImgWidth' I

.field private 'mPaths' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;

.method public <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Ljava/lang/String;>;)V"
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mImgWidth I
aload 0
aload 3
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mPaths Ljava/util/ArrayList;
aload 0
aload 2
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mContext Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$dimen/thumbnail_spacing I
invokevirtual android/content/res/Resources/getDimension(I)F
fstore 4
new android/util/DisplayMetrics
dup
invokespecial android/util/DisplayMetrics/<init>()V
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mContext Landroid/content/Context;
ldc "window"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/WindowManager
invokeinterface android/view/WindowManager/getDefaultDisplay()Landroid/view/Display; 0
aload 1
invokevirtual android/view/Display/getMetrics(Landroid/util/DisplayMetrics;)V
aload 0
aload 1
getfield android/util/DisplayMetrics/widthPixels I
i2f
ldc_w 3.0F
fdiv
fload 4
fsub
f2i
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mImgWidth I
return
.limit locals 5
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mPaths Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)I
if_icmpge L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
iadd
ireturn
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mPaths Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mPaths Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
L0:
aconst_null
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
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/tweet_image_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 2
getstatic com/android/u/weibo/R$id/album_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 3
aload 3
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 5
aload 3
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 6
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mImgWidth I
istore 4
aload 6
iload 4
putfield android/view/ViewGroup$LayoutParams/height I
aload 5
iload 4
putfield android/view/ViewGroup$LayoutParams/width I
aload 3
getstatic com/android/u/weibo/R$drawable/photo_frame I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mPaths Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/access$300(Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;)I
if_icmpge L0
aload 0
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/getCount()I
iload 1
iconst_1
iadd
if_icmpne L0
aload 3
getstatic com/android/u/weibo/R$layout/add_photo_selector I
invokevirtual android/widget/ImageView/setImageResource(I)V
L1:
aload 2
areturn
L0:
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/getItem(I)Ljava/lang/Object;
checkcast java/lang/String
astore 5
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "file://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 5
aload 3
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetComposeActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity/mAvoidOOMOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 2
areturn
.limit locals 7
.limit stack 4
.end method

.method public setData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/String;>;)V"
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetComposeActivity$UploadImageAdapter/mPaths Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
