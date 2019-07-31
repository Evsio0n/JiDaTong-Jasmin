.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYNewSelectUserActivity$5
.super java/lang/Object
.implements com/nd/android/u/contact/dialog/InputDismissNameDialog$OnDlgModifyTextDismissListener
.enclosing method com/nd/android/u/contact/activity/XYNewSelectUserActivity
.inner class inner com/nd/android/u/contact/activity/XYNewSelectUserActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public GetTextValue(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
new com/nd/android/u/contact/activity/XYNewSelectUserActivity$CreateDiscussionTask
dup
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
aconst_null
invokespecial com/nd/android/u/contact/activity/XYNewSelectUserActivity$CreateDiscussionTask/<init>(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity$1;)V
putfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/createDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/createDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/createDiscussionTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 2
ldc "name"
aload 1
invokevirtual com/common/android/utils/task/genericTask/TaskParams/put(Ljava/lang/String;Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$5/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/createDiscussionTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method
