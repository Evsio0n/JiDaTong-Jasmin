.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/helper/CheckForUpdateUtils
.super java/lang/Object
.inner class private CheckUpdateTask inner com/nd/android/u/cloud/helper/CheckForUpdateUtils$CheckUpdateTask outer com/nd/android/u/cloud/helper/CheckForUpdateUtils

.field private static final 'TAG' Ljava/lang/String; = "CheckForUpdateUtils"

.field private 'handler' Landroid/os/Handler;

.field private 'mOapapp' Lcom/product/android/commonInterface/contact/OapApp;

.field private 'mcheckUpdateTask' Lcom/common/android/utils/task/genericTask/GenericTask;

.field private 'pinfo' Landroid/content/pm/PackageInfo;

.method public <init>(Landroid/os/Handler;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/handler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$002(Lcom/nd/android/u/cloud/helper/CheckForUpdateUtils;Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
aload 0
aload 1
putfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/pinfo Landroid/content/pm/PackageInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/helper/CheckForUpdateUtils;)I
aload 0
invokespecial com/nd/android/u/cloud/helper/CheckForUpdateUtils/getVerInfo()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method private getVerInfo()I
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
aload 0
invokestatic com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/getInstance()Lcom/nd/android/u/cloud/oapprocess/OapRequestProcessImpl;
getstatic com/product/android/business/config/Configuration/MYAPPID I
getstatic com/product/android/business/config/Configuration/MYPRODUCT Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/oapprocess/OapRequestProcessImpl/getAppByAppid(ILjava/lang/String;)Lcom/product/android/commonInterface/contact/OapApp;
putfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/mOapapp Lcom/product/android/commonInterface/contact/OapApp;
ldc "CheckForUpdateUtils"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "versonCode:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/mOapapp Lcom/product/android/commonInterface/contact/OapApp;
invokevirtual com/product/android/commonInterface/contact/OapApp/getVer()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ", coercever:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/mOapapp Lcom/product/android/commonInterface/contact/OapApp;
getfield com/product/android/commonInterface/contact/OapApp/coercever I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
iconst_0
ireturn
L2:
astore 1
ldc_w 2131493349
ireturn
.limit locals 2
.limit stack 4
.end method

.method public checkUpdate()V
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
L3:
return
L0:
aload 0
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokevirtual com/nd/android/u/cloud/OapApplication/getPackageManager()Landroid/content/pm/PackageManager;
invokestatic com/nd/android/u/cloud/data/GlobalVariable/getInstance()Lcom/nd/android/u/cloud/data/GlobalVariable;
invokevirtual com/nd/android/u/cloud/data/GlobalVariable/getPackagename()Ljava/lang/String;
sipush 16384
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
putfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/pinfo Landroid/content/pm/PackageInfo;
L1:
aload 0
invokespecial com/nd/android/u/cloud/helper/CheckForUpdateUtils/getVerInfo()I
ifne L3
aload 0
getfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/pinfo Landroid/content/pm/PackageInfo;
ifnull L3
aload 0
getfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/mOapapp Lcom/product/android/commonInterface/contact/OapApp;
ifnull L3
invokestatic java/lang/Thread/interrupted()Z
ifne L3
aload 0
getfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/pinfo Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/versionCode I
aload 0
getfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/mOapapp Lcom/product/android/commonInterface/contact/OapApp;
invokevirtual com/product/android/commonInterface/contact/OapApp/getVer()I
if_icmpge L3
aload 0
getfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/pinfo Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/versionCode I
aload 0
getfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/mOapapp Lcom/product/android/commonInterface/contact/OapApp;
getfield com/product/android/commonInterface/contact/OapApp/coercever I
if_icmpge L4
new android/os/Message
dup
invokespecial android/os/Message/<init>()V
astore 1
aload 1
iconst_2
putfield android/os/Message/what I
aload 1
aload 0
getfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/mOapapp Lcom/product/android/commonInterface/contact/OapApp;
putfield android/os/Message/obj Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/handler Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L2:
astore 1
return
L4:
aload 0
getfield com/nd/android/u/cloud/helper/CheckForUpdateUtils/handler Landroid/os/Handler;
iconst_1
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
return
.limit locals 2
.limit stack 4
.end method
