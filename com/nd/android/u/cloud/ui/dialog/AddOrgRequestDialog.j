.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$1
.inner class inner com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$2
.inner class inner com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3
.inner class private AddRequestApplicationTask inner com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask outer com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog

.field final 'TAG' Ljava/lang/String;

.field private 'appmessagetxt' Landroid/widget/EditText;

.field private 'commentapplydesc' Ljava/lang/String;

.field private 'commentmobiletxt' Ljava/lang/String;

.field private 'commentnametxt' Ljava/lang/String;

.field private 'context' Landroid/content/Context;

.field private 'mAddOrgTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'mAddOrgTaskListener' Lcom/common/android/utils/task/genericTask/TaskListener;

.field private 'm_dialog' Landroid/app/ProgressDialog;

.field private 'mobiletxt' Landroid/widget/EditText;

.field private 'nametxt' Landroid/widget/EditText;

.field private 'oapunit' Lcom/nd/android/u/contact/dataStructure/OapUnit;

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
ldc "AddOrgRequestDialog"
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/TAG Ljava/lang/String;
aload 0
new com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$3/<init>(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)V
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/mAddOrgTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/context Landroid/content/Context;
aload 0
aload 0
invokevirtual com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/getView()Landroid/view/View;
invokevirtual com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
pop
aload 0
invokevirtual com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/setListener()V
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/commentnametxt Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/commentnametxt Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/nametxt Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Lcom/nd/android/u/contact/dataStructure/OapUnit;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/commentmobiletxt Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/commentmobiletxt Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/mobiletxt Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/commentapplydesc Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/commentapplydesc Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/appmessagetxt Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/onBegin(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$800(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/m_dialog Landroid/app/ProgressDialog;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/mAddOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
areturn
.limit locals 1
.limit stack 1
.end method

.method private onBegin(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/context Landroid/content/Context;
ldc ""
aload 1
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/m_dialog Landroid/app/ProgressDialog;
return
.limit locals 2
.limit stack 5
.end method

.method public getView()Landroid/view/View;
aload 0
ldc_w 2131495532
invokevirtual com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/setTitle(I)Landroid/app/AlertDialog$Builder;
pop
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/context Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903150
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 0
aload 1
ldc_w 2131624542
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/nametxt Landroid/widget/EditText;
aload 0
aload 1
ldc_w 2131624543
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/mobiletxt Landroid/widget/EditText;
aload 0
aload 1
ldc_w 2131624544
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/appmessagetxt Landroid/widget/EditText;
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public sendRequestApplication()V
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/mAddOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/mAddOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L0
return
L0:
aload 0
new com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$AddRequestApplicationTask/<init>(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$1;)V
putfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/mAddOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/mAddOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/mAddOrgTaskListener Lcom/common/android/utils/task/genericTask/TaskListener;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/setListener(Lcom/common/android/utils/task/genericTask/TaskListener;)V
new com/common/android/utils/task/genericTask/TaskParams
dup
invokespecial com/common/android/utils/task/genericTask/TaskParams/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/mAddOrgTask Lcom/common/android/utils/task/genericTask/GenericTask;
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

.method public setListener()V
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131493000
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$1
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$1/<init>(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/context Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131492869
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
new com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$2
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog$2/<init>(Lcom/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method
