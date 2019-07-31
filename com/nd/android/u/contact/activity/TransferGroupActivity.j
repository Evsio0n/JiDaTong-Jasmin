.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/TransferGroupActivity
.super com/nd/android/u/contact/activity/base/GroupOpActivity
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver
.inner class inner com/nd/android/u/contact/activity/TransferGroupActivity$1
.inner class inner com/nd/android/u/contact/activity/TransferGroupActivity$2
.inner class inner com/nd/android/u/contact/activity/TransferGroupActivity$3
.inner class private GetGroupMemberTask inner com/nd/android/u/contact/activity/TransferGroupActivity$GetGroupMemberTask outer com/nd/android/u/contact/activity/TransferGroupActivity

.field private 'gid' J

.field private 'group' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;

.field private 'groupAdapter' Lcom/nd/android/u/contact/adapter/TransferGroupMemberAdapter;

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field private 'listView' Landroid/widget/ListView;

.field private 'mGroupOperator' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;

.field private 'mReFreshHandler' Landroid/os/Handler;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'synGroupMemberTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'synUserInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/activity/TransferGroupActivity/list Ljava/util/List;
aload 0
new com/nd/android/u/contact/activity/TransferGroupActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/TransferGroupActivity$1/<init>(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)V
putfield com/nd/android/u/contact/activity/TransferGroupActivity/mReFreshHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/contact/activity/TransferGroupActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/TransferGroupActivity$2/<init>(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)V
putfield com/nd/android/u/contact/activity/TransferGroupActivity/synUserInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/contact/activity/TransferGroupActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/TransferGroupActivity/m_dialog Landroid/app/ProgressDialog;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Lcom/nd/android/u/contact/adapter/TransferGroupMemberAdapter;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/groupAdapter Lcom/nd/android/u/contact/adapter/TransferGroupMemberAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/synGroupMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/rightBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/rightBtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method private synGroupMember()V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/synGroupMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/synGroupMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/TransferGroupActivity$GetGroupMemberTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/TransferGroupActivity$GetGroupMemberTask/<init>(Lcom/nd/android/u/contact/activity/TransferGroupActivity;Lcom/nd/android/u/contact/activity/TransferGroupActivity$1;)V
putfield com/nd/android/u/contact/activity/TransferGroupActivity/synGroupMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/synGroupMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/synUserInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/synGroupMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method protected final _onCreate(Landroid/os/Bundle;)Z
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_transfergroup I
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/setContentView(I)V
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/initEvent()V
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
putfield com/nd/android/u/contact/activity/TransferGroupActivity/mGroupOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/activity/TransferGroupActivity/gid J
aload 0
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/mGroupOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/gid J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
putfield com/nd/android/u/contact/activity/TransferGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setEnabled(Z)V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnonnull L2
aload 0
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/finish()V
L2:
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/_onCreate(Landroid/os/Bundle;)Z
ireturn
L0:
aload 0
getstatic com/nd/android/u/contact/R$layout/transfergroup I
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/setContentView(I)V
goto L1
.limit locals 2
.limit stack 4
.end method

.method protected final groupOpMsgFail()V
aload 0
getstatic com/nd/android/u/contact/R$string/transfer_group_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected final groupOpMsgSuccess()V
invokestatic com/nd/android/u/contact/business/SynOapGroupPro/getInstance()Lcom/nd/android/u/contact/business/SynOapGroupPro;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/groupAdapter Lcom/nd/android/u/contact/adapter/TransferGroupMemberAdapter;
invokevirtual com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/getSelectid()J
invokevirtual com/nd/android/u/contact/business/SynOapGroupPro/tranferGroupProLocal(JJ)V
aload 0
getstatic com/nd/android/u/contact/R$string/transfer_group_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/finish()V
return
.limit locals 1
.limit stack 5
.end method

.method public final handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
aload 1
ldc "gid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifne L0
L1:
return
L0:
aload 1
ldc "gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/gid J
lcmp
ifne L1
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 1
aload 1
aload 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 1
iconst_2
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
bipush 9
ldc_w 92002
aload 1
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public final initComponent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initComponent()V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/transfer_group_wait I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/setGroupOpMsg(Ljava/lang/String;)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/transfergroup_list I
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/TransferGroupActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/listView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/listView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
getstatic com/nd/android/u/contact/R$string/transfer_group I
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/setActivityTitle(I)V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/rightBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$string/transfer I
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 1
.limit stack 3
.end method

.method public final initComponentValue()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/groupAdapter Lcom/nd/android/u/contact/adapter/TransferGroupMemberAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/contact/adapter/TransferGroupMemberAdapter
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/activity/TransferGroupActivity/groupAdapter Lcom/nd/android/u/contact/adapter/TransferGroupMemberAdapter;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/listView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/groupAdapter Lcom/nd/android/u/contact/adapter/TransferGroupMemberAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L0:
aload 0
invokespecial com/nd/android/u/contact/activity/TransferGroupActivity/synGroupMember()V
return
.limit locals 1
.limit stack 4
.end method

.method public final initEvent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/listView Landroid/widget/ListView;
new com/nd/android/u/contact/activity/TransferGroupActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/TransferGroupActivity$3/<init>(Lcom/nd/android/u/contact/activity/TransferGroupActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public onDataChanged(IJ)V
iload 1
sipush 2001
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/mhandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/mReFreshHandler Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
L0:
return
.limit locals 4
.limit stack 2
.end method

.method public final onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/synGroupMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/synGroupMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/synGroupMemberTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
L2:
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method protected final onStart()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method protected final rightBtnHandle()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/rightBtnHandle()V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L1:
return
L0:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/option_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20061
aconst_null
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
L2:
aload 0
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/startGroupOp()V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/addGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ldc ""
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/groupAdapter Lcom/nd/android/u/contact/adapter/TransferGroupMemberAdapter;
invokevirtual com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/getSelectid()J
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/transfer(Ljava/lang/String;J)Z
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/mhandler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/removeMessages(I)V
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/TransferGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
L3:
aload 0
invokevirtual com/nd/android/u/contact/activity/TransferGroupActivity/groupOpMsgFail()V
return
.limit locals 1
.limit stack 4
.end method

.method protected final setGenKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/TransferGroupActivity/mGenKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method protected final setGroupOpMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/TransferGroupActivity/mGroupOpmessage Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
