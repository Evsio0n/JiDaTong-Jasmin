.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$DelBlacklistTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private DelBlacklistTask inner com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$DelBlacklistTask outer com/nd/android/u/ui/activity/chat_config/ChatConfigActivity

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;

.method private <init>(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$DelBlacklistTask/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$DelBlacklistTask/<init>(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch java/lang/Exception from L0 to L1 using L2
aload 1
iconst_0
aaload
astore 1
L0:
aload 1
ldc "type"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getInt(Ljava/lang/String;)I
istore 2
L1:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$DelBlacklistTask/message Ljava/lang/String;
iload 2
iconst_1
if_icmpne L3
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$DelBlacklistTask/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$000(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/addToBlackList(J)Z 2
ifne L4
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iconst_0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$DelBlacklistTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L3:
iload 2
iconst_2
if_icmpne L4
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/ui/activity/chat_config/ChatConfigActivity$DelBlacklistTask/this$0 Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;
invokestatic com/nd/android/u/ui/activity/chat_config/ChatConfigActivity/access$000(Lcom/nd/android/u/ui/activity/chat_config/ChatConfigActivity;)J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/delFromBlackList(J)Z 2
ifne L4
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L4:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 3
.limit stack 3
.end method
