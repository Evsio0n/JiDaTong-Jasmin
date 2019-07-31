.bytecode 50.0
.class public synchronized abstract android/support/v4/widget/SearchViewCompat$OnCloseListenerCompat
.super java/lang/Object
.inner class public static abstract OnCloseListenerCompat inner android/support/v4/widget/SearchViewCompat$OnCloseListenerCompat outer android/support/v4/widget/SearchViewCompat

.field final 'mListener' Ljava/lang/Object;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
invokestatic android/support/v4/widget/SearchViewCompat/access$000()Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;
aload 0
invokeinterface android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl/newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;)Ljava/lang/Object; 1
putfield android/support/v4/widget/SearchViewCompat$OnCloseListenerCompat/mListener Ljava/lang/Object;
return
.limit locals 1
.limit stack 3
.end method

.method public onClose()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method
