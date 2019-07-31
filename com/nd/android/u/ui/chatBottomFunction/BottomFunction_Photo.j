.bytecode 50.0
.class public synchronized com/nd/android/u/ui/chatBottomFunction/BottomFunction_Photo
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IBottomFunction

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getAppResId()I
getstatic com/nd/android/u/chat/R$drawable/app_photo I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLabel()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/list_grid_item_photo I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isEnable(IJ)Z
iconst_1
ireturn
.limit locals 4
.limit stack 1
.end method

.method public onClick(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory$ISpecialProccess;)V
aload 1
ifnonnull L0
aload 2
ifnonnull L0
return
L0:
aload 2
ifnull L1
aload 2
invokestatic com/nd/android/u/chatUiUtils/ChatViewUtil/openPhotoLibrary(Ljava/lang/Object;)V
return
L1:
aload 1
invokestatic com/nd/android/u/chatUiUtils/ChatViewUtil/openPhotoLibrary(Ljava/lang/Object;)V
return
.limit locals 4
.limit stack 1
.end method
