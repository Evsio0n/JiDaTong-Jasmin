.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/task/SquareDataTask
.super com/nd/schoollife/ui/common/base/BaseHttpAsyncTask

.field public static final 'DELETE_SCOPE_DATA' I = 1543


.field public static final 'GET_MESSAGE_AT' I = 1536


.field public static final 'GET_MESSAGE_LIKE' I = 1540


.field public static final 'GET_MESSAGE_NUM' I = 1542


.field public static final 'GET_MESSAGE_REPLY' I = 1538


.field public static final 'GET_SEARCH_COMMUNITY' I = 771


.field public static final 'GET_SEARCH_COMPLEX' I = 772


.field public static final 'GET_SEARCH_COMPLEX_WITHOUT_COMMUNITY' I = 773


.field public static final 'GET_SEARCH_POST' I = 768


.field public static final 'GET_SEARCH_TEAM' I = 770


.field public static final 'GET_SQUARE_ALL_DATA' I = 1280


.field public static final 'GET_SQUARE_ALL_DATA_OFF_LINE' I = 1281


.field public static final 'GET_SUBSCRIBE_OFFLINE_DATA' I = 512


.field public static final 'GET_SUBSCRIBE_ONLINE_DATA' I = 513


.field private 'IOperator' Lcom/nd/schoollife/controller/operator/ISquareOperator;

.field private 'mPostOperator' Lcom/nd/schoollife/controller/operator/IPostOperator;

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getSquareOperator()Lcom/nd/schoollife/controller/operator/ISquareOperator;
putfield com/nd/schoollife/ui/square/task/SquareDataTask/IOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getPostOperator()Lcom/nd/schoollife/controller/operator/IPostOperator;
putfield com/nd/schoollife/ui/square/task/SquareDataTask/mPostOperator Lcom/nd/schoollife/controller/operator/IPostOperator;
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
invokevirtual com/nd/schoollife/controller/OperatorFactory/getSquareOperator()Lcom/nd/schoollife/controller/operator/ISquareOperator;
putfield com/nd/schoollife/ui/square/task/SquareDataTask/IOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getPostOperator()Lcom/nd/schoollife/controller/operator/IPostOperator;
putfield com/nd/schoollife/ui/square/task/SquareDataTask/mPostOperator Lcom/nd/schoollife/controller/operator/IPostOperator;
return
.limit locals 6
.limit stack 6
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/square/task/SquareDataTask/doInBackground([Ljava/lang/String;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Object;
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/mCode I
lookupswitch
512 : L0
513 : L1
768 : L2
770 : L3
771 : L4
772 : L5
773 : L6
1280 : L7
1281 : L8
1536 : L9
1538 : L10
1540 : L11
1542 : L12
1543 : L13
default : L14
L14:
aconst_null
areturn
L7:
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/IOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/getSquareAllData()Lcom/nd/schoollife/common/bean/result/ResultSquareAllData; 0
areturn
L8:
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/IOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/getSquareAllDataOffLine()Lcom/nd/schoollife/common/bean/result/ResultSquareAllData; 0
areturn
L9:
aload 1
arraylength
iconst_2
if_icmpne L14
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
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/IOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/getMyReceiveAt(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveAt; 2
areturn
L10:
aload 1
arraylength
iconst_2
if_icmpne L14
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
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/IOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/getMyReceiveComment(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceiveComment; 2
areturn
L11:
aload 1
arraylength
iconst_2
if_icmpne L14
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
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/IOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/getMyReceivePraise(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetMyReceivePraise; 2
areturn
L12:
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/IOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/getMsgNumTips()Lcom/nd/android/forumsdk/business/bean/result/ResultGetMsgNumtips; 0
areturn
L2:
aload 1
arraylength
iconst_3
if_icmpne L14
aload 1
iconst_0
aaload
astore 10
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 1
iconst_2
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 3
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/IOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
aload 10
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/searchPost(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost; 3
areturn
L3:
aload 1
arraylength
iconst_3
if_icmpne L14
aload 1
iconst_0
aaload
astore 10
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 1
iconst_2
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 3
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/IOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
aload 10
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/searchTeam(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList; 3
areturn
L4:
aload 1
arraylength
iconst_3
if_icmpne L14
aload 1
iconst_0
aaload
astore 10
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 1
iconst_2
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 3
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/IOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
aload 10
iload 2
iload 3
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/searchCommunity(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 3
areturn
L5:
aload 1
arraylength
iconst_5
if_icmpne L14
aload 1
iconst_0
aaload
astore 10
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 1
iconst_2
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 3
aload 1
iconst_3
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 4
aload 1
iconst_4
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 5
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/IOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
aload 10
invokevirtual java/lang/String/trim()Ljava/lang/String;
iload 2
iload 3
iload 4
iload 5
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/searchComplex(Ljava/lang/String;IIII)Lcom/nd/schoollife/common/bean/result/ResultSearchComplex2; 5
areturn
L6:
aload 1
arraylength
iconst_5
if_icmpne L14
aload 1
iconst_0
aaload
astore 10
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 1
iconst_2
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 3
aload 1
iconst_3
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 4
aload 1
iconst_4
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 5
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/IOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
aload 10
iload 2
iload 3
iload 4
iload 5
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/searchComplexWithoutCommunity(Ljava/lang/String;IIII)Lcom/nd/schoollife/common/bean/result/ResultSearchComplex2; 5
areturn
L0:
aload 1
arraylength
iconst_1
if_icmpne L14
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/mPostOperator Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/getMyRssListOffLine(I)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList; 1
areturn
L1:
aload 1
arraylength
iconst_3
if_icmpne L14
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
aload 1
iconst_1
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 6
aload 1
iconst_2
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 8
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/mPostOperator Lcom/nd/schoollife/controller/operator/IPostOperator;
iload 2
lload 6
lload 8
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/getMyRssList(IJJ)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList; 5
areturn
L13:
aload 1
arraylength
iconst_2
if_icmpne L14
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
iload 2
bipush 16
if_icmpne L15
getstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/COMMUNITY Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
astore 1
L16:
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDataTask/mPostOperator Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iload 3
i2l
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/deleteScopeRssList(Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;J)J 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
areturn
L15:
getstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/TEAM Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
astore 1
goto L16
.limit locals 11
.limit stack 6
.end method
