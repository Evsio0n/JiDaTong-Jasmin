.bytecode 50.0
.class public synchronized android/support/v4/app/TaskStackBuilderHoneycomb
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getActivitiesPendingIntent(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
aload 0
iload 1
aload 2
iload 3
invokestatic android/app/PendingIntent/getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
areturn
.limit locals 4
.limit stack 4
.end method
