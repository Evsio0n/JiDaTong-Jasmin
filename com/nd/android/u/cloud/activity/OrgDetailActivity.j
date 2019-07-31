.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/OrgDetailActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/cloud/activity/OrgDetailActivity$1
.inner class inner com/nd/android/u/cloud/activity/OrgDetailActivity$2
.inner class private SearchOrgDetailTask inner com/nd/android/u/cloud/activity/OrgDetailActivity$SearchOrgDetailTask outer com/nd/android/u/cloud/activity/OrgDetailActivity

.field private final 'TAG' Ljava/lang/String;

.field private 'addbtn' Landroid/widget/ImageButton;

.field private 'addlayout' Landroid/widget/LinearLayout;

.field private 'heardimg' Landroid/widget/ImageView;

.field private 'identity_bt_refresh' Landroid/widget/ImageView;

.field private 'isOwn' Z

.field private 'mSearchOrgDetailTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mSearchOrgDetailTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'oapunit' Lcom/nd/android/u/contact/dataStructure/OapUnit;

.field private 'org_short' Landroid/widget/TextView;

.field private 'org_stytle' Landroid/widget/TextView;

.field private 'unitcode' Landroid/widget/TextView;

.field private 'unitid' I

.field private 'unitname' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
ldc "OrgDetailActivity"
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/TAG Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/isOwn Z
aload 0
new com/nd/android/u/cloud/activity/OrgDetailActivity$2
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/OrgDetailActivity$2/<init>(Lcom/nd/android/u/cloud/activity/OrgDetailActivity;)V
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/mSearchOrgDetailTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/activity/OrgDetailActivity;)I
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/unitid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/cloud/activity/OrgDetailActivity;Lcom/nd/android/u/contact/dataStructure/OapUnit;)Lcom/nd/android/u/contact/dataStructure/OapUnit;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/OrgDetailActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/OrgDetailActivity/onSearchSuccess()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/OrgDetailActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/OrgDetailActivity/onSearchFailure(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/OrgDetailActivity;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/OrgDetailActivity/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method private onBegin(Ljava/lang/String;)V
aload 0
aload 0
ldc ""
aload 1
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 2
.limit stack 5
.end method

.method private onSearchFailure(Ljava/lang/String;)V
aload 0
aload 1
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method private onSearchSuccess()V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/isOwn Z
ifeq L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 1
aload 1
ifnull L0
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitcode()Ljava/lang/String;
invokevirtual com/product/android/business/login/BindUser/setUnitcode(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnittype()I
invokevirtual com/product/android/business/login/BindUser/setUnittype(I)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getShortname()Ljava/lang/String;
invokevirtual com/product/android/business/login/BindUser/setUnitshortname(Ljava/lang/String;)V
aload 1
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getName()Ljava/lang/String;
invokevirtual com/product/android/business/login/BindUser/setUnitname(Ljava/lang/String;)V
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
aload 1
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/updateUserInfo(Lcom/product/android/business/login/BindUser;)Z 1
pop
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L1:
return
.limit locals 2
.limit stack 2
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
ldc_w 2130903563
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/getIntent()Landroid/content/Intent;
astore 1
aload 1
ifnull L1
aload 1
ldc "oapunit"
invokevirtual android/content/Intent/hasExtra(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
ldc "oapunit"
invokevirtual android/content/Intent/getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/nd/android/u/contact/dataStructure/OapUnit
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitid()I
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/unitid I
aload 0
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/searchOrgDetail()V
L2:
aload 0
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/initEvent()V
L0:
iconst_1
ireturn
L1:
aload 0
iconst_1
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/isOwn Z
aload 0
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/initMyComponentValue()V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/addlayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L2
.limit locals 2
.limit stack 3
.end method

.method public initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131626258
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/unitcode Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626254
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/unitname Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626252
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/heardimg Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131626255
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageButton
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/addbtn Landroid/widget/ImageButton;
aload 0
aload 0
ldc_w 2131626253
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/addlayout Landroid/widget/LinearLayout;
aload 0
aload 0
ldc_w 2131625528
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/identity_bt_refresh Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131626262
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/org_short Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131626260
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/org_stytle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/titleText Landroid/widget/TextView;
aload 0
ldc_w 2131494624
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/identity_bt_refresh Landroid/widget/ImageView;
ldc_w 2130839469
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/identity_bt_refresh Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
return
.limit locals 1
.limit stack 3
.end method

.method public initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitcode()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L1
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/unitcode Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnitcode()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/unitname Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/org_stytle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getUnittype()I
invokestatic com/nd/android/u/contact/util/ContactDatailUtils/getUintTypeNameFormType(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/org_short Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual com/nd/android/u/contact/dataStructure/OapUnit/getShortname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 2
.end method

.method public initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/addlayout Landroid/widget/LinearLayout;
new com/nd/android/u/cloud/ui/event/AddOrgOnClick
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokespecial com/nd/android/u/cloud/ui/event/AddOrgOnClick/<init>(Landroid/content/Context;Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/addbtn Landroid/widget/ImageButton;
new com/nd/android/u/cloud/ui/event/AddOrgOnClick
dup
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokespecial com/nd/android/u/cloud/ui/event/AddOrgOnClick/<init>(Landroid/content/Context;Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
invokevirtual android/widget/ImageButton/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/identity_bt_refresh Landroid/widget/ImageView;
new com/nd/android/u/cloud/activity/OrgDetailActivity$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/OrgDetailActivity$1/<init>(Lcom/nd/android/u/cloud/activity/OrgDetailActivity;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 5
.end method

.method public initMyComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 1
aload 1
ifnonnull L0
return
L0:
aload 0
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/unitid I
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/unitname Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/org_stytle Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnittype()I
invokestatic com/nd/android/u/contact/util/ContactDatailUtils/getUintTypeNameFormType(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/org_short Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnitshortname()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnitcode()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L1
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/unitcode Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/business/login/BindUser/getUnitcode()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 0
invokevirtual com/nd/android/u/cloud/activity/OrgDetailActivity/searchOrgDetail()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L0:
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/mSearchOrgDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/mSearchOrgDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/mSearchOrgDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public searchOrgDetail()V
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/mSearchOrgDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/mSearchOrgDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/activity/OrgDetailActivity$SearchOrgDetailTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/OrgDetailActivity$SearchOrgDetailTask/<init>(Lcom/nd/android/u/cloud/activity/OrgDetailActivity;Lcom/nd/android/u/cloud/activity/OrgDetailActivity$1;)V
putfield com/nd/android/u/cloud/activity/OrgDetailActivity/mSearchOrgDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/mSearchOrgDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/mSearchOrgDetailTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/OrgDetailActivity/mSearchOrgDetailTask Lcom/common/android/utils/task/genericTask/GenericTask;
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
