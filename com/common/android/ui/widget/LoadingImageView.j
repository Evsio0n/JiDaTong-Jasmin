.bytecode 50.0
.class public synchronized com/common/android/ui/widget/LoadingImageView
.super android/widget/ImageView

.field private 'mAnimation' Landroid/view/animation/Animation;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/common/android/ui/widget/LoadingImageView/init(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
invokespecial com/common/android/ui/widget/LoadingImageView/init(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
invokespecial com/common/android/ui/widget/LoadingImageView/init(Landroid/content/Context;)V
return
.limit locals 4
.limit stack 4
.end method

.method private init(Landroid/content/Context;)V
aload 0
getstatic com/nd/android/u/allcommon/R$drawable/common_icon_loading I
invokevirtual com/common/android/ui/widget/LoadingImageView/setBackgroundResource(I)V
aload 0
aload 1
getstatic com/nd/android/u/allcommon/R$anim/loading I
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
putfield com/common/android/ui/widget/LoadingImageView/mAnimation Landroid/view/animation/Animation;
aload 0
aload 0
getfield com/common/android/ui/widget/LoadingImageView/mAnimation Landroid/view/animation/Animation;
invokevirtual com/common/android/ui/widget/LoadingImageView/startAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setLoadingIcon(I)V
aload 0
iload 1
invokevirtual com/common/android/ui/widget/LoadingImageView/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setVisibility(I)V
aload 0
iload 1
invokespecial android/widget/ImageView/setVisibility(I)V
iload 1
ifne L0
aload 0
aload 0
getfield com/common/android/ui/widget/LoadingImageView/mAnimation Landroid/view/animation/Animation;
invokevirtual com/common/android/ui/widget/LoadingImageView/startAnimation(Landroid/view/animation/Animation;)V
return
L0:
aload 0
aconst_null
invokevirtual com/common/android/ui/widget/LoadingImageView/setAnimation(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 2
.end method
