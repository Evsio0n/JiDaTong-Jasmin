.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$RefreshListTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public RefreshListTask inner com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$RefreshListTask outer com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;

.method public <init>(Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$RefreshListTask/this$0 Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$RefreshListTask/this$0 Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;
aload 0
getfield com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity$RefreshListTask/this$0 Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;
invokestatic com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/access$000(Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
bipush 10
invokestatic com/nd/android/u/contact/business/BirthdayRemindPro/getBirthRemHistory(II)Ljava/util/List;
invokestatic com/nd/android/u/cloud/activity/mbless/BirthdayRemActivity/access$102(Lcom/nd/android/u/cloud/activity/mbless/BirthdayRemActivity;Ljava/util/List;)Ljava/util/List;
pop
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 3
.end method
