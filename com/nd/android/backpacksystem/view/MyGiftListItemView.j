.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/view/MyGiftListItemView
.super android/widget/RelativeLayout

.field private 'mActivity' Landroid/app/Activity;

.field private 'mIvGiftImage' Landroid/widget/ImageView;

.field private 'mIvShelf' Landroid/widget/ImageView;

.field private 'mIvShelfWhite' Landroid/widget/ImageView;

.field private 'mMyGiftInfo' Lcom/nd/android/backpacksystem/data/MyItems;

.field private 'mRlGiftName' Landroid/widget/RelativeLayout;

.field private 'mTvGiftName' Landroid/widget/TextView;

.field private 'mTvGiftTotal' Landroid/widget/TextView;

.field private 'mTvValidTime' Landroid/widget/TextView;

.method public <init>(Landroid/app/Activity;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/view/MyGiftListItemView/mActivity Landroid/app/Activity;
aload 0
invokespecial com/nd/android/backpacksystem/view/MyGiftListItemView/initView()V
return
.limit locals 2
.limit stack 2
.end method

.method private initView()V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mActivity Landroid/app/Activity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/backpacksystem/R$layout/my_gift_gridview_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivShelf I
invokevirtual com/nd/android/backpacksystem/view/MyGiftListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/view/MyGiftListItemView/mIvShelf Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivGiftImage I
invokevirtual com/nd/android/backpacksystem/view/MyGiftListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/view/MyGiftListItemView/mIvGiftImage Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivShelfWhite I
invokevirtual com/nd/android/backpacksystem/view/MyGiftListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/view/MyGiftListItemView/mIvShelfWhite Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/rlGiftName I
invokevirtual com/nd/android/backpacksystem/view/MyGiftListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/backpacksystem/view/MyGiftListItemView/mRlGiftName Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvGiftName I
invokevirtual com/nd/android/backpacksystem/view/MyGiftListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvGiftName Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvGiftTotal I
invokevirtual com/nd/android/backpacksystem/view/MyGiftListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvGiftTotal Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvValidTime I
invokevirtual com/nd/android/backpacksystem/view/MyGiftListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvValidTime Landroid/widget/TextView;
return
.limit locals 1
.limit stack 4
.end method

.method private unEmptyItem()V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mIvShelfWhite Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mIvGiftImage Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mRlGiftName Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvGiftTotal Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvValidTime Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public emptyItem(I)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mIvShelf Landroid/widget/ImageView;
iload 1
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
L0:
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mIvShelfWhite Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mIvGiftImage Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mRlGiftName Landroid/widget/RelativeLayout;
iconst_4
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvGiftTotal Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvValidTime Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setData(ILcom/nd/android/backpacksystem/data/MyItems;)V
aload 0
aload 2
putfield com/nd/android/backpacksystem/view/MyGiftListItemView/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getItemTypeId()I
i2l
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/getItemProperty(J)Lcom/nd/android/backpacksystem/data/BaseItemProperty;
astore 2
aload 2
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mIvShelfWhite Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mRlGiftName Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 2
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getIconUrl()Ljava/lang/String;
astore 3
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mIvGiftImage Landroid/widget/ImageView;
getstatic com/nd/android/backpacksystem/R$drawable/icon_gift_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mIvGiftImage Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mIvGiftImage Landroid/widget/ImageView;
invokestatic com/nd/android/backpacksystem/helper/DisplayUtil/displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
L2:
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getAmount()I
ifle L3
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvGiftTotal Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getAmount()I
sipush 999
if_icmple L4
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvGiftTotal Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/max_value I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L5:
aload 0
invokespecial com/nd/android/backpacksystem/view/MyGiftListItemView/unEmptyItem()V
aload 2
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getName()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L6
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvGiftName Landroid/widget/TextView;
aload 2
invokevirtual com/nd/android/backpacksystem/data/BaseItemProperty/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L7:
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/formatDelTime()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L8
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvValidTime Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvValidTime Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/formatDelTime()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L9:
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/isWithIn24Hours()Z
ifeq L10
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvGiftName Landroid/widget/TextView;
ldc_w -65536
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvValidTime Landroid/widget/TextView;
getstatic com/nd/android/backpacksystem/R$drawable/bg_limit_time_less_than_24h I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
L11:
iload 1
ifeq L1
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mIvShelf Landroid/widget/ImageView;
iload 1
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
L4:
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvGiftTotal Landroid/widget/TextView;
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mMyGiftInfo Lcom/nd/android/backpacksystem/data/MyItems;
invokevirtual com/nd/android/backpacksystem/data/MyItems/getAmount()I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L5
L3:
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/view/MyGiftListItemView/emptyItem(I)V
return
L6:
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvGiftName Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L7
L8:
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvValidTime Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvValidTime Landroid/widget/TextView;
iconst_4
invokevirtual android/widget/TextView/setVisibility(I)V
goto L9
L10:
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvGiftName Landroid/widget/TextView;
ldc_w -16777216
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/backpacksystem/view/MyGiftListItemView/mTvValidTime Landroid/widget/TextView;
getstatic com/nd/android/backpacksystem/R$drawable/bg_limit_time_greater_than_24h I
invokevirtual android/widget/TextView/setBackgroundResource(I)V
goto L11
.limit locals 4
.limit stack 3
.end method
