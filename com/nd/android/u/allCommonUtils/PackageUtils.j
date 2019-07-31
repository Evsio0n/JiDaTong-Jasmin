.bytecode 50.0
.class public synchronized com/nd/android/u/allCommonUtils/PackageUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static hasPackageName(Landroid/content/Context;Ljava/lang/String;)Z
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 1
iconst_0
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 0
L1:
aload 0
ifnonnull L3
iconst_0
ireturn
L2:
astore 1
aconst_null
astore 0
aload 1
invokevirtual android/content/pm/PackageManager$NameNotFoundException/printStackTrace()V
goto L1
L3:
iconst_1
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static isTopActivity(Landroid/content/Context;Ljava/lang/Class;)Z
.signature "(Landroid/content/Context;Ljava/lang/Class<*>;)Z"
aload 0
ldc "activity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/ActivityManager
iconst_1
invokevirtual android/app/ActivityManager/getRunningTasks(I)Ljava/util/List;
astore 0
aload 0
invokeinterface java/util/List/size()I 0
ifle L0
aload 0
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/app/ActivityManager$RunningTaskInfo
getfield android/app/ActivityManager$RunningTaskInfo/topActivity Landroid/content/ComponentName;
invokevirtual android/content/ComponentName/getClassName()Ljava/lang/String;
aload 1
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static isTopActivity(Landroid/content/Context;Z)Z
iload 1
ifeq L0
iconst_1
ireturn
L0:
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
astore 2
aload 0
ldc "activity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/ActivityManager
iconst_1
invokevirtual android/app/ActivityManager/getRunningTasks(I)Ljava/util/List;
astore 0
aload 0
invokeinterface java/util/List/size()I 0
ifle L1
aload 0
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/app/ActivityManager$RunningTaskInfo
getfield android/app/ActivityManager$RunningTaskInfo/topActivity Landroid/content/ComponentName;
invokevirtual android/content/ComponentName/getPackageName()Ljava/lang/String;
astore 0
aload 2
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
ldc "com.android.camera"
aload 0
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L2:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public static jumpActivity(Landroid/content/Context;Ljava/lang/String;)V
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 1
invokevirtual android/content/pm/PackageManager/getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
astore 2
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 1
iconst_1
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
pop
L1:
aload 2
ifnull L3
aload 0
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L3:
return
L2:
astore 1
aload 1
invokevirtual android/content/pm/PackageManager$NameNotFoundException/printStackTrace()V
goto L1
.limit locals 3
.limit stack 3
.end method

.method public static jumpPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
aload 0
aload 1
invokestatic com/nd/android/u/allCommonUtils/PackageUtils/hasPackageName(Landroid/content/Context;Ljava/lang/String;)Z
ifeq L0
aload 0
aload 1
invokestatic com/nd/android/u/allCommonUtils/PackageUtils/jumpActivity(Landroid/content/Context;Ljava/lang/String;)V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method
