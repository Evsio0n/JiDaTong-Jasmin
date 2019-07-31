.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/MessageListFragment$7
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/ui/widge/chatfragment/MessageListFragment
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$7

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$7/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$7/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
invokeinterface java/util/List/size()I 0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$7/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$400(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/ui/widge/PopNewMessage;
invokevirtual com/nd/android/u/ui/widge/PopNewMessage/getCount()I
isub
istore 3
iload 3
istore 2
iload 3
ifge L0
iconst_0
istore 2
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$7/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
iload 2
invokevirtual com/nd/android/u/ui/widge/ScrollListView/setSelection(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$7/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$400(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/ui/widge/PopNewMessage;
invokevirtual com/nd/android/u/ui/widge/PopNewMessage/dismiss()V
return
.limit locals 4
.limit stack 2
.end method
