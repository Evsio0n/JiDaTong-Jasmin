.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity
.inner class inner com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;

.method <init>(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
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
aload 1
checkcast com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask/seniorInfo Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
iconst_1
putfield com/nd/android/u/contact/dataStructure/SeniorInfo/isAgree Z
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$900(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$000(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;
invokevirtual com/nd/android/u/contact/adapter/NewJuniorRequestAdapter/setDatas(Lcom/nd/android/u/contact/dataStructure/SeniorInfoListResult;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
iconst_1
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$1402(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$1500(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;)V
return
L0:
aload 1
checkcast com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$AgreeJuniorRequestTask/errCode I
istore 3
getstatic com/nd/android/u/contact/R$string/yx_failure_agree_junior_request I
invokestatic com/common/android/utils/ToastUtils/display(I)V
goto L1
.limit locals 4
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
aload 0
getfield com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity$3/this$0 Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;
getstatic com/nd/android/u/contact/R$string/yx_agree_junior_request I
invokevirtual com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/senior/NewJuniorRequestActivity/access$1300(Lcom/nd/android/u/contact/activity/senior/NewJuniorRequestActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 3
.end method
