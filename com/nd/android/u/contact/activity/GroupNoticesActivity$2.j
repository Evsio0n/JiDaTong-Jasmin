.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/GroupNoticesActivity$2
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/GroupNoticesActivity
.inner class inner com/nd/android/u/contact/activity/GroupNoticesActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/GroupNoticesActivity;

.method <init>(Lcom/nd/android/u/contact/activity/GroupNoticesActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupNoticesActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupNoticesActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
sipush 2003
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/GroupNoticesActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupNoticesActivity;
invokevirtual com/nd/android/u/contact/activity/GroupNoticesActivity/groupOpMsgSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/GroupNoticesActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupNoticesActivity;
invokestatic com/nd/android/u/contact/activity/GroupNoticesActivity/access$200(Lcom/nd/android/u/contact/activity/GroupNoticesActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupNoticesActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupNoticesActivity;
invokestatic com/nd/android/u/contact/activity/GroupNoticesActivity/access$300(Lcom/nd/android/u/contact/activity/GroupNoticesActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupNoticesActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupNoticesActivity;
invokestatic com/nd/android/u/contact/activity/GroupNoticesActivity/access$200(Lcom/nd/android/u/contact/activity/GroupNoticesActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupNoticesActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupNoticesActivity;
invokestatic com/nd/android/u/contact/activity/GroupNoticesActivity/access$300(Lcom/nd/android/u/contact/activity/GroupNoticesActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V 1
aload 0
getfield com/nd/android/u/contact/activity/GroupNoticesActivity$2/this$0 Lcom/nd/android/u/contact/activity/GroupNoticesActivity;
aconst_null
invokestatic com/nd/android/u/contact/activity/GroupNoticesActivity/access$302(Lcom/nd/android/u/contact/activity/GroupNoticesActivity;Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
pop
L0:
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
return
.limit locals 2
.limit stack 2
.end method
