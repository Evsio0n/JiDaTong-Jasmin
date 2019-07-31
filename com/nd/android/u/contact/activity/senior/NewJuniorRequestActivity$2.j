.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity
.inner class inner com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;

.method <init>(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
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
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$700(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getVisibility()I
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$700(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
iconst_0
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$800(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;I)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$900(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/adapter/NewJuniorRequestAdapter/setDatas(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
L2:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$1200(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
return
L0:
iconst_1
aload 1
checkcast com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$GetJuniorListTask/errCode I
if_icmpne L3
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/dataStructure/SeniorInfoListResult/clear()V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$900(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/adapter/NewJuniorRequestAdapter/setDatas(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$700(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
bipush 8
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$1000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;I)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$1100(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
goto L2
L3:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$2/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
getstatic com/nd/android/u/contact/R$string/yx_failure_get_data I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
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
aload 0
aload 1
aload 2
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onProgressUpdate(Lcom/common/android/utils/task/genericTask/GenericTask;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 3
.end method
