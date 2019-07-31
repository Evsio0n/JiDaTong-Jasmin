.bytecode 50.0
.class synchronized android/support/v4/app/NavUtilsJB
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
aload 0
invokevirtual android/app/Activity/getParentActivityIntent()Landroid/content/Intent;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static getParentActivityName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
aload 0
getfield android/content/pm/ActivityInfo/parentActivityName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public static navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
aload 0
aload 1
invokevirtual android/app/Activity/navigateUpTo(Landroid/content/Intent;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public static shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
aload 0
aload 1
invokevirtual android/app/Activity/shouldUpRecreateTask(Landroid/content/Intent;)Z
ireturn
.limit locals 2
.limit stack 2
.end method
