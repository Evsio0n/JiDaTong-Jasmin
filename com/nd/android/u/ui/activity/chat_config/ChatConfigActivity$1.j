.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/ui/activity/chat_config/ChatConfigActivity
.inner class inner com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;

.method <init>(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$1/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
lookupswitch
1 : L0
2 : L1
100 : L2
default : L3
L3:
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
return
L2:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$1/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/switchUser()V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$1/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/initComponentValue()V
goto L3
L0:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$1/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
iconst_1
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/delAddBlackList(I)V
goto L3
L1:
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$1/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
iconst_2
invokevirtual com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/delAddBlackList(I)V
goto L3
.limit locals 2
.limit stack 2
.end method
