.bytecode 50.0
.class public synchronized com/nd/android/u/ui/chatBottomFunction/BottomFunction_File
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IBottomFunction

.field private 'label' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/u/ui/chatBottomFunction/BottomFunction_File/label Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getAppResId()I
getstatic com/nd/android/u/chat/R$drawable/app_file I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLabel()Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/chatBottomFunction/BottomFunction_File/label Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isEnable(IJ)Z
iload 1
iconst_5
if_icmpeq L0
iload 1
iconst_1
if_icmpne L1
lload 2
ldc2_w 2L
lcmp
ifne L1
L0:
iconst_0
ireturn
L1:
iload 1
iconst_1
if_icmpne L2
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/list_grid_item_share_file I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/ui/chatBottomFunction/BottomFunction_File/label Ljava/lang/String;
iconst_1
ireturn
L2:
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/list_grid_item_file I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/nd/android/u/ui/chatBottomFunction/BottomFunction_File/label Ljava/lang/String;
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public onClick(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory$ISpecialProccess;)V
aload 1
ifnonnull L0
return
L0:
aload 1
invokestatic com/product/android/utils/FileHelper/getStorageDirectories(Landroid/content/Context;)Ljava/util/HashMap;
astore 3
aload 3
ifnull L1
aload 3
invokevirtual java/util/HashMap/size()I
ifle L1
new android/content/Intent
dup
aload 1
ldc com/nd/teamfile/activity/FMLocalFileActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 4
aload 4
ldc "PATH_DIRS"
aload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 2
ifnull L2
aload 2
aload 4
bipush 8
invokevirtual android/support/v4/app/Fragment/startActivityForResult(Landroid/content/Intent;I)V
return
L2:
aload 1
aload 4
bipush 8
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
return
L1:
aload 1
getstatic com/nd/android/u/chat/R$string/chat_no_file_dir I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 5
.limit stack 4
.end method
