.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainAppActivity$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/cloud/activity/MainAppActivity
.inner class inner com/nd/android/u/cloud/activity/MainAppActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainAppActivity;

.method <init>(Lcom/nd/android/u/cloud/activity/MainAppActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainAppActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
invokestatic com/nd/android/u/cloud/activity/MainAppActivity/access$300(Lcom/nd/android/u/cloud/activity/MainAppActivity;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
invokestatic com/nd/android/u/cloud/activity/MainAppActivity/access$300(Lcom/nd/android/u/cloud/activity/MainAppActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "isgetappinfo"
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
invokeinterface com/nd/android/u/contact/dao/OapAppDao/searchOapAppsDisplay()Ljava/util/Vector; 0
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/setAppAndTypeList(Ljava/util/Vector;)V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
invokeinterface com/nd/android/u/contact/dao/OapAppDao/searchOapAppsDisplay()Ljava/util/Vector; 0
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/setCommonAppList(Ljava/util/Vector;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/refreshAdapter()V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getAppList()Ljava/util/Vector;
ifnull L2
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getAppList()Ljava/util/Vector;
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 1
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapApp
astore 2
invokestatic com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/getInstance()Lcom/nd/android/u/cloud/cache/AppCornerMarkCacheManager;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapApp/getAppid()I
aload 2
invokevirtual com/product/android/commonInterface/contact/OapApp/getCode()Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/cache/AppCornerMarkCacheManager/updateCornerMarkByService(ILjava/lang/String;)V
goto L3
L1:
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "isgetappinfo"
iconst_1
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
getfield com/nd/android/u/cloud/activity/MainAppActivity/showBegin Z
ifeq L2
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
invokestatic com/nd/android/u/cloud/activity/MainAppActivity/access$100(Lcom/nd/android/u/cloud/activity/MainAppActivity;)Landroid/content/Context;
ldc_w 2131493715
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
L2:
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
getfield com/nd/android/u/cloud/activity/MainAppActivity/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L4
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
getfield com/nd/android/u/cloud/activity/MainAppActivity/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L4
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
getfield com/nd/android/u/cloud/activity/MainAppActivity/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L4:
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
getfield com/nd/android/u/cloud/activity/MainAppActivity/showBegin Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493714
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/MainAppActivity$2/this$0 Lcom/nd/android/u/cloud/activity/MainAppActivity;
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131495568
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/MainAppActivity/onBegin(Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 4
.end method
