.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$1
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IMessageObserver
.enclosing method com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity
.inner class inner com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;
iconst_3
aconst_null
invokestatic com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/access$000(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;ILjava/lang/Object;)V
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
tableswitch 28
L1
L2
L3
default : L2
L2:
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;
iconst_3
aconst_null
invokestatic com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/access$000(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;ILjava/lang/Object;)V
return
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;
iconst_2
aconst_null
invokestatic com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/access$000(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onReceiveMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity$1/this$0 Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;
iconst_3
aconst_null
invokestatic com/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity/access$000(Lcom/nd/android/u/publicNumber/ui/activity/SubscribePublicNumberFragmentActivity;ILjava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public onSendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method
