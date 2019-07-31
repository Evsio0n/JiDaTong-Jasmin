.bytecode 50.0
.class synchronized android/support/v4/app/NavUtils$NavUtilsImplBase
.super java/lang/Object
.implements android/support/v4/app/NavUtils$NavUtilsImpl
.inner class static NavUtilsImplBase inner android/support/v4/app/NavUtils$NavUtilsImplBase outer android/support/v4/app/NavUtils

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
aload 1
invokestatic android/support/v4/app/NavUtils/getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;
astore 2
aload 2
ifnonnull L5
aconst_null
areturn
L5:
new android/content/ComponentName
dup
aload 1
aload 2
invokespecial android/content/ComponentName/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 3
L0:
aload 1
aload 3
invokestatic android/support/v4/app/NavUtils/getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
ifnonnull L3
aload 3
invokestatic android/support/v4/content/IntentCompat/makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
astore 1
L1:
goto L6
L3:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
aload 3
invokevirtual android/content/Intent/setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
astore 1
L4:
goto L6
L2:
astore 1
ldc "NavUtils"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getParentActivityIntent: bad parentActivityName '"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "' in manifest"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L6:
aload 1
areturn
.limit locals 4
.limit stack 4
.end method

.method public getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
aload 2
getfield android/content/pm/ActivityInfo/metaData Landroid/os/Bundle;
ifnonnull L0
aconst_null
astore 2
L1:
aload 2
areturn
L0:
aload 2
getfield android/content/pm/ActivityInfo/metaData Landroid/os/Bundle;
ldc "android.support.PARENT_ACTIVITY"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
ifnonnull L2
aconst_null
areturn
L2:
aload 3
astore 2
aload 3
iconst_0
invokevirtual java/lang/String/charAt(I)C
bipush 46
if_icmpne L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 2
.end method

.method public navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
aload 2
ldc_w 67108864
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
aload 1
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
aload 1
invokevirtual android/app/Activity/finish()V
return
.limit locals 3
.limit stack 2
.end method

.method public shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
aload 1
invokevirtual android/app/Activity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
astore 1
aload 1
ifnull L0
aload 1
ldc "android.intent.action.MAIN"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
