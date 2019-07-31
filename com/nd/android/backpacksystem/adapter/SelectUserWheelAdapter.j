.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/adapter/SelectUserWheelAdapter
.super android/widget/BaseAdapter

.field private 'mActivity' Landroid/content/Context;

.field private 'mHeight' I

.method public <init>(Landroid/content/Context;[Ljava/lang/String;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
bipush 70
putfield com/nd/android/backpacksystem/adapter/SelectUserWheelAdapter/mHeight I
aload 0
aload 1
putfield com/nd/android/backpacksystem/adapter/SelectUserWheelAdapter/mActivity Landroid/content/Context;
aload 0
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectUserWheelAdapter/mActivity Landroid/content/Context;
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectUserWheelAdapter/mHeight I
invokestatic com/nd/android/backpacksystem/helper/Utils/dipToPx(Landroid/content/Context;I)I
putfield com/nd/android/backpacksystem/adapter/SelectUserWheelAdapter/mHeight I
return
.limit locals 3
.limit stack 3
.end method

.method public getCount()I
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Landroid/view/View;
aload 0
iload 1
aconst_null
aconst_null
invokevirtual com/nd/android/backpacksystem/adapter/SelectUserWheelAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 2
.limit stack 4
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/backpacksystem/adapter/SelectUserWheelAdapter/getItem(I)Landroid/view/View;
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
aload 2
checkcast com/nd/android/backpacksystem/widget/TDWheelImageView
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
new com/nd/android/backpacksystem/widget/TDWheelImageView
dup
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectUserWheelAdapter/mActivity Landroid/content/Context;
invokespecial com/nd/android/backpacksystem/widget/TDWheelImageView/<init>(Landroid/content/Context;)V
astore 2
aload 2
new com/nd/android/backpacksystem/widget/TDGallery$LayoutParams
dup
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectUserWheelAdapter/mHeight I
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectUserWheelAdapter/mHeight I
invokespecial com/nd/android/backpacksystem/widget/TDGallery$LayoutParams/<init>(II)V
invokevirtual com/nd/android/backpacksystem/widget/TDWheelImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
L0:
aload 2
areturn
.limit locals 4
.limit stack 5
.end method
