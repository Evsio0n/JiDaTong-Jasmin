.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/view/SelectPersonListItemView
.super android/widget/RelativeLayout

.field private 'mActivity' Landroid/app/Activity;

.field private 'mIvUserHeader' Landroid/widget/ImageView;

.field private 'mTvUserName' Landroid/widget/TextView;

.field private 'mTvUserSign' Landroid/widget/TextView;

.method public <init>(Landroid/app/Activity;)V
aload 0
aload 1
invokespecial android/widget/RelativeLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/view/SelectPersonListItemView/mActivity Landroid/app/Activity;
aload 0
invokespecial com/nd/android/backpacksystem/view/SelectPersonListItemView/initView()V
return
.limit locals 2
.limit stack 2
.end method

.method private initView()V
aload 0
getfield com/nd/android/backpacksystem/view/SelectPersonListItemView/mActivity Landroid/app/Activity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/backpacksystem/R$layout/select_gift_person_list_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/ivUserHeader I
invokevirtual com/nd/android/backpacksystem/view/SelectPersonListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/backpacksystem/view/SelectPersonListItemView/mIvUserHeader Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvUserName I
invokevirtual com/nd/android/backpacksystem/view/SelectPersonListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/view/SelectPersonListItemView/mTvUserName Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/backpacksystem/R$id/tvUserSign I
invokevirtual com/nd/android/backpacksystem/view/SelectPersonListItemView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/backpacksystem/view/SelectPersonListItemView/mTvUserSign Landroid/widget/TextView;
return
.limit locals 1
.limit stack 4
.end method

.method public setData(Lcom/product/android/commonInterface/contact/OapUserSimple;)V
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
iconst_2
aload 0
getfield com/nd/android/backpacksystem/view/SelectPersonListItemView/mIvUserHeader Landroid/widget/ImageView;
bipush 8
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JBLandroid/widget/ImageView;I)V
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/backpacksystem/view/SelectPersonListItemView/mTvUserName Landroid/widget/TextView;
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/signature Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/android/backpacksystem/view/SelectPersonListItemView/mTvUserSign Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/backpacksystem/view/SelectPersonListItemView/mTvUserName Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L2:
aload 0
getfield com/nd/android/backpacksystem/view/SelectPersonListItemView/mTvUserSign Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 5
.end method
