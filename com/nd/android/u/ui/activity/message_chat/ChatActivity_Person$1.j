.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1
.super java/lang/Object
.implements com/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener
.enclosing method com/nd/android/u/ui/activity/message_chat/ChatActivity_Person
.inner class inner com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1
.inner class inner com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;

.method <init>(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemSelect(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mQuickReplyType I
iconst_1
if_icmpeq L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mQuickReplyType I
iconst_2
if_icmpne L1
L0:
aload 1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
getstatic com/nd/android/u/chat/R$string/quick_reply_acknowledge I
invokevirtual com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/getString(I)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/getThanksFlowerMessage()Lcom/product/android/commonInterface/weibo/FlowerMessageInfo; 0
astore 1
aload 1
ifnonnull L2
return
L2:
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
ifne L3
iconst_0
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_text Ljava/lang/String;
aconst_null
iconst_0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/sendMessage(ILjava/lang/String;Ljava/io/File;ILcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
return
L3:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
new com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio
dup
invokespecial com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/<init>()V
invokestatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/access$002(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
pop
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
invokestatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/access$000(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/generalId J
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setDefaultValue(J)V 2
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
invokestatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/access$000(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 1
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_voice Ljava/lang/String;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/setUrl(Ljava/lang/String;)V 1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
invokestatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/access$000(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getPath()Ljava/lang/String; 0
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifeq L5
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
new com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1/<init>(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1;)V
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/excuteRequest(Ljava/lang/Runnable;)V
return
L5:
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
getstatic com/nd/android/u/chat/R$string/net_warn_no_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L4:
iconst_3
aconst_null
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
invokestatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/access$000(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDuration()I 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/sendMessage(ILjava/lang/String;Ljava/io/File;ILcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
return
L1:
iconst_0
aload 1
aconst_null
iconst_0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/sendMessage(ILjava/lang/String;Ljava/io/File;ILcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
return
.limit locals 2
.limit stack 5
.end method
