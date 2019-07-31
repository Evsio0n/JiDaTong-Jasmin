.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/BlackListActivity$DelBlacklistTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private DelBlacklistTask inner com/nd/android/u/contact/activity/BlackListActivity$DelBlacklistTask outer com/nd/android/u/contact/activity/BlackListActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/BlackListActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/BlackListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/BlackListActivity$DelBlacklistTask/this$0 Lcom/nd/android/u/contact/activity/BlackListActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/BlackListActivity;Lcom/nd/android/u/contact/activity/BlackListActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/BlackListActivity$DelBlacklistTask/<init>(Lcom/nd/android/u/contact/activity/BlackListActivity;)V
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
ldc "fid"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/get(Ljava/lang/String;)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 3
aload 1
ldc "position"
invokevirtual com/common/android/utils/task/genericTask/TaskParams/getInt(Ljava/lang/String;)I
istore 2
L1:
invokestatic com/nd/android/u/contact/business/OapUserManager/getInstance()Lcom/nd/android/u/contact/business/OapUserManager;
lload 3
invokevirtual com/nd/android/u/contact/business/OapUserManager/delFromBlackList(J)Z
ifne L3
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L3:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/BlackListActivity$DelBlacklistTask/message Ljava/lang/String;
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 5
.limit stack 3
.end method
