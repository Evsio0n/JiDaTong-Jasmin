.bytecode 50.0
.class public synchronized com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset
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

.method private isReceivedAudioFile()Z
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getFileName()Ljava/lang/String; 0
astore 3
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
istore 1
iload 1
bipush 80
if_icmpeq L5
iload 1
sipush 20481
if_icmpne L6
L5:
aload 3
ifnull L6
aload 3
ldc ".amr"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L6
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/isFromSelf()Z 0
ifne L6
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getExtraFlag()I 0
bipush 7
if_icmpne L6
L0:
aload 3
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getOriMessage()Ljava/lang/String; 0
invokestatic com/product/android/utils/FileHelper/getDefaultDownloadFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
astore 3
L1:
aload 3
ifnull L6
L3:
aload 3
invokevirtual java/io/File/exists()Z
istore 2
L4:
iload 2
ifeq L6
iconst_1
ireturn
L2:
astore 3
aload 3
invokevirtual java/io/IOException/printStackTrace()V
L6:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method

.method public getLabel()Ljava/lang/String;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/chat/R$string/context_menu_item_switch_handset I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public isEnable(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Z
aload 0
aload 1
putfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_2
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_3
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageType()I 0
iconst_5
if_icmpne L1
L0:
iconst_0
ireturn
L1:
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
invokevirtual com/common/android/utils/audio/AudioPlayer/getMode()I
iconst_2
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getMessageContentType()I 0
iconst_3
if_icmpeq L2
aload 0
invokespecial com/nd/android/u/ui/longClickMenu/messageList/MenuItemSwitchHandset/isReceivedAudioFile()Z
ifeq L0
L2:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/Context;)V
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
iconst_2
invokevirtual com/common/android/utils/audio/AudioPlayer/setMode(I)V
return
.limit locals 2
.limit stack 2
.end method
