.bytecode 50.0
.class public synchronized abstract com/nd/schoollife/ui/common/base/BaseTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;>;"

.field public static final 'TAG' Ljava/lang/String;

.field protected 'mCallBack' Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;

.field protected 'mCallStyle' Lcom/nd/schoollife/ui/common/task/CallStyle;

.field protected 'mCode' I

.field protected 'mCtx' Landroid/content/Context;

.field protected 'mProcessView4Task' Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;

.method static <clinit>()V
ldc com/nd/schoollife/ui/common/base/BaseTask
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/common/base/BaseTask/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/base/BaseTask/mCtx Landroid/content/Context;
aload 0
aload 4
putfield com/nd/schoollife/ui/common/base/BaseTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
aload 0
iload 2
putfield com/nd/schoollife/ui/common/base/BaseTask/mCode I
aload 0
aload 3
putfield com/nd/schoollife/ui/common/base/BaseTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
instanceof com/nd/schoollife/ui/common/base/interfaces/IProcessView4Task
ifeq L0
aload 0
aload 1
checkcast com/nd/schoollife/ui/common/base/interfaces/IProcessView4Task
putfield com/nd/schoollife/ui/common/base/BaseTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
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
putfield com/nd/schoollife/ui/common/base/BaseTask/mCtx Landroid/content/Context;
aload 0
aload 5
putfield com/nd/schoollife/ui/common/base/BaseTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
aload 0
iload 3
putfield com/nd/schoollife/ui/common/base/BaseTask/mCode I
aload 0
aload 4
putfield com/nd/schoollife/ui/common/base/BaseTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 0
aload 2
putfield com/nd/schoollife/ui/common/base/BaseTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
return
.limit locals 6
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L2
.catch java/lang/Exception from L10 to L11 using L2
.catch java/lang/Exception from L11 to L12 using L2
.catch java/lang/Exception from L12 to L13 using L2
.catch java/lang/Exception from L14 to L15 using L2
.catch java/lang/Exception from L16 to L17 using L2
.catch java/lang/Exception from L18 to L19 using L2
.catch java/lang/Exception from L20 to L21 using L2
.catch java/lang/Exception from L22 to L23 using L2
.catch java/lang/Exception from L24 to L25 using L2
.catch java/lang/Exception from L26 to L27 using L2
.catch java/lang/Exception from L27 to L28 using L2
.catch java/lang/Exception from L29 to L30 using L2
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 1
ifnonnull L31
L0:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCtx Landroid/content/Context;
ldc "resultBean is null!"
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
ifnull L32
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
invokeinterface com/nd/schoollife/ui/common/base/interfaces/IProcessView4Task/dismissLoading()V 0
L1:
return
L31:
iconst_0
istore 3
iconst_0
istore 2
ldc ""
astore 4
L3:
aload 1
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L14
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
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L5
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
ifnull L5
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
iload 3
invokeinterface com/nd/schoollife/ui/common/base/interfaces/IProcessView4Task/processReloadViewDisplay(Z)V 1
L5:
iload 3
ifne L11
L6:
aload 1
instanceof com/nd/android/forumsdk/business/bean/ForumResultBase
ifeq L33
L7:
iload 2
bipush -100
if_icmpne L34
L8:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_no_network I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
L9:
aload 4
astore 5
L10:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCtx Landroid/content/Context;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "code:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",msg:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast4Debug(Landroid/content/Context;Ljava/lang/String;)V
getstatic com/nd/schoollife/ui/common/base/BaseTask/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "code:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ",msg:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
L11:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
ifnull L12
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCallBack Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCode I
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
aload 1
invokeinterface com/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback/processOnPostExecute(ILcom/nd/schoollife/ui/common/task/CallStyle;Ljava/lang/Object;)V 3
L12:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
ifnull L32
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
invokeinterface com/nd/schoollife/ui/common/base/interfaces/IProcessView4Task/dismissLoading()V 0
L13:
return
L2:
astore 1
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCtx Landroid/content/Context;
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
L14:
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
L15:
goto L4
L34:
aload 4
astore 5
L16:
aload 1
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/isBusinessError()Z
ifeq L10
L17:
aload 4
astore 5
L18:
aload 1
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
ifnull L10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getBusinessCode()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "|"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
checkcast com/nd/android/forumsdk/business/bean/ForumResultBase
invokevirtual com/nd/android/forumsdk/business/bean/ForumResultBase/getErrorBean()Lcom/nd/android/forumsdk/business/bean/ForumErrorBean;
invokevirtual com/nd/android/forumsdk/business/bean/ForumErrorBean/getMsg()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
L19:
goto L10
L33:
aload 4
astore 5
L20:
aload 1
instanceof com/nd/schoollife/common/bean/SchoolLifeResultBase
ifeq L10
L21:
iload 2
bipush -100
if_icmpne L35
L22:
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCtx Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCtx Landroid/content/Context;
getstatic com/nd/schoollife/R$string/str_no_network I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showShortToast(Landroid/content/Context;Ljava/lang/String;)V
L23:
aload 4
astore 5
goto L10
L35:
aload 4
astore 5
L24:
aload 1
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/isBusinessError()Z
ifeq L10
aload 1
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getErrorBean()Ljava/lang/Object;
astore 6
L25:
ldc ""
astore 5
aload 6
ifnull L36
L26:
aload 6
instanceof com/nd/schoollife/common/bean/SquareErrorBean
ifeq L36
aload 6
checkcast com/nd/schoollife/common/bean/SquareErrorBean
invokevirtual com/nd/schoollife/common/bean/SquareErrorBean/getMsg()Ljava/lang/String;
astore 4
L27:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
checkcast com/nd/schoollife/common/bean/SchoolLifeResultBase
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getBusinessCode()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "|"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
L28:
goto L10
L36:
aload 5
astore 4
aload 6
ifnull L27
aload 5
astore 4
L29:
aload 6
instanceof com/nd/schoollife/common/bean/CommunityErrorBean
ifeq L27
aload 6
checkcast com/nd/schoollife/common/bean/CommunityErrorBean
invokevirtual com/nd/schoollife/common/bean/CommunityErrorBean/getErr_msg()Ljava/lang/String;
astore 4
L30:
goto L27
L32:
return
.limit locals 7
.limit stack 4
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mCallStyle Lcom/nd/schoollife/ui/common/task/CallStyle;
getstatic com/nd/schoollife/ui/common/task/CallStyle/CALL_STYLE_INIT Lcom/nd/schoollife/ui/common/task/CallStyle;
if_acmpne L0
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/base/BaseTask/mProcessView4Task Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;
invokeinterface com/nd/schoollife/ui/common/base/interfaces/IProcessView4Task/showLoading()V 0
L0:
return
.limit locals 1
.limit stack 2
.end method
