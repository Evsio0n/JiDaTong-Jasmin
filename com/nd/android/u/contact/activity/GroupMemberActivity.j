.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/GroupMemberActivity
.super com/nd/android/u/contact/activity/base/GroupOpActivity
.inner class inner com/nd/android/u/contact/activity/GroupMemberActivity$1
.inner class inner com/nd/android/u/contact/activity/GroupMemberActivity$2
.inner class inner com/nd/android/u/contact/activity/GroupMemberActivity$3
.inner class inner com/nd/android/u/contact/activity/GroupMemberActivity$4
.inner class inner com/nd/android/u/contact/activity/GroupMemberActivity$5
.inner class private SynUserInfoTask inner com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask outer com/nd/android/u/contact/activity/GroupMemberActivity

.field protected static final 'TAG' Ljava/lang/String; = "GroupMemberActivity"

.field protected 'gid' J

.field protected 'group' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;

.field protected 'groupMemberAdapter' Lcom/nd/android/u/contact/adapter/GroupMemberAdapter;

.field protected 'groupNameText' Landroid/widget/TextView;

.field private 'group_member_add_layout' Landroid/widget/LinearLayout;

.field private 'group_member_addfriend' Landroid/widget/Button;

.field protected 'groupfaceImg' Landroid/widget/ImageView;

.field private 'imgOnClick' Landroid/view/View$OnClickListener;

.field private 'isShowFlag' Z

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field private 'mOperator' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;

.field protected 'memberListView' Landroid/widget/ListView;

.field protected 'showBegin' Z

.field protected 'synGroupMemberInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'synUserInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/GroupMemberActivity/isShowFlag Z
aload 0
new com/nd/android/u/contact/activity/GroupMemberActivity$4
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupMemberActivity$4/<init>(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)V
putfield com/nd/android/u/contact/activity/GroupMemberActivity/synUserInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
new com/nd/android/u/contact/activity/GroupMemberActivity$5
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupMemberActivity$5/<init>(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)V
putfield com/nd/android/u/contact/activity/GroupMemberActivity/imgOnClick Landroid/view/View$OnClickListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/startGroupOp()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/dismissDialog()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$302(Lcom/nd/android/u/contact/activity/GroupMemberActivity;Ljava/util/List;)Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupMemberActivity/list Ljava/util/List;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)V
aload 0
invokespecial com/nd/android/u/contact/activity/GroupMemberActivity/isShowView()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)Z
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/isShowFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/u/contact/activity/GroupMemberActivity;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/activity/GroupMemberActivity/isShowFlag Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private isShowView()V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L0
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business/OapGroupPro/isManager(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;J)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group_member_add_layout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/rightBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$string/del I
invokevirtual android/widget/Button/setText(I)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/rightBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/bt_header_rights_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/rightBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/bt_header_right_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group_member_add_layout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 4
.end method

.method private synGroupInfo()V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/GroupMemberActivity$SynUserInfoTask/<init>(Lcom/nd/android/u/contact/activity/GroupMemberActivity;Lcom/nd/android/u/contact/activity/GroupMemberActivity$1;)V
putfield com/nd/android/u/contact/activity/GroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/synUserInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/wait_for_delete_group_member I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/setGroupOpMsg(Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_group_member I
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/setContentView(I)V
L2:
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/initComponent()V
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
putfield com/nd/android/u/contact/activity/GroupMemberActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ldc "gid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L3
aload 0
aload 1
ldc "gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/activity/GroupMemberActivity/gid J
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/gid J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
putfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
invokespecial com/nd/android/u/contact/activity/GroupMemberActivity/synGroupInfo()V
L4:
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnonnull L5
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/finish()V
iconst_1
ireturn
L1:
aload 0
getstatic com/nd/android/u/contact/R$layout/group_member I
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/setContentView(I)V
goto L2
L3:
aload 1
ldc "deptid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L6
aload 1
ldc "deptid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 2
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
putfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group_member_add_layout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L4
L6:
aload 1
ldc "classgid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L4
aload 1
ldc "classgid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 2
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/mOperator Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup
putfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group_member_add_layout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L4
L5:
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/initEvent()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method protected groupOpMsgFail()V
aload 0
getstatic com/nd/android/u/contact/R$string/delete_group_member_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected groupOpMsgSuccess()V
aload 0
getstatic com/nd/android/u/contact/R$string/delete_group_member_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/removeMsg()V
return
.limit locals 1
.limit stack 2
.end method

.method public handler_CMD_31()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/handler_CMD_31()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/refreshAdapter()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_GROUP_MEMBER_REFRESH()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/handler_CMD_GROUP_MEMBER_REFRESH()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/refreshAdapter()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_GROUP_SYSMSG_TYPE_GROUP_INFO_CHANGED()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/initComponentValue()V
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
getfield com/nd/android/u/contact/activity/GroupMemberActivity/gid J
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
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/refreshAdapter()V
return
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_listview I
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/GroupMemberActivity/memberListView Landroid/widget/ListView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_img_face I
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/GroupMemberActivity/groupfaceImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_text_groupname I
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/GroupMemberActivity/groupNameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_add_layout I
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/GroupMemberActivity/group_member_add_layout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_addfriend I
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/GroupMemberActivity/group_member_addfriend Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/memberListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setCacheColorHint(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/memberListView Landroid/widget/ListView;
aconst_null
invokevirtual android/widget/ListView/setDivider(Landroid/graphics/drawable/Drawable;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/titleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/group_member I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initComponentValue()V
aload 0
invokespecial com/nd/android/u/contact/activity/GroupMemberActivity/isShowView()V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/groupNameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/groupfaceImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
invokestatic com/nd/android/u/contact/business/SimpleGroupHeadImageLoader/displayGroupHeaderImage(Landroid/widget/ImageView;Ljava/lang/String;I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/refreshAdapter()V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group_member_add_layout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group_member_addfriend Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/rightBtn Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/imgOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/memberListView Landroid/widget/ListView;
new com/nd/android/u/contact/activity/GroupMemberActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupMemberActivity$2/<init>(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/memberListView Landroid/widget/ListView;
new com/nd/android/u/contact/activity/GroupMemberActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupMemberActivity$3/<init>(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)V
invokevirtual android/widget/ListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onStart()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/onStart()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupMemberActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public refreshAdapter()V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/GroupMemberAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/contact/adapter/GroupMemberAdapter
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGroupKey()Ljava/lang/String;
new com/nd/android/u/contact/activity/GroupMemberActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupMemberActivity$1/<init>(Lcom/nd/android/u/contact/activity/GroupMemberActivity;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokespecial com/nd/android/u/contact/adapter/GroupMemberAdapter/<init>(Landroid/content/Context;Ljava/lang/String;Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)V
putfield com/nd/android/u/contact/activity/GroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/GroupMemberAdapter;
L0:
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business/OapGroupPro/sortGroupMember(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)Ljava/util/List;
astore 1
aload 1
ifnull L1
aload 1
invokeinterface java/util/List/size()I 0
ifle L1
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 3
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L2
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/business/OapGroupPro/isManager(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;J)Z
ifne L4
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
L3:
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/GroupMemberAdapter;
aload 1
invokevirtual com/nd/android/u/contact/adapter/GroupMemberAdapter/setMemberList(Ljava/util/List;)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/memberListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/groupMemberAdapter Lcom/nd/android/u/contact/adapter/GroupMemberAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
return
L4:
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupMemberActivity/rightBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$string/del I
invokevirtual android/widget/Button/setText(I)V
goto L3
.limit locals 4
.limit stack 8
.end method

.method protected setGenKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupMemberActivity/mGenKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method protected setGroupOpMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupMemberActivity/mGroupOpmessage Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
