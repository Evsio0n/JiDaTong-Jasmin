.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/task/CommunityDataTask
.super com/nd/schoollife/ui/common/base/BaseHttpAsyncTask

.field public static final 'GET_MY_JOIN_COMMUNITY' I = 513


.field public static final 'GET_MY_MANAGER_COMMUNITY' I = 514


.field private 'mOperator' Lcom/nd/schoollife/controller/operator/ICommunityOperator;

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getCommunityOperator()Lcom/nd/schoollife/controller/operator/ICommunityOperator;
putfield com/nd/schoollife/ui/square/task/CommunityDataTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
return
.limit locals 5
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aload 1
aload 2
iload 3
aload 4
aload 5
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getCommunityOperator()Lcom/nd/schoollife/controller/operator/ICommunityOperator;
putfield com/nd/schoollife/ui/square/task/CommunityDataTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
return
.limit locals 6
.limit stack 6
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/square/task/CommunityDataTask/doInBackground([Ljava/lang/String;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Object;
iconst_0
istore 2
iconst_0
istore 3
aload 1
arraylength
iconst_2
if_icmpne L0
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 3
L0:
aload 0
getfield com/nd/schoollife/ui/square/task/CommunityDataTask/mCode I
tableswitch 513
L1
L2
default : L3
L3:
aconst_null
areturn
L1:
aload 0
getfield com/nd/schoollife/ui/square/task/CommunityDataTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getMyJoinedCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 2
areturn
L2:
aload 0
getfield com/nd/schoollife/ui/square/task/CommunityDataTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getMyManageCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 2
areturn
.limit locals 4
.limit stack 3
.end method
