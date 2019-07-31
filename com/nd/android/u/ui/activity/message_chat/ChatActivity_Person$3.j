.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$3
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/getFlowerAndBirthdayInfo(J)V
.inner class inner com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$3

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;

.field final synthetic 'val$fid' J

.method <init>(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;J)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$3/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
aload 0
lload 2
putfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$3/val$fid J
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 3
.end method

.method public run()V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$3/val$fid J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/getOapUserFromServer(J)Lcom/product/android/commonInterface/contact/OapUser; 2
astore 1
aload 1
ifnull L0
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$3/val$fid J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/getFlowerMessage(J)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo; 2
astore 2
aload 2
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/message_chat/ChatActivity_Person$3/this$0 Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;
aload 1
aload 2
invokestatic com/nd/android/u/ui/activity/message_chat/ChatActivity_Person/access$100(Lcom/nd/android/u/ui/activity/message_chat/ChatActivity_Person;Lcom/product/android/commonInterface/contact/OapUser;Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
L0:
return
.limit locals 3
.limit stack 3
.end method
