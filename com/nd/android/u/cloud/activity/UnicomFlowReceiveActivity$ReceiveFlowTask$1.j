.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask$1
.super java/lang/Object
.implements android/content/DialogInterface$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/onPostExecute(Ljava/lang/Integer;)V
.inner class private ReceiveFlowTask inner com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask outer com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity
.inner class inner com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask$1

.field final synthetic 'this$1' Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;

.method <init>(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask$1/this$1 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask$1/this$1 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$200(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Landroid/widget/TextView;
ldc_w 2131494808
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask$1/this$1 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$200(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setEnabled(Z)V
return
.limit locals 3
.limit stack 2
.end method
