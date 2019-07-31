.bytecode 50.0
.class public synchronized com/nd/android/u/contact/fragment/ContactMainFragment
.super android/support/v4/app/Fragment
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver
.implements com/nd/android/u/contact/listener/ContactObserver
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$1
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$2
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$3
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$4
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$5
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$5$1
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$6
.inner class inner com/nd/android/u/contact/fragment/ContactMainFragment$7
.inner class GetMySeniorCountTask inner com/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask outer com/nd/android/u/contact/fragment/ContactMainFragment
.inner class private UpdateFrinedListTask inner com/nd/android/u/contact/fragment/ContactMainFragment$UpdateFrinedListTask outer com/nd/android/u/contact/fragment/ContactMainFragment

.field private final 'TAG' Ljava/lang/String;

.field private 'friendGroupAdapter' Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;

.field private 'getMySeniorCountTask' Lcom/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask;

.field 'groups' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;>;"

.field private 'isMenuRefresh' Z

.field private 'listView' Lcom/nd/android/u/contact/view/PullToPreshExpandListView;

.field private 'mOperator' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;

.field private 'mReFreshHandler' Landroid/os/Handler;

.field private 'mUpdateFriendListTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mUpdateFrinedListTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'onListViewLongClick' Landroid/widget/AdapterView$OnItemLongClickListener;

.field private 'parentHandler' Landroid/os/Handler;

.field private 'popupWindow' Landroid/widget/PopupWindow;

.field private 'selectModule' Z

.field private 'view' Landroid/view/View;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/Fragment/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/ContactMainFragment/selectModule Z
aload 0
aconst_null
putfield com/nd/android/u/contact/fragment/ContactMainFragment/groups Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/ContactMainFragment/isMenuRefresh Z
aload 0
new com/nd/android/u/contact/fragment/ContactMainFragment$1
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment$1/<init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
putfield com/nd/android/u/contact/fragment/ContactMainFragment/mReFreshHandler Landroid/os/Handler;
aload 0
ldc "ContactMainFragment"
putfield com/nd/android/u/contact/fragment/ContactMainFragment/TAG Ljava/lang/String;
aload 0
new com/nd/android/u/contact/fragment/ContactMainFragment$5
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment$5/<init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
putfield com/nd/android/u/contact/fragment/ContactMainFragment/onListViewLongClick Landroid/widget/AdapterView$OnItemLongClickListener;
aload 0
new com/nd/android/u/contact/fragment/ContactMainFragment$6
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment$6/<init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
putfield com/nd/android/u/contact/fragment/ContactMainFragment/mUpdateFriendListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Z
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/selectModule Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/parentHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Landroid/widget/PopupWindow;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/popupWindow Landroid/widget/PopupWindow;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Lcom/nd/android/u/contact/fragment/ContactMainFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactMainFragment/popupWindow Landroid/widget/PopupWindow;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Lcom/nd/android/u/contact/view/PullToPreshExpandListView;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/listView Lcom/nd/android/u/contact/view/PullToPreshExpandListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Z
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/isMenuRefresh Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getMySeniorCount()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/getMySeniorCountTask Lcom/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/getMySeniorCountTask Lcom/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask;
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
return
L0:
ldc com/nd/android/u/contact/dao/MySeniorDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/MySeniorDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokeinterface com/nd/android/u/contact/dao/MySeniorDao/getMySeniorCount(J)I 2
iconst_1
if_icmpge L1
aload 0
new com/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask/<init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
putfield com/nd/android/u/contact/fragment/ContactMainFragment/getMySeniorCountTask Lcom/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/getMySeniorCountTask Lcom/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment$GetMySeniorCountTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
L1:
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
iconst_0
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/setNoSeniorData(Z)V
return
.limit locals 1
.limit stack 4
.end method

.method private initComponent()V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "WrongViewCast" 
.end annotation
iconst_1
istore 2
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/view Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/friendlist_friend_list I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/contact/view/PullToPreshExpandListView
putfield com/nd/android/u/contact/fragment/ContactMainFragment/listView Lcom/nd/android/u/contact/view/PullToPreshExpandListView;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/listView Lcom/nd/android/u/contact/view/PullToPreshExpandListView;
iconst_0
invokevirtual com/nd/android/u/contact/view/PullToPreshExpandListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/listView Lcom/nd/android/u/contact/view/PullToPreshExpandListView;
aconst_null
invokevirtual com/nd/android/u/contact/view/PullToPreshExpandListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/contact/adapter/XYFriendGroupAdapter
dup
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/contact/adapter/XYFriendGroupAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/fragment/ContactMainFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/selectModule Z
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/setSelectModule(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/parentHandler Landroid/os/Handler;
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/setHandler(Landroid/os/Handler;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/listView Lcom/nd/android/u/contact/view/PullToPreshExpandListView;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokevirtual com/nd/android/u/contact/view/PullToPreshExpandListView/setAdapter(Landroid/widget/ExpandableListAdapter;)V
L0:
getstatic com/product/android/business/config/Configuration/CONTACT_NEED_NEW_JUNIOR Z
ifeq L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L1
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L2
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
astore 3
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gHasBeanSenior Z
ifne L3
iconst_1
istore 1
L4:
aload 3
iload 1
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/setNoSeniorData(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
astore 3
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/getCount()I
ifle L5
iload 2
istore 1
L6:
aload 3
iload 1
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/setNewJuniorApply(Z)V
invokestatic com/nd/android/u/contact/listener/ContactDispatcher/getInstance()Lcom/nd/android/u/contact/listener/ContactDispatcher;
sipush 2000
aload 0
invokevirtual com/nd/android/u/contact/listener/ContactDispatcher/registerObserver(ILcom/nd/android/u/contact/listener/ContactObserver;)V
L1:
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
putfield com/nd/android/u/contact/fragment/ContactMainFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
aload 0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/addFriendGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver;)V 1
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
aload 0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/addFriendGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver;)V 1
return
L3:
iconst_0
istore 1
goto L4
L5:
iconst_0
istore 1
goto L6
L2:
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment/getMySeniorCount()V
goto L1
.limit locals 4
.limit stack 4
.end method

.method private initEvent()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/listView Lcom/nd/android/u/contact/view/PullToPreshExpandListView;
new com/nd/android/u/contact/fragment/ContactMainFragment$2
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment$2/<init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
invokevirtual com/nd/android/u/contact/view/PullToPreshExpandListView/setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/listView Lcom/nd/android/u/contact/view/PullToPreshExpandListView;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/onListViewLongClick Landroid/widget/AdapterView$OnItemLongClickListener;
invokevirtual com/nd/android/u/contact/view/PullToPreshExpandListView/setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/listView Lcom/nd/android/u/contact/view/PullToPreshExpandListView;
new com/nd/android/u/contact/fragment/ContactMainFragment$3
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment$3/<init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
invokevirtual com/nd/android/u/contact/view/PullToPreshExpandListView/setOnRefreshListener(Lcom/nd/android/u/contact/view/PullToPreshExpandListView$OnRefreshListener;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/listView Lcom/nd/android/u/contact/view/PullToPreshExpandListView;
new com/nd/android/u/contact/fragment/ContactMainFragment$4
dup
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment$4/<init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;)V
invokevirtual com/nd/android/u/contact/view/PullToPreshExpandListView/setListScrollListener(Lcom/nd/android/u/contact/view/PullToPreshExpandListView$OnListscrollListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public dismissPopUpwindow()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/popupWindow Landroid/widget/PopupWindow;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/popupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/popupWindow Landroid/widget/PopupWindow;
invokevirtual android/widget/PopupWindow/dismiss()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public isSelectModule()Z
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/selectModule Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/Fragment/onActivityCreated(Landroid/os/Bundle;)V
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "friend_list_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L0
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainFriend()I
iconst_3
if_icmpeq L0
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business_new/rable/newObtainFriendRable
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business_new/rable/newObtainFriendRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L0:
return
.limit locals 2
.limit stack 6
.end method

.method public onContactStateChange()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
astore 2
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/getCount()I
ifle L0
iconst_1
istore 1
L1:
aload 2
iload 1
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/setNewJuniorApply(Z)V
return
L0:
iconst_0
istore 1
goto L1
.limit locals 3
.limit stack 2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc java/lang/String
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
aload 0
aload 1
getstatic com/nd/android/u/contact/R$layout/contact_main_fragment I
aload 2
iconst_0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
putfield com/nd/android/u/contact/fragment/ContactMainFragment/view Landroid/view/View;
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment/initComponent()V
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment/initEvent()V
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/updateFriendList(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/view Landroid/view/View;
areturn
.limit locals 4
.limit stack 5
.end method

.method public onDataChanged(JI)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mReFreshHandler Landroid/os/Handler;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mReFreshHandler Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
return
.limit locals 4
.limit stack 2
.end method

.method public onDestroy()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
ifnull L2
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
aload 0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/removeFriendGroupLoadObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupLoadObserver;)V 1
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
aload 0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/removeFriendGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IFriendGroupDataObserver;)V 1
L2:
getstatic com/product/android/business/config/Configuration/CONTACT_NEED_NEW_JUNIOR Z
ifeq L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getIdentity()I
invokestatic com/product/android/business/ApplicationVariable$IDENTITY/value2Enum(I)Lcom/product/android/business/ApplicationVariable$IDENTITY;
getstatic com/product/android/business/ApplicationVariable$IDENTITY/STUDENT Lcom/product/android/business/ApplicationVariable$IDENTITY;
if_acmpne L3
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L3
invokestatic com/nd/android/u/contact/listener/ContactDispatcher/getInstance()Lcom/nd/android/u/contact/listener/ContactDispatcher;
sipush 2000
aload 0
invokevirtual com/nd/android/u/contact/listener/ContactDispatcher/unregisterObserver(ILcom/nd/android/u/contact/listener/ContactObserver;)V
L3:
aload 0
invokespecial android/support/v4/app/Fragment/onDestroy()V
return
.limit locals 1
.limit stack 3
.end method

.method public onEventMainThread(Ljava/lang/String;)V
ldc "UPDATE_NEW_FANS_FACE"
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/showNewFansFace()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onHiddenChanged(Z)V
aload 0
iload 1
invokespecial android/support/v4/app/Fragment/onHiddenChanged(Z)V
iload 1
ifne L0
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment/getMySeniorCount()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public onLoadStateChanged(JI)V
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mReFreshHandler Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public onPause()V
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/dismissPopUpwindow()V
aload 0
invokespecial android/support/v4/app/Fragment/onPause()V
return
.limit locals 1
.limit stack 1
.end method

.method public onReceiverNewContact(I)V
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnull L0
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
new com/nd/android/u/contact/fragment/ContactMainFragment$7
dup
aload 0
iload 1
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment$7/<init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;I)V
invokevirtual android/support/v4/app/FragmentActivity/runOnUiThread(Ljava/lang/Runnable;)V
L0:
return
.limit locals 2
.limit stack 5
.end method

.method public refresh()V
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactMainFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getFriendGroupList()Ljava/util/List; 0
astore 1
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/friendGroupAdapter Lcom/nd/android/u/contact/adapter/XYFriendGroupAdapter;
aload 1
invokevirtual com/nd/android/u/contact/adapter/XYFriendGroupAdapter/refresh(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/ContactMainFragment/parentHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectModule(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/fragment/ContactMainFragment/selectModule Z
return
.limit locals 2
.limit stack 2
.end method

.method public updateFriendList(Z)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
iload 1
putfield com/nd/android/u/contact/fragment/ContactMainFragment/isMenuRefresh Z
aload 0
new com/nd/android/u/contact/fragment/ContactMainFragment$UpdateFrinedListTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/fragment/ContactMainFragment$UpdateFrinedListTask/<init>(Lcom/nd/android/u/contact/fragment/ContactMainFragment;Lcom/nd/android/u/contact/fragment/ContactMainFragment$1;)V
putfield com/nd/android/u/contact/fragment/ContactMainFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mUpdateFriendListTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/fragment/ContactMainFragment/mUpdateFrinedListTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
anewarray com/common/android/utils/task/genericTask/TaskParams
dup
iconst_0
aload 2
aastore
invokevirtual com/common/android/utils/task/genericTask/GenericTask/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
return
.limit locals 3
.limit stack 5
.end method
