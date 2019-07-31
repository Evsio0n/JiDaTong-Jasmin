.bytecode 50.0
.class public synchronized abstract com/nd/schoollife/ui/common/base/BaseMutiAsyncTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.implements com/nd/schoollife/ui/common/base/interfaces/MutiTaskStatusController
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;>;Lcom/nd/schoollife/ui/common/base/interfaces/MutiTaskStatusController;"

.field public static final 'TAG' Ljava/lang/String;

.field protected 'mCallBack' Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;

.field protected 'mCallStyle' Lcom/nd/schoollife/ui/common/task/CallStyle;

.field protected 'mCode' I

.field protected 'mCtx' Landroid/content/Context;

.field protected 'mProcessView4Task' Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;

.method static <clinit>()V
ldc com/nd/schoollife/ui/common/base/BaseTask
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCtx Landroid/content/Context;
aload 0
aload 4
putfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
aload 0
iload 2
putfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCode I
aload 0
aload 3
putfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
instanceof com/nd/schoollife/ui/common/base/interfaces/IProcessView4Task
ifeq L0
aload 0
aload 1
checkcast com/nd/schoollife/ui/common/base/interfaces/IProcessView4Task
putfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
L0:
return
.limit locals 5
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCtx Landroid/content/Context;
aload 0
aload 5
putfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
aload 0
iload 3
putfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCode I
aload 0
aload 4
putfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
aload 2
putfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
return
.limit locals 6
.limit stack 2
.end method

.method public invokeDefaultInitLoadingFinishProcess()Z
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
invokeinterface com/nd/schoollife/ui/common/base/interfaces/IProcessView4Task/dismissLoading()V 0
L1:
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
getstatic com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "error="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method public invokeDefaultInitReloadViewProcess(Z)Z
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
iload 1
invokeinterface com/nd/schoollife/ui/common/base/interfaces/IProcessView4Task/processReloadViewDisplay(Z)V 1
L1:
iconst_1
ireturn
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
getstatic com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/TAG Ljava/lang/String;
aload 2
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCode I
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
invokeinterface com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback/processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V 3
L0:
aload 0
invokevirtual com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/invokeDefaultInitLoadingFinishProcess()Z
pop
aload 1
instanceof java/lang/Boolean
ifeq L1
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual java/lang/Boolean/booleanValue()Z
invokevirtual com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/invokeDefaultInitReloadViewProcess(Z)Z
pop
L1:
return
.limit locals 2
.limit stack 4
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L0
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
invokeinterface com/nd/schoollife/ui/common/base/interfaces/IProcessView4Task/showLoading()V 0
L0:
return
.limit locals 1
.limit stack 2
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
if_icmple L4
aload 1
iconst_0
aaload
astore 3
iconst_m1
istore 2
aload 3
instanceof java/lang/Integer
ifeq L5
aload 3
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 2
L5:
aload 1
iconst_1
aaload
astore 1
aload 1
instanceof com/nd/schoollife/common/bean/SchoolLifeResultBase
ifeq L6
aload 1
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
astore 1
L0:
aload 1
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
bipush -100
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_no_network I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
L1:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
ifnull L3
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
instanceof com/nd/schoollife/ui/common/base/interfaces/AsyncMutilTaskCallback
ifeq L3
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
checkcast com/nd/schoollife/ui/common/base/interfaces/AsyncMutilTaskCallback
iload 2
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
aload 0
invokeinterface com/nd/schoollife/ui/common/base/interfaces/AsyncMutilTaskCallback/processOnProgressUpdate(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;Lcom/nd/schoollife/ui/common/base/interfaces/MutiTaskStatusController;)V 4
L3:
return
L2:
astore 1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCtx Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u5f02\u5e38\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast4Debug(Landroid/content/Context;Ljava/lang/String;)V
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
L6:
aload 1
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L3
aload 1
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
astore 1
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getResultCode()I
bipush -100
if_icmpne L7
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_no_network I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
L7:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
ifnull L3
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
instanceof com/nd/schoollife/ui/common/base/interfaces/AsyncMutilTaskCallback
ifeq L3
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
checkcast com/nd/schoollife/ui/common/base/interfaces/AsyncMutilTaskCallback
iload 2
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
aload 0
invokeinterface com/nd/schoollife/ui/common/base/interfaces/AsyncMutilTaskCallback/processOnProgressUpdate(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;Lcom/nd/schoollife/ui/common/base/interfaces/MutiTaskStatusController;)V 4
return
L4:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseMutiAsyncTask/mCtx Landroid/content/Context;
ldc "return ResultBase is null!"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method
