.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/task/TeamDataTask
.super com/nd/schoollife/ui/common/base/BaseHttpAsyncTask

.field public static final 'GET_CATEGORY' I = 260


.field public static final 'GET_HOT_TEAM' I = 259


.field public static final 'GET_MY_FOCUS_TEAM' I = 257


.field public static final 'GET_MY_MANAGER_TEAM' I = 258


.field public static final 'GET_TEAM_BY_CATEGORY' I = 261


.field private 'mOperator' Lcom/nd/schoollife/controller/operator/ITeamOperator;

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getTeamOperator()Lcom/nd/schoollife/controller/operator/ITeamOperator;
putfield com/nd/schoollife/ui/square/task/TeamDataTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
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
invokevirtual com/nd/schoollife/controller/OperatorFactory/getTeamOperator()Lcom/nd/schoollife/controller/operator/ITeamOperator;
putfield com/nd/schoollife/ui/square/task/TeamDataTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
return
.limit locals 6
.limit stack 6
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/square/task/TeamDataTask/doInBackground([Ljava/lang/String;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Object;
iconst_m1
istore 3
iconst_m1
istore 2
ldc2_w -1L
lstore 4
aload 1
arraylength
iconst_2
if_icmpne L0
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 3
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
L0:
aload 1
arraylength
iconst_3
if_icmpne L1
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 3
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 1
iconst_2
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 4
L1:
aload 0
getfield com/nd/schoollife/ui/square/task/TeamDataTask/mCode I
tableswitch 257
L2
L3
L4
L5
L6
default : L7
L7:
aconst_null
areturn
L2:
aload 0
getfield com/nd/schoollife/ui/square/task/TeamDataTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
iload 3
iload 2
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/getMyFocusTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 2
areturn
L3:
aload 0
getfield com/nd/schoollife/ui/square/task/TeamDataTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
iload 3
iload 2
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/getMyTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 2
areturn
L4:
aload 0
getfield com/nd/schoollife/ui/square/task/TeamDataTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
lload 4
iload 3
iload 2
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/getHotTeam(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 4
areturn
L5:
aload 0
getfield com/nd/schoollife/ui/square/task/TeamDataTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/getAllCategoryForTeam()Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory; 0
areturn
L6:
aload 0
getfield com/nd/schoollife/ui/square/task/TeamDataTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
lload 4
iload 3
iload 2
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/getTeamListByCategory(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 4
areturn
.limit locals 6
.limit stack 5
.end method
