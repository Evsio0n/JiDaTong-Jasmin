.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/task/CommunityProcessTask
.super com/nd/schoollife/ui/common/base/BaseHttpAsyncTask

.field public static final 'TASKCODE_APPEAL_JOIN' I = 1


.field public static final 'TASKCODE_GET_COMM_INFO' I = 2


.field private 'ipo' Lcom/nd/schoollife/controller/operator/ICommunityOperator;

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
putfield com/nd/schoollife/ui/community/task/CommunityProcessTask/ipo Lcom/nd/schoollife/controller/operator/ICommunityOperator;
return
.limit locals 5
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/community/task/CommunityProcessTask/doInBackground([Ljava/lang/String;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Object;
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityProcessTask/mCode I
tableswitch 1
L0
L1
default : L2
L2:
aconst_null
areturn
L0:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityProcessTask/ipo Lcom/nd/schoollife/controller/operator/ICommunityOperator;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityProcessTask/ipo Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Boolean/valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/booleanValue()Z
aload 1
iconst_1
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
aload 1
iconst_2
aaload
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/joinOrExitCommunity(ZJLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase; 4
areturn
L1:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityProcessTask/ipo Lcom/nd/schoollife/controller/operator/ICommunityOperator;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityProcessTask/ipo Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getCommunityInfo(J)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo; 2
areturn
.limit locals 2
.limit stack 6
.end method
