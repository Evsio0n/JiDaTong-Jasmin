.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/OtherContactActivity$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/cloud/activity/OtherContactActivity
.inner class inner com/nd/android/u/cloud/activity/OtherContactActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/OtherContactActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/OtherContactActivity$1/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$1/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$1/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$400(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$1/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$500(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
return
.limit locals 3
.limit stack 3
.end method
