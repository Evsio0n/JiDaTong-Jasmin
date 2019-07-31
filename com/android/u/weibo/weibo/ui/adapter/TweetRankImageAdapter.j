.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter
.super android/widget/BaseAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mImgHeight' I

.field private 'mImgWidth' I

.field private 'mUid' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/WbUserInfo;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mContext Landroid/content/Context;
aload 0
aconst_null
putfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mUid Ljava/util/ArrayList;
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mUid Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mUid Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mUid Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mUid Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/WbUserInfo
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
getfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mUid Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mUid Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/rank_tweet_image_item I
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
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mImgWidth I
putfield android/view/ViewGroup$LayoutParams/width I
aload 3
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mImgHeight I
putfield android/view/ViewGroup$LayoutParams/height I
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mUid Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/WbUserInfo
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 0
getfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mUid Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/WbUserInfo
getfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 3
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public setData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/weibo/WbUserInfo;>;)V"
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mUid Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setImgSize(II)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mImgWidth I
aload 0
iload 2
putfield com/android/u/weibo/weibo/ui/adapter/TweetRankImageAdapter/mImgHeight I
return
.limit locals 3
.limit stack 2
.end method
