.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/FriendsGroupManagerActivity
.inner class inner com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
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
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$500(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;)V
return
L0:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ifnonnull L1
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_friend_group_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$600(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Ljava/lang/String;)V
return
L1:
aload 1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getMessage()Ljava/lang/String;
ldc "404"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_friend_group_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$600(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_friend_group_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$600(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
aload 0
getfield com/nd/android/u/contact/activity/FriendsGroupManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;
invokevirtual com/nd/android/u/contact/activity/FriendsGroupManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_add_friend_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/activity/FriendsGroupManagerActivity/access$700(Lcom/nd/android/u/contact/activity/FriendsGroupManagerActivity;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method
