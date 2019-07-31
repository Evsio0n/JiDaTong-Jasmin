.bytecode 50.0
.class public final synchronized enum com/product/android/business/switchUser/SwitchUserReloadManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/product/android/business/switchUser/SwitchUserReloadManager;>;"
.inner class private static RefreshTask inner com/product/android/business/switchUser/SwitchUserReloadManager$RefreshTask outer com/product/android/business/switchUser/SwitchUserReloadManager
.inner class public static final enum TabIdentifier inner com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier outer com/product/android/business/switchUser/SwitchUserReloadManager

.field private static final synthetic '$VALUES' [Lcom/product/android/business/switchUser/SwitchUserReloadManager;

.field private static final 'DEFAULT_RELOAD_VALUE' Z = 1


.field public static final enum 'INSTANCE' Lcom/product/android/business/switchUser/SwitchUserReloadManager;

.field private 'mTabReloadData' Ljava/util/Map; signature "Ljava/util/Map<Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;Ljava/lang/Boolean;>;"

.method static <clinit>()V
new com/product/android/business/switchUser/SwitchUserReloadManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/product/android/business/switchUser/SwitchUserReloadManager/<init>(Ljava/lang/String;I)V
putstatic com/product/android/business/switchUser/SwitchUserReloadManager/INSTANCE Lcom/product/android/business/switchUser/SwitchUserReloadManager;
iconst_1
anewarray com/product/android/business/switchUser/SwitchUserReloadManager
dup
iconst_0
getstatic com/product/android/business/switchUser/SwitchUserReloadManager/INSTANCE Lcom/product/android/business/switchUser/SwitchUserReloadManager;
aastore
putstatic com/product/android/business/switchUser/SwitchUserReloadManager/$VALUES [Lcom/product/android/business/switchUser/SwitchUserReloadManager;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/product/android/business/switchUser/SwitchUserReloadManager/mTabReloadData Ljava/util/Map;
aload 0
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager/setAllReloadFlag()V
return
.limit locals 3
.limit stack 3
.end method

.method public static tabActivityCheckUserSwitch(Landroid/app/Activity;Lcom/product/android/business/switchUser/TabUIRefresh;)V
aload 1
invokeinterface com/product/android/business/switchUser/TabUIRefresh/getTabIdentifier()Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier; 0
astore 2
aload 2
ifnull L0
getstatic com/product/android/business/switchUser/SwitchUserReloadManager/INSTANCE Lcom/product/android/business/switchUser/SwitchUserReloadManager;
aload 2
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager/needReload(Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;)Z
ifeq L0
aload 1
invokeinterface com/product/android/business/switchUser/TabUIRefresh/clearOldAccountUI()V 0
new com/product/android/business/switchUser/SwitchUserReloadManager$RefreshTask
dup
aload 0
invokespecial com/product/android/business/switchUser/SwitchUserReloadManager$RefreshTask/<init>(Landroid/app/Activity;)V
iconst_1
anewarray com/product/android/business/switchUser/TabUIRefresh
dup
iconst_0
aload 1
aastore
invokevirtual com/product/android/business/switchUser/SwitchUserReloadManager$RefreshTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdCacheAsyncTask;
pop
L0:
return
.limit locals 3
.limit stack 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/product/android/business/switchUser/SwitchUserReloadManager;
ldc com/product/android/business/switchUser/SwitchUserReloadManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/product/android/business/switchUser/SwitchUserReloadManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/product/android/business/switchUser/SwitchUserReloadManager;
getstatic com/product/android/business/switchUser/SwitchUserReloadManager/$VALUES [Lcom/product/android/business/switchUser/SwitchUserReloadManager;
invokevirtual [Lcom/product/android/business/switchUser/SwitchUserReloadManager;/clone()Ljava/lang/Object;
checkcast [Lcom/product/android/business/switchUser/SwitchUserReloadManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public needReload(Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;)Z
aload 0
getfield com/product/android/business/switchUser/SwitchUserReloadManager/mTabReloadData Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/Boolean
astore 2
aload 2
ifnonnull L0
aload 0
getfield com/product/android/business/switchUser/SwitchUserReloadManager/mTabReloadData Ljava/util/Map;
aload 1
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iconst_1
ireturn
L0:
aload 2
invokevirtual java/lang/Boolean/booleanValue()Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method public setAllReloadFlag()V
invokestatic com/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier/values()[Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;
astore 3
aload 3
arraylength
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 3
iload 1
aaload
astore 4
aload 0
getfield com/product/android/business/switchUser/SwitchUserReloadManager/mTabReloadData Ljava/util/Map;
aload 4
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 5
.limit stack 3
.end method

.method public setReloadFlag(Lcom/product/android/business/switchUser/SwitchUserReloadManager$TabIdentifier;Z)V
aload 0
getfield com/product/android/business/switchUser/SwitchUserReloadManager/mTabReloadData Ljava/util/Map;
aload 1
iload 2
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
return
.limit locals 3
.limit stack 3
.end method
