.bytecode 50.0
.class public synchronized com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy
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
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
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

.method private getCopyTextContent(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/String;
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
lookupswitch
3 : L0
4 : L1
80 : L2
20480 : L0
20481 : L2
default : L3
L3:
ldc ""
astore 2
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
invokevirtual java/util/ArrayList/size()I
ifne L4
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayContent()Ljava/lang/String; 0
astore 2
L5:
aload 2
areturn
L1:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_vidio I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_audio I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L2:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/chat_file I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L4:
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 3
aload 2
astore 1
L6:
aload 1
astore 2
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
astore 2
aload 2
instanceof java/lang/String
ifeq L7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L6
L7:
aload 2
instanceof android/text/SpannableString
ifeq L8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L6
L8:
aload 2
instanceof com/nd/android/u/controller/bean/ImageMessage
ifeq L6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&<img>"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
checkcast com/nd/android/u/controller/bean/ImageMessage
invokevirtual com/nd/android/u/controller/bean/ImageMessage/getImgurl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "<img>&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
goto L6
.limit locals 4
.limit stack 2
.end method

.method private isCopyableMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 1
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
istore 2
iload 2
iconst_3
if_icmpeq L0
iload 2
sipush 20480
if_icmpeq L0
iload 2
bipush 80
if_icmpeq L0
iload 2
sipush 20481
if_icmpne L1
L0:
iconst_0
ireturn
L1:
aload 0
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/containImage()Z
ifne L0
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getLabel()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/context_menu_item_copy I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isEnable(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 0
aload 1
putfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_2
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_3
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_5
if_icmpne L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
ifne L2
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayContent()Ljava/lang/String; 0
invokestatic com/nd/android/u/allCommonUtils/UrlUtils/isHtml(Ljava/lang/String;)Z
ifne L0
iconst_1
ireturn
L2:
aload 0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/isCopyableMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/Context;)V
aload 1
ldc "clipboard"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/text/ClipboardManager
aload 0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemCopy/getCopyTextContent(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Ljava/lang/String;
invokevirtual android/text/ClipboardManager/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 3
.end method
