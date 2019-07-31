.bytecode 50.0
.class public final synchronized android/support/v4/content/Loader$ForceLoadContentObserver
.super android/database/ContentObserver
.inner class public final ForceLoadContentObserver inner android/support/v4/content/Loader$ForceLoadContentObserver outer android/support/v4/content/Loader

.field final synthetic 'this$0' Landroid/support/v4/content/Loader;

.method public <init>(Landroid/support/v4/content/Loader;)V
aload 0
aload 1
putfield android/support/v4/content/Loader$ForceLoadContentObserver/this$0 Landroid/support/v4/content/Loader;
aload 0
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
invokespecial android/database/ContentObserver/<init>(Landroid/os/Handler;)V
return
.limit locals 2
.limit stack 3
.end method

.method public deliverSelfNotifications()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onChange(Z)V
aload 0
getfield android/support/v4/content/Loader$ForceLoadContentObserver/this$0 Landroid/support/v4/content/Loader;
invokevirtual android/support/v4/content/Loader/onContentChanged()V
return
.limit locals 2
.limit stack 1
.end method
