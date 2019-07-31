.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter
.super android/widget/BaseAdapter

.field private 'mActivity' Landroid/content/Context;

.field private 'mGiftTotal' I

.field private 'mHeight' I

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
bipush 70
putfield com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/mHeight I
aload 0
iconst_0
putfield com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/mGiftTotal I
aload 0
aload 1
putfield com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/mActivity Landroid/content/Context;
aload 0
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/mActivity Landroid/content/Context;
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/mHeight I
invokestatic com/nd/android/backpacksystem/helper/Utils/dipToPx(Landroid/content/Context;I)I
putfield com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/mHeight I
return
.limit locals 2
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/mGiftTotal I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
iload 1
aconst_null
aconst_null
invokevirtual com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 2
.limit stack 4
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
checkcast com/nd/android/backpacksystem/widget/TDWheelTextView
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
new com/nd/android/backpacksystem/widget/TDWheelTextView
dup
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/mActivity Landroid/content/Context;
invokespecial com/nd/android/backpacksystem/widget/TDWheelTextView/<init>(Landroid/content/Context;)V
astore 2
aload 2
new com/nd/android/backpacksystem/widget/TDGallery$LayoutParams
dup
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/mHeight I
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/mHeight I
invokespecial com/nd/android/backpacksystem/widget/TDGallery$LayoutParams/<init>(II)V
invokevirtual com/nd/android/backpacksystem/widget/TDWheelTextView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
L0:
aload 2
getstatic com/nd/android/backpacksystem/R$drawable/bg_wheel_item I
invokevirtual com/nd/android/backpacksystem/widget/TDWheelTextView/setBackgroundResource(I)V
aload 2
aload 0
getfield com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/mActivity Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/backpacksystem/R$color/green_text I
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual com/nd/android/backpacksystem/widget/TDWheelTextView/setTextColor(I)V
aload 2
iload 1
iconst_1
iadd
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual com/nd/android/backpacksystem/widget/TDWheelTextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
.limit locals 4
.limit stack 5
.end method

.method public setData(I)V
aload 0
iload 1
putfield com/nd/android/backpacksystem/adapter/SelectCountWheelAdapter/mGiftTotal I
return
.limit locals 2
.limit stack 2
.end method
