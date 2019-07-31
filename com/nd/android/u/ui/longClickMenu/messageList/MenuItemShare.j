.bytecode 50.0
.class public synchronized com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare
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

.method private containImage()Z
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L2:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
astore 2
aload 2
instanceof com/nd/android/u/controller/bean/ImageMessage
ifeq L2
aload 2
checkcast com/nd/android/u/controller/bean/ImageMessage
astore 2
aload 2
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getType()I
sipush 256
if_icmpeq L3
aload 2
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getType()I
sipush 259
if_icmpeq L3
aload 2
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getType()I
sipush 257
if_icmpne L2
L3:
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getLabel()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/context_menu_item_share I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isEnable(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 0
aload 1
putfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_2
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_3
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_5
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
ifne L1
L0:
iconst_0
ireturn
L1:
aload 0
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare/containImage()Z
ifne L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
iconst_3
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
bipush 80
if_icmpeq L0
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayContent()Ljava/lang/String; 0
astore 2
aload 0
invokevirtual com/nd/android/u/ui/longClickMenu/messageList/MenuItemShare/getLabel()Ljava/lang/String;
astore 3
new android/content/Intent
dup
ldc "android.intent.action.SEND"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 4
aload 4
ldc "text/plain"
invokevirtual android/content/Intent/setType(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 4
ldc "android.intent.extra.SUBJECT"
aload 3
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 4
ldc "android.intent.extra.TEXT"
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 2
iconst_0
invokevirtual com/common/android/utils/smiley/Smileyhelper/showSmileyByTip(Ljava/lang/String;I)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
aload 4
aload 3
invokestatic android/content/Intent/createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 5
.limit stack 5
.end method
