.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/helper/PubFunction
.super java/lang/Object
.inner class static final inner com/nd/android/u/cloud/helper/PubFunction$1
.inner class static final inner com/nd/android/u/cloud/helper/PubFunction$2
.inner class static final inner com/nd/android/u/cloud/helper/PubFunction$3

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static GetGUID()Ljava/lang/String;
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static ShowSettingNetWork(Landroid/content/Context;)V
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 1
aload 1
ldc_w 2131495058
invokevirtual android/app/AlertDialog$Builder/setTitle(I)Landroid/app/AlertDialog$Builder;
ldc_w 2131494687
invokevirtual android/app/AlertDialog$Builder/setMessage(I)Landroid/app/AlertDialog$Builder;
pop
aload 1
ldc_w 2131495058
new com/nd/android/u/cloud/helper/PubFunction$3
dup
aload 0
invokespecial com/nd/android/u/cloud/helper/PubFunction$3/<init>(Landroid/content/Context;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
ldc_w 2131492869
new com/nd/android/u/cloud/helper/PubFunction$2
dup
invokespecial com/nd/android/u/cloud/helper/PubFunction$2/<init>()V
invokevirtual android/app/AlertDialog$Builder/setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
pop
aload 1
invokevirtual android/app/AlertDialog$Builder/show()Landroid/app/AlertDialog;
pop
return
.limit locals 2
.limit stack 5
.end method

.method public static changeFlowTagListToLong(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.signature "(Ljava/util/ArrayList<Lcom/product/android/ui/waterfall/FlowTag;>;)Ljava/util/ArrayList<Ljava/lang/Long;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 0
L0:
aload 0
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
aload 0
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/ui/waterfall/FlowTag
invokevirtual com/product/android/ui/waterfall/FlowTag/getUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
astore 2
L0:
aload 2
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
iconst_0
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/versionCode I
istore 1
L1:
iload 1
ireturn
L2:
astore 0
aload 0
invokevirtual android/content/pm/PackageManager$NameNotFoundException/printStackTrace()V
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
ldc ""
astore 1
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
astore 2
L0:
aload 2
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
iconst_0
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
astore 0
L1:
aload 0
ifnull L4
aload 0
astore 1
aload 0
astore 2
L3:
aload 0
invokevirtual java/lang/String/length()I
ifgt L5
L4:
ldc ""
areturn
L2:
astore 0
aload 0
invokevirtual android/content/pm/PackageManager$NameNotFoundException/printStackTrace()V
aload 1
astore 2
L5:
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getClientInfo(Landroid/content/Context;)Lcom/nd/rj/common/login/entity/ClientInfo;
new com/nd/rj/common/login/entity/ClientInfo
dup
invokespecial com/nd/rj/common/login/entity/ClientInfo/<init>()V
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getFileExt(Ljava/io/File;)Ljava/lang/String;
aload 0
ifnull L0
aload 0
invokevirtual java/io/File/getName()Ljava/lang/String;
astore 0
aload 0
invokevirtual java/lang/String/length()I
ifle L0
aload 0
bipush 46
invokevirtual java/lang/String/lastIndexOf(I)I
istore 1
iload 1
iconst_m1
if_icmple L0
iload 1
aload 0
invokevirtual java/lang/String/length()I
iconst_1
isub
if_icmpge L0
aload 0
iload 1
iconst_1
iadd
invokevirtual java/lang/String/substring(I)Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getResourcesDrawable(I)Landroid/graphics/drawable/Drawable;
.catch java/lang/Exception from L0 to L1 using L2
L0:
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokevirtual com/nd/android/u/cloud/OapApplication/getResources()Landroid/content/res/Resources;
iload 0
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getResourcesString(I)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokevirtual com/nd/android/u/cloud/OapApplication/getResources()Landroid/content/res/Resources;
iload 0
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public static getShortWord(Ljava/lang/String;I)Ljava/lang/String;
aload 0
astore 2
aload 0
ifnonnull L0
ldc ""
astore 2
L1:
aload 2
areturn
L0:
aload 0
invokevirtual java/lang/String/length()I
iload 1
if_icmple L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
iconst_0
iload 1
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 5
.end method

.method public static hideKeyboard(Landroid/content/Context;Landroid/view/View;)V
aload 1
ifnonnull L0
return
L0:
aload 0
ldc "input_method"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/inputmethod/InputMethodManager
aload 1
invokevirtual android/view/View/getWindowToken()Landroid/os/IBinder;
iconst_0
invokevirtual android/view/inputmethod/InputMethodManager/hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method public static homeHidSoft(Landroid/content/Context;)V
new android/content/Intent
dup
ldc "android.intent.action.MAIN"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 1
ldc "android.intent.category.HOME"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method

.method public static isNewVersion(Landroid/content/Context;)Z
iconst_0
istore 1
aload 0
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
ldc "update_ver_code"
iconst_0
invokevirtual com/product/android/utils/SharedPreferenceHelper/loadIntKey(Ljava/lang/String;I)I
aload 0
invokestatic com/nd/android/u/cloud/helper/PubFunction/getAppVersionCode(Landroid/content/Context;)I
if_icmple L0
iconst_1
istore 1
L0:
iload 1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static isNull(Ljava/lang/String;)Z
aload 0
ifnull L0
ldc ""
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
ldc "null"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static showKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
new com/nd/android/u/cloud/helper/PubFunction$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/cloud/helper/PubFunction$1/<init>(Landroid/content/Context;Landroid/widget/EditText;)V
ldc2_w 100L
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;J)V
return
.limit locals 2
.limit stack 5
.end method

.method public static softExit(Landroid/content/Context;)V
.catch java/lang/Exception from L0 to L1 using L2
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20065
aconst_null
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
L0:
aload 0
invokestatic com/nd/android/u/cloud/LoginManager/doAfterLogout(Landroid/content/Context;)V
invokestatic com/common/android/utils/StackManager/closeActivitys()V
invokestatic com/nd/android/u/cloud/WeiBoModuler/closeDB()V
L1:
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20064
aconst_null
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
new android/content/Intent
dup
ldc "android.intent.action.MAIN"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "android.intent.category.HOME"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
invokestatic java/lang/System/exit(I)V
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
.limit locals 2
.limit stack 4
.end method

.method public static sysExit(Landroid/content/Context;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokestatic com/nd/android/u/cloud/LoginManager/doAfterLogout(Landroid/content/Context;)V
invokestatic com/nd/android/u/cloud/WeiBoModuler/closeDB()V
invokestatic com/common/android/utils/StackManager/closeActivitys()V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
aload 0
invokevirtual com/nd/android/u/ChatEntry/exitSystemIMS(Landroid/content/Context;)V
L1:
new android/content/Intent
dup
ldc "android.intent.action.MAIN"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "android.intent.category.HOME"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
invokestatic java/lang/System/exit(I)V
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
.limit locals 2
.limit stack 3
.end method
