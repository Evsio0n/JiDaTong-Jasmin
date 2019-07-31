.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/GroupManagerActivity2
.super com/nd/android/u/contact/activity/base/GroupHeaderActivity2
.implements com/product/android/commonInterface/chat/IGroupReceiveSettingListener
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$1
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$2
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$3
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$4
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$5
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$6
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$7
.inner class inner com/nd/android/u/contact/activity/GroupManagerActivity2$8
.inner class private SynUserInfoTask inner com/nd/android/u/contact/activity/GroupManagerActivity2$SynUserInfoTask outer com/nd/android/u/contact/activity/GroupManagerActivity2

.field private 'CLOUD_MESSAGE_URL' Ljava/lang/String;

.field private 'arrays' [Ljava/lang/String;

.field protected 'chatHistoryLayout' Landroid/widget/RelativeLayout;

.field protected 'conversationLayout' Landroid/widget/RelativeLayout;

.field private 'dialog' Landroid/app/AlertDialog;

.field protected 'exitGroupBtn' Landroid/widget/Button;

.field protected 'exitGroupLayout' Landroid/widget/LinearLayout;

.field protected 'groupAlbumLayout' Landroid/widget/RelativeLayout;

.field protected 'groupClearMessageLayout' Landroid/widget/RelativeLayout;

.field protected 'groupIdText' Landroid/widget/TextView;

.field protected 'groupIntroducationText' Landroid/widget/TextView;

.field private 'groupIntroductionImg' Landroid/widget/ImageView;

.field protected 'groupIntroductionLayout' Landroid/widget/RelativeLayout;

.field protected 'groupManagerLayout' Landroid/widget/RelativeLayout;

.field protected 'groupManagerText' Landroid/widget/TextView;

.field private 'groupNoticesImg' Landroid/widget/ImageView;

.field protected 'groupNoticesLayout' Landroid/widget/RelativeLayout;

.field protected 'groupNoticesText' Landroid/widget/TextView;

.field protected 'groupidLayout' Landroid/widget/RelativeLayout;

.field private 'groupsettype' Landroid/widget/TextView;

.field protected 'groupshareLayout' Landroid/widget/RelativeLayout;

.field protected 'joinpermLayout' Landroid/widget/RelativeLayout;

.field protected 'lookMemberLayout' Landroid/widget/RelativeLayout;

.field private 'mToggleButton' Landroid/widget/ImageView;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'm_iPermission' I

.field private 'myOnClick' Landroid/view/View$OnClickListener;

.field 'optType' I

.field protected 'receiveMsgLayout' Landroid/widget/RelativeLayout;

.field protected 'showBegin' Z

.field protected 'synGroupMemberInfoTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field protected 'synUserInfoTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field protected 'tempPerm' I

.field protected 'transferGroupLayout' Landroid/widget/RelativeLayout;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity2/<init>()V
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "im/groupchat?sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/CLOUD_MESSAGE_URL Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupsettype Landroid/widget/TextView;
aload 0
iconst_2
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
aload 0
new com/nd/android/u/contact/activity/GroupManagerActivity2$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2$1/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/myOnClick Landroid/view/View$OnClickListener;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/optType I
aload 0
new com/nd/android/u/contact/activity/GroupManagerActivity2$8
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2$8/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/synUserInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1100(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1200(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1300(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1400(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1500(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/CLOUD_MESSAGE_URL Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1600(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$1700(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1800(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;Ljava/lang/Class;Landroid/os/Bundle;)V
aload 0
aload 1
aload 2
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/toActivity(Ljava/lang/Class;Landroid/os/Bundle;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$1900(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)I
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/showType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$2000(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/depgid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$2100(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/depgid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$2200(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$2300(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$2400(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2500(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2600(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2700(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2800(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2/setPermission()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2900(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$3000(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3100(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;I)V
aload 0
iload 1
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2/modifyJoinGroupPerm(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$3200(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$3300(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3500(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/depgid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/depgid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/classGid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/classGid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/clubGid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$900(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/clubGid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method private modifyJoinGroupPerm(I)V
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifne L0
aload 0
getstatic com/nd/android/u/contact/R$string/modify_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendCommandSendDoReconnectLogin()V
L1:
return
L0:
invokestatic com/nd/android/u/contact/util/ContactStatusUtils/isOnLineIM()Z
ifeq L1
iload 1
tableswitch 0
L2
L3
L4
default : L5
L5:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinperm()I
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/ImsSendGroupCommandSendModifyJoinperm(JI)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/updateGroup(Lcom/product/android/commonInterface/contact/OapGroup;)V 1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/initComponentValue()V
aload 0
getstatic com/nd/android/u/contact/R$string/modify_discussion_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
iconst_1
invokevirtual com/product/android/commonInterface/contact/OapGroup/setJoinperm(I)V
goto L5
L3:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroup/setJoinperm(I)V
goto L5
L4:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
iconst_2
invokevirtual com/product/android/commonInterface/contact/OapGroup/setJoinperm(I)V
goto L5
.limit locals 2
.limit stack 3
.end method

.method private setPermission()V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpeq L0
new com/nd/android/u/contact/dialog/DlgGroupRevSet
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
getstatic com/nd/android/u/contact/R$style/Style_Self_Info_Dlg I
invokespecial com/nd/android/u/contact/dialog/DlgGroupRevSet/<init>(Landroid/content/Context;II)V
astore 1
aload 1
aload 0
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/setOnAfterDismissListener(Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;)V
aload 1
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/show()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
iconst_1
if_icmpeq L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
iconst_2
if_icmpne L2
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/mToggleButton Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_toggle_button_close I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
L3:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/switchReceiveFixGroupMsg(ILjava/lang/String;I)V
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/mToggleButton Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_toggle_button_open I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
goto L3
.limit locals 2
.limit stack 5
.end method

.method private showCustomDialog()V
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinperm()I
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/tempPerm I
new com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinperm()I
invokespecial com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/<init>(Landroid/content/Context;I)V
astore 1
aload 1
getstatic com/nd/android/u/contact/R$string/the_authentication I
invokevirtual com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/setTitle(I)V
aload 1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/cancel I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/GroupManagerActivity2$2
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2$2/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;)V
invokevirtual com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/ok I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/activity/GroupManagerActivity2$3
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2$3/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;Lcom/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog;)V
invokevirtual com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
aload 1
new com/nd/android/u/contact/activity/GroupManagerActivity2$4
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2$4/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
invokevirtual com/nd/android/u/contact/dialog/XYAddGroupSetSingleChoiseDialog/setRadioGroupLisener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
return
.limit locals 2
.limit stack 6
.end method

.method private showSystemDiaog()V
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
getstatic com/nd/android/u/contact/R$string/the_authentication I
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 1
getstatic com/nd/android/u/contact/R$string/cancel I
new com/nd/android/u/contact/activity/GroupManagerActivity2$5
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2$5/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/arrays [Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinpermPostion()I
new com/nd/android/u/contact/activity/GroupManagerActivity2$6
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2$6/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
invokevirtual android/app/AlertDialog$Builder/setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 1
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/dialog Landroid/app/AlertDialog;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/dialog Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 2
.limit stack 6
.end method

.method private synGroupInfo(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/showBegin Z
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/GroupManagerActivity2$SynUserInfoTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2$SynUserInfoTask/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;Lcom/nd/android/u/contact/activity/GroupManagerActivity2$1;)V
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/synUserInfoTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method protected _onCreate(Landroid/os/Bundle;)Z
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91UND Lcom/product/android/business/ProductTypeDef$Product;
if_acmpeq L0
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "imroam/groupchat?sid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/CLOUD_MESSAGE_URL Ljava/lang/String;
L0:
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity2/_onCreate(Landroid/os/Bundle;)Z
ifeq L1
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_group_manager I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/setContentView(I)V
L3:
aload 0
iconst_3
anewarray java/lang/String
dup
iconst_0
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/allowed_to_join_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/need_validation_to_join_the_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
dup
iconst_2
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/do_not_allow_anyone_to_join_the_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aastore
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/arrays [Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/initEvent()V
iconst_1
ireturn
L2:
aload 0
getstatic com/nd/android/u/contact/R$layout/group_manager I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/setContentView(I)V
goto L3
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 6
.end method

.method public changeGroupJoinperm()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L0
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/contact/business/OapGroupPro/isManager(Lcom/product/android/commonInterface/contact/OapGroup;J)Z
ifeq L0
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2/showSystemDiaog()V
L0:
return
.limit locals 1
.limit stack 4
.end method

.method public enableComponent()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/receiveMsgLayout Landroid/widget/RelativeLayout;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/receiveMsgLayout Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/getVisibility()I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/receiveMsgLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/lookMemberLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/conversationLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/chatHistoryLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/transferGroupLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/exitGroupLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupAlbumLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getstatic com/nd/android/u/contact/R$id/group_img_joinperm I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupshareLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupNoticesImg Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupIntroductionImg Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupClearMessageLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public exitGroup()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCreatorid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/optType I
L1:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L2
new com/nd/android/u/contact/dialog/XYDismissGroupDailog2
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/optType I
invokespecial com/nd/android/u/contact/dialog/XYDismissGroupDailog2/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapGroup;I)V
pop
return
L0:
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/optType I
goto L1
L2:
new com/nd/android/u/contact/dialog/DismissGroupDailog2
dup
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/optType I
invokespecial com/nd/android/u/contact/dialog/DismissGroupDailog2/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapGroup;I)V
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 1
.limit stack 5
.end method

.method public getPermission(I)V
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
iload 1
if_icmpeq L4
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/saveFixGroupSetType(Lcom/product/android/commonInterface/contact/OapGroup;I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupsettype Landroid/widget/TextView;
ifnull L5
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupsettype Landroid/widget/TextView;
iload 1
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/getGroupSetFormType(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
ifle L5
iload 1
ifle L5
aload 0
iload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
L4:
return
L0:
iconst_1
istore 1
goto L3
L1:
iconst_2
istore 1
goto L3
L2:
iconst_0
istore 1
goto L3
L5:
aload 0
iload 1
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getChatGroupType()I
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/switchReceiveFixGroupMsg(ILjava/lang/String;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public handler_CMD_31()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public handler_CMD_GROUP_SYSMSG_TYPE_GROUP_INFO_CHANGED(Ljava/lang/String;)V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/initComponentValue()V
return
.limit locals 2
.limit stack 1
.end method

.method public handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity2/handler_CMD_RemoveGroup(Landroid/os/Bundle;)V
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
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/gid J
lcmp
ifne L1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/isFinishing()Z
ifne L1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/finish()V
return
.limit locals 2
.limit stack 4
.end method

.method public handler_CMD_x20004()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public initComponent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity2/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_member I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/lookMemberLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_gid I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupidLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_open_conversation I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/conversationLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_creator I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupManagerLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_notices I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupNoticesLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_introduction I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupIntroductionLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_clear_message I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupClearMessageLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_transfer I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/transferGroupLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_exit I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/exitGroupLayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_btn_exit_group I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/exitGroupBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_chat_history I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/chatHistoryLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_text_gid I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupIdText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_text_creator I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupManagerText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_text_notices I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupNoticesText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_text_introduction I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupIntroducationText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_img_notices I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupNoticesImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_img_introduction I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupIntroductionImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_joinperm I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/joinpermLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_album I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupAlbumLayout Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_share I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupshareLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupshareLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
iconst_1
if_icmpeq L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
iconst_2
if_icmpeq L1
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
iconst_4
if_icmpne L2
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupidLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupNoticesLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupIntroductionLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupManagerLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/transferGroupLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/exitGroupLayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/joinpermLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/chatHistoryLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L3:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L4
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_msg_img I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/mToggleButton Landroid/widget/ImageView;
L5:
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_layout_receivemsg I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/receiveMsgLayout Landroid/widget/RelativeLayout;
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L3
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/isExists(JZ)Z 3
ifne L3
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupClearMessageLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupshareLayout Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
goto L3
L4:
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_setting_type_txt I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupsettype Landroid/widget/TextView;
goto L5
.limit locals 1
.limit stack 4
.end method

.method public initComponentValue()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity2/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupIdText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCreatorid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupManagerText Landroid/widget/TextView;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupIntroducationText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getIntroduction()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupNoticesText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getNotice()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupKey()Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/getFixGroupSetType(Ljava/lang/String;)I
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupsettype Landroid/widget/TextView;
ifnull L3
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupsettype Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/getGroupSetFormType(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 0
getstatic com/nd/android/u/contact/R$id/group_text_joinperm I
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getJoinpermStr()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/mToggleButton Landroid/widget/ImageView;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/mToggleButton Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
iconst_1
if_icmpeq L4
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_iPermission I
iconst_2
if_icmpne L5
L4:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/mToggleButton Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_toggle_button_open I
invokevirtual android/widget/ImageView/setImageResource(I)V
L0:
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/enableComponent()V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCreatorid()J
lconst_0
lcmp
ifeq L2
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCreatorid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 1
aload 1
ifnull L6
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupManagerText Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
L6:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCreatorid()J
new com/nd/android/u/contact/activity/GroupManagerActivity2$7
dup
aload 0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2$7/<init>(Lcom/nd/android/u/contact/activity/GroupManagerActivity2;)V
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/get(JLcom/nd/android/u/contact/cache/ProfileUserCacheCallback;)Lcom/product/android/commonInterface/contact/OapUser;
pop
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupManagerText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCreatorid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
L5:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/mToggleButton Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_toggle_button_close I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L0
.limit locals 2
.limit stack 6
.end method

.method protected initEvent()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity2/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/receiveMsgLayout Landroid/widget/RelativeLayout;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/receiveMsgLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/conversationLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/lookMemberLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupClearMessageLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/chatHistoryLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/transferGroupLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/exitGroupLayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/exitGroupBtn Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/groupAlbumLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/showType I
ifne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/joinpermLayout Landroid/widget/RelativeLayout;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/myOnClick Landroid/view/View$OnClickListener;
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
L1:
return
.limit locals 1
.limit stack 2
.end method

.method protected onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
return
.limit locals 3
.limit stack 5
.end method

.method protected onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/synGroupMemberInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity2/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method protected onStart()V
aload 0
invokespecial com/nd/android/u/contact/activity/base/GroupHeaderActivity2/onStart()V
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/showType I
ifne L0
aload 0
iconst_0
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2/synGroupInfo(Z)V
L0:
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/gid J
lconst_0
lcmp
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
ifnonnull L1
aload 0
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/gid J
invokevirtual com/nd/android/u/contact/business/GroupVariable/findGroupByGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
putfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/GroupManagerActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
ifnonnull L1
aload 0
invokevirtual com/nd/android/u/contact/activity/GroupManagerActivity2/finish()V
L1:
return
.limit locals 1
.limit stack 4
.end method

.method protected rightBtnHandle()V
aload 0
iconst_1
invokespecial com/nd/android/u/contact/activity/GroupManagerActivity2/synGroupInfo(Z)V
return
.limit locals 1
.limit stack 2
.end method
