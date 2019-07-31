.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dialog/UserFunctionAlertDialog
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1
.inner class inner com/nd/android/u/contact/dialog/UserFunctionAlertDialog$2
.inner class inner com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3

.field private 'addFlag' Z

.field private 'flag' I

.field private 'gfAdapter' Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;

.field protected 'mAddFriendTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'mContext' Landroid/content/Context;

.field private 'mProgressDialog' Landroid/app/ProgressDialog;

.field private 'mUser' Lcom/product/android/commonInterface/contact/OapUser;

.method public <init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/addFlag Z
aload 0
new com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/UserFunctionAlertDialog$3/<init>(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)V
putfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mAddFriendTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 1
putfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mUser Lcom/product/android/commonInterface/contact/OapUser;
aload 0
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/dialog/UserFunctionAlertDialog/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokevirtual com/nd/android/u/contact/dialog/UserFunctionAlertDialog/initView()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)I
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/flag I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;I)I
aload 0
iload 1
putfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/flag I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$008(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)I
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/flag I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/flag I
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Z
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/addFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mUser Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mProgressDialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getFunList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/GroupFruction;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 1
new com/nd/android/u/contact/dataStructure/GroupFruction
dup
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/my_homepage I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokespecial com/nd/android/u/contact/dataStructure/GroupFruction/<init>(Ljava/lang/String;I)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
new com/nd/android/u/contact/dataStructure/GroupFruction
dup
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/open_conversation I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_0
invokespecial com/nd/android/u/contact/dataStructure/GroupFruction/<init>(Ljava/lang/String;I)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 1
areturn
.limit locals 2
.limit stack 5
.end method

.method public final goToActivity(Ljava/lang/Class;)V
.signature "(Ljava/lang/Class<*>;)V"
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 2
aload 2
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mContext Landroid/content/Context;
aload 1
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "fid"
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 2
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mContext Landroid/content/Context;
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method public final initView()V
aload 0
new com/nd/android/u/contact/adapter/GroupFunctionAdapter
dup
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mContext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/contact/dialog/UserFunctionAlertDialog/getFunList()Ljava/util/List;
aconst_null
aconst_null
invokespecial com/nd/android/u/contact/adapter/GroupFunctionAdapter/<init>(Landroid/content/Context;Ljava/util/List;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;Landroid/os/Handler;)V
putfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/gfAdapter Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/gfAdapter Lcom/nd/android/u/contact/adapter/GroupFunctionAdapter;
new com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/UserFunctionAlertDialog$1/<init>(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)V
invokevirtual com/nd/android/u/contact/dialog/UserFunctionAlertDialog/setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
getstatic com/nd/android/u/contact/R$string/cancel I
new com/nd/android/u/contact/dialog/UserFunctionAlertDialog$2
dup
aload 0
invokespecial com/nd/android/u/contact/dialog/UserFunctionAlertDialog$2/<init>(Lcom/nd/android/u/contact/dialog/UserFunctionAlertDialog;)V
invokevirtual com/nd/android/u/contact/dialog/UserFunctionAlertDialog/setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 7
.end method

.method protected final onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mContext Landroid/content/Context;
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/contact/dialog/UserFunctionAlertDialog/mProgressDialog Landroid/app/ProgressDialog;
return
.limit locals 3
.limit stack 5
.end method
