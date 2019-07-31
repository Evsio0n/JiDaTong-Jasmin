.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/XYGroupListFragment$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/fragment/XYGroupListFragment
.inner class inner com/nd/android/u/contact/fragment/XYGroupListFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/XYGroupListFragment;

.method <init>(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/XYGroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
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
ldc "nuke"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
getfield android/os/Message/what I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 1
getfield android/os/Message/what I
lookupswitch
2001 : L0
2002 : L0
2003 : L0
3001 : L1
3002 : L2
3003 : L3
3004 : L4
3005 : L4
3006 : L2
default : L5
L5:
return
L4:
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
iconst_0
invokestatic com/nd/android/u/contact/fragment/XYGroupListFragment/access$002(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;Z)Z
pop
return
L1:
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
invokestatic com/nd/android/u/contact/fragment/XYGroupListFragment/access$000(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)Z
ifeq L6
getstatic com/nd/android/u/contact/R$string/refresh_grouplist_success I
invokestatic com/common/android/utils/ToastUtils/display(I)V
L6:
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
invokestatic com/nd/android/u/contact/fragment/XYGroupListFragment/access$100(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/refresh()V
return
L3:
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
invokestatic com/nd/android/u/contact/fragment/XYGroupListFragment/access$000(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)Z
ifeq L7
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/XYGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYGroupAdapter/clear()V
L7:
getstatic com/nd/android/u/contact/R$string/refresh_grouplist_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
invokestatic com/nd/android/u/contact/fragment/XYGroupListFragment/access$200(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/refresh()V
return
L2:
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
invokestatic com/nd/android/u/contact/fragment/XYGroupListFragment/access$300(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)V
L0:
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment$1/this$0 Lcom/nd/android/u/contact/fragment/XYGroupListFragment;
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/refresh()V
return
.limit locals 2
.limit stack 3
.end method
