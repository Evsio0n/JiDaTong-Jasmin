.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYGroupMemberActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/XYGroupMemberActivity
.inner class inner com/nd/android/u/contact/activity/XYGroupMemberActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
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
getfield android/os/Message/what I
istore 2
iload 2
sipush 2002
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$000(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/groupOpMsgSuccess()V
L1:
return
L0:
iload 2
sipush 1002
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;
invokestatic com/nd/android/u/contact/activity/XYGroupMemberActivity/access$100(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
return
.limit locals 3
.limit stack 2
.end method
