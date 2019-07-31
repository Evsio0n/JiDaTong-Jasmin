.bytecode 50.0
.class public synchronized com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward
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
getstatic com/nd/android/u/chat/R$string/context_menu_item_forward I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isEnable(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 0
aload 1
putfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
istore 2
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
istore 3
iload 2
iconst_2
if_icmpeq L0
iload 2
iconst_3
if_icmpeq L0
iload 2
iconst_5
if_icmpne L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
iconst_3
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
istore 4
iload 2
iconst_1
if_icmpne L2
iload 3
bipush 80
if_icmpeq L0
iload 3
sipush 20481
if_icmpeq L0
L2:
iload 4
iconst_4
if_icmpeq L0
iload 4
iconst_2
if_icmpeq L0
iload 4
iconst_1
if_icmpeq L0
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
bipush 80
if_icmpeq L0
iconst_1
ireturn
.limit locals 5
.limit stack 2
.end method

.method public onClick(Landroid/content/Context;)V
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
iconst_1
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/setIstransmit(Z)V
aload 1
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 1
getstatic com/nd/android/u/chat/R$string/net_warn_no_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
new android/content/Intent
dup
aload 1
ldc com/nd/android/u/ui/activity/recent_contact/FwdMsgRectCactActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "repost_data"
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getGenerateId()Ljava/lang/String; 0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
ifne L1
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
instanceof java/lang/Long
ifeq L2
aload 2
ldc "repost_fid"
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
L3:
aload 2
ldc "repost_type"
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 1
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L2:
ldc "CHAT"
ldc "getFriend() not Long"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
goto L3
L1:
aload 2
ldc "repost_gid"
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemForward/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
goto L3
.limit locals 3
.limit stack 4
.end method
