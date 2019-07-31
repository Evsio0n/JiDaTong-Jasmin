.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/senior/FindSeniorActivity$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/senior/FindSeniorActivity
.inner class inner com/nd/android/u/contact/activity/senior/FindSeniorActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;

.method <init>(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCancelled(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onCancelled(Lcom/common/android/utils/task/genericTask/GenericTask;)V
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
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$600(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$600(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$700(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/adapter/FindSeniorAdapter/setData(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
L2:
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokevirtual com/nd/android/u/contact/activity/senior/FindSeniorActivity/onLoadFinish()V
return
L0:
iconst_1
aload 1
checkcast com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$GetSeniorListTask/errCode I
if_icmpne L3
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/clear()V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$700(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$000(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/adapter/FindSeniorAdapter/setData(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$600(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L2
L3:
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$100(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$100(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
goto L2
.limit locals 3
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

.method public onProgressUpdate(Lcom/common/android/utils/task/genericTask/GenericTask;Ljava/lang/Object;)V
aload 2
ifnull L0
aload 2
instanceof com/nd/android/u/contact/dataStructure/SeniorInfoListResult
ifeq L0
aload 2
checkcast com/nd/android/u/contact/dataStructure/SeniorInfoListResult
astore 3
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
aload 3
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$002(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
pop
aload 3
ifnull L1
aload 3
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/size()I
ifle L1
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$700(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
ifnonnull L2
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
new com/nd/android/u/contact/adapter/FindSeniorAdapter
dup
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokespecial com/nd/android/u/contact/adapter/FindSeniorAdapter/<init>(Landroid/content/Context;)V
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$702(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;)Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
pop
L2:
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$700(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
aload 3
invokevirtual com/nd/android/u/contact/adapter/FindSeniorAdapter/setData(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
L0:
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onProgressUpdate(Lcom/common/android/utils/task/genericTask/GenericTask;Ljava/lang/Object;)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$502(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$600(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/FindSeniorActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;
invokestatic com/nd/android/u/contact/activity/senior/FindSeniorActivity/access$600(Lcom/nd/android/u/contact/activity/senior/FindSeniorActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
goto L0
.limit locals 4
.limit stack 4
.end method
