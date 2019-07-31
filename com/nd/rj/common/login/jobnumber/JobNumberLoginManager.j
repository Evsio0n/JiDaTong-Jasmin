.bytecode 50.0
.class public final synchronized enum com/nd/rj/common/login/jobnumber/JobNumberLoginManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;

.field public static final enum 'INSTANCE' Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;

.field private 'mCallback' Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;

.field private 'mIsUsing' Ljava/util/concurrent/atomic/AtomicBoolean;

.method static <clinit>()V
new com/nd/rj/common/login/jobnumber/JobNumberLoginManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/rj/common/login/jobnumber/JobNumberLoginManager/<init>(Ljava/lang/String;I)V
putstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
iconst_1
anewarray com/nd/rj/common/login/jobnumber/JobNumberLoginManager
dup
iconst_0
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
aastore
putstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/$VALUES [Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
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
new java/util/concurrent/atomic/AtomicBoolean
dup
iconst_0
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>(Z)V
putfield com/nd/rj/common/login/jobnumber/JobNumberLoginManager/mIsUsing Ljava/util/concurrent/atomic/AtomicBoolean;
return
.limit locals 3
.limit stack 4
.end method

.method private getLoginIntent(Landroid/content/Context;Landroid/os/Bundle;Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)Landroid/content/Intent;
aload 0
aload 3
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/setLoginResultCallback(Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)Z
ifeq L0
new android/content/Intent
dup
aload 1
ldc com/nd/android/u/cloud/activity/LoginActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 2
ifnull L1
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
L1:
aload 1
areturn
L0:
aconst_null
areturn
.limit locals 4
.limit stack 4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
ldc com/nd/rj/common/login/jobnumber/JobNumberLoginManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/rj/common/login/jobnumber/JobNumberLoginManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/$VALUES [Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
invokevirtual [Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public callLoginActivity(Landroid/content/Context;Landroid/os/Bundle;Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)V
aload 0
aload 1
aload 2
aload 3
invokespecial com/nd/rj/common/login/jobnumber/JobNumberLoginManager/getLoginIntent(Landroid/content/Context;Landroid/os/Bundle;Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)Landroid/content/Intent;
astore 2
aload 2
ifnull L0
aload 1
aload 2
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L0:
return
.limit locals 4
.limit stack 4
.end method

.method public callLoginActivityForResult(Landroid/app/Activity;ILandroid/os/Bundle;Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)V
aload 0
aload 1
aload 3
aload 4
invokespecial com/nd/rj/common/login/jobnumber/JobNumberLoginManager/getLoginIntent(Landroid/content/Context;Landroid/os/Bundle;Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)Landroid/content/Intent;
astore 3
aload 3
ifnull L0
aload 1
aload 3
iload 2
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L0:
return
.limit locals 5
.limit stack 4
.end method

.method public getLoginResultCallback()Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberLoginManager/mCallback Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setLoginResultCallback(Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)Z
aload 1
ifnonnull L0
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberLoginManager/mCallback Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;
ifnonnull L1
iconst_1
ireturn
L1:
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberLoginManager/mIsUsing Ljava/util/concurrent/atomic/AtomicBoolean;
iconst_0
invokevirtual java/util/concurrent/atomic/AtomicBoolean/set(Z)V
aload 0
aconst_null
putfield com/nd/rj/common/login/jobnumber/JobNumberLoginManager/mCallback Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;
iconst_1
ireturn
L0:
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberLoginManager/mCallback Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;
ifnonnull L2
aload 0
getfield com/nd/rj/common/login/jobnumber/JobNumberLoginManager/mIsUsing Ljava/util/concurrent/atomic/AtomicBoolean;
iconst_1
invokevirtual java/util/concurrent/atomic/AtomicBoolean/set(Z)V
aload 0
aload 1
putfield com/nd/rj/common/login/jobnumber/JobNumberLoginManager/mCallback Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;
iconst_1
ireturn
L2:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method
