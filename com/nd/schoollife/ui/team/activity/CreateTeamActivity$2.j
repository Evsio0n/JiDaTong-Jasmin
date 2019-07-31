.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/CreateTeamActivity$2
.super java/lang/Object
.implements com/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback
.enclosing method com/nd/schoollife/ui/team/activity/CreateTeamActivity/onNextTeamSignTask()V
.inner class inner com/nd/schoollife/ui/team/activity/CreateTeamActivity$2

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;

.method <init>(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProcessPreExecute()V
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
getstatic com/nd/schoollife/R$id/pb_create_team_load_team_signs I
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
getstatic com/nd/schoollife/R$id/ll_create_team_team_signs_group I
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
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
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$608(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)I
pop
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetTags
astore 1
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTags/getTotal()I
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$702(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;I)I
pop
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTags/getList()Ljava/util/List;
astore 1
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$800(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 1
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/setTagInfo(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
getstatic com/nd/schoollife/R$id/pb_create_team_load_team_signs I
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
getstatic com/nd/schoollife/R$id/gv_create_team_team_signs I
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/GridView
new com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter
dup
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$900(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$800(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
invokespecial com/nd/schoollife/ui/team/adapter/TagSelectingGridviewAdapter/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/team/adapter/TeamTagList;Lcom/nd/schoollife/ui/team/adapter/TeamTagList;)V
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
getstatic com/nd/schoollife/R$id/ll_create_team_team_signs_group I
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
getstatic com/nd/schoollife/R$id/pb_create_team_load_team_signs I
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
getstatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/TAG Ljava/lang/String;
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/isActivityRunning(Ljava/lang/String;)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$1000(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$2/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$1100(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Landroid/content/Context;
getstatic com/nd/schoollife/R$string/team_get_sign_failed I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 6
.end method
