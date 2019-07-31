.bytecode 50.0
.class public synchronized com/nd/android/u/contact/ui/fragment/OrganizationFragment
.super com/nd/android/u/contact/ui/base/ContactBaseFragment2
.implements com/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver
.inner class inner com/nd/android/u/contact/ui/fragment/OrganizationFragment$1
.inner class inner com/nd/android/u/contact/ui/fragment/OrganizationFragment$2

.field private static 'mFragment' Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;

.field private 'isBackpack' Z

.field private 'isCurShow' Z

.field private 'isInit' Z

.field private 'isLoading' Z

.field private 'mGid' J

.field private 'mGroup' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mLvSchoolContent' Landroid/widget/ListView;
.annotation visible Lcom/nd/android/u/contact/ui/annotation/ViewInject;
id s = "lv_organization_school_content"
.end annotation
.end field

.field private 'mOrgDatas' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/contact/ui/bean/OrgNode;>;"

.field private 'mTransfer' Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;

.field private 'mTreeAdapter' Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/ui/base/ContactBaseFragment2/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isInit Z
aload 0
iconst_1
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isCurShow Z
aload 0
iconst_0
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isLoading Z
aload 0
iconst_0
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isBackpack Z
aload 0
new com/nd/android/u/contact/ui/fragment/OrganizationFragment$1
dup
aload 0
invokespecial com/nd/android/u/contact/ui/fragment/OrganizationFragment$1/<init>(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)V
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)V
aload 0
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/dismissLoading()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mOrgDatas Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mHandlerSelected Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mHandlerSelected Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mHandlerSelected Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTreeAdapter Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;Ljava/lang/String;)V
aload 0
aload 1
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/showLoading(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1500(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTransfer Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Z
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isLoading Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isLoading Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Z
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isSelectMode Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Z
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isBackpack Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mContext Landroid/support/v4/app/FragmentActivity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mContext Landroid/support/v4/app/FragmentActivity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Landroid/support/v4/app/FragmentActivity;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mContext Landroid/support/v4/app/FragmentActivity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$802(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
aload 0
aload 1
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mGroup Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)J
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mGid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public static newInstance()Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
new com/nd/android/u/contact/ui/fragment/OrganizationFragment
dup
invokespecial com/nd/android/u/contact/ui/fragment/OrganizationFragment/<init>()V
putstatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/mFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
getstatic com/nd/android/u/contact/ui/fragment/OrganizationFragment/mFragment Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;
areturn
.limit locals 0
.limit stack 2
.end method

.method public FinishRefreshData(I)V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mHandler Landroid/os/Handler;
iload 1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public afterDone(Lcom/nd/android/u/contact/ui/bean/CallBackResult;)V
aload 0
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/isAdded()Z
ifne L0
L1:
return
L0:
aload 1
invokevirtual com/nd/android/u/contact/ui/bean/CallBackResult/getType()I
istore 2
aload 1
invokevirtual com/nd/android/u/contact/ui/bean/CallBackResult/getCode()I
getstatic com/nd/android/u/contact/ui/bean/CallBackResult/SUCCESS I
if_icmpeq L2
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mContext Landroid/support/v4/app/FragmentActivity;
aload 1
invokevirtual com/nd/android/u/contact/ui/bean/CallBackResult/getResId()I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isInit Z
ifeq L3
aload 0
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/dismissLoading()V
L3:
iload 2
getstatic com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/GET_NODE_CHILDREN Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;
invokevirtual com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/ordinal()I
if_icmpne L1
aload 0
iconst_0
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isLoading Z
return
L2:
aload 1
invokevirtual com/nd/android/u/contact/ui/bean/CallBackResult/getDatas()Ljava/util/List;
astore 3
iload 2
getstatic com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/GET_NODE_CHILDREN Lcom/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE;
invokevirtual com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE/ordinal()I
if_icmpne L1
aload 0
iconst_0
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isLoading Z
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isInit Z
ifne L4
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mOrgDatas Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mOrgDatas Ljava/util/List;
aload 3
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTreeAdapter Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
invokevirtual com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/notifyDataSetChanged()V
aload 0
iconst_1
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isInit Z
L5:
aload 0
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/dismissLoading()V
return
L4:
aload 1
invokevirtual com/nd/android/u/contact/ui/bean/CallBackResult/getExtras()Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mOrgDatas Ljava/util/List;
iload 2
iconst_1
iadd
aload 3
invokeinterface java/util/List/addAll(ILjava/util/Collection;)Z 2
pop
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isSelectMode Z
ifeq L6
aload 0
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/refreshNodes()V
goto L5
L6:
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTreeAdapter Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
invokevirtual com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/notifyDataSetChanged()V
goto L5
.limit locals 4
.limit stack 3
.end method

.method protected fillInitData()V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isCurShow Z
ifeq L0
aload 0
ldc ""
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/showLoading(Ljava/lang/String;)V
L0:
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mOrgDatas Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTreeAdapter Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
invokevirtual com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTransfer Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
iconst_0
ldc2_w -1L
iconst_m1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
iconst_m1
invokevirtual com/nd/android/u/contact/ui/transfer/OrgDataTransfer/getDirectChildren(IJLjava/lang/Integer;I)V
return
.limit locals 1
.limit stack 6
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
invokestatic com/nd/android/u/contact/ui/transfer/OrgDataTransfer/getInstance()Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTransfer Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTransfer Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
aload 0
invokevirtual com/nd/android/u/contact/ui/transfer/OrgDataTransfer/setReqCallBack(Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack;)V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTransfer Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
aload 0
invokevirtual com/nd/android/u/contact/ui/transfer/OrgDataTransfer/setEventListener(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mOrgDatas Ljava/util/List;
aload 0
new com/nd/android/u/contact/ui/adapter/MultiTreeAdapter
dup
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mOrgDatas Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mContext Landroid/support/v4/app/FragmentActivity;
invokespecial com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/<init>(Ljava/util/List;Landroid/content/Context;)V
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTreeAdapter Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTreeAdapter Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isSelectMode Z
invokevirtual com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/setSelectMode(Z)V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTreeAdapter Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTransfer Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
invokevirtual com/nd/android/u/contact/ui/transfer/OrgDataTransfer/getSearchDept()Z
invokevirtual com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/setSearchDept(Z)V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTreeAdapter Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mGid J
invokevirtual com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/setGid(J)V
return
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
iconst_1
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/setHasOptionsMenu(Z)V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mLvSchoolContent Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTreeAdapter Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mLvSchoolContent Landroid/widget/ListView;
new com/nd/android/u/contact/ui/fragment/OrganizationFragment$2
dup
aload 0
invokespecial com/nd/android/u/contact/ui/fragment/OrganizationFragment$2/<init>(Lcom/nd/android/u/contact/ui/fragment/OrganizationFragment;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected initView()Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mContext Landroid/support/v4/app/FragmentActivity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/fragment_organization I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 1
.limit stack 3
.end method

.method public onDestroy()V
aload 0
invokespecial com/nd/android/u/contact/ui/base/ContactBaseFragment2/onDestroy()V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTransfer Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
ifnull L0
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTransfer Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
aload 0
invokevirtual com/nd/android/u/contact/ui/transfer/OrgDataTransfer/removeEventListener(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IOrgDataObserver;)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
aload 0
ldc ""
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/showLoading(Ljava/lang/String;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mContext Landroid/support/v4/app/FragmentActivity;
aload 0
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/server_request_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/dismissLoading()V
L1:
aload 0
aload 1
invokespecial com/nd/android/u/contact/ui/base/ContactBaseFragment2/onOptionsItemSelected(Landroid/view/MenuItem;)Z
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTransfer Lcom/nd/android/u/contact/ui/transfer/OrgDataTransfer;
iconst_1
invokevirtual com/nd/android/u/contact/ui/transfer/OrgDataTransfer/update(Z)V
goto L1
.limit locals 2
.limit stack 3
.end method

.method public refreshAll()V
aload 0
iconst_0
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isInit Z
aload 0
invokevirtual com/nd/android/u/contact/ui/fragment/OrganizationFragment/fillInitData()V
return
.limit locals 1
.limit stack 2
.end method

.method public refreshNodes()V
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mOrgDatas Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/ui/bean/OrgNode
astore 4
aload 4
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getUiType()Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
getstatic com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE/EXPEND_NODE Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
if_acmpeq L0
aload 4
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/getId()J
lstore 1
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
lload 1
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/isContians(J)Z
ifeq L2
aload 4
iconst_1
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/setSelected(Z)V
goto L0
L2:
aload 4
iconst_0
invokevirtual com/nd/android/u/contact/ui/bean/OrgNode/setSelected(Z)V
goto L0
L1:
aload 0
getfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mTreeAdapter Lcom/nd/android/u/contact/ui/adapter/MultiTreeAdapter;
invokevirtual com/nd/android/u/contact/ui/adapter/MultiTreeAdapter/notifyDataSetChanged()V
return
.limit locals 5
.limit stack 3
.end method

.method public setBackpack(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isBackpack Z
return
.limit locals 2
.limit stack 2
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/mGid J
return
.limit locals 3
.limit stack 3
.end method

.method public setUserVisibleHint(Z)V
aload 0
iload 1
invokespecial com/nd/android/u/contact/ui/base/ContactBaseFragment2/setUserVisibleHint(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/ui/fragment/OrganizationFragment/isCurShow Z
return
.limit locals 2
.limit stack 2
.end method
