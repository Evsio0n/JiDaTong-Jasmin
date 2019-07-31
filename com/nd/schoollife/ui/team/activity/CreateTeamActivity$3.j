.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/CreateTeamActivity$3
.super java/lang/Object
.implements com/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback
.enclosing method com/nd/schoollife/ui/team/activity/CreateTeamActivity/onUpdateTeamTypeTask()V
.inner class inner com/nd/schoollife/ui/team/activity/CreateTeamActivity$3

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;

.method <init>(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$3/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProcessPreExecute()V
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$3/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
getstatic com/nd/schoollife/R$id/pb_create_team_load_team_type I
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$3/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
getstatic com/nd/schoollife/R$id/ll_create_team_team_type_group I
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
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory
astore 5
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$3/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
getstatic com/nd/schoollife/R$id/ll_create_team_team_type_group I
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 1
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$3/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
ldc_w 41.0F
invokestatic com/nd/schoollife/common/utils/ui/DisplayUtil/dip2px(Landroid/content/Context;F)I
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 4
aload 4
bipush 70
putfield android/widget/LinearLayout$LayoutParams/leftMargin I
aload 4
bipush 56
putfield android/widget/LinearLayout$LayoutParams/rightMargin I
aload 5
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory/getList()Ljava/util/List;
astore 5
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$3/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$1200(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Lcom/nd/schoollife/ui/team/adapter/CategoryList;
aload 5
invokevirtual com/nd/schoollife/ui/team/adapter/CategoryList/setCategoryInfo(Ljava/util/List;)V
aload 5
invokeinterface java/util/List/size()I 0
istore 3
iconst_0
istore 2
L1:
iload 2
iload 3
if_icmpge L2
aload 5
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
astore 6
new com/nd/schoollife/ui/team/view/ExRadioButton
dup
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$3/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokespecial com/nd/schoollife/ui/team/view/ExRadioButton/<init>(Landroid/content/Context;)V
astore 7
aload 7
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/init()V
aload 7
aload 6
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getName()Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/setTitle(Ljava/lang/String;)V
aload 7
getstatic com/nd/schoollife/R$drawable/btn_create_team_team_type_checked I
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/setCheckImgResId(I)V
aload 7
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/updateCheck()V
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$3/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity/teamTypeRadioGroup Lcom/nd/schoollife/ui/team/view/ExRadioGroup;
aload 7
invokevirtual com/nd/schoollife/ui/team/view/ExRadioGroup/addExRadioButton(Lcom/nd/schoollife/ui/team/view/ExRadioButton;)V
aload 1
aload 7
aload 4
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iload 2
ifne L3
aload 7
iconst_1
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/setCheck(Z)V
L3:
iload 2
iload 3
iconst_1
isub
if_icmpeq L4
new android/widget/ImageView
dup
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$3/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 6
aload 6
ldc_w -1343887899
invokevirtual android/widget/ImageView/setBackgroundColor(I)V
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 7
aload 7
bipush 40
putfield android/widget/LinearLayout$LayoutParams/leftMargin I
aload 7
bipush 40
putfield android/widget/LinearLayout$LayoutParams/rightMargin I
aload 1
aload 6
aload 7
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
L4:
iload 2
iconst_1
iadd
istore 2
goto L1
L2:
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$3/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
getstatic com/nd/schoollife/R$id/pb_create_team_load_team_type I
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 1
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L5:
return
L0:
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$3/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
getstatic com/nd/schoollife/R$id/pb_create_team_load_team_type I
invokevirtual com/nd/schoollife/ui/team/activity/CreateTeamActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
getstatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/TAG Ljava/lang/String;
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/isActivityRunning(Ljava/lang/String;)Z
ifeq L5
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$3/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$1300(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$3/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$1400(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Landroid/content/Context;
getstatic com/nd/schoollife/R$string/team_get_category_failed I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 8
.limit stack 5
.end method
