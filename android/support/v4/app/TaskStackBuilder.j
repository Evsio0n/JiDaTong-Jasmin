.bytecode 50.0
.class public synchronized android/support/v4/app/TaskStackBuilder
.super java/lang/Object
.implements java/lang/Iterable
.signature "Ljava/lang/Object;Ljava/lang/Iterable<Landroid/content/Intent;>;"
.inner class static abstract interface TaskStackBuilderImpl inner android/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl outer android/support/v4/app/TaskStackBuilder
.inner class static TaskStackBuilderImplBase inner android/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase outer android/support/v4/app/TaskStackBuilder
.inner class static TaskStackBuilderImplHoneycomb inner android/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb outer android/support/v4/app/TaskStackBuilder
.inner class static TaskStackBuilderImplJellybean inner android/support/v4/app/TaskStackBuilder$TaskStackBuilderImplJellybean outer android/support/v4/app/TaskStackBuilder

.field private static final 'IMPL' Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;

.field private static final 'TAG' Ljava/lang/String; = "TaskStackBuilder"

.field private final 'mIntents' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/content/Intent;>;"

.field private final 'mSourceContext' Landroid/content/Context;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
new android/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb
dup
invokespecial android/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb/<init>()V
putstatic android/support/v4/app/TaskStackBuilder/IMPL Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;
return
L0:
new android/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase
dup
invokespecial android/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase/<init>()V
putstatic android/support/v4/app/TaskStackBuilder/IMPL Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
aload 0
aload 1
putfield android/support/v4/app/TaskStackBuilder/mSourceContext Landroid/content/Context;
return
.limit locals 2
.limit stack 3
.end method

.method public static create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;
new android/support/v4/app/TaskStackBuilder
dup
aload 0
invokespecial android/support/v4/app/TaskStackBuilder/<init>(Landroid/content/Context;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public static from(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;
aload 0
invokestatic android/support/v4/app/TaskStackBuilder/create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;
areturn
.limit locals 1
.limit stack 1
.end method

.method public addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
aload 1
invokevirtual android/content/Intent/getComponent()Landroid/content/ComponentName;
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
aload 1
aload 0
getfield android/support/v4/app/TaskStackBuilder/mSourceContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
invokevirtual android/content/Intent/resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
astore 2
L0:
aload 2
ifnull L1
aload 0
aload 2
invokevirtual android/support/v4/app/TaskStackBuilder/addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;
pop
L1:
aload 0
aload 1
invokevirtual android/support/v4/app/TaskStackBuilder/addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
pop
aload 0
areturn
.limit locals 4
.limit stack 2
.end method

.method public addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;
aload 1
invokestatic android/support/v4/app/NavUtils/getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
astore 3
aload 3
ifnull L0
aload 3
invokevirtual android/content/Intent/getComponent()Landroid/content/ComponentName;
astore 2
aload 2
astore 1
aload 2
ifnonnull L1
aload 3
aload 0
getfield android/support/v4/app/TaskStackBuilder/mSourceContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
invokevirtual android/content/Intent/resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
astore 1
L1:
aload 0
aload 1
invokevirtual android/support/v4/app/TaskStackBuilder/addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;
pop
aload 0
aload 3
invokevirtual android/support/v4/app/TaskStackBuilder/addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
pop
L0:
aload 0
areturn
.limit locals 4
.limit stack 2
.end method

.method public addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
L0:
aload 0
getfield android/support/v4/app/TaskStackBuilder/mSourceContext Landroid/content/Context;
aload 1
invokestatic android/support/v4/app/NavUtils/getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
astore 1
L1:
aload 1
ifnull L5
L3:
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
iload 2
aload 1
invokevirtual java/util/ArrayList/add(ILjava/lang/Object;)V
aload 0
getfield android/support/v4/app/TaskStackBuilder/mSourceContext Landroid/content/Context;
aload 1
invokevirtual android/content/Intent/getComponent()Landroid/content/ComponentName;
invokestatic android/support/v4/app/NavUtils/getParentActivityIntent(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
astore 1
L4:
goto L1
L2:
astore 1
ldc "TaskStackBuilder"
ldc "Bad ComponentName while traversing activity parent metadata"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/IllegalArgumentException
dup
aload 1
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/Throwable;)V
athrow
L5:
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;
.signature "(Ljava/lang/Class<*>;)Landroid/support/v4/app/TaskStackBuilder;"
aload 0
new android/content/ComponentName
dup
aload 0
getfield android/support/v4/app/TaskStackBuilder/mSourceContext Landroid/content/Context;
aload 1
invokespecial android/content/ComponentName/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/support/v4/app/TaskStackBuilder/addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;
areturn
.limit locals 2
.limit stack 5
.end method

.method public editIntentAt(I)Landroid/content/Intent;
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/content/Intent
areturn
.limit locals 2
.limit stack 2
.end method

.method public getIntent(I)Landroid/content/Intent;
aload 0
iload 1
invokevirtual android/support/v4/app/TaskStackBuilder/editIntentAt(I)Landroid/content/Intent;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getIntentCount()I
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIntents()[Landroid/content/Intent;
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
anewarray android/content/Intent
astore 2
aload 2
arraylength
ifne L0
L1:
aload 2
areturn
L0:
aload 2
iconst_0
new android/content/Intent
dup
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/content/Intent
invokespecial android/content/Intent/<init>(Landroid/content/Intent;)V
ldc_w 268484608
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
aastore
iconst_1
istore 1
L2:
iload 1
aload 2
arraylength
if_icmpge L1
aload 2
iload 1
new android/content/Intent
dup
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/content/Intent
invokespecial android/content/Intent/<init>(Landroid/content/Intent;)V
aastore
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 3
.limit stack 6
.end method

.method public getPendingIntent(II)Landroid/app/PendingIntent;
aload 0
iload 1
iload 2
aconst_null
invokevirtual android/support/v4/app/TaskStackBuilder/getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "No intents added to TaskStackBuilder; cannot getPendingIntent"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
anewarray android/content/Intent
invokevirtual java/util/ArrayList/toArray([Ljava/lang/Object;)[Ljava/lang/Object;
checkcast [Landroid/content/Intent;
astore 4
aload 4
iconst_0
new android/content/Intent
dup
aload 4
iconst_0
aaload
invokespecial android/content/Intent/<init>(Landroid/content/Intent;)V
ldc_w 268484608
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
aastore
getstatic android/support/v4/app/TaskStackBuilder/IMPL Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;
aload 0
getfield android/support/v4/app/TaskStackBuilder/mSourceContext Landroid/content/Context;
aload 4
iload 1
iload 2
aload 3
invokeinterface android/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl/getPendingIntent(Landroid/content/Context;[Landroid/content/Intent;IILandroid/os/Bundle;)Landroid/app/PendingIntent; 5
areturn
.limit locals 5
.limit stack 6
.end method

.method public iterator()Ljava/util/Iterator;
.signature "()Ljava/util/Iterator<Landroid/content/Intent;>;"
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
areturn
.limit locals 1
.limit stack 1
.end method

.method public startActivities()V
aload 0
aconst_null
invokevirtual android/support/v4/app/TaskStackBuilder/startActivities(Landroid/os/Bundle;)V
return
.limit locals 1
.limit stack 2
.end method

.method public startActivities(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/isEmpty()Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "No intents added to TaskStackBuilder; cannot startActivities"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
aload 0
getfield android/support/v4/app/TaskStackBuilder/mIntents Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
anewarray android/content/Intent
invokevirtual java/util/ArrayList/toArray([Ljava/lang/Object;)[Ljava/lang/Object;
checkcast [Landroid/content/Intent;
astore 2
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
aload 0
getfield android/support/v4/app/TaskStackBuilder/mSourceContext Landroid/content/Context;
aload 2
aload 1
invokestatic android/support/v4/content/ContextCompat/startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
ifne L1
new android/content/Intent
dup
aload 2
aload 2
arraylength
iconst_1
isub
aaload
invokespecial android/content/Intent/<init>(Landroid/content/Intent;)V
astore 1
aload 1
ldc_w 268435456
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
aload 0
getfield android/support/v4/app/TaskStackBuilder/mSourceContext Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L1:
return
.limit locals 3
.limit stack 6
.end method
