.bytecode 50.0
.class synchronized android/support/v4/content/IntentCompat$IntentCompatImplBase
.super java/lang/Object
.implements android/support/v4/content/IntentCompat$IntentCompatImpl
.inner class static IntentCompatImplBase inner android/support/v4/content/IntentCompat$IntentCompatImplBase outer android/support/v4/content/IntentCompat

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
new android/content/Intent
dup
ldc "android.intent.action.MAIN"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 2
aload 2
aload 1
invokevirtual android/content/Intent/setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
pop
aload 2
ldc "android.intent.category.LAUNCHER"
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
new android/content/Intent
dup
aload 1
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
aload 2
invokevirtual android/content/Intent/addCategory(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
areturn
.limit locals 3
.limit stack 3
.end method

.method public makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
aload 0
aload 1
invokevirtual android/support/v4/content/IntentCompat$IntentCompatImplBase/makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
astore 1
aload 1
ldc_w 268468224
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
aload 1
areturn
.limit locals 2
.limit stack 2
.end method
