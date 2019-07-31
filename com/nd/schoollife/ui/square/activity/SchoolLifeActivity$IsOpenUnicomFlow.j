.bytecode 50.0
.class synchronized com/nd/schoollife/ui/square/activity/SchoolLifeActivity$IsOpenUnicomFlow
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
.inner class private IsOpenUnicomFlow inner com/nd/schoollife/ui/square/activity/SchoolLifeActivity$IsOpenUnicomFlow outer com/nd/schoollife/ui/square/activity/SchoolLifeActivity

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/square/activity/SchoolLifeActivity;

.method private <init>(Lcom/nd/schoollife/ui/square/activity/SchoolLifeActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity$IsOpenUnicomFlow/this$0 Lcom/nd/schoollife/ui/square/activity/SchoolLifeActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/square/activity/SchoolLifeActivity;Lcom/nd/schoollife/ui/square/activity/SchoolLifeActivity$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/square/activity/SchoolLifeActivity$IsOpenUnicomFlow/<init>(Lcom/nd/schoollife/ui/square/activity/SchoolLifeActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic com/nd/schoollife/schoollifeinterfaceImpl/CallOtherModel/judgeOpenWoflowBag(J)Z
ifeq L0
iconst_1
istore 2
L1:
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L0:
iconst_2
istore 2
goto L1
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity$IsOpenUnicomFlow/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
iconst_1
aload 1
invokevirtual java/lang/Integer/intValue()I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity$IsOpenUnicomFlow/this$0 Lcom/nd/schoollife/ui/square/activity/SchoolLifeActivity;
invokestatic com/nd/schoollife/ui/square/activity/SchoolLifeActivity/access$100(Lcom/nd/schoollife/ui/square/activity/SchoolLifeActivity;)Lcom/nd/schoollife/ui/square/view/widget/SquareView;
iconst_1
invokevirtual com/nd/schoollife/ui/square/view/widget/SquareView/setUnicomFlowBanner(Z)V
L1:
return
L0:
iconst_2
aload 1
invokevirtual java/lang/Integer/intValue()I
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/square/activity/SchoolLifeActivity$IsOpenUnicomFlow/this$0 Lcom/nd/schoollife/ui/square/activity/SchoolLifeActivity;
invokestatic com/nd/schoollife/ui/square/activity/SchoolLifeActivity/access$100(Lcom/nd/schoollife/ui/square/activity/SchoolLifeActivity;)Lcom/nd/schoollife/ui/square/view/widget/SquareView;
iconst_0
invokevirtual com/nd/schoollife/ui/square/view/widget/SquareView/setUnicomFlowBanner(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/nd/schoollife/ui/square/activity/SchoolLifeActivity$IsOpenUnicomFlow/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method
