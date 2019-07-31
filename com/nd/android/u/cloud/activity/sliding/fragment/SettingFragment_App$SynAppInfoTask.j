.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$SynAppInfoTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private SynAppInfoTask inner com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$SynAppInfoTask outer com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;

.method private <init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$SynAppInfoTask/this$0 Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App$SynAppInfoTask/<init>(Lcom/nd/android/u/cloud/activity/sliding/fragment/SettingFragment_App;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
iconst_0
istore 2
L3:
iload 2
iconst_2
if_icmpge L1
L0:
invokestatic com/product/android/business/manager/DataUpdateManager/getInstance()Lcom/product/android/business/manager/DataUpdateManager;
ldc "app_update"
invokevirtual com/product/android/business/manager/DataUpdateManager/isNeedUpdate(Ljava/lang/String;)Z
ifeq L4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic com/nd/android/u/contact/business/SynOapApp/initAppInfo(J)Z
pop
L1:
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "isgetappinfo"
iconst_1
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
ldc com/nd/android/u/contact/dao/OapAppDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapAppDao
invokeinterface com/nd/android/u/contact/dao/OapAppDao/searchOapAppsDisplay()Ljava/util/Vector; 0
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/setAppAndTypeList(Ljava/util/Vector;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L4:
iload 2
iconst_1
iadd
istore 2
goto L3
.limit locals 3
.limit stack 3
.end method
