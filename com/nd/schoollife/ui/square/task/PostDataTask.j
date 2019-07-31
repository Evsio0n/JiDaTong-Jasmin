.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/square/task/PostDataTask
.super com/nd/schoollife/ui/common/base/BaseHttpAsyncTask

.field public static final 'GET_SEARCH_POST' I = 769


.field public static final 'TASKCODE_GET_HOT_POST_LIST' I = 770


.field private 'mOperator' Lcom/nd/android/forumsdk/operator/IPostOperator;

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getPostOperator()Lcom/nd/android/forumsdk/operator/IPostOperator;
putfield com/nd/schoollife/ui/square/task/PostDataTask/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
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
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getPostOperator()Lcom/nd/android/forumsdk/operator/IPostOperator;
putfield com/nd/schoollife/ui/square/task/PostDataTask/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
return
.limit locals 6
.limit stack 6
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/square/task/PostDataTask/doInBackground([Ljava/lang/String;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Object;
aload 0
getfield com/nd/schoollife/ui/square/task/PostDataTask/mCode I
tableswitch 769
L0
L1
default : L0
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/schoollife/ui/square/task/PostDataTask/mOperator Lcom/nd/android/forumsdk/operator/IPostOperator;
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
aload 1
iconst_2
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
aload 1
iconst_3
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
invokeinterface com/nd/android/forumsdk/operator/IPostOperator/getHotPosts(JIII)Lcom/nd/android/forumsdk/business/bean/result/ResultHotPostList; 5
areturn
.limit locals 2
.limit stack 7
.end method
