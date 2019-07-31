.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MessageFragmentActivity$4
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IMessageObserver
.enclosing method com/nd/android/u/cloud/activity/MessageFragmentActivity
.inner class inner com/nd/android/u/cloud/activity/MessageFragmentActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MessageFragmentActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
iconst_3
aconst_null
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$300(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;ILjava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onOtherMessageNotify(Landroid/os/Message;)V
aload 1
ifnonnull L0
return
L0:
aload 1
getfield android/os/Message/what I
lookupswitch
28 : L1
30 : L2
2001 : L3
default : L4
L4:
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
iconst_3
aconst_null
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$300(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;ILjava/lang/Object;)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
iconst_2
aconst_null
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$300(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;ILjava/lang/Object;)V
return
L3:
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
iconst_4
aconst_null
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$300(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onReceiveMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
iconst_3
aconst_null
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$300(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;ILjava/lang/Object;)V
aload 0
getfield com/nd/android/u/cloud/activity/MessageFragmentActivity$4/this$0 Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;
iconst_1
aconst_null
invokestatic com/nd/android/u/cloud/activity/MessageFragmentActivity/access$300(Lcom/nd/android/u/cloud/activity/MessageFragmentActivity;ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onSendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method
