.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/MessageListFragment$3
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/ui/widge/chatfragment/MessageListFragment/initEvent()V
.inner class inner com/nd/android/u/ui/widge/chatfragment/MessageListFragment$3

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
iload 3
ifne L0
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment/mMessageList Ljava/util/List;
iload 3
iconst_1
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/MessageListFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/MessageListFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/MessageListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/onItemClick(Landroid/content/Context;)V 1
return
.limit locals 6
.limit stack 3
.end method
