.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/MessageListFragment$9
.super android/os/Handler
.enclosing method com/nd/android/u/ui/widge/chatfragment/MessageListFragment
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$9

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$9/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
instanceof com/nd/android/u/controller/innerInterface/IMessageDisplay
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$9/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 1
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$700(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;Landroid/os/Message;)V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$9/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 1
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$800(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;Landroid/os/Message;)V
return
.limit locals 2
.limit stack 2
.end method
