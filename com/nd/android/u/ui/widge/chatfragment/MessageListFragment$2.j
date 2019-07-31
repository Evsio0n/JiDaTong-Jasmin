.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/MessageListFragment$2
.super java/lang/Object
.implements com/nd/android/u/ui/widge/ScrollListView$PullDownListener
.enclosing method com/nd/android/u/ui/widge/chatfragment/MessageListFragment/initEvent()V
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public pullDown(F)V
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 2
aload 2
fload 1
f2i
putfield android/os/Message/arg1 I
aload 2
bipush 22
putfield android/os/Message/what I
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$000(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)I
aload 2
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/notifyOtherMessage(ILandroid/os/Message;)V
return
.limit locals 3
.limit stack 3
.end method
