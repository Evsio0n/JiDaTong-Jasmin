.bytecode 50.0
.class public synchronized android/support/v4/app/NavUtils
.super java/lang/Object
.inner class static abstract interface NavUtilsImpl inner android/support/v4/app/NavUtils$NavUtilsImpl outer android/support/v4/app/NavUtils
.inner class static NavUtilsImplBase inner android/support/v4/app/NavUtils$NavUtilsImplBase outer android/support/v4/app/NavUtils
.inner class static NavUtilsImplJB inner android/support/v4/app/NavUtils$NavUtilsImplJB outer android/support/v4/app/NavUtils

.field private static final 'IMPL' Landroid/support/v4/app/NavUtils$NavUtilsImpl;

.field public static final 'PARENT_ACTIVITY' Ljava/lang/String; = "android.support.PARENT_ACTIVITY"

.field private static final 'TAG' Ljava/lang/String; = "NavUtils"

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 16
if_icmplt L0
new android/support/v4/app/NavUtils$NavUtilsImplJB
dup
invokespecial android/support/v4/app/NavUtils$NavUtilsImplJB/<init>()V
putstatic android/support/v4/app/NavUtils/IMPL Landroid/support/v4/app/NavUtils$NavUtilsImpl;
return
L0:
new android/support/v4/app/NavUtils$NavUtilsImplBase
dup
invokespecial android/support/v4/app/NavUtils$NavUtilsImplBase/<init>()V
putstatic android/support/v4/app/NavUtils/IMPL Landroid/support/v4/app/NavUtils$NavUtilsImpl;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
getstatic android/support/v4/app/NavUtils/IMPL Landroid/support/v4/app/NavUtils$NavUtilsImpl;
aload 0
invokeinterface android/support/v4/app/NavUtils$NavUtilsImpl/getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent; 1
areturn
.limit locals 1
.limit stack 2
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
.throws android/content/pm/PackageManager$NameNotFoundException
aload 0
aload 1
invokestatic android/support/v4/app/NavUtils/getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
astore 2
aload 2
ifnonnull L0
aconst_null
areturn
L0:
new android/content/ComponentName
dup
aload 1
invokevirtual android/content/ComponentName/getPackageName()Ljava/lang/String;
aload 2
invokespecial android/content/ComponentName/<init>(Ljava/lang/String;Ljava/lang/String;)V
astore 1
aload 0
aload 1
invokestatic android/support/v4/app/NavUtils/getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
ifnonnull L1
aload 1
invokestatic android/support/v4/content/IntentCompat/makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
areturn
L1:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
aload 1
invokevirtual android/content/Intent/setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
areturn
.limit locals 3
.limit stack 4
.end method

.method public static getParentActivityIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
.signature "(Landroid/content/Context;Ljava/lang/Class<*>;)Landroid/content/Intent;"
.throws android/content/pm/PackageManager$NameNotFoundException
aload 0
new android/content/ComponentName
dup
aload 0
aload 1
invokespecial android/content/ComponentName/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokestatic android/support/v4/app/NavUtils/getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
astore 1
aload 1
ifnonnull L0
aconst_null
areturn
L0:
new android/content/ComponentName
dup
aload 0
aload 1
invokespecial android/content/ComponentName/<init>(Landroid/content/Context;Ljava/lang/String;)V
astore 1
aload 0
aload 1
invokestatic android/support/v4/app/NavUtils/getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
ifnonnull L1
aload 1
invokestatic android/support/v4/content/IntentCompat/makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
areturn
L1:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
aload 1
invokevirtual android/content/Intent/setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
areturn
.limit locals 2
.limit stack 5
.end method

.method public static getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
L0:
aload 0
aload 0
invokevirtual android/app/Activity/getComponentName()Landroid/content/ComponentName;
invokestatic android/support/v4/app/NavUtils/getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
astore 0
L1:
aload 0
areturn
L2:
astore 0
new java/lang/IllegalArgumentException
dup
aload 0
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/Throwable;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public static getParentActivityName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
.throws android/content/pm/PackageManager$NameNotFoundException
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 1
sipush 128
invokevirtual android/content/pm/PackageManager/getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
astore 1
getstatic android/support/v4/app/NavUtils/IMPL Landroid/support/v4/app/NavUtils$NavUtilsImpl;
aload 0
aload 1
invokeinterface android/support/v4/app/NavUtils$NavUtilsImpl/getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String; 2
areturn
.limit locals 2
.limit stack 3
.end method

.method public static navigateUpFromSameTask(Landroid/app/Activity;)V
aload 0
invokestatic android/support/v4/app/NavUtils/getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
astore 1
aload 1
ifnonnull L0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Activity "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " does not have a parent activity name specified."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data> "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " element in your manifest?)"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
invokestatic android/support/v4/app/NavUtils/navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 4
.end method

.method public static navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
getstatic android/support/v4/app/NavUtils/IMPL Landroid/support/v4/app/NavUtils$NavUtilsImpl;
aload 0
aload 1
invokeinterface android/support/v4/app/NavUtils$NavUtilsImpl/navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
getstatic android/support/v4/app/NavUtils/IMPL Landroid/support/v4/app/NavUtils$NavUtilsImpl;
aload 0
aload 1
invokeinterface android/support/v4/app/NavUtils$NavUtilsImpl/shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z 2
ireturn
.limit locals 2
.limit stack 3
.end method
