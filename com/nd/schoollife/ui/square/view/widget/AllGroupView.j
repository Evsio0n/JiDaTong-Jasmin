.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/view/widget/AllGroupView
.super com/nd/schoollife/ui/common/base/BaseView
.implements android/view/View$OnClickListener
.implements com/nd/schoollife/ui/common/base/interfaces/AsyncMutilTaskCallback
.implements com/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener

.field public static final 'ARGUMENT_NAME' Ljava/lang/String; = "index"

.field public static final 'PAGE' Ljava/lang/String; = "1"

.field public static final 'SIZE' Ljava/lang/String; = "100"

.field private 'isFirstLoadData' Z

.field private 'mAdapter' Lcom/nd/schoollife/ui/square/adapter/MyGroupAdapter;

.field private 'mCommunityInfo' Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;

.field private 'mContext' Landroid/content/Context;

.field private 'mMainListView' Landroid/widget/ListView;

.field private 'mNoDataRL' Landroid/widget/RelativeLayout;

.field private 'mTagType' I

.field private 'mTeamInfo' Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/base/BaseView/<init>(Landroid/content/Context;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/isFirstLoadData Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mTagType I
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/AllGroupView/initView()V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;I)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/base/BaseView/<init>(Landroid/content/Context;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/isFirstLoadData Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mTagType I
aload 0
iload 2
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mTagType I
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/AllGroupView/initView()V
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/nd/schoollife/ui/common/base/BaseView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_1
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/isFirstLoadData Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mTagType I
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/AllGroupView/initView()V
return
.limit locals 3
.limit stack 3
.end method

.method private hasData()Z
iconst_0
istore 2
iconst_0
istore 3
iload 2
istore 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mTeamInfo Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mTeamInfo Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
astore 4
iload 2
istore 1
aload 4
ifnull L0
iload 2
istore 1
aload 4
invokeinterface java/util/List/isEmpty()Z 0
ifne L0
iconst_1
istore 1
L0:
iload 3
istore 2
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mCommunityInfo Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mCommunityInfo Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
astore 4
iload 3
istore 2
aload 4
ifnull L1
iload 3
istore 2
aload 4
invokeinterface java/util/List/isEmpty()Z 0
ifne L1
iconst_1
istore 2
L1:
iload 1
ifne L2
iload 2
ifeq L3
L2:
iconst_1
ireturn
L3:
iconst_0
ireturn
.limit locals 5
.limit stack 1
.end method

.method private initView()V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/AllGroupView/getContext()Landroid/content/Context;
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mContext Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mContext Landroid/content/Context;
getstatic com/nd/schoollife/R$layout/fragment_square_all_group I
aconst_null
invokestatic com/nd/schoollife/ui/square/view/widget/AllGroupView/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
invokevirtual com/nd/schoollife/ui/square/view/widget/AllGroupView/setContentView(Landroid/view/View;)V
aload 0
aload 0
invokevirtual com/nd/schoollife/ui/square/view/widget/AllGroupView/setOnReloadClickListener(Lcom/nd/schoollife/ui/common/base/interfaces/OnReloadClickedListener;)V
aload 1
getstatic com/nd/schoollife/R$id/btn_group_find_group I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
astore 2
aload 1
getstatic com/nd/schoollife/R$id/btn_group_find_squad I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
astore 3
aload 1
getstatic com/nd/schoollife/R$id/tv_group_nodata I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 4
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mTagType I
ifne L0
aload 2
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 3
aload 0
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 4
getstatic com/nd/schoollife/R$string/square_mygroup_all_nodata_tip I
invokevirtual android/widget/TextView/setText(I)V
L1:
aload 0
aload 1
getstatic com/nd/schoollife/R$id/rl_group_nodata I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mNoDataRL Landroid/widget/RelativeLayout;
aload 0
aload 1
getstatic com/nd/schoollife/R$id/lv_group_all I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mMainListView Landroid/widget/ListView;
aload 0
new com/nd/schoollife/ui/square/adapter/MyGroupAdapter
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mContext Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mTagType I
invokespecial com/nd/schoollife/ui/square/adapter/MyGroupAdapter/<init>(Landroid/content/Context;I)V
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mAdapter Lcom/nd/schoollife/ui/square/adapter/MyGroupAdapter;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mMainListView Landroid/widget/ListView;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mAdapter Lcom/nd/schoollife/ui/square/adapter/MyGroupAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
iconst_1
invokespecial com/nd/schoollife/ui/square/view/widget/AllGroupView/showView(Z)V
return
L0:
aload 2
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 3
iconst_4
invokevirtual android/view/View/setVisibility(I)V
aload 4
getstatic com/nd/schoollife/R$string/square_mygroup_manager_nodata_tip I
invokevirtual android/widget/TextView/setText(I)V
goto L1
.limit locals 5
.limit stack 5
.end method

.method private showView(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mMainListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mNoDataRL Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
L0:
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mMainListView Landroid/widget/ListView;
bipush 8
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mNoDataRL Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 2
.limit stack 2
.end method

.method private startTask(I)V
iconst_m1
istore 2
iload 1
tableswitch 0
L0
L1
default : L2
L2:
iload 2
istore 1
L3:
new com/nd/schoollife/ui/square/task/MyCommunityProcessTask
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mContext Landroid/content/Context;
aload 0
iload 1
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
invokespecial com/nd/schoollife/ui/square/task/MyCommunityProcessTask/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncMutilTaskCallback;)V
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "1"
aastore
dup
iconst_1
ldc "100"
aastore
invokevirtual com/nd/schoollife/ui/square/task/MyCommunityProcessTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L0:
bipush 11
istore 1
goto L3
L1:
bipush 21
istore 1
goto L3
.limit locals 3
.limit stack 7
.end method

.method public initData()V
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/isFirstLoadData Z
ifeq L0
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mTagType I
invokespecial com/nd/schoollife/ui/square/view/widget/AllGroupView/startTask(I)V
L0:
aload 0
iconst_0
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/isFirstLoadData Z
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/btn_group_find_group I
if_icmpne L0
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mContext Landroid/content/Context;
ldc com/nd/schoollife/ui/community/activity/CommunitySquareActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/btn_group_find_squad I
if_icmpne L1
new android/content/Intent
dup
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mContext Landroid/content/Context;
ldc com/nd/schoollife/ui/square/activity/PostAndTeamActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc "type"
iconst_2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method public onReloadClicked()V
aload 0
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mTagType I
invokespecial com/nd/schoollife/ui/square/view/widget/AllGroupView/startTask(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V
aload 0
aload 0
invokespecial com/nd/schoollife/ui/square/view/widget/AllGroupView/hasData()Z
invokespecial com/nd/schoollife/ui/square/view/widget/AllGroupView/showView(Z)V
return
.limit locals 4
.limit stack 2
.end method

.method public processOnProgressUpdate(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;Lcom/nd/schoollife/ui/common/base/interfaces/MutiTaskStatusController;)V
iload 1
lookupswitch
12 : L0
13 : L1
22 : L0
23 : L1
default : L2
L2:
return
L0:
aload 0
aconst_null
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mTeamInfo Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
aload 3
ifnull L2
aload 3
instanceof com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
ifeq L2
aload 0
aload 3
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mTeamInfo Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mTeamInfo Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/getList()Ljava/util/List;
astore 2
aload 2
ifnull L2
aload 2
invokeinterface java/util/List/isEmpty()Z 0
ifne L2
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mAdapter Lcom/nd/schoollife/ui/square/adapter/MyGroupAdapter;
aload 2
invokevirtual com/nd/schoollife/ui/square/adapter/MyGroupAdapter/setTeamData(Ljava/util/List;)V
aload 4
invokeinterface com/nd/schoollife/ui/common/base/interfaces/MutiTaskStatusController/invokeDefaultInitLoadingFinishProcess()Z 0
pop
return
L1:
aload 0
aconst_null
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mCommunityInfo Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
aload 3
ifnull L2
aload 3
instanceof com/nd/schoollife/common/bean/result/ResultCommunityInfoList
ifeq L2
aload 0
aload 3
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
putfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mCommunityInfo Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mCommunityInfo Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
astore 2
aload 2
ifnull L2
aload 2
invokeinterface java/util/List/isEmpty()Z 0
ifne L2
aload 0
getfield com/nd/schoollife/ui/square/view/widget/AllGroupView/mAdapter Lcom/nd/schoollife/ui/square/adapter/MyGroupAdapter;
aload 2
invokevirtual com/nd/schoollife/ui/square/adapter/MyGroupAdapter/setCommunityData(Ljava/util/List;)V
return
.limit locals 5
.limit stack 2
.end method
