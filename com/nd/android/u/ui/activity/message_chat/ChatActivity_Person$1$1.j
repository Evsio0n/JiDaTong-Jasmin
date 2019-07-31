.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/onItemSelect(Ljava/lang/String;)V
.inner class inner com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1
.inner class inner com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1

.field final synthetic 'this$1' Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1;

.method <init>(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1/this$1 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
getstatic com/nd/android/u/chatUtil/ChatHttpRequestlManager/INSTANCE Lcom/nd/android/u/chatUtil/ChatHttpRequestlManager;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1/this$1 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
invokestatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/access$000(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getTypeId()Ljava/lang/Object; 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1/this$1 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
invokestatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/access$000(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getUrl()Ljava/lang/String; 0
invokevirtual com/nd/android/u/chatUtil/ChatHttpRequestlManager/put(Ljava/lang/Object;Ljava/lang/String;)V
new com/nd/android/u/business/com/ProgressDownloadManager
dup
invokespecial com/nd/android/u/business/com/ProgressDownloadManager/<init>()V
astore 1
aload 1
ldc "CLOUDID"
getstatic com/product/android/business/config/Configuration/CLOUNDID Ljava/lang/String;
invokevirtual com/nd/android/u/business/com/ProgressDownloadManager/addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1/this$1 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
invokestatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/access$000(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getUrl()Ljava/lang/String; 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1/this$1 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
invokestatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/access$000(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
checkcast com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/getFile()Ljava/io/File;
invokevirtual com/nd/android/u/business/com/ProgressDownloadManager/startDownload(Ljava/lang/String;Ljava/io/File;)V
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1/this$1 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
invokestatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/access$000(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
checkcast com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio
invokevirtual com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/getFile()Ljava/io/File;
astore 1
aload 1
ifnull L0
aload 1
invokevirtual java/io/File/exists()Z
ifeq L0
iconst_3
aconst_null
aload 1
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1/this$1 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
invokestatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/access$000(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getDuration()I 0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1$1/this$1 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/sendMessage(ILjava/lang/String;Ljava/io/File;ILcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
L0:
return
.limit locals 2
.limit stack 5
.end method
