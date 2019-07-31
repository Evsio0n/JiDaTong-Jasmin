.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6
.super java/lang/Object
.implements com/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback
.enclosing method com/nd/schoollife/ui/community/activity/CommunityHomeActivity/onQuitCommunityTask()V
.inner class inner com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProcessPreExecute()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
ldc ""
ldc ""
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/showSubmitingDialog(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method public transient onProcessingExecute([Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onProcessingPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/dismissSubmitingDialog()V
aload 1
ifnull L0
aload 1
instanceof com/nd/schoollife/common/bean/SchoolLifeResultBase
ifeq L0
aload 1
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
sipush 200
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$500(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)J
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/notifyExitCommunity(J)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$600(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
invokestatic com/nd/schoollife/common/utils/common/AppSp/getInstatce(Landroid/content/Context;)Lcom/nd/schoollife/common/utils/common/AppSp;
ldc "FLAG_GET_MYRSS_INT"
iconst_1
invokevirtual com/nd/schoollife/common/utils/common/AppSp/setValue(Ljava/lang/String;Z)V
new com/nd/schoollife/ui/square/task/SquareDataTask
dup
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
sipush 1543
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_NONE Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokespecial com/nd/schoollife/ui/square/task/SquareDataTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "16"
aastore
dup
iconst_1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$700(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aastore
invokevirtual com/nd/schoollife/ui/square/task/SquareDataTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$800(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
getstatic com/nd/schoollife/R$string/commit_sucs I
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokevirtual com/nd/schoollife/ui/community/activity/CommunityHomeActivity/finish()V
return
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityHomeActivity$6/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityHomeActivity/access$900(Lcom/nd/schoollife/ui/community/activity/CommunityHomeActivity;)Landroid/content/Context;
getstatic com/nd/schoollife/R$string/commit_faild I
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 7
.end method
