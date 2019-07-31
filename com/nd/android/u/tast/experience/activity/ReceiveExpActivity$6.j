.bytecode 50.0
.class synchronized com/nd/android/u/tast/experience/activity/ReceiveExpActivity$6
.super android/os/Handler
.enclosing method com/nd/android/u/tast/experience/activity/ReceiveExpActivity
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExpActivity$6

.field final synthetic 'this$0' Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;

.method <init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity$6/this$0 Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExpActivity$6/this$0 Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;
invokestatic com/nd/android/u/tast/experience/activity/ReceiveExpActivity/access$600(Lcom/nd/android/u/tast/experience/activity/ReceiveExpActivity;)Lcom/nd/android/u/tast/main/widget/HorizontalProgressView;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/nd/android/u/tast/main/widget/HorizontalProgressView/setProgress(I)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
return
.limit locals 2
.limit stack 2
.end method
