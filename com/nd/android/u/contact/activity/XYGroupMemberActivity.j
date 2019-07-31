.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/XYGroupMemberActivity
.super com/nd/android/u/contact/activity/base/GroupOpActivity
.implements com/nd/android/u/contact/adapter/XYGroupMemberAdapter$DeletMemberLisener
.implements com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver
.inner class inner com/nd/android/u/contact/activity/XYGroupMemberActivity$1
.inner class inner com/nd/android/u/contact/activity/XYGroupMemberActivity$2
.inner class inner com/nd/android/u/contact/activity/XYGroupMemberActivity$3
.inner class inner com/nd/android/u/contact/activity/XYGroupMemberActivity$4
.inner class inner com/nd/android/u/contact/activity/XYGroupMemberActivity$5
.inner class inner com/nd/android/u/contact/activity/XYGroupMemberActivity$6
.inner class public static abstract interface IGroupMemberItmeDelBtnLisener inner com/nd/android/u/contact/activity/XYGroupMemberActivity$IGroupMemberItmeDelBtnLisener outer com/nd/android/u/contact/activity/XYGroupMemberActivity
.inner class private SynUserInfoTask inner com/nd/android/u/contact/activity/XYGroupMemberActivity$SynUserInfoTask outer com/nd/android/u/contact/activity/XYGroupMemberActivity

.field protected static final 'TAG' Ljava/lang/String; = "GroupMemberActivity"

.field private 'deletMembers' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field protected 'gid' J

.field protected 'group' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;

.field protected 'groupMemberAdapter' Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;

.field protected 'groupNameText' Landroid/widget/TextView;

.field protected 'groupfaceImg' Landroid/widget/ImageView;

.field private 'imgOnClick' Landroid/view/View$OnClickListener;

.field private 'isEdit' Z

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field private 'mAddGroupMember' Landroid/widget/Button;

.field private 'mDetermine' Landroid/widget/ImageView;

.field private 'mEdit' Landroid/widget/ImageView;

.field private 'mOperator' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;

.field private 'mReFreshHandler' Landroid/os/Handler;

.field protected 'memberListView' Landroid/widget/ListView;

.field protected 'showBegin' Z

.field protected 'synGroupMemberInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'synUserInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/isEdit Z
aload 0
new com/nd/android/u/contact/activity/XYGroupMemberActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity$1/<init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mReFreshHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/contact/activity/XYGroupMemberActivity$5
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity$5/<init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/synUserInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/XYGroupMemberActivity$6
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity$6/<init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/imgOnClick Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mhandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupInfo()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/list Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity/isShowView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/isEdit Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/isEdit Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mEdit Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mAddGroupMember Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/deletMembers Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$802(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/deletMembers Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;Ljava/util/List;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity/doDeleteGroupMember(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method private doDeleteGroupMember(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/Long;>;)V"
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L1
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
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/startGroupOp()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ldc ""
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/delMember(Ljava/lang/String;Ljava/util/Iterator;)Z
pop
return
.limit locals 2
.limit stack 4
.end method

.method private isShowView()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/isManager(J)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mEdit Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mDetermine Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/isEdit Z
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/isEdit Z
invokevirtual com/nd/android/u/contact/adapter/XYGroupMemberAdapter/setShowFlag(Z)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYGroupMemberAdapter/refresh()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mAddGroupMember Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private setkey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mGenKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private synGroupInfo()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/XYGroupMemberActivity$SynUserInfoTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity$SynUserInfoTask/<init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;Lcom/nd/android/u/contact/activity/XYGroupMemberActivity$1;)V
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/synUserInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/wait_for_delete_group_member I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/setGroupOpMsg(Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_group_member I
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/initComponent()V
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ldc "gid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
ldc "gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/gid J
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/gid J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupInfo()V
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnonnull L3
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/finish()V
iconst_1
ireturn
L1:
aload 1
ldc "deptid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L4
aload 1
ldc "deptid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 2
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mAddGroupMember Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L2
L4:
aload 1
ldc "classgid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L5
aload 1
ldc "classgid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 2
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mAddGroupMember Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L2
L5:
aload 1
ldc "clubgid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L2
aload 1
ldc "clubgid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 2
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
lload 2
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/gid J
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupInfo()V
goto L2
L3:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/initEvent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/initComponentValue()V
iconst_1
ireturn
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/initComponentValue()V
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method protected groupOpMsgFail()V
aload 0
getstatic com/nd/android/u/contact/R$string/delete_group_member_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method protected groupOpMsgSuccess()V
aload 0
getstatic com/nd/android/u/contact/R$string/group_member_add_or_delete_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/deletMembers Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/deletMembers Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/deletMembers Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/removeMsg()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method public handler_CMD_31()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/handler_CMD_31()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/refreshAdapter()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_GROUP_MEMBER_REFRESH()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/handler_CMD_GROUP_MEMBER_REFRESH()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/refreshAdapter()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_GROUP_SYSMSG_TYPE_GROUP_INFO_CHANGED()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
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
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/gid J
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

.method public handler_CMD_x20004()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/handler_CMD_x20004()V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/refreshAdapter()V
return
.limit locals 1
.limit stack 1
.end method

.method public hasDeletMember()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mDetermine Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getVisibility()I
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mDetermine Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected initComponent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_listview I
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/memberListView Landroid/widget/ListView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_img_face I
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupfaceImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_text_groupname I
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupNameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_add_group_member I
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mAddGroupMember Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/memberListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/memberListView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/titleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/group_member I
invokevirtual android/widget/TextView/setText(I)V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/main_header_more I
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mEdit Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/determine_bt_right I
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mDetermine Landroid/widget/ImageView;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initComponentValue()V
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity/isShowView()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupNameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupfaceImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
invokestatic com/nd/android/u/contact/business/SimpleGroupHeadImageLoader/displayGroupHeaderImage(Landroid/widget/ImageView;Ljava/lang/String;I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/refreshAdapter()V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mAddGroupMember Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mEdit Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mDetermine Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/memberListView Landroid/widget/ListView;
new com/nd/android/u/contact/activity/XYGroupMemberActivity$4
dup
aload 0
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity$4/<init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/addGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected leftBtnHandle()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/isEdit Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
invokevirtual com/nd/android/u/contact/adapter/XYGroupMemberAdapter/getDeletMembers()Ljava/util/List;
astore 1
aload 1
ifnull L1
aload 1
invokeinterface java/util/List/size()I 0
ifle L1
new com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/<init>(Landroid/content/Context;)V
astore 1
aload 1
getstatic com/nd/android/u/contact/R$string/prompt I
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setTitle(I)V
aload 1
getstatic com/nd/android/u/contact/R$string/is_or_no_gaveup_the_pro I
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setValue(I)V
aload 1
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/yes_gaveup I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/XYGroupMemberActivity$2
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity$2/<init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;)V
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 1
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/no_thinkaboat I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/XYGroupMemberActivity$3
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/XYGroupMemberActivity$3/<init>(Lcom/nd/android/u/contact/activity/XYGroupMemberActivity;Lcom/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog;)V
invokevirtual com/nd/android/u/contact/dialog/CancelDeletGroupMemberDialog/setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
return
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/finish()V
return
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/finish()V
return
.limit locals 2
.limit stack 6
.end method

.method public onDataChanged(IJ)V
lload 2
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
lcmp
ifeq L0
lload 2
ldc2_w -1L
lcmp
ifne L1
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mReFreshHandler Landroid/os/Handler;
iload 1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L1:
return
.limit locals 4
.limit stack 4
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V
L2:
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/contact/activity/XYGroupMemberActivity/leftBtnHandle()V
L0:
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/onKeyDown(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public refreshAdapter()V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/contact/adapter/XYGroupMemberAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokespecial com/nd/android/u/contact/adapter/XYGroupMemberAdapter/<init>(Landroid/content/Context;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)V
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
L0:
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business/OapGroupPro/sortGroupMember(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)Ljava/util/List;
astore 1
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
aload 1
invokevirtual com/nd/android/u/contact/adapter/XYGroupMemberAdapter/setMemberList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
aload 0
invokevirtual com/nd/android/u/contact/adapter/XYGroupMemberAdapter/setDeletMemerLisener(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter$DeletMemberLisener;)V
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/memberListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/XYGroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
.limit locals 2
.limit stack 5
.end method

.method protected setGenKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mGenKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method protected setGroupOpMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYGroupMemberActivity/mGroupOpmessage Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
