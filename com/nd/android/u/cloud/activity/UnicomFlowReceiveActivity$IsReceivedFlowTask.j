.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
.inner class private IsReceivedFlowTask inner com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask outer com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask/<init>(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
new com/nd/android/u/cloud/com/OapWoflowBagCom
dup
invokespecial com/nd/android/u/cloud/com/OapWoflowBagCom/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/nd/android/u/cloud/com/OapWoflowBagCom/judgeGotWoflowBag(J)Z
istore 3
L1:
iload 3
ifeq L3
iconst_1
istore 2
L4:
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L3:
iconst_2
istore 2
goto L4
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
istore 2
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L4
.limit locals 4
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
iconst_1
aload 1
invokevirtual java/lang/Integer/intValue()I
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$200(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Landroid/widget/TextView;
ldc_w 2131494808
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$200(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setEnabled(Z)V
L1:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L0:
iconst_2
aload 1
invokevirtual java/lang/Integer/intValue()I
if_icmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask/this$0 Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;
invokestatic com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity/access$200(Lcom/nd/android/u/cloud/activity/UnicomFlowReceiveActivity;)Landroid/widget/TextView;
iconst_1
invokevirtual android/widget/TextView/setEnabled(Z)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity$IsReceivedFlowTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
return
.limit locals 1
.limit stack 1
.end method
