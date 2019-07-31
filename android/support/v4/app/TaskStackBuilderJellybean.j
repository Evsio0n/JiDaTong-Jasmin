.bytecode 50.0
.class synchronized android/support/v4/app/TaskStackBuilderJellybean
.super java/lang/Object

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getActivitiesPendingIntent(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
aload 0
iload 1
aload 2
iload 3
aload 4
invokestatic android/app/PendingIntent/getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
areturn
.limit locals 5
.limit stack 5
.end method
