.bytecode 50.0
.class public synchronized com/nd/android/u/contact/fragment/GroupListFragment
.super android/support/v4/app/Fragment
.inner class inner com/nd/android/u/contact/fragment/GroupListFragment$1
.inner class inner com/nd/android/u/contact/fragment/GroupListFragment$2
.inner class inner com/nd/android/u/contact/fragment/GroupListFragment$3
.inner class public DoRefreshFrinedListTask inner com/nd/android/u/contact/fragment/GroupListFragment$DoRefreshFrinedListTask outer com/nd/android/u/contact/fragment/GroupListFragment

.field protected 'groupAdpater' Lcom/nd/android/u/contact/adapter/GroupAdapter;

.field protected 'groupFunDialog' Landroid/app/AlertDialog;

.field protected 'groupListView' Landroid/widget/ExpandableListView;

.field protected 'handler' Landroid/os/Handler;

.field public 'isInited' Z

.field protected 'mRefreshGroupListTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field public 'myDoGetUserInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'promptLayout' Landroid/widget/LinearLayout;

.field protected 'promptText' Landroid/widget/TextView;

.field public 'view' Landroid/view/View;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/GroupListFragment/isInited Z
aload 0
new com/nd/android/u/contact/fragment/GroupListFragment$1
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/GroupListFragment$1/<init>(Lcom/nd/android/u/contact/fragment/GroupListFragment;)V
putfield com/nd/android/u/contact/fragment/GroupListFragment/handler Landroid/os/Handler;
aload 0
new com/nd/android/u/contact/fragment/GroupListFragment$3
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/GroupListFragment$3/<init>(Lcom/nd/android/u/contact/fragment/GroupListFragment;)V
putfield com/nd/android/u/contact/fragment/GroupListFragment/myDoGetUserInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/fragment/GroupListFragment;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method public goToActivity(Ljava/lang/Class;Lcom/product/android/commonInterface/contact/OapGroup;)V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
aload 0
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
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
default : L4
L4:
aload 3
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
aload 3
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/startActivity(Landroid/content/Intent;)V
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
goto L4
L0:
aload 1
ldc "gid"
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L4
L1:
aload 1
ldc "deptid"
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L4
L2:
aload 1
ldc "classgid"
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L4
.limit locals 4
.limit stack 4
.end method

.method public init()V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/isInited Z
ifne L0
aload 0
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/refresh()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected initComponentValue()V
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getOapGroupsList()Ljava/util/List;
ifnull L0
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getOapGroupsList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifeq L0
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupListView Landroid/widget/ExpandableListView;
iconst_0
invokevirtual android/widget/ExpandableListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/promptLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/refreshGroupAdapter()V
L1:
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainGroup()I
ifeq L2
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "group_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L3
L2:
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business_new/rable/newObtainGroupRable
dup
iconst_1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business_new/rable/newObtainGroupRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L3:
return
L0:
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupListView Landroid/widget/ExpandableListView;
bipush 8
invokevirtual android/widget/ExpandableListView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/promptLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/promptText Landroid/widget/TextView;
aload 0
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/group_loading I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic android/text/Html/fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
.limit locals 1
.limit stack 6
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupListView Landroid/widget/ExpandableListView;
new com/nd/android/u/contact/fragment/GroupListFragment$2
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/GroupListFragment$2/<init>(Lcom/nd/android/u/contact/fragment/GroupListFragment;)V
invokevirtual android/widget/ExpandableListView/setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/fragment/GroupListFragment/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 3
.limit stack 5
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onCreate(Landroid/os/Bundle;)V
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/setHasOptionsMenu(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
aload 1
aload 0
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/refresh I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokeinterface android/view/Menu/add(Ljava/lang/CharSequence;)Landroid/view/MenuItem; 1
getstatic com/nd/android/u/contact/R$drawable/refresh I
invokeinterface android/view/MenuItem/setIcon(I)Landroid/view/MenuItem; 1
pop
aload 0
aload 1
aload 2
invokespecial android/support/v4/app/Fragment/onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
return
.limit locals 3
.limit stack 3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$layout/groups_list I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/android/u/contact/fragment/GroupListFragment/view Landroid/view/View;
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/view Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/group_fragment_layout_prompt I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/fragment/GroupListFragment/promptLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/promptLayout Landroid/widget/LinearLayout;
getstatic com/nd/android/u/contact/R$id/group_fragment_text_prompt I
invokevirtual android/widget/LinearLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/fragment/GroupListFragment/promptText Landroid/widget/TextView;
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/view Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/grouplist_list_group I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ExpandableListView
putfield com/nd/android/u/contact/fragment/GroupListFragment/groupListView Landroid/widget/ExpandableListView;
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupListView Landroid/widget/ExpandableListView;
iconst_0
invokevirtual android/widget/ExpandableListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupListView Landroid/widget/ExpandableListView;
aconst_null
invokevirtual android/widget/ExpandableListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupListView Landroid/widget/ExpandableListView;
aload 0
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$drawable/expander_ic_folder I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
invokevirtual android/widget/ExpandableListView/setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
aload 0
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/initEvent()V
aload 0
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/view Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method

.method public onDestroy()V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupFunDialog Landroid/app/AlertDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupFunDialog Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupFunDialog Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/dismiss()V
aload 0
aconst_null
putfield com/nd/android/u/contact/fragment/GroupListFragment/groupFunDialog Landroid/app/AlertDialog;
L0:
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
aload 0
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/refreshGroupList()V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onOptionsItemSelected(Landroid/view/MenuItem;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public onStart()V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/GroupAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/GroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/GroupAdapter/notifyDataSetChanged()V
L0:
aload 0
invokespecial android/support/v4/app/Fragment/onStart()V
return
.limit locals 1
.limit stack 1
.end method

.method public refresh()V
aload 0
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public refreshGroupAdapter()V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/GroupAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/contact/adapter/GroupAdapter
dup
aload 0
invokevirtual com/nd/android/u/contact/fragment/GroupListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/contact/adapter/GroupAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/fragment/GroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/GroupAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/GroupAdapter;
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getOapGroupsList()Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/GroupAdapter/setOapGroups(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupListView Landroid/widget/ExpandableListView;
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/GroupAdapter;
invokevirtual android/widget/ExpandableListView/setAdapter(Landroid/widget/ExpandableListAdapter;)V
L1:
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/GroupLoginManagerLoginAllGroups()V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/GroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/GroupAdapter/notifyDataSetChanged()V
return
L0:
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/groupAdpater Lcom/nd/android/u/contact/adapter/GroupAdapter;
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getOapGroupsList()Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/GroupAdapter/setOapGroups(Ljava/util/List;)V
goto L1
.limit locals 1
.limit stack 4
.end method

.method public refreshGroupList()V
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/mRefreshGroupListTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/mRefreshGroupListTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/fragment/GroupListFragment$DoRefreshFrinedListTask
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/GroupListFragment$DoRefreshFrinedListTask/<init>(Lcom/nd/android/u/contact/fragment/GroupListFragment;)V
putfield com/nd/android/u/contact/fragment/GroupListFragment/mRefreshGroupListTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/mRefreshGroupListTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/myDoGetUserInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/fragment/GroupListFragment/mRefreshGroupListTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 1
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 2
.limit stack 5
.end method
