.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/CreateGroupActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/contact/activity/CreateGroupActivity$1
.inner class public final DoRefreshFrinedListTask inner com/nd/android/u/contact/activity/CreateGroupActivity$DoRefreshFrinedListTask outer com/nd/android/u/contact/activity/CreateGroupActivity

.field private 'TAG' Ljava/lang/String;

.field public 'addGroupRequestTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'createGroupRequestTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'gnameEdit' Landroid/widget/EditText;

.field private 'group' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;

.field private 'introductionEdit' Landroid/widget/EditText;

.field 'joinperm' I

.field private 'mMetermine' Landroid/widget/ImageView;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'radioGroup' Landroid/widget/RadioGroup;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
ldc "CreateGroupActivity"
putfield com/nd/android/u/contact/activity/CreateGroupActivity/TAG Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/CreateGroupActivity/joinperm I
aload 0
new com/nd/android/u/contact/activity/CreateGroupActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/CreateGroupActivity$1/<init>(Lcom/nd/android/u/contact/activity/CreateGroupActivity;)V
putfield com/nd/android/u/contact/activity/CreateGroupActivity/addGroupRequestTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/activity/CreateGroupActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/activity/CreateGroupActivity;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
aload 1
putfield com/nd/android/u/contact/activity/CreateGroupActivity/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/CreateGroupActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/TAG Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/CreateGroupActivity;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/CreateGroupActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/gnameEdit Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/activity/CreateGroupActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/introductionEdit Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/activity/CreateGroupActivity;)Landroid/widget/RadioGroup;
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/radioGroup Landroid/widget/RadioGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected final _onCreate(Landroid/os/Bundle;)Z
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
getstatic com/nd/android/u/contact/R$layout/xy_create_group I
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/setContentView(I)V
L1:
aload 0
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/initEvent()V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ireturn
L0:
aload 0
getstatic com/nd/android/u/contact/R$layout/create_group I
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/setContentView(I)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method public final addGroupRequest()V
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/createGroupRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/createGroupRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/activity/CreateGroupActivity$DoRefreshFrinedListTask
dup
aload 0
invokespecial com/nd/android/u/contact/activity/CreateGroupActivity$DoRefreshFrinedListTask/<init>(Lcom/nd/android/u/contact/activity/CreateGroupActivity;)V
putfield com/nd/android/u/contact/activity/CreateGroupActivity/createGroupRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/createGroupRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/addGroupRequestTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/createGroupRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public final initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/create_group_edit_gname I
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/activity/CreateGroupActivity/gnameEdit Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/create_group_edit_introduction I
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/activity/CreateGroupActivity/introductionEdit Landroid/widget/EditText;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/create_group_radiogroup I
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RadioGroup
putfield com/nd/android/u/contact/activity/CreateGroupActivity/radioGroup Landroid/widget/RadioGroup;
aload 0
getstatic com/nd/android/u/contact/R$string/create_group I
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/setActivityTitle(I)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/determine_bt_right I
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/CreateGroupActivity/mMetermine Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/mMetermine Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/mMetermine Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/rightBtn Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$string/create I
invokevirtual android/widget/Button/setText(I)V
return
.limit locals 1
.limit stack 3
.end method

.method public final initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
return
.limit locals 1
.limit stack 1
.end method

.method public final initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
return
.limit locals 1
.limit stack 1
.end method

.method protected final onBegin(Ljava/lang/String;)V
aload 0
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/create_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 1
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/activity/CreateGroupActivity/m_dialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/m_dialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
.limit locals 2
.limit stack 5
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
getstatic com/nd/android/u/contact/R$id/determine_bt_right I
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/rightBtnHandle()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public final onDestroy()V
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/createGroupRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/createGroupRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/createGroupRequestTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L0:
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method protected final rightBtnHandle()V
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/gnameEdit Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 1
ldc ""
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 0
getstatic com/nd/android/u/contact/R$string/group_name_not_null I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/gnameEdit Landroid/widget/EditText;
invokevirtual android/widget/EditText/requestFocus()Z
pop
return
L0:
aload 1
invokestatic com/common/android/utils/smiley/Smileyhelper/containEmoji(Ljava/lang/String;)Z
ifeq L1
aload 0
getstatic com/nd/android/u/contact/R$string/group_name_not_emoji I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/gnameEdit Landroid/widget/EditText;
invokevirtual android/widget/EditText/requestFocus()Z
pop
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/introductionEdit Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokestatic com/common/android/utils/smiley/Smileyhelper/containEmoji(Ljava/lang/String;)Z
ifeq L2
aload 0
getstatic com/nd/android/u/contact/R$string/group_introduction_not_emoji I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/introductionEdit Landroid/widget/EditText;
invokevirtual android/widget/EditText/requestFocus()Z
pop
return
L2:
aload 1
invokevirtual java/lang/String/length()I
bipush 35
if_icmple L3
aload 0
getstatic com/nd/android/u/contact/R$string/group_name_limit I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity/gnameEdit Landroid/widget/EditText;
invokevirtual android/widget/EditText/requestFocus()Z
pop
return
L3:
aload 0
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/addGroupRequest()V
return
.limit locals 2
.limit stack 2
.end method
