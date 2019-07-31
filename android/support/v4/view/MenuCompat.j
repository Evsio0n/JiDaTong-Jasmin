.bytecode 50.0
.class public synchronized android/support/v4/view/MenuCompat
.super java/lang/Object
.inner class static BaseMenuVersionImpl inner android/support/v4/view/MenuCompat$BaseMenuVersionImpl outer android/support/v4/view/MenuCompat
.inner class static HoneycombMenuVersionImpl inner android/support/v4/view/MenuCompat$HoneycombMenuVersionImpl outer android/support/v4/view/MenuCompat
.inner class static abstract interface MenuVersionImpl inner android/support/v4/view/MenuCompat$MenuVersionImpl outer android/support/v4/view/MenuCompat

.field static final 'IMPL' Landroid/support/v4/view/MenuCompat$MenuVersionImpl;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
new android/support/v4/view/MenuCompat$HoneycombMenuVersionImpl
dup
invokespecial android/support/v4/view/MenuCompat$HoneycombMenuVersionImpl/<init>()V
putstatic android/support/v4/view/MenuCompat/IMPL Landroid/support/v4/view/MenuCompat$MenuVersionImpl;
return
L0:
new android/support/v4/view/MenuCompat$BaseMenuVersionImpl
dup
invokespecial android/support/v4/view/MenuCompat$BaseMenuVersionImpl/<init>()V
putstatic android/support/v4/view/MenuCompat/IMPL Landroid/support/v4/view/MenuCompat$MenuVersionImpl;
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

.method public static setShowAsAction(Landroid/view/MenuItem;I)Z
getstatic android/support/v4/view/MenuCompat/IMPL Landroid/support/v4/view/MenuCompat$MenuVersionImpl;
aload 0
iload 1
invokeinterface android/support/v4/view/MenuCompat$MenuVersionImpl/setShowAsAction(Landroid/view/MenuItem;I)Z 2
ireturn
.limit locals 2
.limit stack 3
.end method
