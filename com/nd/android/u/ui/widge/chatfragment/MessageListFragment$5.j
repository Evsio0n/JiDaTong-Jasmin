.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/MessageListFragment$5
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/widge/chatfragment/MessageListFragment/showMessages()V
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$5

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$5/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$5/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mChatAdapter Lcom/nd/android/u/ui/activity/message_chat/MessageAdapter;
invokevirtual com/nd/android/u/ui/activity/message_chat/MessageAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$5/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
iconst_0
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
