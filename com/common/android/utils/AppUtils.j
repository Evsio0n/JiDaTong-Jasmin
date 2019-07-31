.bytecode 50.0
.class public synchronized com/common/android/utils/AppUtils
.super java/lang/Object

.field private static final 'HAS_CREATE_SHORTCUT' Ljava/lang/String; = "hasCreateShortCut"

.field private static final 'MIN_SDK_VERSION' I = 8


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static createShortCut(Landroid/app/Activity;II)V
aload 0
iload 1
aload 0
iload 2
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/AppUtils/createShortCut(Landroid/app/Activity;ILjava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method

.method public static createShortCut(Landroid/app/Activity;ILjava/lang/String;)V
aload 0
iconst_0
invokevirtual android/app/Activity/getPreferences(I)Landroid/content/SharedPreferences;
astore 3
aload 0
aload 2
invokestatic com/common/android/utils/AppUtils/hasShortCutByLauncherPackage(Landroid/app/Activity;Ljava/lang/String;)Z
ifeq L0
aload 3
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "hasCreateShortCut"
iconst_1
invokeinterface android/content/SharedPreferences$Editor/putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L1:
return
L0:
aload 3
ldc "hasCreateShortCut"
iconst_0
invokeinterface android/content/SharedPreferences/getBoolean(Ljava/lang/String;Z)Z 2
ifne L1
new android/content/Intent
dup
ldc "com.android.launcher.action.INSTALL_SHORTCUT"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 4
aload 4
ldc "duplicate"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 4
ldc "android.intent.extra.shortcut.NAME"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 4
ldc "android.intent.extra.shortcut.ICON_RESOURCE"
aload 0
invokevirtual android/app/Activity/getApplicationContext()Landroid/content/Context;
iload 1
invokestatic android/content/Intent$ShortcutIconResource/fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
new android/content/Intent
dup
ldc "android.intent.action.MAIN"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "android.intent.category.LAUNCHER"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
aload 0
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 4
ldc "android.intent.extra.shortcut.INTENT"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 0
aload 4
invokevirtual android/app/Activity/sendBroadcast(Landroid/content/Intent;)V
aload 3
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "hasCreateShortCut"
iconst_1
invokeinterface android/content/SharedPreferences$Editor/putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 5
.limit stack 4
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

.method public static getLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;
new android/content/Intent
dup
ldc "android.intent.action.MAIN"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
ldc "android.intent.category.HOME"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 1
iconst_0
invokevirtual android/content/pm/PackageManager/resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
astore 0
aload 0
getfield android/content/pm/ResolveInfo/activityInfo Landroid/content/pm/ActivityInfo;
ifnonnull L0
ldc ""
areturn
L0:
aload 0
getfield android/content/pm/ResolveInfo/activityInfo Landroid/content/pm/ActivityInfo;
getfield android/content/pm/ActivityInfo/packageName Ljava/lang/String;
ldc "android"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
ldc ""
areturn
L1:
aload 0
getfield android/content/pm/ResolveInfo/activityInfo Landroid/content/pm/ActivityInfo;
getfield android/content/pm/ActivityInfo/packageName Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static hasShortCutByLauncherPackage(Landroid/app/Activity;Ljava/lang/String;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
iconst_1
istore 3
aload 0
invokestatic com/common/android/utils/AppUtils/getLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;
astore 5
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
L6:
iload 3
ireturn
L5:
iconst_0
istore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "content://"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".settings/favorites?notify=true"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
astore 5
aload 0
invokevirtual android/app/Activity/getContentResolver()Landroid/content/ContentResolver;
astore 0
L0:
aload 0
aload 5
aconst_null
ldc "title=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 0
L1:
iload 4
istore 3
aload 0
ifnull L6
L3:
aload 0
invokeinterface android/database/Cursor/getCount()I 0
istore 2
L4:
iload 4
istore 3
iload 2
ifle L6
iconst_1
ireturn
L2:
astore 0
aload 0
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
.limit locals 6
.limit stack 8
.end method

.method public static hasShortcut(Landroid/app/Activity;Ljava/lang/String;)Z
.annotation visible Ljava/lang/Deprecated;
.end annotation
getstatic android/os/Build$VERSION/SDK_INT I
bipush 8
if_icmpge L0
ldc "content://com.android.launcher.settings/favorites?notify=true"
astore 2
L1:
aload 0
invokevirtual android/app/Activity/getContentResolver()Landroid/content/ContentResolver;
aload 2
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
aconst_null
ldc "title=?"
iconst_1
anewarray java/lang/String
dup
iconst_0
aload 1
aastore
aconst_null
invokevirtual android/content/ContentResolver/query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
astore 0
aload 0
ifnull L2
aload 0
invokeinterface android/database/Cursor/moveToFirst()Z 0
ifeq L2
aload 0
invokeinterface android/database/Cursor/close()V 0
iconst_1
ireturn
L0:
ldc "content://com.android.launcher2.settings/favorites?notify=true"
astore 2
goto L1
L2:
iconst_0
ireturn
.limit locals 3
.limit stack 8
.end method

.method public static isBackgroundRunning(Landroid/content/Context;)Z
iconst_0
istore 2
aload 0
ldc "activity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/app/ActivityManager
astore 3
aload 3
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 3
invokevirtual android/app/ActivityManager/getRunningAppProcesses()Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L2:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/app/ActivityManager$RunningAppProcessInfo
astore 4
aload 4
getfield android/app/ActivityManager$RunningAppProcessInfo/processName Ljava/lang/String;
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L2
iload 2
istore 1
aload 4
getfield android/app/ActivityManager$RunningAppProcessInfo/importance I
bipush 100
if_icmpeq L3
iload 2
istore 1
aload 4
getfield android/app/ActivityManager$RunningAppProcessInfo/importance I
sipush 200
if_icmpeq L3
iconst_1
istore 1
L3:
iload 1
ireturn
.limit locals 5
.limit stack 2
.end method

.method public static isRoot()Z
.catch java/lang/Exception from L0 to L1 using L2
L0:
new java/io/File
dup
ldc "/system"
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/canRead()Z
ifeq L3
new java/io/File
dup
ldc "/system/bin/su"
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifne L3
new java/io/File
dup
ldc "/system/xbin/su"
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
istore 0
L1:
iload 0
ifne L3
iconst_0
ireturn
L3:
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method
