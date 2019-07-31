.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App
.inner class inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;

.method <init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/m_dialog Landroid/app/ProgressDialog;
ifnull L2
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L2:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L3
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/access$200(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;)V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getAppList()Ljava/util/Vector;
ifnull L4
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getAppList()Ljava/util/Vector;
invokevirtual java/util/Vector/iterator()Ljava/util/Iterator;
astore 1
L5:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
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
goto L5
L4:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
iconst_1
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/isInited Z
L6:
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/synAppInfoTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
return
L3:
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "isgetappinfo"
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/showBegin Z
ifeq L6
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/access$300(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;)Landroid/content/Context;
ldc_w 2131493715
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L6
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "app_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/getResources()Landroid/content/res/Resources;
ldc_w 2131493714
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
invokevirtual com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/getResources()Landroid/content/res/Resources;
ldc_w 2131495568
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App/access$100(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;Ljava/lang/String;Ljava/lang/String;)V
L0:
return
.limit locals 2
.limit stack 4
.end method
