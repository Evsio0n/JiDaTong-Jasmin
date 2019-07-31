.bytecode 50.0
.class public synchronized com/nd/android/u/ui/longClickMenu/messageList/MenuItemTask
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
getstatic com/nd/android/u/chat/R$string/context_menu_item_task I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isEnable(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 0
aload 1
putfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemTask/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemTask/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/Context;)V
ldc ""
astore 3
aload 3
astore 2
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemTask/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
lookupswitch
0 : L0
3 : L1
80 : L2
101 : L3
20480 : L1
20481 : L2
default : L4
L4:
return
L0:
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemTask/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDisplayDatas()Ljava/util/ArrayList; 0
astore 2
aload 2
ifnonnull L5
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemTask/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getOriMessage()Ljava/lang/String; 0
astore 2
L3:
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemTask/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
instanceof java/lang/Long
ifeq L6
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 1
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemTask/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
aload 2
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/allocateTask(Landroid/content/Context;JLjava/lang/String;)V 4
return
L5:
aload 2
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 4
L7:
aload 3
astore 2
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
astore 2
aload 2
instanceof java/lang/String
ifeq L8
aload 2
checkcast java/lang/String
astore 2
goto L3
L8:
aload 2
instanceof android/text/SpannableString
ifeq L7
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
iconst_0
invokevirtual com/common/android/utils/smiley/Smileyhelper/showSmileyByTip(Ljava/lang/String;I)Ljava/lang/String;
astore 2
goto L3
L1:
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemTask/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getOriMessage()Ljava/lang/String; 0
astore 2
goto L3
L2:
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemTask/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getOriMessage()Ljava/lang/String; 0
astore 2
goto L3
L6:
ldc "CHAT"
ldc "getFriendId() is not Long"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 5
.end method
