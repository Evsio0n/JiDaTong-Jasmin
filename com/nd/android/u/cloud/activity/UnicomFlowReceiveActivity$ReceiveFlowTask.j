.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
.inner class private ReceiveFlowTask inner com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask outer com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity
.inner class inner com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/<init>(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
iconst_1
istore 2
L0:
new com/nd/android/u/cloud/com/OapWoflowBagCom
dup
invokespecial com/nd/android/u/cloud/com/OapWoflowBagCom/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$400(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/com/OapWoflowBagCom/applyWoflowBag(JLjava/lang/String;)V
L1:
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
istore 2
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
aload 1
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$502(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;Ljava/lang/String;)Ljava/lang/String;
pop
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L1
.limit locals 3
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$600(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)V
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$700(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
iconst_1
aload 1
invokevirtual java/lang/Integer/intValue()I
if_icmpne L0
new com/nd/android/u/cloud/ui/dialog/SureDlgTip
dup
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
new com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask$1
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask$1/<init>(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask;)V
invokespecial com/nd/android/u/cloud/ui/dialog/SureDlgTip/<init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/SureDlgTip/show()V
L1:
return
L0:
sipush 405
aload 1
invokevirtual java/lang/Integer/intValue()I
if_icmpne L2
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$500(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$500(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$700(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$500(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$700(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 2
.limit stack 6
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
ldc ""
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$ReceiveFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
ldc_w 2131494794
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$300(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 1
.limit stack 4
.end method
