.bytecode 50.0
.class synchronized com/nd/schoollife/ui/post/activity/PostSendActivity$1
.super java/lang/Object
.implements android/os/Handler$Callback
.enclosing method com/nd/schoollife/ui/post/activity/PostSendActivity
.inner class inner com/nd/schoollife/ui/post/activity/PostSendActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/post/activity/PostSendActivity;

.method <init>(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/activity/PostSendActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostSendActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)Z
aload 1
getfield android/os/Message/what I
ifne L0
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostSendActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostSendActivity/access$000(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostSendActivity;
iconst_m1
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/setResult(I)V
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostSendActivity;
invokevirtual com/nd/schoollife/ui/post/activity/PostSendActivity/finish()V
iconst_1
ireturn
L0:
aload 1
getfield android/os/Message/what I
iconst_1
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/post/activity/PostSendActivity$1/this$0 Lcom/nd/schoollife/ui/post/activity/PostSendActivity;
invokestatic com/nd/schoollife/ui/post/activity/PostSendActivity/access$000(Lcom/nd/schoollife/ui/post/activity/PostSendActivity;)V
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method
