.bytecode 50.0
.class public synchronized com/nd/android/u/ui/longClickMenu/messageList/MenuItemResend
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IChatListLongClickMenu

.field private 'mMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getLabel()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/context_menu_item_resend I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isEnable(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 0
aload 1
putfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemResend/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemResend/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_2
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemResend/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_3
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemResend/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_5
if_icmpne L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemResend/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
iconst_2
if_icmpeq L2
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemResend/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
iconst_4
if_icmpne L0
L2:
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemResend/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifeq L0
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemResend/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/resend()V 0
return
.limit locals 2
.limit stack 1
.end method
