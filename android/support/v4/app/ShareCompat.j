.bytecode 50.0
.class public synchronized android/support/v4/app/ShareCompat
.super java/lang/Object
.inner class public static IntentBuilder inner android/support/v4/app/ShareCompat$IntentBuilder outer android/support/v4/app/ShareCompat
.inner class public static IntentReader inner android/support/v4/app/ShareCompat$IntentReader outer android/support/v4/app/ShareCompat
.inner class static abstract interface ShareCompatImpl inner android/support/v4/app/ShareCompat$ShareCompatImpl outer android/support/v4/app/ShareCompat
.inner class static ShareCompatImplBase inner android/support/v4/app/ShareCompat$ShareCompatImplBase outer android/support/v4/app/ShareCompat
.inner class static ShareCompatImplICS inner android/support/v4/app/ShareCompat$ShareCompatImplICS outer android/support/v4/app/ShareCompat
.inner class static ShareCompatImplJB inner android/support/v4/app/ShareCompat$ShareCompatImplJB outer android/support/v4/app/ShareCompat

.field public static final 'EXTRA_CALLING_ACTIVITY' Ljava/lang/String; = "android.support.v4.app.EXTRA_CALLING_ACTIVITY"

.field public static final 'EXTRA_CALLING_PACKAGE' Ljava/lang/String; = "android.support.v4.app.EXTRA_CALLING_PACKAGE"

.field private static 'IMPL' Landroid/support/v4/app/ShareCompat$ShareCompatImpl;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 16
if_icmplt L0
new android/support/v4/app/ShareCompat$ShareCompatImplJB
dup
invokespecial android/support/v4/app/ShareCompat$ShareCompatImplJB/<init>()V
putstatic android/support/v4/app/ShareCompat/IMPL Landroid/support/v4/app/ShareCompat$ShareCompatImpl;
return
L0:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L1
new android/support/v4/app/ShareCompat$ShareCompatImplICS
dup
invokespecial android/support/v4/app/ShareCompat$ShareCompatImplICS/<init>()V
putstatic android/support/v4/app/ShareCompat/IMPL Landroid/support/v4/app/ShareCompat$ShareCompatImpl;
return
L1:
new android/support/v4/app/ShareCompat$ShareCompatImplBase
dup
invokespecial android/support/v4/app/ShareCompat$ShareCompatImplBase/<init>()V
putstatic android/support/v4/app/ShareCompat/IMPL Landroid/support/v4/app/ShareCompat$ShareCompatImpl;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$000()Landroid/support/v4/app/ShareCompat$ShareCompatImpl;
getstatic android/support/v4/app/ShareCompat/IMPL Landroid/support/v4/app/ShareCompat$ShareCompatImpl;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static configureMenuItem(Landroid/view/Menu;ILandroid/support/v4/app/ShareCompat$IntentBuilder;)V
aload 0
iload 1
invokeinterface android/view/Menu/findItem(I)Landroid/view/MenuItem; 1
astore 0
aload 0
ifnonnull L0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Could not find menu item with id "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " in the supplied menu"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 2
invokestatic android/support/v4/app/ShareCompat/configureMenuItem(Landroid/view/MenuItem;Landroid/support/v4/app/ShareCompat$IntentBuilder;)V
return
.limit locals 3
.limit stack 4
.end method

.method public static configureMenuItem(Landroid/view/MenuItem;Landroid/support/v4/app/ShareCompat$IntentBuilder;)V
getstatic android/support/v4/app/ShareCompat/IMPL Landroid/support/v4/app/ShareCompat$ShareCompatImpl;
aload 0
aload 1
invokeinterface android/support/v4/app/ShareCompat$ShareCompatImpl/configureMenuItem(Landroid/view/MenuItem;Landroid/support/v4/app/ShareCompat$IntentBuilder;)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;
aload 0
invokevirtual android/app/Activity/getCallingActivity()Landroid/content/ComponentName;
astore 2
aload 2
astore 1
aload 2
ifnonnull L0
aload 0
invokevirtual android/app/Activity/getIntent()Landroid/content/Intent;
ldc "android.support.v4.app.EXTRA_CALLING_ACTIVITY"
invokevirtual android/content/Intent/getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
checkcast android/content/ComponentName
astore 1
L0:
aload 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public static getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;
aload 0
invokevirtual android/app/Activity/getCallingPackage()Ljava/lang/String;
astore 2
aload 2
astore 1
aload 2
ifnonnull L0
aload 0
invokevirtual android/app/Activity/getIntent()Landroid/content/Intent;
ldc "android.support.v4.app.EXTRA_CALLING_PACKAGE"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 3
.limit stack 2
.end method
