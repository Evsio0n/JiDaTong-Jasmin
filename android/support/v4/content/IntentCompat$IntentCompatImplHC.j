.bytecode 50.0
.class synchronized android/support/v4/content/IntentCompat$IntentCompatImplHC
.super android/support/v4/content/IntentCompat$IntentCompatImplBase
.inner class static IntentCompatImplHC inner android/support/v4/content/IntentCompat$IntentCompatImplHC outer android/support/v4/content/IntentCompat

.method <init>()V
aload 0
invokespecial android/support/v4/content/IntentCompat$IntentCompatImplBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
aload 1
invokestatic android/support/v4/content/IntentCompatHoneycomb/makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
areturn
.limit locals 2
.limit stack 1
.end method

.method public makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
aload 1
invokestatic android/support/v4/content/IntentCompatHoneycomb/makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
areturn
.limit locals 2
.limit stack 1
.end method
