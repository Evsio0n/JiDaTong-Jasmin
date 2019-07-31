.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchLocalGroupActivity$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/SearchLocalGroupActivity
.inner class inner com/nd/android/u/contact/activity/SearchLocalGroupActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 1
checkcast com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask
astore 1
aload 1
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/getTempTotal()I
istore 3
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;
aload 1
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity$SearchGroupTask/getTempList()Ljava/util/List;
putfield com/nd/android/u/contact/activity/SearchLocalGroupActivity/mGroupList Ljava/util/List;
iload 3
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;
iconst_0
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/showListView(Z)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/SearchLocalGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchLocalGroupActivity;
iconst_1
invokevirtual com/nd/android/u/contact/activity/SearchLocalGroupActivity/showListView(Z)V
return
.limit locals 4
.limit stack 2
.end method
