.bytecode 50.0
.class public synchronized android/support/v13/app/FragmentCompat
.super java/lang/Object
.inner class static BaseFragmentCompatImpl inner android/support/v13/app/FragmentCompat$BaseFragmentCompatImpl outer android/support/v13/app/FragmentCompat
.inner class static abstract interface FragmentCompatImpl inner android/support/v13/app/FragmentCompat$FragmentCompatImpl outer android/support/v13/app/FragmentCompat
.inner class static ICSFragmentCompatImpl inner android/support/v13/app/FragmentCompat$ICSFragmentCompatImpl outer android/support/v13/app/FragmentCompat
.inner class static ICSMR1FragmentCompatImpl inner android/support/v13/app/FragmentCompat$ICSMR1FragmentCompatImpl outer android/support/v13/app/FragmentCompat

.field static final 'IMPL' Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;

.method static <clinit>()V
getstatic android/os/Build$VERSION/SDK_INT I
bipush 15
if_icmplt L0
new android/support/v13/app/FragmentCompat$ICSMR1FragmentCompatImpl
dup
invokespecial android/support/v13/app/FragmentCompat$ICSMR1FragmentCompatImpl/<init>()V
putstatic android/support/v13/app/FragmentCompat/IMPL Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;
return
L0:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 14
if_icmplt L1
new android/support/v13/app/FragmentCompat$ICSFragmentCompatImpl
dup
invokespecial android/support/v13/app/FragmentCompat$ICSFragmentCompatImpl/<init>()V
putstatic android/support/v13/app/FragmentCompat/IMPL Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;
return
L1:
new android/support/v13/app/FragmentCompat$BaseFragmentCompatImpl
dup
invokespecial android/support/v13/app/FragmentCompat$BaseFragmentCompatImpl/<init>()V
putstatic android/support/v13/app/FragmentCompat/IMPL Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;
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

.method public static setMenuVisibility(Landroid/app/Fragment;Z)V
getstatic android/support/v13/app/FragmentCompat/IMPL Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;
aload 0
iload 1
invokeinterface android/support/v13/app/FragmentCompat$FragmentCompatImpl/setMenuVisibility(Landroid/app/Fragment;Z)V 2
return
.limit locals 2
.limit stack 3
.end method

.method public static setUserVisibleHint(Landroid/app/Fragment;Z)V
getstatic android/support/v13/app/FragmentCompat/IMPL Landroid/support/v13/app/FragmentCompat$FragmentCompatImpl;
aload 0
iload 1
invokeinterface android/support/v13/app/FragmentCompat$FragmentCompatImpl/setUserVisibleHint(Landroid/app/Fragment;Z)V 2
return
.limit locals 2
.limit stack 3
.end method
