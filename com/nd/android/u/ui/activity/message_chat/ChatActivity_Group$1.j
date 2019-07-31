.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/message_chat/ChatActivity_Group$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/onResume()V
.inner class inner com/nd/android/u/ui/activity/message_chat/ChatActivity_Group$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Group;

.field final synthetic 'val$file' Ljava/io/File;

.method <init>(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Group;Ljava/io/File;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Group;
aload 0
aload 2
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group$1/val$file Ljava/io/File;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
iconst_2
aconst_null
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group$1/val$file Ljava/io/File;
iconst_0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Group;
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Group/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/sendMessage(ILjava/lang/String;Ljava/io/File;ILcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
return
.limit locals 1
.limit stack 5
.end method
