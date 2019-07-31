.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/MessageListFragment$12
.super android/os/Handler
.enclosing method com/nd/android/u/ui/widge/chatfragment/MessageListFragment
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$12

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$12/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
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
ifnull L0
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$12/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/notifyDataSetChanged()V
aload 1
getfield android/os/Message/what I
ifle L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$12/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
aload 1
getfield android/os/Message/what I
iconst_1
isub
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setSelection(I)V
return
.limit locals 2
.limit stack 3
.end method
