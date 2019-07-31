.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/senior/SeniorDetailActivity$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/senior/SeniorDetailActivity
.inner class inner com/nd/android/u/contact/activity/senior/SeniorDetailActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;

.method <init>(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
aload 2
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$1/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$000(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
iconst_0
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$200(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;Lcom/nd/android/u/contact/dataStructure/SeniorInfo;Z)V
return
L0:
aload 1
checkcast com/nd/android/u/contact/activity/senior/SeniorDetailActivity$GetSeniorDetailTask
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$GetSeniorDetailTask/errCode I
istore 3
return
.limit locals 4
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 2
.end method
