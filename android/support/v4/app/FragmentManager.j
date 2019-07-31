.bytecode 50.0
.class public synchronized abstract android/support/v4/app/FragmentManager
.super java/lang/Object
.inner class public static abstract interface BackStackEntry inner android/support/v4/app/FragmentManager$BackStackEntry outer android/support/v4/app/FragmentManager
.inner class public static abstract interface OnBackStackChangedListener inner android/support/v4/app/FragmentManager$OnBackStackChangedListener outer android/support/v4/app/FragmentManager

.field public static final 'POP_BACK_STACK_INCLUSIVE' I = 1


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static enableDebugLogging(Z)V
iload 0
putstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
return
.limit locals 1
.limit stack 1
.end method

.method public abstract addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract beginTransaction()Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract executePendingTransactions()Z
.end method

.method public abstract findFragmentById(I)Landroid/support/v4/app/Fragment;
.end method

.method public abstract findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public abstract getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
.end method

.method public abstract getBackStackEntryCount()I
.end method

.method public abstract getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.end method

.method public openTransaction()Landroid/support/v4/app/FragmentTransaction;
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
invokevirtual android/support/v4/app/FragmentManager/beginTransaction()Landroid/support/v4/app/FragmentTransaction;
areturn
.limit locals 1
.limit stack 1
.end method

.method public abstract popBackStack()V
.end method

.method public abstract popBackStack(II)V
.end method

.method public abstract popBackStack(Ljava/lang/String;I)V
.end method

.method public abstract popBackStackImmediate()Z
.end method

.method public abstract popBackStackImmediate(II)Z
.end method

.method public abstract popBackStackImmediate(Ljava/lang/String;I)Z
.end method

.method public abstract putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
.end method
