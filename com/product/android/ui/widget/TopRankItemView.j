.bytecode 50.0
.class public synchronized com/product/android/ui/widget/TopRankItemView
.super android/widget/RelativeLayout
.inner class inner com/product/android/ui/widget/TopRankItemView$1

.field public static final 'FIRST_LINE_TYPE' I = 1


.field public static final 'OTHER_LINE_TYPE' I = 3


.field public static final 'SECOND_LINE_TYPE' I = 2


.field private 'mContext' Landroid/content/Context;

.field private 'mIvHead' Lcom/product/android/ui/widget/TopCropImageView;

.field private 'mParams' Lcom/product/android/commonInterface/BaseCommonStruct;

.field private 'mTvName' Landroid/widget/TextView;

.field private 'mTvNum' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
putfield com/product/android/ui/widget/TopRankItemView/mParams Lcom/product/android/commonInterface/BaseCommonStruct;
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankItemView/mContext Landroid/content/Context;
aload 0
getfield com/product/android/ui/widget/TopRankItemView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/allcommon/R$layout/top_rank_item_view I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
invokevirtual com/product/android/ui/widget/TopRankItemView/init()V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
putfield com/product/android/ui/widget/TopRankItemView/mParams Lcom/product/android/commonInterface/BaseCommonStruct;
aload 0
aload 1
putfield com/product/android/ui/widget/TopRankItemView/mContext Landroid/content/Context;
aload 0
invokevirtual com/product/android/ui/widget/TopRankItemView/init()V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/product/android/ui/widget/TopRankItemView;)Lcom/product/android/commonInterface/BaseCommonStruct;
aload 0
getfield com/product/android/ui/widget/TopRankItemView/mParams Lcom/product/android/commonInterface/BaseCommonStruct;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/product/android/ui/widget/TopRankItemView;)Landroid/content/Context;
aload 0
getfield com/product/android/ui/widget/TopRankItemView/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public init()V
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/ivhead I
invokevirtual com/product/android/ui/widget/TopRankItemView/findViewById(I)Landroid/view/View;
checkcast com/product/android/ui/widget/TopCropImageView
putfield com/product/android/ui/widget/TopRankItemView/mIvHead Lcom/product/android/ui/widget/TopCropImageView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/tvname I
invokevirtual com/product/android/ui/widget/TopRankItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/TopRankItemView/mTvName Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/allcommon/R$id/tvnum I
invokevirtual com/product/android/ui/widget/TopRankItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/product/android/ui/widget/TopRankItemView/mTvNum Landroid/widget/TextView;
aload 0
new com/product/android/ui/widget/TopRankItemView$1
dup
aload 0
invokespecial com/product/android/ui/widget/TopRankItemView$1/<init>(Lcom/product/android/ui/widget/TopRankItemView;)V
invokevirtual com/product/android/ui/widget/TopRankItemView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public setData(Lcom/product/android/commonInterface/contact/RankInfo;IILcom/product/android/business/headImage/HeadImageLoader$ImageType;)V
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
getfield com/product/android/commonInterface/contact/RankInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual com/product/android/ui/widget/TopRankItemView/setTag(Ljava/lang/Object;)V
aload 0
getfield com/product/android/ui/widget/TopRankItemView/mTvName Landroid/widget/TextView;
aload 1
getfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/product/android/ui/widget/TopRankItemView/mTvNum Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield com/product/android/commonInterface/contact/RankInfo/total I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 3
iconst_1
if_icmpne L1
aload 0
getfield com/product/android/ui/widget/TopRankItemView/mTvNum Landroid/widget/TextView;
aconst_null
aconst_null
aload 0
invokevirtual com/product/android/ui/widget/TopRankItemView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$drawable/wbflow_toprankactivity_heart I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
L2:
aload 0
getfield com/product/android/ui/widget/TopRankItemView/mTvNum Landroid/widget/TextView;
iconst_3
invokevirtual android/widget/TextView/setCompoundDrawablePadding(I)V
iload 2
aload 1
getfield com/product/android/commonInterface/contact/RankInfo/uid J
aload 1
getfield com/product/android/commonInterface/contact/RankInfo/sysAvatarId I
aload 0
getfield com/product/android/ui/widget/TopRankItemView/mIvHead Lcom/product/android/ui/widget/TopCropImageView;
aload 4
invokestatic com/product/android/business/headImage/HeadImageLoader/displayRankImage(IJILandroid/widget/ImageView;Lcom/product/android/business/headImage/HeadImageLoader$ImageType;)V
return
L1:
aload 0
getfield com/product/android/ui/widget/TopRankItemView/mTvNum Landroid/widget/TextView;
aconst_null
aconst_null
aload 0
invokevirtual com/product/android/ui/widget/TopRankItemView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$drawable/flower_icon I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
aconst_null
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
goto L2
.limit locals 5
.limit stack 6
.end method
