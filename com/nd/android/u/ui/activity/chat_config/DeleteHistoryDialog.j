.bytecode 50.0
.class public synchronized com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$1
.inner class inner com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$2
.inner class inner com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3
.inner class private DeleteChatRecordTask inner com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$DeleteChatRecordTask outer com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog

.field private 'deleteChatRecordTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mContext' Landroid/content/Context;

.field private 'mDeleteTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mDialog' Landroid/app/ProgressDialog;

.field private 'mMessage' Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3/<init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)V
putfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/deleteChatRecordTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getstatic com/nd/android/u/chat/R$string/chat_clear_history I
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
getstatic com/nd/android/u/chat/R$string/chat_confirm_clear I
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/setMessage(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/initEvent()V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
new com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$3/<init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)V
putfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/deleteChatRecordTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getstatic com/nd/android/u/chat/R$string/chat_clear_history I
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
iload 3
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/setMessage(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/initEvent()V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)V
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/deleteChatRecord()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mMessage Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mDialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mDialog Landroid/app/ProgressDialog;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mDeleteTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method private deleteChatRecord()V
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mDeleteTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mDeleteTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$DeleteChatRecordTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$DeleteChatRecordTask/<init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$1;)V
putfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mDeleteTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mDeleteTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/deleteChatRecordTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/mDeleteTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method private initEvent()V
aload 0
getstatic com/nd/android/u/chat/R$string/ok I
new com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$1/<init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)V
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
getstatic com/nd/android/u/chat/R$string/cancel I
new com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$2
dup
aload 0
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$2/<init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)V
invokevirtual com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method
