.bytecode 50.0
.class public synchronized android/support/v4/content/IntentCompat
.super java/lang/Object
.inner class static abstract interface IntentCompatImpl inner android/support/v4/content/IntentCompat$IntentCompatImpl outer android/support/v4/content/IntentCompat
.inner class static IntentCompatImplBase inner android/support/v4/content/IntentCompat$IntentCompatImplBase outer android/support/v4/content/IntentCompat
.inner class static IntentCompatImplHC inner android/support/v4/content/IntentCompat$IntentCompatImplHC outer android/support/v4/content/IntentCompat
.inner class static IntentCompatImplIcsMr1 inner android/support/v4/content/IntentCompat$IntentCompatImplIcsMr1 outer android/support/v4/content/IntentCompat

.field public static final 'ACTION_EXTERNAL_APPLICATIONS_AVAILABLE' Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final 'ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE' Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final 'EXTRA_CHANGED_PACKAGE_LIST' Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final 'EXTRA_CHANGED_UID_LIST' Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final 'EXTRA_HTML_TEXT' Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final 'FLAG_ACTIVITY_CLEAR_TASK' I = 32768


.field public static final 'FLAG_ACTIVITY_TASK_ON_HOME' I = 16384


.field private static final 'IMPL' Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
istore 0
iload 0
bipush 15
if_icmplt L0
new android/support/v4/content/IntentCompat$IntentCompatImplIcsMr1
dup
invokespecial android/support/v4/content/IntentCompat$IntentCompatImplIcsMr1/<init>()V
putstatic android/support/v4/content/IntentCompat/IMPL Landroid/support/v4/content/IntentCompat$IntentCompatImpl;
return
L0:
iload 0
bipush 11
if_icmplt L1
new android/support/v4/content/IntentCompat$IntentCompatImplHC
dup
invokespecial android/support/v4/content/IntentCompat$IntentCompatImplHC/<init>()V
putstatic android/support/v4/content/IntentCompat/IMPL Landroid/support/v4/content/IntentCompat$IntentCompatImpl;
return
L1:
new android/support/v4/content/IntentCompat$IntentCompatImplBase
dup
invokespecial android/support/v4/content/IntentCompat$IntentCompatImplBase/<init>()V
putstatic android/support/v4/content/IntentCompat/IMPL Landroid/support/v4/content/IntentCompat$IntentCompatImpl;
return
.limit locals 1
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
getstatic android/support/v4/content/IntentCompat/IMPL Landroid/support/v4/content/IntentCompat$IntentCompatImpl;
aload 0
invokeinterface android/support/v4/content/IntentCompat$IntentCompatImpl/makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent; 1
areturn
.limit locals 1
.limit stack 2
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
getstatic android/support/v4/content/IntentCompat/IMPL Landroid/support/v4/content/IntentCompat$IntentCompatImpl;
aload 0
aload 1
invokeinterface android/support/v4/content/IntentCompat$IntentCompatImpl/makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent; 2
areturn
.limit locals 2
.limit stack 3
.end method

.method public static makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
getstatic android/support/v4/content/IntentCompat/IMPL Landroid/support/v4/content/IntentCompat$IntentCompatImpl;
aload 0
invokeinterface android/support/v4/content/IntentCompat$IntentCompatImpl/makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent; 1
areturn
.limit locals 1
.limit stack 2
.end method
