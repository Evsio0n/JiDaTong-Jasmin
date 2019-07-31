.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/ManagerFriendsGroupActivity
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;

.method <init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
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
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$1500(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
return
L0:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ifnonnull L1
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_friend_group_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$1600(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Ljava/lang/String;)V
return
L1:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ldc "404"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_friend_group_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$1600(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_friend_group_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$1600(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$7/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_add_friend_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$1300(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
