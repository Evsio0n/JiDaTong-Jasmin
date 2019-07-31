.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/Storage
.super java/lang/Object
.inner class public static final CheckInfo inner com/nd/rj/common/incrementalupdates/Storage$CheckInfo outer com/nd/rj/common/incrementalupdates/Storage

.field public static final 'AUTO_CHECK_CTRL' Ljava/lang/String; = "auto_check_ctrl"

.field public static final 'CHECK_TIME' Ljava/lang/String; = "check_time"

.field public static final 'FORCE_UPDATE_TIME' Ljava/lang/String; = "force_update_time"

.field public static final 'INVALID_TIME' J = -1L


.field public static final 'PREFS_NAME' Ljava/lang/String; = "UpgradePrefsFile"

.field public static final 'VERSION_CODE' Ljava/lang/String; = "version_code"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static clearCheckInfo(Landroid/content/Context;)V
aload 0
ldc "UpgradePrefsFile"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
aload 0
ldc "version_code"
invokeinterface android/content/SharedPreferences$Editor/remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 1
pop
aload 0
ldc "check_time"
invokeinterface android/content/SharedPreferences$Editor/remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 1
pop
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 1
.limit stack 3
.end method

.method public static getAutoCheckCtrl(Landroid/content/Context;)J
aload 0
ldc "UpgradePrefsFile"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
ldc "auto_check_ctrl"
ldc2_w -1L
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
lreturn
.limit locals 1
.limit stack 4
.end method

.method public static getCheckInfo(Landroid/content/Context;)Lcom/nd/rj/common/incrementalupdates/Storage$CheckInfo;
new com/nd/rj/common/incrementalupdates/Storage$CheckInfo
dup
invokespecial com/nd/rj/common/incrementalupdates/Storage$CheckInfo/<init>()V
astore 1
aload 0
ldc "UpgradePrefsFile"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
astore 0
aload 1
aload 0
ldc "version_code"
iconst_m1
invokeinterface android/content/SharedPreferences/getInt(Ljava/lang/String;I)I 2
putfield com/nd/rj/common/incrementalupdates/Storage$CheckInfo/mVersionCode I
aload 1
aload 0
ldc "check_time"
ldc2_w -1L
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
putfield com/nd/rj/common/incrementalupdates/Storage$CheckInfo/mCheckTime J
aload 1
areturn
.limit locals 2
.limit stack 5
.end method

.method public static getForceUpdateTime(Landroid/content/Context;)J
aload 0
ldc "UpgradePrefsFile"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
ldc "force_update_time"
ldc2_w -1L
invokeinterface android/content/SharedPreferences/getLong(Ljava/lang/String;J)J 3
lreturn
.limit locals 1
.limit stack 4
.end method

.method public static saveAutoCheckCtrl(Landroid/content/Context;J)V
aload 0
ldc "UpgradePrefsFile"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
aload 0
ldc "auto_check_ctrl"
lload 1
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 3
.limit stack 4
.end method

.method public static saveCheckInfo(Landroid/content/Context;Lcom/nd/rj/common/incrementalupdates/Storage$CheckInfo;)V
aload 1
ifnull L0
aload 1
invokevirtual com/nd/rj/common/incrementalupdates/Storage$CheckInfo/isObjectValid()Z
ifne L1
L0:
return
L1:
aload 0
ldc "UpgradePrefsFile"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
aload 0
ldc "version_code"
aload 1
getfield com/nd/rj/common/incrementalupdates/Storage$CheckInfo/mVersionCode I
invokeinterface android/content/SharedPreferences$Editor/putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor; 2
pop
aload 0
ldc "check_time"
aload 1
getfield com/nd/rj/common/incrementalupdates/Storage$CheckInfo/mCheckTime J
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static setForceUpdateTime(Landroid/content/Context;J)V
aload 0
ldc "UpgradePrefsFile"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
aload 0
ldc "force_update_time"
lload 1
invokeinterface android/content/SharedPreferences$Editor/putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor; 3
pop
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
return
.limit locals 3
.limit stack 4
.end method
