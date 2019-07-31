.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity$1
.super java/lang/Object
.implements com/nd/android/u/ui/widge/chatfragment/PopQuickReply$onItemSelectListener
.enclosing method com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity
.inner class inner com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity;

.method <init>(Lcom/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemSelect(Ljava/lang/String;)V
iconst_0
aload 1
aconst_null
iconst_0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity$1/this$0 Lcom/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity;
getfield com/nd/android/u/ui/activity/message_chat/BaseChatMessageActivity/mDataSupplier Lcom/nd/android/u/controller/innerInterface/IUIDataSupplier;
invokestatic com/nd/android/u/chatUiUtils/SendMessageUtil/sendMessage(ILjava/lang/String;Ljava/io/File;ILcom/nd/android/u/controller/innerInterface/IUIDataSupplier;)V
return
.limit locals 2
.limit stack 5
.end method
