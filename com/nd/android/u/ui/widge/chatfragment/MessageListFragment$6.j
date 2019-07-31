.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/MessageListFragment$6
.super java/lang/Object
.implements android/widget/AbsListView$OnScrollListener
.enclosing method com/nd/android/u/ui/widge/chatfragment/MessageListFragment
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$6

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$6/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$6/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$400(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/ui/widge/PopNewMessage;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$6/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$400(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/ui/widge/PopNewMessage;
invokevirtual com/nd/android/u/ui/widge/PopNewMessage/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$6/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mListView Lcom/nd/android/u/ui/widge/ScrollListView;
invokevirtual com/nd/android/u/ui/widge/ScrollListView/getFirstVisiblePosition()I
istore 2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$6/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$400(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/ui/widge/PopNewMessage;
invokevirtual com/nd/android/u/ui/widge/PopNewMessage/getCount()I
iload 2
iload 3
iadd
iadd
iload 4
if_icmple L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$6/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/MessageListFragment/access$400(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)Lcom/nd/android/u/ui/widge/PopNewMessage;
invokevirtual com/nd/android/u/ui/widge/PopNewMessage/dismiss()V
L0:
return
.limit locals 5
.limit stack 3
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
return
.limit locals 3
.limit stack 0
.end method
