.bytecode 50.0
.class public synchronized com/nd/android/u/contact/fragment/XYGroupListFragment
.super com/nd/android/u/contact/ui/base/NDFragment
.implements android/widget/AdapterView$OnItemClickListener
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver
.inner class inner com/nd/android/u/contact/fragment/XYGroupListFragment$1
.inner class inner com/nd/android/u/contact/fragment/XYGroupListFragment$2

.field protected 'groupAdpater' Lcom/nd/android/u/contact/adapter/XYGroupAdapter;

.field protected 'groupFunDialog' Landroid/app/AlertDialog;

.field protected 'groupListView' Landroid/widget/ListView;

.field public 'isInited' Z

.field private 'isManual' Z

.field private 'longClickListener' Landroid/widget/AdapterView$OnItemLongClickListener;

.field private 'mOperator' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;

.field private 'mReFreshHandler' Landroid/os/Handler;

.field protected 'mRefreshGroupListTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'parentHandler' Landroid/os/Handler;

.field protected 'promptLayout' Landroid/widget/LinearLayout;

.field protected 'promptText' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/ui/base/NDFragment/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/isManual Z
aload 0
new com/nd/android/u/contact/fragment/XYGroupListFragment$1
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/XYGroupListFragment$1/<init>(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)V
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/mReFreshHandler Landroid/os/Handler;
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/isInited Z
aload 0
new com/nd/android/u/contact/fragment/XYGroupListFragment$2
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/XYGroupListFragment$2/<init>(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)V
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/longClickListener Landroid/widget/AdapterView$OnItemLongClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method public <init>(Landroid/os/Handler;)V
aload 0
invokespecial com/nd/android/u/contact/ui/base/NDFragment/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/isManual Z
aload 0
new com/nd/android/u/contact/fragment/XYGroupListFragment$1
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/XYGroupListFragment$1/<init>(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)V
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/mReFreshHandler Landroid/os/Handler;
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/isInited Z
aload 0
new com/nd/android/u/contact/fragment/XYGroupListFragment$2
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/XYGroupListFragment$2/<init>(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)V
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/longClickListener Landroid/widget/AdapterView$OnItemLongClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/parentHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)Z
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/isManual Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/isManual Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)V
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/dismissLoading()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)V
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/dismissLoading()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)V
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/dismissLoading()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/fragment/XYGroupListFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/parentHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected fillInitData()V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/mContext Landroid/support/v4/app/FragmentActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
ldc "nuke"
ldc "no false no true--1"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/refreshGroupList()V
return
L0:
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainGroup()I
iconst_2
if_icmpne L2
aload 0
ldc ""
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/showLoading(Ljava/lang/String;)V
aload 0
iconst_1
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/isManual Z
ldc "nuke"
ldc "true"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business_new/rable/newObtainGroupRable
dup
iconst_1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business_new/rable/newObtainGroupRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
L2:
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainGroup()I
ifeq L3
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "group_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L4
L3:
aload 0
ldc ""
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/showLoading(Ljava/lang/String;)V
ldc "nuke"
ldc "false"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business_new/rable/newObtainGroupRable
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business_new/rable/newObtainGroupRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
L4:
ldc "nuke"
ldc "no false no true---2"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L1
.limit locals 1
.limit stack 6
.end method

.method public goToActivity(Ljava/lang/Class;Lcom/product/android/commonInterface/contact/OapGroup;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
tableswitch 0
L0
L1
L2
L3
L4
default : L5
L5:
aload 3
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 3
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/startActivity(Landroid/content/Intent;)V
return
L3:
aload 1
ldc "grouptype"
iconst_3
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 1
ldc "gid"
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L5
L0:
aload 1
ldc "gid"
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L5
L1:
aload 1
ldc "deptid"
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L5
L2:
aload 1
ldc "classgid"
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L5
L4:
aload 1
ldc "clubgid"
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L5
.limit locals 4
.limit stack 4
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/setHasOptionsMenu(Z)V
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
new com/nd/android/u/contact/adapter/XYGroupAdapter
dup
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/contact/adapter/XYGroupAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/XYGroupAdapter;
return
.limit locals 2
.limit stack 4
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/longClickListener Landroid/widget/AdapterView$OnItemLongClickListener;
invokevirtual android/widget/ListView/setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupListView Landroid/widget/ListView;
aload 0
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/addGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;)V 1
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/addGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V 1
return
.limit locals 1
.limit stack 2
.end method

.method protected initView()Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/mContext Landroid/support/v4/app/FragmentActivity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/xy_groups_list I
aconst_null
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/group_fragment_layout_prompt I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/promptLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/promptLayout Landroid/widget/LinearLayout;
getstatic com/nd/android/u/contact/R$id/group_fragment_text_prompt I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/promptText Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/grouplist_list_group I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupListView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/XYGroupAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
aload 1
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/refresh I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokeinterface android/view/Menu/add(Ljava/lang/CharSequence;)Landroid/view/MenuItem; 1
getstatic com/nd/android/u/contact/R$drawable/refresh I
invokeinterface android/view/MenuItem/setIcon(I)Landroid/view/MenuItem; 1
pop
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/contact/ui/base/NDFragment/onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onDestroy()V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupFunDialog Landroid/app/AlertDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupFunDialog Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupFunDialog Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/dismiss()V
aload 0
aconst_null
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupFunDialog Landroid/app/AlertDialog;
L0:
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
ifnull L1
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/removeGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupLoadObserver;)V 1
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/removeGroupStateObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupStateObserver;)V 1
L1:
aload 0
invokespecial com/nd/android/u/contact/ui/base/NDFragment/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 2
instanceof android/widget/LinearLayout
ifeq L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/XYGroupAdapter;
iload 3
invokevirtual com/nd/android/u/contact/adapter/XYGroupAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
astore 1
aload 1
ifnull L1
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
iconst_4
if_icmpne L2
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
iconst_0
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
L2:
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
.limit locals 6
.limit stack 4
.end method

.method public onLoadStateChanged(JI)V
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
iload 3
sipush 3001
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/clearGroupCache()V 0
L1:
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/mReFreshHandler Landroid/os/Handler;
iload 3
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L1:
aload 0
aload 1
invokespecial com/nd/android/u/contact/ui/base/NDFragment/onOptionsItemSelected(Landroid/view/MenuItem;)Z
ireturn
L0:
aload 0
ldc ""
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/showLoading(Ljava/lang/String;)V
aload 0
iconst_1
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/isManual Z
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business_new/rable/newObtainGroupRable
dup
iconst_1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business_new/rable/newObtainGroupRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
goto L1
.limit locals 2
.limit stack 6
.end method

.method public onResume()V
aload 0
invokespecial com/nd/android/u/contact/ui/base/NDFragment/onResume()V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/XYGroupAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/XYGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYGroupAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onStateChanged(IJLcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/mReFreshHandler Landroid/os/Handler;
iload 1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 5
.limit stack 2
.end method

.method public refresh()V
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/refreshGroupList()V
return
.limit locals 1
.limit stack 1
.end method

.method public refreshGroupList()V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroupCategory()Ljava/util/Iterator; 0
astore 1
aload 1
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 0
getstatic com/nd/android/u/contact/R$string/refresh_grouplist_fail I
invokevirtual com/nd/android/u/contact/fragment/XYGroupListFragment/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
return
L0:
aload 0
iconst_1
putfield com/nd/android/u/contact/fragment/XYGroupListFragment/isInited Z
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
aload 2
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/XYGroupAdapter;
aload 2
invokevirtual com/nd/android/u/contact/adapter/XYGroupAdapter/setmOapGroups(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/XYGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYGroupAdapter/notifyDataSetChanged()V
return
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
astore 3
aload 2
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getGroupList()Ljava/util/Iterator;
astore 3
aload 3
ifnull L1
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L3
L2:
aload 2
invokeinterface java/util/List/size()I 0
ifle L4
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupListView Landroid/widget/ListView;
invokevirtual android/widget/ListView/getVisibility()I
bipush 8
if_icmpne L4
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/promptLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L4:
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/XYGroupAdapter;
aload 2
invokevirtual com/nd/android/u/contact/adapter/XYGroupAdapter/setmOapGroups(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/fragment/XYGroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/XYGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYGroupAdapter/notifyDataSetChanged()V
return
.limit locals 4
.limit stack 3
.end method
