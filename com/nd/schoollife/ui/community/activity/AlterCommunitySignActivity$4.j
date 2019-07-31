.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4
.super java/lang/Object
.implements com/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback
.enclosing method com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/onNextCoummintySignTask()V
.inner class inner com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProcessPreExecute()V
return
.limit locals 1
.limit stack 0
.end method

.method public transient onProcessingExecute([Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onProcessingPostExecute(Ljava/lang/Object;)V
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
aload 1
checkcast com/nd/schoollife/common/bean/result/ResultGetCommunityTags
astore 1
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/getTotal()I
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$1002(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;I)I
pop
aload 1
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityTags/getList()Ljava/util/List;
astore 1
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$600(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 1
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityTagList/setTagInfo(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$1100(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Landroid/widget/GridView;
new com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter
dup
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$500(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$600(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;
invokespecial com/nd/schoollife/ui/community/adapter/CommunityTagSelectingGridviewAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;Lcom/nd/schoollife/ui/community/adapter/CommunityTagList;)V
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$1100(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Landroid/widget/GridView;
iconst_0
invokevirtual android/widget/GridView/setVisibility(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$1400(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Landroid/widget/ProgressBar;
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
iconst_0
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$1502(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;Z)Z
pop
return
L0:
aload 1
ifnull L1
aload 1
instanceof com/nd/schoollife/common/bean/SchoolLifeResultBase
ifeq L1
aload 1
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
bipush -100
if_icmpeq L1
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
ldc com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/isActivityRunning(Ljava/lang/String;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$1200(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity$4/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunitySignActivity/access$1300(Lcom/nd/schoollife/ui/community/activity/AlterCommunitySignActivity;)Landroid/content/Context;
getstatic com/nd/schoollife/R$string/loading_faild I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
goto L1
.limit locals 2
.limit stack 6
.end method
