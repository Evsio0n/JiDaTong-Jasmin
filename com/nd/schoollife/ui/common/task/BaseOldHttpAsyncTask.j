.bytecode 50.0
.class public synchronized abstract com/nd/schoollife/ui/common/task/BaseOldHttpAsyncTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;>;"

.field public static final 'TAG' Ljava/lang/String;

.field protected 'mCallBack' Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;

.field protected 'mCallStyle' Lcom/nd/schoollife/ui/common/task/CallStyle;

.field protected 'mCode' I

.field protected 'mCtx' Landroid/content/Context;

.method static <clinit>()V
ldc com/nd/schoollife/ui/common/base/BaseHttpAsyncTask
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/common/task/BaseOldHttpAsyncTask/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/task/BaseOldHttpAsyncTask/mCtx Landroid/content/Context;
aload 0
aload 4
putfield com/nd/schoollife/ui/common/task/BaseOldHttpAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
aload 0
iload 2
putfield com/nd/schoollife/ui/common/task/BaseOldHttpAsyncTask/mCode I
aload 0
aload 3
putfield com/nd/schoollife/ui/common/task/BaseOldHttpAsyncTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
return
.limit locals 5
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 1
ifnonnull L10
L0:
aload 0
getfield com/nd/schoollife/ui/common/task/BaseOldHttpAsyncTask/mCtx Landroid/content/Context;
ldc "return ResultBase is null!"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
L1:
return
L10:
iconst_0
istore 3
iconst_0
istore 2
ldc ""
astore 4
L3:
aload 1
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L8
aload 1
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isSuccess()Z
istore 3
aload 1
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
istore 2
aload 1
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultMsg()Ljava/lang/String;
astore 4
L4:
iload 3
ifne L6
L5:
aload 0
getfield com/nd/schoollife/ui/common/task/BaseOldHttpAsyncTask/mCtx Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "code:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",msg:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
L6:
aload 0
getfield com/nd/schoollife/ui/common/task/BaseOldHttpAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
ifnull L11
aload 0
getfield com/nd/schoollife/ui/common/task/BaseOldHttpAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
aload 0
getfield com/nd/schoollife/ui/common/task/BaseOldHttpAsyncTask/mCode I
aload 0
getfield com/nd/schoollife/ui/common/task/BaseOldHttpAsyncTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
invokeinterface com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback/processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V 3
L7:
return
L2:
astore 1
aload 0
getfield com/nd/schoollife/ui/common/task/BaseOldHttpAsyncTask/mCtx Landroid/content/Context;
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
L8:
aload 1
instanceof com/nd/schoollife/common/bean/SchoolLifeResultBase
ifeq L4
aload 1
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/isSuccess()Z
istore 3
aload 1
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
istore 2
aload 1
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultMsg()Ljava/lang/String;
astore 4
L9:
goto L4
L11:
return
.limit locals 5
.limit stack 4
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
return
.limit locals 1
.limit stack 1
.end method
