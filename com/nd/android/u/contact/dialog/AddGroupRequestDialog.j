.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/AddGroupRequestDialog
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/contact/dialog/AddGroupRequestDialog$1
.inner class inner com/nd/android/u/contact/dialog/AddGroupRequestDialog$2
.inner class inner com/nd/android/u/contact/dialog/AddGroupRequestDialog$3

.field final 'TAG' Ljava/lang/String;

.field private 'createrNameText' Landroid/widget/TextView;

.field private 'edit' Landroid/widget/EditText;

.field private 'faceImg' Landroid/widget/ImageView;

.field private 'groupNameText' Landroid/widget/TextView;

.field private 'mContext' Landroid/content/Context;

.field private 'mGroup' Lcom/product/android/commonInterface/contact/OapGroup;

.field private 'mUser' Lcom/product/android/commonInterface/contact/OapUser;

.method public <init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapGroup;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
ldc "AddFriendDialog"
putfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/TAG Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapGroup/getCreatorid()J
new com/nd/android/u/contact/dialog/AddGroupRequestDialog$1
dup
aload 0
aload 2
invokespecial com/nd/android/u/contact/dialog/AddGroupRequestDialog$1/<init>(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;Lcom/product/android/commonInterface/contact/OapGroup;)V
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/get(JLcom/nd/android/u/contact/cache/ProfileUserCacheCallback;)Lcom/product/android/commonInterface/contact/OapUser;
putfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mUser Lcom/product/android/commonInterface/contact/OapUser;
aload 0
aload 0
invokevirtual com/nd/android/u/contact/dialog/AddGroupRequestDialog/getView()Landroid/view/View;
invokevirtual com/nd/android/u/contact/dialog/AddGroupRequestDialog/setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokevirtual com/nd/android/u/contact/dialog/AddGroupRequestDialog/setListener()V
return
.limit locals 3
.limit stack 8
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/createrNameText Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;)Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/edit Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method final getView()Landroid/view/View;
aload 0
getstatic com/nd/android/u/contact/R$string/add_group_d I
invokevirtual com/nd/android/u/contact/dialog/AddGroupRequestDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/addgroup_request_dialog I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/addgroup_request_dialog_tx_groupname I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/groupNameText Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/addgroup_request_dialog_tx_creatername I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/createrNameText Landroid/widget/TextView;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/addgroup_request_dialog_img_face I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/faceImg Landroid/widget/ImageView;
aload 0
aload 1
getstatic com/nd/android/u/contact/R$id/addgroup_request_dialog_edit_check I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/edit Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/groupNameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mGroup Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mUser Lcom/product/android/commonInterface/contact/OapUser;
ifnull L1
ldc ""
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/createrNameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/faceImg Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/group_face I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 1
areturn
L1:
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/createrNameText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/refresh I
invokevirtual android/widget/TextView/setText(I)V
goto L2
.limit locals 2
.limit stack 4
.end method

.method final setListener()V
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/send I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/dialog/AddGroupRequestDialog$2
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/AddGroupRequestDialog$2/<init>(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;)V
invokevirtual com/nd/android/u/contact/dialog/AddGroupRequestDialog/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/AddGroupRequestDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/cancel I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/contact/dialog/AddGroupRequestDialog$3
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/AddGroupRequestDialog$3/<init>(Lcom/nd/android/u/contact/dialog/AddGroupRequestDialog;)V
invokevirtual com/nd/android/u/contact/dialog/AddGroupRequestDialog/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method
