.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView
.super android/widget/RelativeLayout

.field private 'ivHeader' Landroid/widget/ImageView;

.field private 'mContext' Landroid/content/Context;

.field private 'mRankInfo' Lcom/product/android/commonInterface/contact/RankInfo;

.field private 'tvName' Landroid/widget/TextView;

.field private 'tvNum' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/mContext Landroid/content/Context;
aload 0
invokespecial com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/initView()V
return
.limit locals 2
.limit stack 2
.end method

.method private initView()V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/wbflow_top_rank_by_time_item_view I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/android/u/weibo/R$id/ivHeader I
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/ivHeader Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvName I
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/tvName Landroid/widget/TextView;
aload 0
aload 0
getstatic com/android/u/weibo/R$id/tvNum I
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/tvNum Landroid/widget/TextView;
return
.limit locals 1
.limit stack 4
.end method

.method public initData(Lcom/product/android/commonInterface/contact/RankInfo;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/mRankInfo Lcom/product/android/commonInterface/contact/RankInfo;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/mRankInfo Lcom/product/android/commonInterface/contact/RankInfo;
getfield com/product/android/commonInterface/contact/RankInfo/uid J
aload 1
getfield com/product/android/commonInterface/contact/RankInfo/sysAvatarId I
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/ivHeader Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/tvName Landroid/widget/TextView;
aload 1
getfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/tvNum Landroid/widget/TextView;
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/mContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/have_send_flower I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/mRankInfo Lcom/product/android/commonInterface/contact/RankInfo;
getfield com/product/android/commonInterface/contact/RankInfo/total I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 6
.end method
