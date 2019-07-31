.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/FixedBannerView
.super android/widget/LinearLayout
.inner class inner com/nd/schoollife/ui/square/view/FixedBannerView$1

.field private 'mContext' Landroid/content/Context;

.field private 'mIvBannerItem' Landroid/widget/ImageView;

.field private 'mLayoutInflater' Landroid/view/LayoutInflater;

.field private 'mSearchLinearLayout' Landroid/widget/LinearLayout;

.field private 'mTvBannerItem' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/square/view/FixedBannerView/initView(Landroid/content/Context;)V
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
invokespecial com/nd/schoollife/ui/square/view/FixedBannerView/initView(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/schoollife/ui/square/view/FixedBannerView;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/view/FixedBannerView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private initView(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/view/FixedBannerView/mContext Landroid/content/Context;
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/FixedBannerView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/schoollife/ui/square/view/FixedBannerView/mLayoutInflater Landroid/view/LayoutInflater;
aload 0
getfield com/nd/schoollife/ui/square/view/FixedBannerView/mLayoutInflater Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/fixed_square_banner I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 1
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/view/FixedBannerView/addView(Landroid/view/View;)V
aload 0
aload 1
getstatic com/nd/schoollife/R$id/ll_square_search I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/schoollife/ui/square/view/FixedBannerView/mSearchLinearLayout Landroid/widget/LinearLayout;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/tv_square_banner_item I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/schoollife/ui/square/view/FixedBannerView/mTvBannerItem Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/iv_square_banner_item I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/schoollife/ui/square/view/FixedBannerView/mIvBannerItem Landroid/widget/ImageView;
aload 0
getfield com/nd/schoollife/ui/square/view/FixedBannerView/mTvBannerItem Landroid/widget/TextView;
ldc "\u65b0\u751f\u76f4\u901a\u8f66"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
getstatic com/nd/schoollife/R$id/rl_square_banner I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
new com/nd/schoollife/ui/square/view/FixedBannerView$1
dup
aload 0
invokespecial com/nd/schoollife/ui/square/view/FixedBannerView$1/<init>(Lcom/nd/schoollife/ui/square/view/FixedBannerView;)V
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 5
.end method

.method public setSearchBarClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/schoollife/ui/square/view/FixedBannerView/mSearchLinearLayout Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 2
.limit stack 2
.end method
