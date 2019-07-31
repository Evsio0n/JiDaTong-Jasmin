.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask$1
.super java/lang/Object
.implements com/nd/android/u/cloud/activity/guide/DlgCheckInfo$OnDlgBtnListener
.enclosing method com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/onPostExecute(Lcom/nd/rj/common/serverinterfaces/OriginalHttpResponse;)V
.inner class private CheckTask inner com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask outer com/nd/android/u/cloud/activity/guide/VerificationActivity
.inner class inner com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask$1

.field final synthetic 'this$1' Lcom/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask;

.method <init>(Lcom/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask$1/this$1 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCancel()V
return
.limit locals 1
.limit stack 0
.end method

.method public onOK()V
aload 0
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask$1/this$1 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask;
getfield com/nd/android/u/cloud/activity/guide/VerificationActivity$CheckTask/this$0 Lcom/nd/android/u/cloud/activity/guide/VerificationActivity;
ldc com/nd/android/u/cloud/activity/guide/ManualReviewActivity
invokevirtual com/nd/android/u/cloud/activity/guide/VerificationActivity/goTo(Ljava/lang/Class;)V
return
.limit locals 1
.limit stack 2
.end method
