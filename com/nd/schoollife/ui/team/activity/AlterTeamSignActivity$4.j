.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4
.super java/lang/Object
.implements com/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback
.enclosing method com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/onNextTeamSignTask()V
.inner class inner com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;

.method <init>(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProcessPreExecute()V
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
getstatic com/nd/schoollife/R$id/pb_alter_team_sign_load_team_sign I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
getstatic com/nd/schoollife/R$id/gv_alter_team_sign_team_signs I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
bipush 8
invokevirtual android/widget/GridView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
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
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L0
aload 1
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
sipush 200
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$1008(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)I
pop
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetTags
astore 1
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTags/getTotal()I
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$1102(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;I)I
pop
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTags/getList()Ljava/util/List;
astore 1
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$600(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 1
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/setTagInfo(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
getstatic com/nd/schoollife/R$id/pb_alter_team_sign_load_team_sign I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
getstatic com/nd/schoollife/R$id/gv_alter_team_sign_team_signs I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
astore 1
aload 1
new com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter
dup
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$500(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$600(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
invokespecial com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/team/adapter/TeamTagList;Lcom/nd/schoollife/ui/team/adapter/TeamTagList;)V
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 1
iconst_0
invokevirtual android/widget/GridView/setVisibility(I)V
L1:
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
iconst_0
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$1402(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;Z)Z
pop
return
L0:
aload 1
ifnull L1
aload 1
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L1
aload 1
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
bipush -100
if_icmpeq L1
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
getstatic com/nd/schoollife/R$id/pb_alter_team_sign_load_team_sign I
invokevirtual com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
ldc com/nd/schoollife/ui/team/activity/AlterTeamSignActivity
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/isActivityRunning(Ljava/lang/String;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$1200(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/schoollife/ui/team/activity/AlterTeamSignActivity$4/this$0 Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;
invokestatic com/nd/schoollife/ui/team/activity/AlterTeamSignActivity/access$1300(Lcom/nd/schoollife/ui/team/activity/AlterTeamSignActivity;)Landroid/content/Context;
getstatic com/nd/schoollife/R$string/loading_faild I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
goto L1
.limit locals 2
.limit stack 6
.end method
