.bytecode 50.0
.class public synchronized com/nd/android/u/ui/chatBottomFunction/BottomFunction_Smiley
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IBottomFunction

.field private 'mMessageType' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getAppResId()I
getstatic com/nd/android/u/chat/R$drawable/app_shake I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLabel()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/list_grid_item_smiley I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isEnable(IJ)Z
aload 0
iload 1
putfield com/nd/android/u/ui/chatBottomFunction/BottomFunction_Smiley/mMessageType I
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/nd/android/u/controller/factory/ChatBottomFunctionFactory$ISpecialProccess;)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
bipush 23
putfield android/os/Message/what I
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/ui/chatBottomFunction/BottomFunction_Smiley/mMessageType I
aload 1
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
return
.limit locals 4
.limit stack 3
.end method
