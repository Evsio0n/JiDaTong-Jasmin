.bytecode 50.0
.class synchronized android/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb
.super java/lang/Object
.implements android/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl
.inner class static TaskStackBuilderImplHoneycomb inner android/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb outer android/support/v4/app/TaskStackBuilder

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getPendingIntent(Landroid/content/Context;[Landroid/content/Intent;IILandroid/os/Bundle;)Landroid/app/PendingIntent;
aload 2
iconst_0
new android/content/Intent
dup
aload 2
iconst_0
aaload
invokespecial android/content/Intent/<init>(Landroid/content/Intent;)V
ldc_w 268484608
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
aastore
aload 1
iload 3
aload 2
iload 4
invokestatic android/support/v4/app/TaskStackBuilderHoneycomb/getActivitiesPendingIntent(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
areturn
.limit locals 6
.limit stack 6
.end method
