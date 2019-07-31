.bytecode 50.0
.class public synchronized com/nd/android/u/ui/chatBottomFunction/BottomFunction_Camera
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
getstatic com/nd/android/u/chat/R$drawable/app_capture I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLabel()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/list_grid_item_opencapture I
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
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
aload 1
astore 4
aload 1
ifnonnull L10
aload 2
ifnonnull L11
L12:
return
L11:
aload 2
invokevirtual android/support/v4/app/Fragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 4
L10:
invokestatic com/common/android/utils/SdCardUtils/isSdCardExist()Z
ifne L0
aload 4
getstatic com/nd/android/u/chat/R$string/chat_no_sdcard_photo I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
ldc "upload"
iconst_0
invokestatic com/product/android/utils/FileHelper/getDefaultImageFile(Ljava/lang/String;Z)Ljava/io/File;
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
astore 1
new android/content/Intent
dup
ldc "android.media.action.IMAGE_CAPTURE"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 5
aload 5
ldc "output"
aload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
L1:
aload 2
ifnull L8
L3:
aload 2
aload 5
iconst_2
invokevirtual android/support/v4/app/Fragment/startActivityForResult(Landroid/content/Intent;I)V
L4:
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
iconst_1
putfield com/nd/android/u/controller/ChatGlobalVariable/isOpenCamera Z
L5:
aload 3
ifnull L12
L6:
aload 3
aload 1
invokeinterface com/nd/android/u/controller/factory/ChatBottomFunctionFactory$ISpecialProccess/specialProccess(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
L7:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
L8:
aload 4
aload 5
iconst_2
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L9:
goto L4
.limit locals 6
.limit stack 3
.end method
