.bytecode 50.0
.class public synchronized android/support/v4/view/ViewGroupCompat
.super java/lang/Object
.inner class static ViewGroupCompatIcsImpl inner android/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl outer android/support/v4/view/ViewGroupCompat
.inner class static abstract interface ViewGroupCompatImpl inner android/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl outer android/support/v4/view/ViewGroupCompat
.inner class static ViewGroupCompatStubImpl inner android/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl outer android/support/v4/view/ViewGroupCompat

.field static final 'IMPL' Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L0
new android/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl
dup
invokespecial android/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl/<init>()V
putstatic android/support/v4/view/ViewGroupCompat/IMPL Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;
return
L0:
new android/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl
dup
invokespecial android/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl/<init>()V
putstatic android/support/v4/view/ViewGroupCompat/IMPL Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;
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

.method public static onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
getstatic android/support/v4/view/ViewGroupCompat/IMPL Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;
aload 0
aload 1
aload 2
invokeinterface android/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl/onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z 3
ireturn
.limit locals 3
.limit stack 4
.end method
