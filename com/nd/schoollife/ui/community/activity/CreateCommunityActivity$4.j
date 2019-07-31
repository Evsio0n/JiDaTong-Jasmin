.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4
.super java/lang/Object
.implements com/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback
.enclosing method com/nd/schoollife/ui/community/activity/CreateCommunityActivity/onCommitTask()V
.inner class inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProcessPreExecute()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
ldc ""
ldc ""
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/showSubmitingDialog(Ljava/lang/String;Ljava/lang/String;)V
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
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/dismissSubmitingDialog()V
aload 1
ifnull L0
aload 1
instanceof com/nd/schoollife/common/bean/SchoolLifeResultBase
ifeq L0
aload 1
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
astore 1
aload 1
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
sipush 200
if_icmpne L1
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
ldc com/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
aload 1
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/finish()V
L2:
return
L1:
aload 1
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/isBusinessError()Z
ifeq L3
aload 1
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getErrorBean()Ljava/lang/Object;
ifnull L3
aload 1
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getErrorBean()Ljava/lang/Object;
instanceof com/nd/schoollife/common/bean/CommunityErrorBean
ifeq L3
aload 1
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getErrorBean()Ljava/lang/Object;
checkcast com/nd/schoollife/common/bean/CommunityErrorBean
invokevirtual com/nd/schoollife/common/bean/CommunityErrorBean/getErr_msg()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 1
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getErrorBean()Ljava/lang/Object;
checkcast com/nd/schoollife/common/bean/CommunityErrorBean
astore 1
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
getstatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/TAG Ljava/lang/String;
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/isActivityRunning(Ljava/lang/String;)Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$1400(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
aload 1
invokevirtual com/nd/schoollife/common/bean/CommunityErrorBean/getErr_msg()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
L3:
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
getstatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/TAG Ljava/lang/String;
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/isActivityRunning(Ljava/lang/String;)Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$1500(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
aload 1
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultMsg()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
L0:
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
getstatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/TAG Ljava/lang/String;
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/isActivityRunning(Ljava/lang/String;)Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$1600(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$1700(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
getstatic com/nd/schoollife/R$string/community_create_submit_failed I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
