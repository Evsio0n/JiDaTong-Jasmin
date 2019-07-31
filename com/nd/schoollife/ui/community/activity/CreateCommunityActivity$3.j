.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3
.super java/lang/Object
.implements com/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback
.enclosing method com/nd/schoollife/ui/community/activity/CreateCommunityActivity/onUpdateCommunityTypeTask()V
.inner class inner com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;

.method <init>(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onProcessPreExecute()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
getstatic com/nd/schoollife/R$id/pb_create_community_load_community_type I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
iconst_0
invokevirtual android/widget/ProgressBar/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
getstatic com/nd/schoollife/R$id/ll_create_community_community_type_group I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
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
instanceof com/nd/schoollife/common/bean/SchoolLifeResultBase
ifeq L0
aload 1
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
sipush 200
if_icmpne L0
aload 1
checkcast com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory
astore 5
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
getstatic com/nd/schoollife/R$id/ll_create_community_community_type_group I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
astore 1
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
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
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$1100(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryList;
aload 5
invokevirtual com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/getList()Ljava/util/List;
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryList/setCategoryInfo(Ljava/util/List;)V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$1100(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryList;
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryList/size()I
istore 3
iconst_0
istore 2
L1:
iload 2
iload 3
if_icmpge L2
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$1100(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Lcom/nd/schoollife/ui/community/adapter/CommunityCategoryList;
iload 2
invokevirtual com/nd/schoollife/ui/community/adapter/CommunityCategoryList/getCategoryInfoByIndex(I)Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;
astore 5
new com/nd/schoollife/ui/team/view/ExRadioButton
dup
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokespecial com/nd/schoollife/ui/team/view/ExRadioButton/<init>(Landroid/content/Context;)V
astore 6
aload 6
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/init()V
aload 6
aload 5
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getName()Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/setTitle(Ljava/lang/String;)V
aload 6
getstatic com/nd/schoollife/R$drawable/btn_create_team_team_type_checked I
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/setCheckImgResId(I)V
aload 6
invokevirtual com/nd/schoollife/ui/team/view/ExRadioButton/updateCheck()V
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity/communityTypeRadioGroup Lcom/nd/schoollife/ui/team/view/ExRadioGroup;
aload 6
invokevirtual com/nd/schoollife/ui/team/view/ExRadioGroup/addExRadioButton(Lcom/nd/schoollife/ui/team/view/ExRadioButton;)V
aload 1
aload 6
aload 4
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iload 2
ifne L3
aload 6
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
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 5
aload 5
ldc_w -1343887899
invokevirtual android/widget/ImageView/setBackgroundColor(I)V
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 6
aload 6
bipush 40
putfield android/widget/LinearLayout$LayoutParams/leftMargin I
aload 6
bipush 40
putfield android/widget/LinearLayout$LayoutParams/rightMargin I
aload 1
aload 5
aload 6
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
L4:
iload 2
iconst_1
iadd
istore 2
goto L1
L2:
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
getstatic com/nd/schoollife/R$id/pb_create_community_load_community_type I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
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
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
getstatic com/nd/schoollife/R$id/pb_create_community_load_community_type I
invokevirtual com/nd/schoollife/ui/community/activity/CreateCommunityActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ProgressBar
bipush 8
invokevirtual android/widget/ProgressBar/setVisibility(I)V
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
getstatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/TAG Ljava/lang/String;
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/isActivityRunning(Ljava/lang/String;)Z
ifeq L5
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$1200(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/community/activity/CreateCommunityActivity$3/this$0 Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;
invokestatic com/nd/schoollife/ui/community/activity/CreateCommunityActivity/access$1300(Lcom/nd/schoollife/ui/community/activity/CreateCommunityActivity;)Landroid/content/Context;
getstatic com/nd/schoollife/R$string/community_get_category_failed I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 7
.limit stack 5
.end method
