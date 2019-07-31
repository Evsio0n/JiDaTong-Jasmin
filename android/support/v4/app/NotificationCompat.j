.bytecode 50.0
.class public synchronized android/support/v4/app/NotificationCompat
.super java/lang/Object
.inner class public static Action inner android/support/v4/app/NotificationCompat$Action outer android/support/v4/app/NotificationCompat
.inner class public static BigPictureStyle inner android/support/v4/app/NotificationCompat$BigPictureStyle outer android/support/v4/app/NotificationCompat
.inner class public static BigTextStyle inner android/support/v4/app/NotificationCompat$BigTextStyle outer android/support/v4/app/NotificationCompat
.inner class public static Builder inner android/support/v4/app/NotificationCompat$Builder outer android/support/v4/app/NotificationCompat
.inner class public static InboxStyle inner android/support/v4/app/NotificationCompat$InboxStyle outer android/support/v4/app/NotificationCompat
.inner class static abstract interface NotificationCompatImpl inner android/support/v4/app/NotificationCompat$NotificationCompatImpl outer android/support/v4/app/NotificationCompat
.inner class static NotificationCompatImplBase inner android/support/v4/app/NotificationCompat$NotificationCompatImplBase outer android/support/v4/app/NotificationCompat
.inner class static NotificationCompatImplHoneycomb inner android/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb outer android/support/v4/app/NotificationCompat
.inner class static NotificationCompatImplIceCreamSandwich inner android/support/v4/app/NotificationCompat$NotificationCompatImplIceCreamSandwich outer android/support/v4/app/NotificationCompat
.inner class static NotificationCompatImplJellybean inner android/support/v4/app/NotificationCompat$NotificationCompatImplJellybean outer android/support/v4/app/NotificationCompat
.inner class public static abstract Style inner android/support/v4/app/NotificationCompat$Style outer android/support/v4/app/NotificationCompat

.field public static final 'FLAG_HIGH_PRIORITY' I = 128


.field private static final 'IMPL' Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

.field public static final 'PRIORITY_DEFAULT' I = 0


.field public static final 'PRIORITY_HIGH' I = 1


.field public static final 'PRIORITY_LOW' I = -1


.field public static final 'PRIORITY_MAX' I = 2


.field public static final 'PRIORITY_MIN' I = -2


.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 16
if_icmplt L0
new android/support/v4/app/NotificationCompat$NotificationCompatImplJellybean
dup
invokespecial android/support/v4/app/NotificationCompat$NotificationCompatImplJellybean/<init>()V
putstatic android/support/v4/app/NotificationCompat/IMPL Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
return
L0:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L1
new android/support/v4/app/NotificationCompat$NotificationCompatImplIceCreamSandwich
dup
invokespecial android/support/v4/app/NotificationCompat$NotificationCompatImplIceCreamSandwich/<init>()V
putstatic android/support/v4/app/NotificationCompat/IMPL Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
return
L1:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L2
new android/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb
dup
invokespecial android/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb/<init>()V
putstatic android/support/v4/app/NotificationCompat/IMPL Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
return
L2:
new android/support/v4/app/NotificationCompat$NotificationCompatImplBase
dup
invokespecial android/support/v4/app/NotificationCompat$NotificationCompatImplBase/<init>()V
putstatic android/support/v4/app/NotificationCompat/IMPL Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
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

.method static synthetic access$000()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
getstatic android/support/v4/app/NotificationCompat/IMPL Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
areturn
.limit locals 0
.limit stack 1
.end method
