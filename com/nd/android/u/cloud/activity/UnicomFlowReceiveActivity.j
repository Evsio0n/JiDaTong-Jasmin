.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity
.super com/product/android/ui/activity/HeaderActivity
.implements android/view/View$OnClickListener
.inner class static synthetic inner com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$1
.inner class private IsReceivedFlowTask inner com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask outer com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity
.inner class private ReceiveFlowTask inner com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask outer com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity
.inner class inner com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask$1

.field private 'isReceivedFlowTask' Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask;

.field private 'loadingDialog' Landroid/app/ProgressDialog;

.field private 'mobileEdt' Landroid/widget/EditText;

.field private 'receiveFlowErrorTv' Landroid/widget/TextView;

.field private 'receiveFlowTask' Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;

.field private 'receiveFlowTv' Landroid/widget/TextView;

.field private 'strErrorMessage' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/receiveFlowTv Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/showLoading(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$400(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Landroid/widget/EditText;
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/mobileEdt Landroid/widget/EditText;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/strErrorMessage Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/strErrorMessage Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)V
aload 0
invokespecial com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/hideLoading()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/receiveFlowErrorTv Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method private cancelIsReceiveFlowTask()V
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/isReceivedFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/isReceivedFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask;
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/isReceivedFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask;
iconst_1
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private cancelReceiveFlowTask()V
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/receiveFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/receiveFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/receiveFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;
iconst_1
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/cancel(Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private hideLoading()V
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/loadingDialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/loadingDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/loadingDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/hide()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method private isReceivedFlow()V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/isReceivedFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/isReceivedFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask;
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpeq L1
L2:
aload 0
new com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask/<init>(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$1;)V
putfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/isReceivedFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask;
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/isReceivedFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method private receiveFlow()V
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/mobileEdt Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
ldc "\u624b\u673a\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/mobileEdt Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isMobile(Ljava/lang/String;)Z
ifne L1
ldc "\u624b\u673a\u53f7\u7801\u683c\u5f0f\u4e0d\u5bf9\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
L1:
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L2
ldc_w 2131495043
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/receiveFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;
ifnull L3
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/receiveFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/getStatus()Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
if_acmpne L3
ldc_w 2131494813
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L3:
aload 0
new com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/<init>(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$1;)V
putfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/receiveFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/receiveFlowTask Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 5
.end method

.method private showLoading(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/loadingDialog Landroid/app/ProgressDialog;
ifnonnull L0
aload 0
aload 0
aload 1
aload 2
iconst_1
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/loadingDialog Landroid/app/ProgressDialog;
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/loadingDialog Landroid/app/ProgressDialog;
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
L1:
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/loadingDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/show()V
return
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/loadingDialog Landroid/app/ProgressDialog;
aload 1
invokevirtual android/app/ProgressDialog/setTitle(Ljava/lang/CharSequence;)V
L2:
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/loadingDialog Landroid/app/ProgressDialog;
aload 2
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
goto L1
.limit locals 3
.limit stack 5
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
ldc_w 2131624491
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/mobileEdt Landroid/widget/EditText;
aload 0
aload 0
ldc_w 2131624492
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/receiveFlowErrorTv Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624493
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/receiveFlowTv Landroid/widget/TextView;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
ldc_w 2131493603
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/setActivityTitle(I)V
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/receiveFlowTv Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
tableswitch 2131624493
L0
default : L1
L1:
return
L0:
aload 0
invokespecial com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/receiveFlow()V
return
.limit locals 2
.limit stack 1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
ldc_w 2130903137
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/setContentView(I)V
aload 0
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
ldc_w 2131495043
invokestatic com/common/android/utils/ToastUtils/display(I)V
L0:
aload 0
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/initEvent()V
aload 0
invokespecial com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/isReceivedFlow()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onDestroy()V
aload 0
invokespecial com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/cancelIsReceiveFlowTask()V
aload 0
invokespecial com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/cancelReceiveFlowTask()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/onDestroy()V
return
.limit locals 1
.limit stack 1
.end method
