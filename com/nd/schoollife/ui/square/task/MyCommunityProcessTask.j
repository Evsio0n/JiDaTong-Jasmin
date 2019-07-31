.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/task/MyCommunityProcessTask
.super com/nd/schoollife/ui/common/base/BaseMutiAsyncTask

.field public static final 'SUBTASK_GET_ALL' I = 11


.field public static final 'SUBTASK_GET_ALL_COMMUNITY' I = 13


.field public static final 'SUBTASK_GET_ALL_TEAM' I = 12


.field public static final 'SUBTASK_GET_MANAGE' I = 21


.field public static final 'SUBTASK_GET_MANAGE_COMMUNITY' I = 23


.field public static final 'SUBTASK_GET_MANAGE_TEAM' I = 22


.field private 'mCommunityOperator' Lcom/nd/schoollife/controller/operator/ICommunityOperator;

.field private 'mTeamOperator' Lcom/nd/schoollife/controller/operator/ITeamOperator;

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncMutilTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/square/task/MyCommunityProcessTask/mTeamOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
aload 0
aconst_null
putfield com/nd/schoollife/ui/square/task/MyCommunityProcessTask/mCommunityOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getTeamOperator()Lcom/nd/schoollife/controller/operator/ITeamOperator;
putfield com/nd/schoollife/ui/square/task/MyCommunityProcessTask/mTeamOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getCommunityOperator()Lcom/nd/schoollife/controller/operator/ICommunityOperator;
putfield com/nd/schoollife/ui/square/task/MyCommunityProcessTask/mCommunityOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
return
.limit locals 5
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncMutilTaskCallback;)V
aload 0
aload 1
aload 2
iload 3
aload 4
aload 5
invokespecial com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/square/task/MyCommunityProcessTask/mTeamOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
aload 0
aconst_null
putfield com/nd/schoollife/ui/square/task/MyCommunityProcessTask/mCommunityOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getTeamOperator()Lcom/nd/schoollife/controller/operator/ITeamOperator;
putfield com/nd/schoollife/ui/square/task/MyCommunityProcessTask/mTeamOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getCommunityOperator()Lcom/nd/schoollife/controller/operator/ICommunityOperator;
putfield com/nd/schoollife/ui/square/task/MyCommunityProcessTask/mCommunityOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
return
.limit locals 6
.limit stack 6
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/square/task/MyCommunityProcessTask/doInBackground([Ljava/lang/String;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Object;
iconst_0
istore 4
iconst_0
istore 6
iconst_0
istore 5
iconst_m1
istore 2
iconst_m1
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
getfield com/nd/schoollife/ui/square/task/MyCommunityProcessTask/mCode I
lookupswitch
11 : L1
21 : L2
default : L3
L3:
iload 5
istore 4
L4:
new java/lang/Boolean
dup
iload 4
invokespecial java/lang/Boolean/<init>(Z)V
areturn
L1:
aload 0
getfield com/nd/schoollife/ui/square/task/MyCommunityProcessTask/mTeamOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/getMyFocusTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 2
astore 1
aload 0
iconst_2
anewarray java/lang/Object
dup
iconst_0
bipush 12
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 1
aastore
invokevirtual com/nd/schoollife/ui/square/task/MyCommunityProcessTask/publishProgress([Ljava/lang/Object;)V
iload 4
istore 5
aload 1
ifnull L5
iload 4
istore 5
aload 1
instanceof com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
ifeq L5
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/isSuccess()Z
istore 5
L5:
iload 5
istore 4
iload 5
ifeq L4
aload 0
getfield com/nd/schoollife/ui/square/task/MyCommunityProcessTask/mCommunityOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getMyJoinedCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 2
astore 1
aload 0
iconst_2
anewarray java/lang/Object
dup
iconst_0
bipush 13
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 1
aastore
invokevirtual com/nd/schoollife/ui/square/task/MyCommunityProcessTask/publishProgress([Ljava/lang/Object;)V
iload 5
istore 4
aload 1
ifnull L4
iload 5
istore 4
aload 1
instanceof com/nd/schoollife/common/bean/result/ResultCommunityInfoList
ifeq L4
aload 1
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/isSuccess()Z
istore 4
goto L4
L2:
aload 0
getfield com/nd/schoollife/ui/square/task/MyCommunityProcessTask/mTeamOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/getMyTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 2
astore 1
aload 0
iconst_2
anewarray java/lang/Object
dup
iconst_0
bipush 22
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 1
aastore
invokevirtual com/nd/schoollife/ui/square/task/MyCommunityProcessTask/publishProgress([Ljava/lang/Object;)V
iload 6
istore 5
aload 1
ifnull L6
iload 6
istore 5
aload 1
instanceof com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
ifeq L6
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/isSuccess()Z
istore 5
L6:
iload 5
istore 4
iload 5
ifeq L4
aload 0
getfield com/nd/schoollife/ui/square/task/MyCommunityProcessTask/mCommunityOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getMyManageCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 2
astore 1
aload 0
iconst_2
anewarray java/lang/Object
dup
iconst_0
bipush 23
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
aload 1
aastore
invokevirtual com/nd/schoollife/ui/square/task/MyCommunityProcessTask/publishProgress([Ljava/lang/Object;)V
iload 5
istore 4
aload 1
ifnull L4
iload 5
istore 4
aload 1
instanceof com/nd/schoollife/common/bean/result/ResultCommunityInfoList
ifeq L4
aload 1
checkcast com/nd/schoollife/common/bean/result/ResultCommunityInfoList
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/isSuccess()Z
istore 4
goto L4
.limit locals 7
.limit stack 5
.end method
