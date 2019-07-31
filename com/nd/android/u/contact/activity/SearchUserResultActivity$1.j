.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchUserResultActivity$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/SearchUserResultActivity
.inner class inner com/nd/android/u/contact/activity/SearchUserResultActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchUserResultActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchUserResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchUserResultActivity;
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
getfield com/nd/android/u/contact/activity/SearchUserResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchUserResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchUserResultActivity/access$000(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;)V
return
L0:
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/message Ljava/lang/String;
ifnull L1
ldc "-1"
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchUserResultActivity;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchUserResultActivity;
invokevirtual com/nd/android/u/contact/activity/SearchUserResultActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/network_error I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/SearchUserResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;Ljava/lang/String;)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchUserResultActivity;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchUserResultActivity;
invokevirtual com/nd/android/u/contact/activity/SearchUserResultActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/search_nothing I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/SearchUserResultActivity/access$100(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchUserResultActivity;
aload 0
getfield com/nd/android/u/contact/activity/SearchUserResultActivity$1/this$0 Lcom/nd/android/u/contact/activity/SearchUserResultActivity;
invokevirtual com/nd/android/u/contact/activity/SearchUserResultActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_search I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/SearchUserResultActivity/access$200(Lcom/nd/android/u/contact/activity/SearchUserResultActivity;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
