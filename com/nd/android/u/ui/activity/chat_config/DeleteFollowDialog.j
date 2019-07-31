.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$1
.inner class inner com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$2
.inner class inner com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3
.inner class protected DeleteFriendTask inner com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$DeleteFriendTask outer com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog

.field private 'context' Landroid/content/Context;

.field private 'fid' J

.field protected 'mDeleteFriendTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'mDeleteFriendTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mHandler' Landroid/os/Handler;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'username' Ljava/lang/String;

.method public <init>(Landroid/content/Context;JLjava/lang/String;Landroid/os/Handler;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$3/<init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)V
putfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/mDeleteFriendTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/context Landroid/content/Context;
aload 0
lload 2
putfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/fid J
aload 0
aload 4
putfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/username Ljava/lang/String;
aload 0
aload 5
putfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/mHandler Landroid/os/Handler;
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/setDisplay()V
aload 0
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/setListener()V
aload 0
getstatic com/nd/android/u/chat/R$string/unfollow I
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 6
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)J
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/fid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected doDeleteFriend()V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/mDeleteFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/mDeleteFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$DeleteFriendTask
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$DeleteFriendTask/<init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)V
putfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/mDeleteFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/mDeleteFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/mDeleteFriendTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/mDeleteFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method

.method protected onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/context Landroid/content/Context;
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/m_dialog Landroid/app/ProgressDialog;
return
.limit locals 3
.limit stack 5
.end method

.method public setDisplay()V
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/sure_unfollowing I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/username Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 6
.end method

.method public setListener()V
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/cancel I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$1/<init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)V
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/chat/R$string/confirm I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$2
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog$2/<init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteFollowDialog;)V
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteFollowDialog/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method
