.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/AddFriendRequestDialog
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/contact/dialog/AddFriendRequestDialog$1
.inner class inner com/nd/android/u/contact/dialog/AddFriendRequestDialog$2
.inner class inner com/nd/android/u/contact/dialog/AddFriendRequestDialog$3
.inner class private AddRequestFriendTask inner com/nd/android/u/contact/dialog/AddFriendRequestDialog$AddRequestFriendTask outer com/nd/android/u/contact/dialog/AddFriendRequestDialog

.field final 'TAG' Ljava/lang/String;

.field private 'comment' Ljava/lang/String;

.field private 'edit' Landroid/widget/EditText;

.field private 'faceImg' Landroid/widget/ImageView;

.field private 'mAddFriendTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mAddFriendTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mContext' Landroid/content/Context;

.field private 'mUser' Lcom/product/android/commonInterface/contact/OapUser;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'nicknameText' Landroid/widget/TextView;

.field private 'workidText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
ldc "AddFriendDialog"
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/TAG Ljava/lang/String;
aload 0
new com/nd/android/u/contact/dialog/AddFriendRequestDialog$3
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/AddFriendRequestDialog$3/<init>(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)V
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mAddFriendTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 2
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mUser Lcom/product/android/commonInterface/contact/OapUser;
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mContext Landroid/content/Context;
aload 0
aload 0
invokevirtual com/nd/android/u/contact/dialog/AddFriendRequestDialog/getView()Landroid/view/View;
invokevirtual com/nd/android/u/contact/dialog/AddFriendRequestDialog/setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokevirtual com/nd/android/u/contact/dialog/AddFriendRequestDialog/setListener()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/comment Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/comment Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/edit Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mUser Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/dialog/AddFriendRequestDialog/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$500(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mAddFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method private onBegin(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mContext Landroid/content/Context;
ldc ""
aload 1
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/m_dialog Landroid/app/ProgressDialog;
return
.limit locals 2
.limit stack 5
.end method

.method final addRequestFriend()V
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mAddFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mAddFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/contact/dialog/AddFriendRequestDialog$AddRequestFriendTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/dialog/AddFriendRequestDialog$AddRequestFriendTask/<init>(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog$1;)V
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mAddFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mAddFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mAddFriendTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mAddFriendTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method final getView()Landroid/view/View;
aload 0
getstatic com/nd/android/u/contact/R$string/addfriend I
invokevirtual com/nd/android/u/contact/dialog/AddFriendRequestDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/addfriend_dialog I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/addfriend_dialog_tx_workid I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/workidText Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/addfriend_dialog_tx_nickname I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/nicknameText Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/addfriend_dialog_img_face I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/faceImg Landroid/widget/ImageView;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/addfriend_dialog_edit_check I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/edit Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/workidText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getWorkid()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/nicknameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 1
areturn
.limit locals 2
.limit stack 4
.end method

.method final setListener()V
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/send I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/dialog/AddFriendRequestDialog$1
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/AddFriendRequestDialog$1/<init>(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)V
invokevirtual com/nd/android/u/contact/dialog/AddFriendRequestDialog/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/AddFriendRequestDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/cancel I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/dialog/AddFriendRequestDialog$2
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/AddFriendRequestDialog$2/<init>(Lcom/nd/android/u/contact/dialog/AddFriendRequestDialog;)V
invokevirtual com/nd/android/u/contact/dialog/AddFriendRequestDialog/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method
