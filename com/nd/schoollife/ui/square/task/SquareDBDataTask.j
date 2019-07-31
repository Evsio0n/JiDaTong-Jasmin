.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/task/SquareDBDataTask
.super com/nd/schoollife/ui/common/base/BaseMutiAsyncTask

.field public static final 'GET_SQUARE_WITHOUT_DB_DATA' I = 257


.field public static final 'GET_SQUARE_WITH_DB_DATA' I = 256


.field public static final 'GET_SUBSCRIBE_WITHOUT_DB_DATA' I = 513


.field public static final 'GET_SUBSCRIBE_WITH_DB_DATA' I = 512


.field private 'iOperator' Lcom/nd/schoollife/controller/operator/ISquareOperator;

.field private 'iPostOperator' Lcom/nd/android/forumsdk/operator/IPostOperator;

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getSquareOperator()Lcom/nd/schoollife/controller/operator/ISquareOperator;
putfield com/nd/schoollife/ui/square/task/SquareDBDataTask/iOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
aload 0
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getPostOperator()Lcom/nd/android/forumsdk/operator/IPostOperator;
putfield com/nd/schoollife/ui/square/task/SquareDBDataTask/iPostOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
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
invokespecial com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getSquareOperator()Lcom/nd/schoollife/controller/operator/ISquareOperator;
putfield com/nd/schoollife/ui/square/task/SquareDBDataTask/iOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
aload 0
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getPostOperator()Lcom/nd/android/forumsdk/operator/IPostOperator;
putfield com/nd/schoollife/ui/square/task/SquareDBDataTask/iPostOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
return
.limit locals 6
.limit stack 6
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/square/task/SquareDBDataTask/doInBackground([Ljava/lang/String;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Object;
iconst_0
istore 2
iconst_0
istore 3
lconst_0
lstore 8
lconst_0
lstore 10
lload 8
lstore 6
lload 10
lstore 4
aload 1
ifnull L0
iload 3
istore 2
aload 1
arraylength
iconst_1
if_icmpne L1
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 2
L1:
aload 1
arraylength
iconst_2
if_icmpne L2
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
pop
L2:
lload 8
lstore 6
lload 10
lstore 4
aload 1
arraylength
iconst_3
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
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 6
aload 1
iconst_2
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 4
L0:
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDBDataTask/mCode I
lookupswitch
256 : L3
257 : L4
512 : L5
513 : L6
default : L7
L7:
aconst_null
areturn
L3:
aload 0
iconst_2
anewarray java/lang/Object
dup
iconst_0
new java/lang/Integer
dup
sipush 256
invokespecial java/lang/Integer/<init>(I)V
aastore
dup
iconst_1
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDBDataTask/iOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/getSquareAllDataOffLine()Lcom/nd/schoollife/common/bean/result/ResultSquareAllData; 0
aastore
invokevirtual com/nd/schoollife/ui/square/task/SquareDBDataTask/publishProgress([Ljava/lang/Object;)V
L4:
aload 0
iconst_2
anewarray java/lang/Object
dup
iconst_0
new java/lang/Integer
dup
sipush 257
invokespecial java/lang/Integer/<init>(I)V
aastore
dup
iconst_1
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDBDataTask/iOperator Lcom/nd/schoollife/controller/operator/ISquareOperator;
invokeinterface com/nd/schoollife/controller/operator/ISquareOperator/getSquareAllData()Lcom/nd/schoollife/common/bean/result/ResultSquareAllData; 0
aastore
invokevirtual com/nd/schoollife/ui/square/task/SquareDBDataTask/publishProgress([Ljava/lang/Object;)V
goto L7
L5:
aload 0
iconst_2
anewarray java/lang/Object
dup
iconst_0
new java/lang/Integer
dup
sipush 512
invokespecial java/lang/Integer/<init>(I)V
aastore
dup
iconst_1
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDBDataTask/iPostOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
iload 2
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getMyRssListOffLine(I)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList; 1
aastore
invokevirtual com/nd/schoollife/ui/square/task/SquareDBDataTask/publishProgress([Ljava/lang/Object;)V
goto L7
L6:
aload 0
iconst_2
anewarray java/lang/Object
dup
iconst_0
new java/lang/Integer
dup
sipush 513
invokespecial java/lang/Integer/<init>(I)V
aastore
dup
iconst_1
aload 0
getfield com/nd/schoollife/ui/square/task/SquareDBDataTask/iPostOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
iload 2
lload 6
lload 4
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getMyRssList(IJJ)Lcom/nd/android/forumsdk/business/bean/result/ResultMyRssPostList; 5
aastore
invokevirtual com/nd/schoollife/ui/square/task/SquareDBDataTask/publishProgress([Ljava/lang/Object;)V
goto L7
.limit locals 12
.limit stack 10
.end method
