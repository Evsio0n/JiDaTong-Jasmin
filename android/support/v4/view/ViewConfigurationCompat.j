.bytecode 50.0
.class public synchronized android/support/v4/view/ViewConfigurationCompat
.super java/lang/Object
.inner class static BaseViewConfigurationVersionImpl inner android/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl outer android/support/v4/view/ViewConfigurationCompat
.inner class static FroyoViewConfigurationVersionImpl inner android/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl outer android/support/v4/view/ViewConfigurationCompat
.inner class static abstract interface ViewConfigurationVersionImpl inner android/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl outer android/support/v4/view/ViewConfigurationCompat

.field static final 'IMPL' Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
new android/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl
dup
invokespecial android/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl/<init>()V
putstatic android/support/v4/view/ViewConfigurationCompat/IMPL Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;
return
L0:
new android/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl
dup
invokespecial android/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl/<init>()V
putstatic android/support/v4/view/ViewConfigurationCompat/IMPL Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;
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

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
getstatic android/support/v4/view/ViewConfigurationCompat/IMPL Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;
aload 0
invokeinterface android/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl/getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I 1
ireturn
.limit locals 1
.limit stack 2
.end method
