.bytecode 50.0
.class synchronized com/nd/android/u/cloud/OapApplication$3
.super java/lang/Thread
.enclosing method com/nd/android/u/cloud/OapApplication/init()V
.inner class inner com/nd/android/u/cloud/OapApplication$3

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/OapApplication;

.field final synthetic 'val$hasSetUser' Z

.method <init>(Lcom/nd/android/u/cloud/OapApplication;Z)V
aload 0
aload 1
putfield com/nd/android/u/cloud/OapApplication$3/this$0 Lcom/nd/android/u/cloud/OapApplication;
aload 0
iload 2
putfield com/nd/android/u/cloud/OapApplication$3/val$hasSetUser Z
aload 0
invokespecial java/lang/Thread/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
getfield com/nd/android/u/cloud/OapApplication$3/this$0 Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/nd/android/u/cloud/OapApplication/access$100(Lcom/nd/android/u/cloud/OapApplication;)V
aload 0
getfield com/nd/android/u/cloud/OapApplication$3/this$0 Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/nd/rj/common/incrementalupdates/Utils/getSDCardCacheDir(Landroid/content/Context;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/OapApplication$3/this$0 Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/common/android/utils/SdCardUtils/getInternalStoreCacheDir(Landroid/content/Context;)Ljava/lang/String;
invokestatic com/common/android/utils/EraseLogUtils/getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/EraseLogUtils;
invokevirtual com/common/android/utils/EraseLogUtils/EraseLogIfNotRunning()V
L1:
aload 0
getfield com/nd/android/u/cloud/OapApplication$3/val$hasSetUser Z
ifeq L3
getstatic com/nd/android/u/business/db/dao/RecentContactRecords/INSTANCE Lcom/nd/android/u/business/db/dao/RecentContactRecords;
astore 1
L3:
aload 0
getfield com/nd/android/u/cloud/OapApplication$3/this$0 Lcom/nd/android/u/cloud/OapApplication;
invokevirtual com/nd/android/u/cloud/OapApplication/initCrashCollection()V
invokestatic com/nd/android/u/cloud/OapApplication/access$000()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "uid"
ldc2_w -1L
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveLongKey(Ljava/lang/String;J)V
invokestatic com/nd/android/u/cloud/OapApplication/access$000()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "username"
ldc ""
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveKey(Ljava/lang/String;Ljava/lang/String;)V
invokestatic com/nd/android/u/cloud/OapApplication/access$000()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "isgetappinfo"
iconst_1
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
invokestatic com/nd/android/u/cloud/OapApplication/access$000()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "isshow"
iconst_1
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveBooleanKey(Ljava/lang/String;Z)V
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
.limit locals 2
.limit stack 4
.end method
