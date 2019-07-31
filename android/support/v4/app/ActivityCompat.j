.bytecode 50.0
.class public synchronized android/support/v4/app/ActivityCompat
.super android/support/v4/content/ContextCompat

.method public <init>()V
aload 0
invokespecial android/support/v4/content/ContextCompat/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
aload 0
invokestatic android/support/v4/app/ActivityCompatHoneycomb/invalidateOptionsMenu(Landroid/app/Activity;)V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method
