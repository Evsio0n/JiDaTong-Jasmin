.bytecode 50.0
.class synchronized android/support/v4/app/NavUtils$NavUtilsImplJB
.super android/support/v4/app/NavUtils$NavUtilsImplBase
.inner class static NavUtilsImplJB inner android/support/v4/app/NavUtils$NavUtilsImplJB outer android/support/v4/app/NavUtils

.method <init>()V
aload 0
invokespecial android/support/v4/app/NavUtils$NavUtilsImplBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
aload 1
invokestatic android/support/v4/app/NavUtilsJB/getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
aload 0
aload 1
invokevirtual android/support/v4/app/NavUtils$NavUtilsImplJB/superGetParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
astore 2
L0:
aload 2
areturn
.limit locals 4
.limit stack 2
.end method

.method public getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
aload 2
invokestatic android/support/v4/app/NavUtilsJB/getParentActivityName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
astore 4
aload 4
astore 3
aload 4
ifnonnull L0
aload 0
aload 1
aload 2
invokespecial android/support/v4/app/NavUtils$NavUtilsImplBase/getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
astore 3
L0:
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
aload 1
aload 2
invokestatic android/support/v4/app/NavUtilsJB/navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 2
.end method

.method public shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
aload 1
aload 2
invokestatic android/support/v4/app/NavUtilsJB/shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
ireturn
.limit locals 3
.limit stack 2
.end method

.method superGetParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
aload 0
aload 1
invokespecial android/support/v4/app/NavUtils$NavUtilsImplBase/getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
areturn
.limit locals 2
.limit stack 2
.end method
