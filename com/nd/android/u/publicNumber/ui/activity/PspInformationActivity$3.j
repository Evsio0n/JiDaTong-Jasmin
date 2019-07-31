.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$3
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IMessageObserver
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspInformationActivity
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 3
.limit stack 0
.end method

.method public onOtherMessageNotify(Landroid/os/Message;)V
aload 1
ifnull L0
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
ifnonnull L1
L0:
ldc "CHAT"
ldc "sub/unsub error:null pspid"
invokestatic com/product/android/utils/LogUtils/e(Ljava/lang/String;Ljava/lang/String;)V
L2:
return
L1:
aload 1
getfield android/os/Message/what I
lookupswitch
17 : L3
18 : L3
3001 : L4
default : L5
L5:
return
L3:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Ljava/lang/String;
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L2
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 2
aload 2
aload 1
getfield android/os/Message/what I
putfield android/os/Message/what I
aload 2
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
putfield android/os/Message/obj Ljava/lang/Object;
aload 2
aload 1
getfield android/os/Message/arg1 I
putfield android/os/Message/arg1 I
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L4:
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 2
aload 2
aload 1
getfield android/os/Message/what I
putfield android/os/Message/what I
aload 2
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$3/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Landroid/os/Handler;
aload 2
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
.limit locals 3
.limit stack 2
.end method

.method public onReceiveMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onSendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method
