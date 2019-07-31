.bytecode 50.0
.class public synchronized abstract com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;>;"

.field public static final 'TAG' Ljava/lang/String;

.field protected 'mCallBack' Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;

.field protected 'mCallStyle' Lcom/nd/schoollife/ui/common/task/CallStyle;

.field protected 'mCode' I

.field protected 'mCtx' Landroid/content/Context;

.method static <clinit>()V
ldc com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask/mCtx Landroid/content/Context;
aload 0
aload 4
putfield com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
aload 0
iload 2
putfield com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask/mCode I
aload 0
aload 3
putfield com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
return
.limit locals 5
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 0
.end method

.method protected transient onProgressUpdate([Ljava/lang/Object;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onProgressUpdate([Ljava/lang/Object;)V
aload 1
ifnull L4
aload 1
arraylength
iconst_1
if_icmpne L4
aload 1
iconst_0
aaload
astore 4
iconst_0
istore 3
iconst_0
istore 2
ldc ""
astore 1
aload 4
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L5
aload 4
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isSuccess()Z
istore 3
aload 4
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
istore 2
aload 4
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultMsg()Ljava/lang/String;
astore 1
L6:
iload 3
ifne L1
L0:
aload 0
getfield com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask/mCtx Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "code:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",msg:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
L1:
aload 0
getfield com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
ifnull L3
aload 0
getfield com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
aload 0
getfield com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask/mCode I
aload 0
getfield com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 4
invokeinterface com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback/processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V 3
L3:
return
L5:
aload 4
instanceof com/nd/schoollife/common/bean/SchoolLifeResultBase
ifeq L6
aload 4
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/isSuccess()Z
istore 3
aload 4
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
istore 2
aload 4
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultMsg()Ljava/lang/String;
astore 1
goto L6
L2:
astore 1
aload 0
getfield com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask/mCtx Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u5f02\u5e38\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
L4:
aload 0
getfield com/nd/schoollife/ui/common/task/BaseHttpDbAsyncTask/mCtx Landroid/content/Context;
ldc "return ResultBase is null!"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method
