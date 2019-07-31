.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/CreateTeamActivity$4
.super java/lang/Object
.implements com/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback
.enclosing method com/nd/schoollife/ui/team/activity/CreateTeamActivity/onCommitTask()V
.inner class inner com/nd/schoollife/ui/team/activity/CreateTeamActivity$4

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;

.method <init>(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProcessPreExecute()V
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
ldc ""
ldc ""
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/showSubmitingDialog(Ljava/lang/String;Ljava/lang/String;)V
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
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/dismissSubmitingDialog()V
aload 1
ifnull L0
aload 1
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L0
aload 1
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
astore 1
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
sipush 200
if_icmpne L1
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
ldc com/nd/schoollife/ui/team/activity/TipCreateTeamWaitforJudgeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
aload 1
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/startActivity(Landroid/content/Intent;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/finish()V
L2:
return
L1:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isBusinessError()Z
ifeq L3
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
ifnull L3
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
invokevirtual com/nd/android/forumsdk/business/bean/ForumErrorBean/getMsg()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$1500(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Landroid/content/Context;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
invokevirtual com/nd/android/forumsdk/business/bean/ForumErrorBean/getMsg()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
L3:
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
getstatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/TAG Ljava/lang/String;
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/isActivityRunning(Ljava/lang/String;)Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$1600(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Landroid/content/Context;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultMsg()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
L0:
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
getstatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/TAG Ljava/lang/String;
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/isActivityRunning(Ljava/lang/String;)Z
ifeq L2
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$1700(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$1800(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Landroid/content/Context;
getstatic com/nd/schoollife/R$string/team_create_submit_failed I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
