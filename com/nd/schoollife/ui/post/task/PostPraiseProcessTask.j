.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/task/PostPraiseProcessTask
.super com/nd/schoollife/ui/common/base/BaseHttpAsyncTask

.field public static final 'TASKCODE_CANCEL_PRAISE' I = 7


.field public static final 'TASKCODE_DO_PRAISE' I = 6


.field private 'ipo' Lcom/nd/schoollife/controller/operator/IPostOperator;

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getPostOperator()Lcom/nd/schoollife/controller/operator/IPostOperator;
putfield com/nd/schoollife/ui/post/task/PostPraiseProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
return
.limit locals 5
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/post/task/PostPraiseProcessTask/doInBackground([Ljava/lang/String;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Object;
aload 0
getfield com/nd/schoollife/ui/post/task/PostPraiseProcessTask/mCode I
tableswitch 6
L0
L1
default : L2
L2:
aconst_null
areturn
L0:
aload 0
getfield com/nd/schoollife/ui/post/task/PostPraiseProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/post/task/PostPraiseProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/doPraise(J)Lcom/nd/android/forumsdk/business/bean/ForumResultBase; 2
areturn
L1:
aload 0
getfield com/nd/schoollife/ui/post/task/PostPraiseProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
ifnull L2
aload 0
getfield com/nd/schoollife/ui/post/task/PostPraiseProcessTask/ipo Lcom/nd/schoollife/controller/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokeinterface com/nd/schoollife/controller/operator/IPostOperator/cancelPraise(J)Lcom/nd/android/forumsdk/business/bean/ForumResultBase; 2
areturn
.limit locals 2
.limit stack 3
.end method
