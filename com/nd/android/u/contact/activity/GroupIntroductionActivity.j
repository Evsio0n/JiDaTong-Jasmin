.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/GroupIntroductionActivity
.super com/nd/android/u/contact/activity/base/GroupOpActivity
.inner class inner com/nd/android/u/contact/activity/GroupIntroductionActivity$1
.inner class inner com/nd/android/u/contact/activity/GroupIntroductionActivity$2
.inner class inner com/nd/android/u/contact/activity/GroupIntroductionActivity$3

.field private 'canEdit' Z

.field private 'currentSignNumText' Landroid/widget/TextView;

.field private 'gid' J

.field private 'group' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;

.field 'introductionStr' Ljava/lang/String;

.field private 'introductionText' Landroid/widget/EditText;

.field private 'mReFreshHandler' Landroid/os/Handler;

.field private 'obs' Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;

.field private 'textWatcher' Landroid/text/TextWatcher;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/<init>()V
aload 0
new com/nd/android/u/contact/activity/GroupIntroductionActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupIntroductionActivity$1/<init>(Lcom/nd/android/u/contact/activity/GroupIntroductionActivity;)V
putfield com/nd/android/u/contact/activity/GroupIntroductionActivity/mReFreshHandler Landroid/os/Handler;
aload 0
new com/nd/android/u/contact/activity/GroupIntroductionActivity$2
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupIntroductionActivity$2/<init>(Lcom/nd/android/u/contact/activity/GroupIntroductionActivity;)V
putfield com/nd/android/u/contact/activity/GroupIntroductionActivity/obs Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
aload 0
new com/nd/android/u/contact/activity/GroupIntroductionActivity$3
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupIntroductionActivity$3/<init>(Lcom/nd/android/u/contact/activity/GroupIntroductionActivity;)V
putfield com/nd/android/u/contact/activity/GroupIntroductionActivity/textWatcher Landroid/text/TextWatcher;
aload 0
ldc ""
putfield com/nd/android/u/contact/activity/GroupIntroductionActivity/introductionStr Ljava/lang/String;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/GroupIntroductionActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/mReFreshHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/GroupIntroductionActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/mhandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/GroupIntroductionActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/currentSignNumText Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected final _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/waiting_for_save I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/setGroupOpMsg(Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_changegroup_introduction I
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/setContentView(I)V
L2:
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/initEvent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/initComponentValue()V
iconst_1
ireturn
L1:
aload 0
getstatic com/nd/android/u/contact/R$layout/changegroup_introduction I
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/setContentView(I)V
goto L2
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected final groupOpMsgFail()V
aload 0
getstatic com/nd/android/u/contact/R$string/modify_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected final groupOpMsgSuccess()V
aload 0
getstatic com/nd/android/u/contact/R$string/modify_discussion_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/finish()V
return
.limit locals 1
.limit stack 2
.end method

.method public final handler_CMD_GROUP_SYSMSG_TYPE_GROUP_INFO_CHANGED()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method protected final initComponent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_introduction_text I
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/activity/GroupIntroductionActivity/introductionText Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/currentSignNumText I
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/GroupIntroductionActivity/currentSignNumText Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/contact/R$string/group_abstract I
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/setActivityTitle(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "gid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L0
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/activity/GroupIntroductionActivity/gid J
L0:
aload 0
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/gid J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
putfield com/nd/android/u/contact/activity/GroupIntroductionActivity/group Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/group Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
ifnonnull L1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/finish()V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/introductionText Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/textWatcher Landroid/text/TextWatcher;
invokevirtual android/widget/EditText/addTextChangedListener(Landroid/text/TextWatcher;)V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "canEdit"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
putfield com/nd/android/u/contact/activity/GroupIntroductionActivity/canEdit Z
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/canEdit Z
ifne L2
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/introductionText Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setEnabled(Z)V
aload 0
getstatic com/nd/android/u/contact/R$id/LinearLayout01 I
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getstatic com/nd/android/u/contact/R$id/RelativeLayout01 I
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/findViewById(I)Landroid/view/View;
getstatic com/nd/android/u/contact/R$color/transparent I
invokevirtual android/view/View/setBackgroundResource(I)V
return
L2:
aload 0
getstatic com/nd/android/u/contact/R$string/save I
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/setRightBtnText(I)V
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/setRightBtnVisiable(I)V
return
.limit locals 1
.limit stack 4
.end method

.method protected final initComponentValue()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/group Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/group Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getIntroduction()Ljava/lang/String; 0
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/introductionText Landroid/widget/EditText;
getstatic com/nd/android/u/contact/R$string/no_group_introduction I
invokevirtual android/widget/EditText/setHint(I)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/introductionText Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/group Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getIntroduction()Ljava/lang/String; 0
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupOpActivity/onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/group Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/obs Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/group Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/obs Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/removeGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V 1
L0:
return
.limit locals 1
.limit stack 2
.end method

.method protected final rightBtnHandle()V
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/introductionText Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/GroupIntroductionActivity/introductionStr Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/introductionStr Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/group Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getIntroduction()Ljava/lang/String; 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/contact/R$string/modify_discussion_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/finish()V
return
L0:
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/network_error_to_set_network I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
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
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/startGroupOp()V
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/group Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/obs Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/addGroupDataObserver(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/IGroupDataObserver;)V 1
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/group Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup;
ldc ""
aload 0
getfield com/nd/android/u/contact/activity/GroupIntroductionActivity/introductionStr Ljava/lang/String;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/setIntroduction(Ljava/lang/String;Ljava/lang/String;)Z 2
ifeq L3
aload 0
ldc ""
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/setGenKey(Ljava/lang/String;)V
return
L3:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/option_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupIntroductionActivity/dismissDialog()V
return
.limit locals 1
.limit stack 4
.end method

.method protected final setGenKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupIntroductionActivity/mGenKey Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method protected final setGroupOpMsg(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/GroupIntroductionActivity/mGroupOpmessage Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
