.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/MessageListFragment$11
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/widge/chatfragment/MessageListFragment/findMegerPos(IZ)V
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$11

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;

.field final synthetic 'val$again' Z

.field final synthetic 'val$what' I

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;IZ)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$11/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 0
iload 2
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$11/val$what I
aload 0
iload 3
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$11/val$again Z
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$11/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/findNormalItem()V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$11/val$what I
putfield android/os/Message/what I
aload 1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$11/val$again Z
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$11/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$1000(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 2
.limit stack 2
.end method
