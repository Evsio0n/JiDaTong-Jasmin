.bytecode 50.0
.class synchronized android/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase
.super java/lang/Object
.implements android/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl
.inner class static TaskStackBuilderImplBase inner android/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase outer android/support/v4/app/TaskStackBuilder

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getPendingIntent(Landroid/content/Context;[Landroid/content/Intent;IILandroid/os/Bundle;)Landroid/app/PendingIntent;
new android/content/Intent
dup
aload 2
aload 2
arraylength
iconst_1
isub
aaload
invokespecial android/content/Intent/<init>(Landroid/content/Intent;)V
astore 2
aload 2
ldc_w 268435456
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
aload 1
iload 3
aload 2
iload 4
invokestatic android/app/PendingIntent/getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
areturn
.limit locals 6
.limit stack 5
.end method
