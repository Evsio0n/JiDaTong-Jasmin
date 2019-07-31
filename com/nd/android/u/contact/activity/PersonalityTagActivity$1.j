.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/PersonalityTagActivity$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/PersonalityTagActivity
.inner class inner com/nd/android/u/contact/activity/PersonalityTagActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/PersonalityTagActivity;

.method <init>(Lcom/nd/android/u/contact/activity/PersonalityTagActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/PersonalityTagActivity$1/this$0 Lcom/nd/android/u/contact/activity/PersonalityTagActivity;
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
aload 0
getfield com/nd/android/u/contact/activity/PersonalityTagActivity$1/this$0 Lcom/nd/android/u/contact/activity/PersonalityTagActivity;
invokestatic com/nd/android/u/contact/activity/PersonalityTagActivity/access$000(Lcom/nd/android/u/contact/activity/PersonalityTagActivity;)Lcom/product/android/ui/widget/PagingLoadListView;
aload 1
checkcast com/nd/android/u/contact/activity/PersonalityTagActivity$GetNextPageTask
getfield com/nd/android/u/contact/activity/PersonalityTagActivity$GetNextPageTask/mTagUserList Ljava/util/ArrayList;
invokevirtual com/product/android/ui/widget/PagingLoadListView/handleData(Ljava/util/ArrayList;)V
L0:
return
.limit locals 3
.limit stack 2
.end method
