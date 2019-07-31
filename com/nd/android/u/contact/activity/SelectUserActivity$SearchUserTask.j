.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/SelectUserActivity$SearchUserTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class protected SearchUserTask inner com/nd/android/u/contact/activity/SelectUserActivity$SearchUserTask outer com/nd/android/u/contact/activity/SelectUserActivity

.field private 'tempTotal' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SelectUserActivity;

.method protected <init>(Lcom/nd/android/u/contact/activity/SelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SelectUserActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/SelectUserActivity$SearchUserTask/tempTotal I
return
.limit locals 2
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$SearchUserTask/this$0 Lcom/nd/android/u/contact/activity/SelectUserActivity;
aload 0
invokevirtual com/nd/android/u/contact/activity/SelectUserActivity/doSearch(Lcom/nd/android/u/contact/activity/SelectUserActivity$SearchUserTask;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getTempTotal()I
aload 0
getfield com/nd/android/u/contact/activity/SelectUserActivity$SearchUserTask/tempTotal I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setTempTotal(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/activity/SelectUserActivity$SearchUserTask/tempTotal I
return
.limit locals 2
.limit stack 2
.end method
