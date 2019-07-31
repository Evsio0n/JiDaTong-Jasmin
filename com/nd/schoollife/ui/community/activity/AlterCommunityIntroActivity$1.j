.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1
.super java/lang/Object
.implements com/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback
.enclosing method com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/onCommitTask(Ljava/lang/String;)V
.inner class inner com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProcessPreExecute()V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;
ldc ""
ldc ""
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/showSubmitingDialog(Ljava/lang/String;Ljava/lang/String;)V
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
getfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/dismissSubmitingDialog()V
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
getfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;
iconst_1
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/setResult(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;
getstatic com/nd/schoollife/R$string/commit_sucs I
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/finish()V
return
L0:
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;
getstatic com/nd/schoollife/R$string/commit_faild I
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;I)V
return
.limit locals 2
.limit stack 2
.end method
