.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$DeleteChatRecordTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private DeleteChatRecordTask inner com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$DeleteChatRecordTask outer com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;

.method private <init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$DeleteChatRecordTask/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$DeleteChatRecordTask/<init>(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog$DeleteChatRecordTask/this$0 Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;
invokestatic com/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog/access$100(Lcom/nd/android/u/ui/activity/chat_config/DeleteHistoryDialog;)Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
invokeinterface com/nd/android/u/controller/innerInterface/IMessageDisplay/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess; 0
invokeinterface com/nd/android/u/controller/innerInterface/IMessageProccess/deleteAllMessage()V 0
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 1
.end method
