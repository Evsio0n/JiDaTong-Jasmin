.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchFansResultActivity$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/SearchFansResultActivity
.inner class inner com/nd/android/u/contact/activity/SearchFansResultActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchFansResultActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchFansResultActivity$3/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
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
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$3/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$800(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$3/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$3/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
getstatic com/nd/android/u/contact/R$string/concern_fans_fail I
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$900(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$3/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
aload 0
getfield com/nd/android/u/contact/activity/SearchFansResultActivity$3/this$0 Lcom/nd/android/u/contact/activity/SearchFansResultActivity;
getstatic com/nd/android/u/contact/R$string/waiting_concern_friend I
invokevirtual com/nd/android/u/contact/activity/SearchFansResultActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/SearchFansResultActivity/access$400(Lcom/nd/android/u/contact/activity/SearchFansResultActivity;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
