.bytecode 50.0
.class public synchronized abstract android/support/v4/app/FragmentTransaction
.super java/lang/Object

.field public static final 'TRANSIT_ENTER_MASK' I = 4096


.field public static final 'TRANSIT_EXIT_MASK' I = 8192


.field public static final 'TRANSIT_FRAGMENT_CLOSE' I = 8194


.field public static final 'TRANSIT_FRAGMENT_FADE' I = 4099


.field public static final 'TRANSIT_FRAGMENT_OPEN' I = 4097


.field public static final 'TRANSIT_NONE' I = 0


.field public static final 'TRANSIT_UNSET' I = -1


.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public abstract add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract commit()I
.end method

.method public abstract commitAllowingStateLoss()I
.end method

.method public abstract detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract isAddToBackStackAllowed()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract setTransition(I)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
.end method

.method public abstract show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.end method
