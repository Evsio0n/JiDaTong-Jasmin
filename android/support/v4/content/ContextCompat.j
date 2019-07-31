.bytecode 50.0
.class public synchronized android/support/v4/content/ContextCompat
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
aload 0
aload 1
aconst_null
invokestatic android/support/v4/content/ContextCompat/startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
ireturn
.limit locals 2
.limit stack 3
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
getstatic android/os/Build$VERSION/SDK_INT I
istore 3
iload 3
bipush 16
if_icmplt L0
aload 0
aload 1
aload 2
invokestatic android/support/v4/content/ContextCompatJellybean/startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V
iconst_1
ireturn
L0:
iload 3
bipush 11
if_icmplt L1
aload 0
aload 1
invokestatic android/support/v4/content/ContextCompatHoneycomb/startActivities(Landroid/content/Context;[Landroid/content/Intent;)V
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 4
.limit stack 3
.end method
