.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/XYGroupListFragment$2
.super java/lang/Object
.implements android/widget/AdapterView$OnItemLongClickListener
.enclosing method com/nd/android/u/contact/fragment/XYGroupListFragment
.inner class inner com/nd/android/u/contact/fragment/XYGroupListFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/XYGroupListFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/XYGroupListFragment$2/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)Z"
aload 2
instanceof android/widget/LinearLayout
ifeq L0
L1:
iconst_1
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment$2/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/XYGroupAdapter;
iload 3
invokevirtual com/nd/android/u/contact/adapter/XYGroupAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
astore 2
aload 2
ifnull L1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "group"
aload 2
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
invokestatic android/os/Message/obtain()Landroid/os/Message;
astore 2
aload 2
sipush 1002
putfield android/os/Message/what I
aload 2
aload 1
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment$2/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
invokestatic com/nd/android/u/contact/fragment/XYGroupListFragment/access$400(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
iconst_1
ireturn
.limit locals 6
.limit stack 3
.end method
