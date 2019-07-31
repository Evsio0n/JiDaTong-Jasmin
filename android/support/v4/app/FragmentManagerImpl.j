.bytecode 50.0
.class final synchronized android/support/v4/app/FragmentManagerImpl
.super android/support/v4/app/FragmentManager
.inner class inner android/support/v4/app/FragmentManagerImpl$1
.inner class inner android/support/v4/app/FragmentManagerImpl$2
.inner class inner android/support/v4/app/FragmentManagerImpl$3
.inner class inner android/support/v4/app/FragmentManagerImpl$4
.inner class inner android/support/v4/app/FragmentManagerImpl$5

.field static final 'ACCELERATE_CUBIC' Landroid/view/animation/Interpolator;

.field static final 'ACCELERATE_QUINT' Landroid/view/animation/Interpolator;

.field static final 'ANIM_DUR' I = 220


.field public static final 'ANIM_STYLE_CLOSE_ENTER' I = 3


.field public static final 'ANIM_STYLE_CLOSE_EXIT' I = 4


.field public static final 'ANIM_STYLE_FADE_ENTER' I = 5


.field public static final 'ANIM_STYLE_FADE_EXIT' I = 6


.field public static final 'ANIM_STYLE_OPEN_ENTER' I = 1


.field public static final 'ANIM_STYLE_OPEN_EXIT' I = 2


.field static 'DEBUG' Z = 0


.field static final 'DECELERATE_CUBIC' Landroid/view/animation/Interpolator;

.field static final 'DECELERATE_QUINT' Landroid/view/animation/Interpolator;

.field static final 'HONEYCOMB' Z

.field static final 'TAG' Ljava/lang/String; = "FragmentManager"

.field static final 'TARGET_REQUEST_CODE_STATE_TAG' Ljava/lang/String; = "android:target_req_state"

.field static final 'TARGET_STATE_TAG' Ljava/lang/String; = "android:target_state"

.field static final 'USER_VISIBLE_HINT_TAG' Ljava/lang/String; = "android:user_visible_hint"

.field static final 'VIEW_STATE_TAG' Ljava/lang/String; = "android:view_state"

.field 'mActive' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"

.field 'mActivity' Landroid/support/v4/app/FragmentActivity;

.field 'mAdded' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"

.field 'mAvailBackStackIndices' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Integer;>;"

.field 'mAvailIndices' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Integer;>;"

.field 'mBackStack' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"

.field 'mBackStackChangeListeners' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;>;"

.field 'mBackStackIndices' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"

.field 'mContainer' Landroid/support/v4/app/FragmentContainer;

.field 'mCreatedMenus' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"

.field 'mCurState' I

.field 'mDestroyed' Z

.field 'mExecCommit' Ljava/lang/Runnable;

.field 'mExecutingActions' Z

.field 'mHavePendingDeferredStart' Z

.field 'mNeedMenuInvalidate' Z

.field 'mNoTransactionsBecause' Ljava/lang/String;

.field 'mParent' Landroid/support/v4/app/Fragment;

.field 'mPendingActions' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"

.field 'mStateArray' Landroid/util/SparseArray; signature "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"

.field 'mStateBundle' Landroid/os/Bundle;

.field 'mStateSaved' Z

.field 'mTmpActions' [Ljava/lang/Runnable;

.method static <clinit>()V
iconst_0
istore 0
iconst_0
putstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
getstatic android/os/Build$VERSION/SDK_INT I
bipush 11
if_icmplt L0
iconst_1
istore 0
L0:
iload 0
putstatic android/support/v4/app/FragmentManagerImpl/HONEYCOMB Z
new android/view/animation/DecelerateInterpolator
dup
ldc_w 2.5F
invokespecial android/view/animation/DecelerateInterpolator/<init>(F)V
putstatic android/support/v4/app/FragmentManagerImpl/DECELERATE_QUINT Landroid/view/animation/Interpolator;
new android/view/animation/DecelerateInterpolator
dup
ldc_w 1.5F
invokespecial android/view/animation/DecelerateInterpolator/<init>(F)V
putstatic android/support/v4/app/FragmentManagerImpl/DECELERATE_CUBIC Landroid/view/animation/Interpolator;
new android/view/animation/AccelerateInterpolator
dup
ldc_w 2.5F
invokespecial android/view/animation/AccelerateInterpolator/<init>(F)V
putstatic android/support/v4/app/FragmentManagerImpl/ACCELERATE_QUINT Landroid/view/animation/Interpolator;
new android/view/animation/AccelerateInterpolator
dup
ldc_w 1.5F
invokespecial android/view/animation/AccelerateInterpolator/<init>(F)V
putstatic android/support/v4/app/FragmentManagerImpl/ACCELERATE_CUBIC Landroid/view/animation/Interpolator;
return
.limit locals 1
.limit stack 3
.end method

.method <init>()V
aload 0
invokespecial android/support/v4/app/FragmentManager/<init>()V
aload 0
iconst_0
putfield android/support/v4/app/FragmentManagerImpl/mCurState I
aload 0
aconst_null
putfield android/support/v4/app/FragmentManagerImpl/mStateBundle Landroid/os/Bundle;
aload 0
aconst_null
putfield android/support/v4/app/FragmentManagerImpl/mStateArray Landroid/util/SparseArray;
aload 0
new android/support/v4/app/FragmentManagerImpl$1
dup
aload 0
invokespecial android/support/v4/app/FragmentManagerImpl$1/<init>(Landroid/support/v4/app/FragmentManagerImpl;)V
putfield android/support/v4/app/FragmentManagerImpl/mExecCommit Ljava/lang/Runnable;
return
.limit locals 1
.limit stack 4
.end method

.method private checkStateLoss()V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mStateSaved Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "Can not perform this action after onSaveInstanceState"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mNoTransactionsBecause Ljava/lang/String;
ifnull L1
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Can not perform this action inside of "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mNoTransactionsBecause Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
return
.limit locals 1
.limit stack 4
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
new android/view/animation/AlphaAnimation
dup
fload 1
fload 2
invokespecial android/view/animation/AlphaAnimation/<init>(FF)V
astore 0
aload 0
getstatic android/support/v4/app/FragmentManagerImpl/DECELERATE_CUBIC Landroid/view/animation/Interpolator;
invokevirtual android/view/animation/AlphaAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
ldc2_w 220L
invokevirtual android/view/animation/AlphaAnimation/setDuration(J)V
aload 0
areturn
.limit locals 3
.limit stack 4
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
new android/view/animation/AnimationSet
dup
iconst_0
invokespecial android/view/animation/AnimationSet/<init>(Z)V
astore 0
new android/view/animation/ScaleAnimation
dup
fload 1
fload 2
fload 1
fload 2
iconst_1
ldc_w 0.5F
iconst_1
ldc_w 0.5F
invokespecial android/view/animation/ScaleAnimation/<init>(FFFFIFIF)V
astore 5
aload 5
getstatic android/support/v4/app/FragmentManagerImpl/DECELERATE_QUINT Landroid/view/animation/Interpolator;
invokevirtual android/view/animation/ScaleAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 5
ldc2_w 220L
invokevirtual android/view/animation/ScaleAnimation/setDuration(J)V
aload 0
aload 5
invokevirtual android/view/animation/AnimationSet/addAnimation(Landroid/view/animation/Animation;)V
new android/view/animation/AlphaAnimation
dup
fload 3
fload 4
invokespecial android/view/animation/AlphaAnimation/<init>(FF)V
astore 5
aload 5
getstatic android/support/v4/app/FragmentManagerImpl/DECELERATE_CUBIC Landroid/view/animation/Interpolator;
invokevirtual android/view/animation/AlphaAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 5
ldc2_w 220L
invokevirtual android/view/animation/AlphaAnimation/setDuration(J)V
aload 0
aload 5
invokevirtual android/view/animation/AnimationSet/addAnimation(Landroid/view/animation/Animation;)V
aload 0
areturn
.limit locals 6
.limit stack 10
.end method

.method public static reverseTransit(I)I
iload 0
lookupswitch
4097 : L0
4099 : L1
8194 : L2
default : L3
L3:
iconst_0
ireturn
L0:
sipush 8194
ireturn
L2:
sipush 4097
ireturn
L1:
sipush 4099
ireturn
.limit locals 1
.limit stack 1
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
ldc "FragmentManager"
aload 1
invokevirtual java/lang/RuntimeException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc "FragmentManager"
ldc "Activity state:"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/io/PrintWriter
dup
new android/support/v4/util/LogWriter
dup
ldc "FragmentManager"
invokespecial android/support/v4/util/LogWriter/<init>(Ljava/lang/String;)V
invokespecial java/io/PrintWriter/<init>(Ljava/io/Writer;)V
astore 2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ifnull L3
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ldc "  "
aconst_null
aload 2
iconst_0
anewarray java/lang/String
invokevirtual android/support/v4/app/FragmentActivity/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
L1:
aload 1
athrow
L2:
astore 2
ldc "FragmentManager"
ldc "Failed dumping state"
aload 2
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
goto L1
L3:
aload 0
ldc "  "
aconst_null
aload 2
iconst_0
anewarray java/lang/String
invokevirtual android/support/v4/app/FragmentManagerImpl/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
L4:
goto L1
L5:
astore 2
ldc "FragmentManager"
ldc "Failed dumping state"
aload 2
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
pop
goto L1
.limit locals 3
.limit stack 5
.end method

.method public static transitToStyleIndex(IZ)I
iload 0
lookupswitch
4097 : L0
4099 : L1
8194 : L2
default : L3
L3:
iconst_m1
ireturn
L0:
iload 1
ifeq L4
iconst_1
ireturn
L4:
iconst_2
ireturn
L2:
iload 1
ifeq L5
iconst_3
ireturn
L5:
iconst_4
ireturn
L1:
iload 1
ifeq L6
iconst_5
ireturn
L6:
bipush 6
ireturn
.limit locals 2
.limit stack 1
.end method

.method addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/reportBackStackChanged()V
return
.limit locals 2
.limit stack 3
.end method

.method public addFragment(Landroid/support/v4/app/Fragment;Z)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
L0:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L1
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "add: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 0
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/makeActive(Landroid/support/v4/app/Fragment;)V
aload 1
getfield android/support/v4/app/Fragment/mDetached Z
ifne L2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L3
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment already added: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 1
iconst_1
putfield android/support/v4/app/Fragment/mAdded Z
aload 1
iconst_0
putfield android/support/v4/app/Fragment/mRemoving Z
aload 1
getfield android/support/v4/app/Fragment/mHasMenu Z
ifeq L4
aload 1
getfield android/support/v4/app/Fragment/mMenuVisible Z
ifeq L4
aload 0
iconst_1
putfield android/support/v4/app/FragmentManagerImpl/mNeedMenuInvalidate Z
L4:
iload 2
ifeq L2
aload 0
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(Landroid/support/v4/app/Fragment;)V
L2:
return
.limit locals 3
.limit stack 4
.end method

.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackChangeListeners Ljava/util/ArrayList;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mBackStackChangeListeners Ljava/util/ArrayList;
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackChangeListeners Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method public allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailBackStackIndices Ljava/util/ArrayList;
ifnull L1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailBackStackIndices Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifgt L6
L1:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
ifnonnull L3
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
L3:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L4
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Setting back stack index "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " to "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
monitorexit
L5:
iload 2
ireturn
L6:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailBackStackIndices Ljava/util/ArrayList;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailBackStackIndices Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
istore 2
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L7
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Adding back stack index "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " with "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L7:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
iload 2
aload 1
invokevirtual java/util/ArrayList/set(ILjava/lang/Object;)Ljava/lang/Object;
pop
aload 0
monitorexit
L8:
iload 2
ireturn
L2:
astore 1
L9:
aload 0
monitorexit
L10:
aload 1
athrow
.limit locals 3
.limit stack 3
.end method

.method public attachActivity(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ifnull L0
new java/lang/IllegalStateException
dup
ldc "Already attached"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 1
putfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
aload 0
aload 2
putfield android/support/v4/app/FragmentManagerImpl/mContainer Landroid/support/v4/app/FragmentContainer;
aload 0
aload 3
putfield android/support/v4/app/FragmentManagerImpl/mParent Landroid/support/v4/app/Fragment;
return
.limit locals 4
.limit stack 3
.end method

.method public attachFragment(Landroid/support/v4/app/Fragment;II)V
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L0
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "attach: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 1
getfield android/support/v4/app/Fragment/mDetached Z
ifeq L1
aload 1
iconst_0
putfield android/support/v4/app/Fragment/mDetached Z
aload 1
getfield android/support/v4/app/Fragment/mAdded Z
ifne L1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnonnull L2
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
L2:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L3
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment already added: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L3:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L4
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "add from attach: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 1
iconst_1
putfield android/support/v4/app/Fragment/mAdded Z
aload 1
getfield android/support/v4/app/Fragment/mHasMenu Z
ifeq L5
aload 1
getfield android/support/v4/app/Fragment/mMenuVisible Z
ifeq L5
aload 0
iconst_1
putfield android/support/v4/app/FragmentManagerImpl/mNeedMenuInvalidate Z
L5:
aload 0
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mCurState I
iload 2
iload 3
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
L1:
return
.limit locals 4
.limit stack 6
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
new android/support/v4/app/BackStackRecord
dup
aload 0
invokespecial android/support/v4/app/BackStackRecord/<init>(Landroid/support/v4/app/FragmentManagerImpl;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public detachFragment(Landroid/support/v4/app/Fragment;II)V
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L0
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "detach: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 1
getfield android/support/v4/app/Fragment/mDetached Z
ifne L1
aload 1
iconst_1
putfield android/support/v4/app/Fragment/mDetached Z
aload 1
getfield android/support/v4/app/Fragment/mAdded Z
ifeq L1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L2
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L3
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "remove from detach: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
L2:
aload 1
getfield android/support/v4/app/Fragment/mHasMenu Z
ifeq L4
aload 1
getfield android/support/v4/app/Fragment/mMenuVisible Z
ifeq L4
aload 0
iconst_1
putfield android/support/v4/app/FragmentManagerImpl/mNeedMenuInvalidate Z
L4:
aload 1
iconst_0
putfield android/support/v4/app/Fragment/mAdded Z
aload 0
aload 1
iconst_1
iload 2
iload 3
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
L1:
return
.limit locals 4
.limit stack 6
.end method

.method public dispatchActivityCreated()V
aload 0
iconst_0
putfield android/support/v4/app/FragmentManagerImpl/mStateSaved Z
aload 0
iconst_2
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(IZ)V
return
.limit locals 1
.limit stack 3
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L0
iconst_0
istore 2
L1:
iload 2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 3
aload 3
ifnull L2
aload 3
aload 1
invokevirtual android/support/v4/app/Fragment/performConfigurationChanged(Landroid/content/res/Configuration;)V
L2:
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
return
.limit locals 4
.limit stack 2
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L0
iconst_0
istore 2
L1:
iload 2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 3
aload 3
ifnull L2
aload 3
aload 1
invokevirtual android/support/v4/app/Fragment/performContextItemSelected(Landroid/view/MenuItem;)Z
ifeq L2
iconst_1
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method

.method public dispatchCreate()V
aload 0
iconst_0
putfield android/support/v4/app/FragmentManagerImpl/mStateSaved Z
aload 0
iconst_1
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(IZ)V
return
.limit locals 1
.limit stack 3
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
iconst_0
istore 5
iconst_0
istore 4
aconst_null
astore 7
aconst_null
astore 6
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L0
iconst_0
istore 3
L1:
aload 6
astore 7
iload 4
istore 5
iload 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 8
aload 6
astore 7
iload 4
istore 5
aload 8
ifnull L2
aload 6
astore 7
iload 4
istore 5
aload 8
aload 1
aload 2
invokevirtual android/support/v4/app/Fragment/performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
ifeq L2
iconst_1
istore 5
aload 6
astore 7
aload 6
ifnonnull L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 7
L3:
aload 7
aload 8
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L2:
iload 3
iconst_1
iadd
istore 3
aload 7
astore 6
iload 5
istore 4
goto L1
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mCreatedMenus Ljava/util/ArrayList;
ifnull L4
iconst_0
istore 3
L5:
iload 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mCreatedMenus Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L4
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mCreatedMenus Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 1
aload 7
ifnull L6
aload 7
aload 1
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L7
L6:
aload 1
invokevirtual android/support/v4/app/Fragment/onDestroyOptionsMenu()V
L7:
iload 3
iconst_1
iadd
istore 3
goto L5
L4:
aload 0
aload 7
putfield android/support/v4/app/FragmentManagerImpl/mCreatedMenus Ljava/util/ArrayList;
iload 5
ireturn
.limit locals 9
.limit stack 3
.end method

.method public dispatchDestroy()V
aload 0
iconst_1
putfield android/support/v4/app/FragmentManagerImpl/mDestroyed Z
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/execPendingActions()Z
pop
aload 0
iconst_0
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(IZ)V
aload 0
aconst_null
putfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
aload 0
aconst_null
putfield android/support/v4/app/FragmentManagerImpl/mContainer Landroid/support/v4/app/FragmentContainer;
aload 0
aconst_null
putfield android/support/v4/app/FragmentManagerImpl/mParent Landroid/support/v4/app/Fragment;
return
.limit locals 1
.limit stack 3
.end method

.method public dispatchDestroyView()V
aload 0
iconst_1
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(IZ)V
return
.limit locals 1
.limit stack 3
.end method

.method public dispatchLowMemory()V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L0
iconst_0
istore 1
L1:
iload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 2
aload 2
ifnull L2
aload 2
invokevirtual android/support/v4/app/Fragment/performLowMemory()V
L2:
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L0
iconst_0
istore 2
L1:
iload 2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 3
aload 3
ifnull L2
aload 3
aload 1
invokevirtual android/support/v4/app/Fragment/performOptionsItemSelected(Landroid/view/MenuItem;)Z
ifeq L2
iconst_1
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
iconst_0
ireturn
.limit locals 4
.limit stack 2
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L0
iconst_0
istore 2
L1:
iload 2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 3
aload 3
ifnull L2
aload 3
aload 1
invokevirtual android/support/v4/app/Fragment/performOptionsMenuClosed(Landroid/view/Menu;)V
L2:
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
return
.limit locals 4
.limit stack 2
.end method

.method public dispatchPause()V
aload 0
iconst_4
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(IZ)V
return
.limit locals 1
.limit stack 3
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
iconst_0
istore 4
iconst_0
istore 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L0
iconst_0
istore 2
L1:
iload 3
istore 4
iload 2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 5
iload 3
istore 4
aload 5
ifnull L2
iload 3
istore 4
aload 5
aload 1
invokevirtual android/support/v4/app/Fragment/performPrepareOptionsMenu(Landroid/view/Menu;)Z
ifeq L2
iconst_1
istore 4
L2:
iload 2
iconst_1
iadd
istore 2
iload 4
istore 3
goto L1
L0:
iload 4
ireturn
.limit locals 6
.limit stack 2
.end method

.method public dispatchReallyStop()V
aload 0
iconst_2
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(IZ)V
return
.limit locals 1
.limit stack 3
.end method

.method public dispatchResume()V
aload 0
iconst_0
putfield android/support/v4/app/FragmentManagerImpl/mStateSaved Z
aload 0
iconst_5
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(IZ)V
return
.limit locals 1
.limit stack 3
.end method

.method public dispatchStart()V
aload 0
iconst_0
putfield android/support/v4/app/FragmentManagerImpl/mStateSaved Z
aload 0
iconst_4
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(IZ)V
return
.limit locals 1
.limit stack 3
.end method

.method public dispatchStop()V
aload 0
iconst_1
putfield android/support/v4/app/FragmentManagerImpl/mStateSaved Z
aload 0
iconst_3
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(IZ)V
return
.limit locals 1
.limit stack 3
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L8 to L9 using L2
.catch all from L10 to L11 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "    "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
ifnull L12
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 6
iload 6
ifle L12
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "Active Fragments in "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc ":"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
iconst_0
istore 5
L13:
iload 5
iload 6
if_icmpge L12
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
iload 5
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 8
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  #"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
iload 5
invokevirtual java/io/PrintWriter/print(I)V
aload 3
ldc ": "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 8
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
aload 8
ifnull L14
aload 8
aload 7
aload 2
aload 3
aload 4
invokevirtual android/support/v4/app/Fragment/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
L14:
iload 5
iconst_1
iadd
istore 5
goto L13
L12:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L15
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 6
iload 6
ifle L15
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "Added Fragments:"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
iconst_0
istore 5
L16:
iload 5
iload 6
if_icmpge L15
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 5
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 8
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  #"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
iload 5
invokevirtual java/io/PrintWriter/print(I)V
aload 3
ldc ": "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 8
invokevirtual android/support/v4/app/Fragment/toString()Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
iload 5
iconst_1
iadd
istore 5
goto L16
L15:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mCreatedMenus Ljava/util/ArrayList;
ifnull L17
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mCreatedMenus Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 6
iload 6
ifle L17
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "Fragments Created Menus:"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
iconst_0
istore 5
L18:
iload 5
iload 6
if_icmpge L17
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mCreatedMenus Ljava/util/ArrayList;
iload 5
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 8
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  #"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
iload 5
invokevirtual java/io/PrintWriter/print(I)V
aload 3
ldc ": "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 8
invokevirtual android/support/v4/app/Fragment/toString()Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
iload 5
iconst_1
iadd
istore 5
goto L18
L17:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
ifnull L19
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 6
iload 6
ifle L19
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "Back Stack:"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
iconst_0
istore 5
L20:
iload 5
iload 6
if_icmpge L19
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
iload 5
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/BackStackRecord
astore 8
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  #"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
iload 5
invokevirtual java/io/PrintWriter/print(I)V
aload 3
ldc ": "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 8
invokevirtual android/support/v4/app/BackStackRecord/toString()Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 8
aload 7
aload 2
aload 3
aload 4
invokevirtual android/support/v4/app/BackStackRecord/dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
iload 5
iconst_1
iadd
istore 5
goto L20
L19:
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
ifnull L7
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 6
L1:
iload 6
ifle L7
L3:
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "Back Stack Indices:"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
L4:
iconst_0
istore 5
L21:
iload 5
iload 6
if_icmpge L7
L5:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
iload 5
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/BackStackRecord
astore 2
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  #"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
iload 5
invokevirtual java/io/PrintWriter/print(I)V
aload 3
ldc ": "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 2
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L6:
iload 5
iconst_1
iadd
istore 5
goto L21
L7:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailBackStackIndices Ljava/util/ArrayList;
ifnull L8
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailBackStackIndices Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L8
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "mAvailBackStackIndices: "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailBackStackIndices Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/toArray()[Ljava/lang/Object;
invokestatic java/util/Arrays/toString([Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
L8:
aload 0
monitorexit
L9:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mPendingActions Ljava/util/ArrayList;
ifnull L22
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mPendingActions Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 6
iload 6
ifle L22
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "Pending Actions:"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
iconst_0
istore 5
L23:
iload 5
iload 6
if_icmpge L22
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mPendingActions Ljava/util/ArrayList;
iload 5
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Runnable
astore 2
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  #"
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
iload 5
invokevirtual java/io/PrintWriter/print(I)V
aload 3
ldc ": "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 2
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
iload 5
iconst_1
iadd
istore 5
goto L23
L2:
astore 1
L10:
aload 0
monitorexit
L11:
aload 1
athrow
L22:
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "FragmentManager misc state:"
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  mActivity="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  mContainer="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mContainer Landroid/support/v4/app/FragmentContainer;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mParent Landroid/support/v4/app/Fragment;
ifnull L24
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  mParent="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mParent Landroid/support/v4/app/Fragment;
invokevirtual java/io/PrintWriter/println(Ljava/lang/Object;)V
L24:
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  mCurState="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mCurState I
invokevirtual java/io/PrintWriter/print(I)V
aload 3
ldc " mStateSaved="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mStateSaved Z
invokevirtual java/io/PrintWriter/print(Z)V
aload 3
ldc " mDestroyed="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mDestroyed Z
invokevirtual java/io/PrintWriter/println(Z)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mNeedMenuInvalidate Z
ifeq L25
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  mNeedMenuInvalidate="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mNeedMenuInvalidate Z
invokevirtual java/io/PrintWriter/println(Z)V
L25:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mNoTransactionsBecause Ljava/lang/String;
ifnull L26
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  mNoTransactionsBecause="
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mNoTransactionsBecause Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
L26:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
ifnull L27
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifle L27
aload 3
aload 1
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
ldc "  mAvailIndices: "
invokevirtual java/io/PrintWriter/print(Ljava/lang/String;)V
aload 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/toArray()[Ljava/lang/Object;
invokestatic java/util/Arrays/toString([Ljava/lang/Object;)Ljava/lang/String;
invokevirtual java/io/PrintWriter/println(Ljava/lang/String;)V
L27:
return
.limit locals 9
.limit stack 5
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L4 to L5 using L1
.catch all from L5 to L6 using L1
.catch all from L6 to L7 using L1
iload 2
ifne L8
aload 0
invokespecial android/support/v4/app/FragmentManagerImpl/checkStateLoss()V
L8:
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ifnonnull L4
new java/lang/IllegalStateException
dup
ldc "Activity has been destroyed"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 1
L2:
aload 0
monitorexit
L3:
aload 1
athrow
L4:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mPendingActions Ljava/util/ArrayList;
ifnonnull L5
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mPendingActions Ljava/util/ArrayList;
L5:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mPendingActions Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mPendingActions Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
if_icmpne L6
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mExecCommit Ljava/lang/Runnable;
invokevirtual android/os/Handler/removeCallbacks(Ljava/lang/Runnable;)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mExecCommit Ljava/lang/Runnable;
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
L6:
aload 0
monitorexit
L7:
return
.limit locals 3
.limit stack 3
.end method

.method public execPendingActions()Z
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mExecutingActions Z
ifeq L10
new java/lang/IllegalStateException
dup
ldc "Recursive entry to executePendingTransactions"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L10:
invokestatic android/os/Looper/myLooper()Landroid/os/Looper;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
invokevirtual android/os/Handler/getLooper()Landroid/os/Looper;
if_acmpeq L11
new java/lang/IllegalStateException
dup
ldc "Must be called from main thread of process"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L11:
iconst_0
istore 4
L12:
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mPendingActions Ljava/util/ArrayList;
ifnull L1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mPendingActions Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifne L4
L1:
aload 0
monitorexit
L3:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mHavePendingDeferredStart Z
ifeq L13
iconst_0
istore 2
iconst_0
istore 1
L14:
iload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L15
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 5
iload 2
istore 3
aload 5
ifnull L16
iload 2
istore 3
aload 5
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L16
iload 2
aload 5
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/hasRunningLoaders()Z
ior
istore 3
L16:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 2
goto L14
L4:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mPendingActions Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mTmpActions [Ljava/lang/Runnable;
ifnull L5
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mTmpActions [Ljava/lang/Runnable;
arraylength
iload 2
if_icmpge L6
L5:
aload 0
iload 2
anewarray java/lang/Runnable
putfield android/support/v4/app/FragmentManagerImpl/mTmpActions [Ljava/lang/Runnable;
L6:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mPendingActions Ljava/util/ArrayList;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mTmpActions [Ljava/lang/Runnable;
invokevirtual java/util/ArrayList/toArray([Ljava/lang/Object;)[Ljava/lang/Object;
pop
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mPendingActions Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mExecCommit Ljava/lang/Runnable;
invokevirtual android/os/Handler/removeCallbacks(Ljava/lang/Runnable;)V
aload 0
monitorexit
L7:
aload 0
iconst_1
putfield android/support/v4/app/FragmentManagerImpl/mExecutingActions Z
iconst_0
istore 1
L17:
iload 1
iload 2
if_icmpge L18
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mTmpActions [Ljava/lang/Runnable;
iload 1
aaload
invokeinterface java/lang/Runnable/run()V 0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mTmpActions [Ljava/lang/Runnable;
iload 1
aconst_null
aastore
iload 1
iconst_1
iadd
istore 1
goto L17
L2:
astore 5
L8:
aload 0
monitorexit
L9:
aload 5
athrow
L18:
aload 0
iconst_0
putfield android/support/v4/app/FragmentManagerImpl/mExecutingActions Z
iconst_1
istore 4
goto L12
L15:
iload 2
ifne L13
aload 0
iconst_0
putfield android/support/v4/app/FragmentManagerImpl/mHavePendingDeferredStart Z
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/startPendingDeferredFragments()V
L13:
iload 4
ireturn
.limit locals 6
.limit stack 3
.end method

.method public executePendingTransactions()Z
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/execPendingActions()Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 2
L1:
iload 2
iflt L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 3
aload 3
ifnull L2
aload 3
getfield android/support/v4/app/Fragment/mFragmentId I
iload 1
if_icmpne L2
L3:
aload 3
areturn
L2:
iload 2
iconst_1
isub
istore 2
goto L1
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
ifnull L4
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 2
L5:
iload 2
iflt L4
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 4
aload 4
ifnull L6
aload 4
astore 3
aload 4
getfield android/support/v4/app/Fragment/mFragmentId I
iload 1
if_icmpeq L3
L6:
iload 2
iconst_1
isub
istore 2
goto L5
L4:
aconst_null
areturn
.limit locals 5
.limit stack 2
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L0
aload 1
ifnull L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 2
L1:
iload 2
iflt L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 3
aload 3
ifnull L2
aload 1
aload 3
getfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
L3:
aload 3
areturn
L2:
iload 2
iconst_1
isub
istore 2
goto L1
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
ifnull L4
aload 1
ifnull L4
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 2
L5:
iload 2
iflt L4
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 4
aload 4
ifnull L6
aload 4
astore 3
aload 1
aload 4
getfield android/support/v4/app/Fragment/mTag Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
L6:
iload 2
iconst_1
isub
istore 2
goto L5
L4:
aconst_null
areturn
.limit locals 5
.limit stack 2
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
ifnull L0
aload 1
ifnull L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 2
L1:
iload 2
iflt L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 3
aload 3
ifnull L2
aload 3
aload 1
invokevirtual android/support/v4/app/Fragment/findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
astore 3
aload 3
ifnull L2
aload 3
areturn
L2:
iload 2
iconst_1
isub
istore 2
goto L1
L0:
aconst_null
areturn
.limit locals 4
.limit stack 2
.end method

.method public freeBackStackIndex(I)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
iload 1
aconst_null
invokevirtual java/util/ArrayList/set(ILjava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailBackStackIndices Ljava/util/ArrayList;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mAvailBackStackIndices Ljava/util/ArrayList;
L1:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L3
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Freeing back stack index "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L3:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailBackStackIndices Ljava/util/ArrayList;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
monitorexit
L4:
return
L2:
astore 2
L5:
aload 0
monitorexit
L6:
aload 2
athrow
.limit locals 3
.limit stack 3
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/FragmentManager$BackStackEntry
areturn
.limit locals 2
.limit stack 2
.end method

.method public getBackStackEntryCount()I
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
ifnull L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
aload 1
aload 2
iconst_m1
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
istore 3
iload 3
iconst_m1
if_icmpne L0
aconst_null
astore 1
L1:
aload 1
areturn
L0:
iload 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmplt L2
aload 0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragement no longer exists for key "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ": index "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
invokespecial android/support/v4/app/FragmentManagerImpl/throwException(Ljava/lang/RuntimeException;)V
L2:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 4
aload 4
astore 1
aload 4
ifnonnull L1
aload 0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragement no longer exists for key "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ": index "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
invokespecial android/support/v4/app/FragmentManagerImpl/throwException(Ljava/lang/RuntimeException;)V
aload 4
areturn
.limit locals 5
.limit stack 5
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;II)V
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L0
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "hide: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 1
getfield android/support/v4/app/Fragment/mHidden Z
ifne L1
aload 1
iconst_1
putfield android/support/v4/app/Fragment/mHidden Z
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
ifnull L2
aload 0
aload 1
iload 2
iconst_1
iload 3
invokevirtual android/support/v4/app/FragmentManagerImpl/loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
astore 4
aload 4
ifnull L3
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
aload 4
invokevirtual android/view/View/startAnimation(Landroid/view/animation/Animation;)V
L3:
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L2:
aload 1
getfield android/support/v4/app/Fragment/mAdded Z
ifeq L4
aload 1
getfield android/support/v4/app/Fragment/mHasMenu Z
ifeq L4
aload 1
getfield android/support/v4/app/Fragment/mMenuVisible Z
ifeq L4
aload 0
iconst_1
putfield android/support/v4/app/FragmentManagerImpl/mNeedMenuInvalidate Z
L4:
aload 1
iconst_1
invokevirtual android/support/v4/app/Fragment/onHiddenChanged(Z)V
L1:
return
.limit locals 5
.limit stack 5
.end method

.method loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
aload 1
iload 2
iload 3
aload 1
getfield android/support/v4/app/Fragment/mNextAnim I
invokevirtual android/support/v4/app/Fragment/onCreateAnimation(IZI)Landroid/view/animation/Animation;
astore 5
aload 5
ifnull L0
aload 5
areturn
L0:
aload 1
getfield android/support/v4/app/Fragment/mNextAnim I
ifeq L1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
aload 1
getfield android/support/v4/app/Fragment/mNextAnim I
invokestatic android/view/animation/AnimationUtils/loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
astore 1
aload 1
ifnull L1
aload 1
areturn
L1:
iload 2
ifne L2
aconst_null
areturn
L2:
iload 2
iload 3
invokestatic android/support/v4/app/FragmentManagerImpl/transitToStyleIndex(IZ)I
istore 2
iload 2
ifge L3
aconst_null
areturn
L3:
iload 2
tableswitch 1
L4
L5
L6
L7
L8
L9
default : L10
L10:
iload 4
istore 2
iload 4
ifne L11
iload 4
istore 2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getWindow()Landroid/view/Window;
ifnull L11
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getWindow()Landroid/view/Window;
invokevirtual android/view/Window/getAttributes()Landroid/view/WindowManager$LayoutParams;
getfield android/view/WindowManager$LayoutParams/windowAnimations I
istore 2
L11:
iload 2
ifne L12
aconst_null
areturn
L4:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ldc_w 1.125F
fconst_1
fconst_0
fconst_1
invokestatic android/support/v4/app/FragmentManagerImpl/makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
areturn
L5:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
fconst_1
ldc_w 0.975F
fconst_1
fconst_0
invokestatic android/support/v4/app/FragmentManagerImpl/makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
areturn
L6:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ldc_w 0.975F
fconst_1
fconst_0
fconst_1
invokestatic android/support/v4/app/FragmentManagerImpl/makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
areturn
L7:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
fconst_1
ldc_w 1.075F
fconst_1
fconst_0
invokestatic android/support/v4/app/FragmentManagerImpl/makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
areturn
L8:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
fconst_0
fconst_1
invokestatic android/support/v4/app/FragmentManagerImpl/makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
areturn
L9:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
fconst_1
fconst_0
invokestatic android/support/v4/app/FragmentManagerImpl/makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
areturn
L12:
aconst_null
areturn
.limit locals 6
.limit stack 5
.end method

.method makeActive(Landroid/support/v4/app/Fragment;)V
aload 1
getfield android/support/v4/app/Fragment/mIndex I
iflt L0
L1:
return
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
ifnull L2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifgt L3
L2:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
ifnonnull L4
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
L4:
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mParent Landroid/support/v4/app/Fragment;
invokevirtual android/support/v4/app/Fragment/setIndex(ILandroid/support/v4/app/Fragment;)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L5:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L1
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Allocated fragment index "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
return
L3:
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
checkcast java/lang/Integer
invokevirtual java/lang/Integer/intValue()I
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mParent Landroid/support/v4/app/Fragment;
invokevirtual android/support/v4/app/Fragment/setIndex(ILandroid/support/v4/app/Fragment;)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
aload 1
getfield android/support/v4/app/Fragment/mIndex I
aload 1
invokevirtual java/util/ArrayList/set(ILjava/lang/Object;)Ljava/lang/Object;
pop
goto L5
.limit locals 2
.limit stack 4
.end method

.method makeInactive(Landroid/support/v4/app/Fragment;)V
aload 1
getfield android/support/v4/app/Fragment/mIndex I
ifge L0
return
L0:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L1
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Freeing fragment index "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L1:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
aload 1
getfield android/support/v4/app/Fragment/mIndex I
aconst_null
invokevirtual java/util/ArrayList/set(ILjava/lang/Object;)Ljava/lang/Object;
pop
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
ifnonnull L2
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
L2:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
aload 1
getfield android/support/v4/app/Fragment/mIndex I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
aload 1
getfield android/support/v4/app/Fragment/mWho Ljava/lang/String;
invokevirtual android/support/v4/app/FragmentActivity/invalidateSupportFragment(Ljava/lang/String;)V
aload 1
invokevirtual android/support/v4/app/Fragment/initState()V
return
.limit locals 2
.limit stack 3
.end method

.method moveToState(IIIZ)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ifnonnull L0
iload 1
ifeq L0
new java/lang/IllegalStateException
dup
ldc "No activity"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
iload 4
ifne L1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mCurState I
iload 1
if_icmpne L1
L2:
return
L1:
aload 0
iload 1
putfield android/support/v4/app/FragmentManagerImpl/mCurState I
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
ifnull L2
iconst_0
istore 6
iconst_0
istore 5
L3:
iload 5
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L4
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
iload 5
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 8
iload 6
istore 7
aload 8
ifnull L5
aload 0
aload 8
iload 1
iload 2
iload 3
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
iload 6
istore 7
aload 8
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
ifnull L5
iload 6
aload 8
getfield android/support/v4/app/Fragment/mLoaderManager Landroid/support/v4/app/LoaderManagerImpl;
invokevirtual android/support/v4/app/LoaderManagerImpl/hasRunningLoaders()Z
ior
istore 7
L5:
iload 5
iconst_1
iadd
istore 5
iload 7
istore 6
goto L3
L4:
iload 6
ifne L6
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/startPendingDeferredFragments()V
L6:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mNeedMenuInvalidate Z
ifeq L2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
ifnull L2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mCurState I
iconst_5
if_icmpne L2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/supportInvalidateOptionsMenu()V
aload 0
iconst_0
putfield android/support/v4/app/FragmentManagerImpl/mNeedMenuInvalidate Z
return
.limit locals 9
.limit stack 6
.end method

.method moveToState(IZ)V
aload 0
iload 1
iconst_0
iconst_0
iload 2
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(IIIZ)V
return
.limit locals 3
.limit stack 5
.end method

.method moveToState(Landroid/support/v4/app/Fragment;)V
aload 0
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mCurState I
iconst_0
iconst_0
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
return
.limit locals 2
.limit stack 6
.end method

.method moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
aload 1
getfield android/support/v4/app/Fragment/mAdded Z
ifeq L0
iload 2
istore 6
aload 1
getfield android/support/v4/app/Fragment/mDetached Z
ifeq L1
L0:
iload 2
istore 6
iload 2
iconst_1
if_icmple L1
iconst_1
istore 6
L1:
iload 6
istore 7
aload 1
getfield android/support/v4/app/Fragment/mRemoving Z
ifeq L2
iload 6
istore 7
iload 6
aload 1
getfield android/support/v4/app/Fragment/mState I
if_icmple L2
aload 1
getfield android/support/v4/app/Fragment/mState I
istore 7
L2:
iload 7
istore 2
aload 1
getfield android/support/v4/app/Fragment/mDeferStart Z
ifeq L3
iload 7
istore 2
aload 1
getfield android/support/v4/app/Fragment/mState I
iconst_4
if_icmpge L3
iload 7
istore 2
iload 7
iconst_3
if_icmple L3
iconst_3
istore 2
L3:
aload 1
getfield android/support/v4/app/Fragment/mState I
iload 2
if_icmpge L4
aload 1
getfield android/support/v4/app/Fragment/mFromLayout Z
ifeq L5
aload 1
getfield android/support/v4/app/Fragment/mInLayout Z
ifne L5
return
L5:
aload 1
getfield android/support/v4/app/Fragment/mAnimatingAway Landroid/view/View;
ifnull L6
aload 1
aconst_null
putfield android/support/v4/app/Fragment/mAnimatingAway Landroid/view/View;
aload 0
aload 1
aload 1
getfield android/support/v4/app/Fragment/mStateAfterAnimating I
iconst_0
iconst_0
iconst_1
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
L6:
iload 2
istore 6
iload 2
istore 8
iload 2
istore 7
aload 1
getfield android/support/v4/app/Fragment/mState I
tableswitch 0
L7
L8
L9
L9
L10
default : L11
L11:
iload 2
istore 6
L12:
aload 1
iload 6
putfield android/support/v4/app/Fragment/mState I
return
L7:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L13
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "moveto CREATED: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L13:
iload 2
istore 7
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
ifnull L14
aload 1
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
ldc "android:view_state"
invokevirtual android/os/Bundle/getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
putfield android/support/v4/app/Fragment/mSavedViewState Landroid/util/SparseArray;
aload 1
aload 0
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
ldc "android:target_state"
invokevirtual android/support/v4/app/FragmentManagerImpl/getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
putfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
aload 1
getfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
ifnull L15
aload 1
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
ldc "android:target_req_state"
iconst_0
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
putfield android/support/v4/app/Fragment/mTargetRequestCode I
L15:
aload 1
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
ldc "android:user_visible_hint"
iconst_1
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;Z)Z
putfield android/support/v4/app/Fragment/mUserVisibleHint Z
iload 2
istore 7
aload 1
getfield android/support/v4/app/Fragment/mUserVisibleHint Z
ifne L14
aload 1
iconst_1
putfield android/support/v4/app/Fragment/mDeferStart Z
iload 2
istore 7
iload 2
iconst_3
if_icmple L14
iconst_3
istore 7
L14:
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
putfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mParent Landroid/support/v4/app/Fragment;
putfield android/support/v4/app/Fragment/mParentFragment Landroid/support/v4/app/Fragment;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mParent Landroid/support/v4/app/Fragment;
ifnull L16
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mParent Landroid/support/v4/app/Fragment;
getfield android/support/v4/app/Fragment/mChildFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
astore 9
L17:
aload 1
aload 9
putfield android/support/v4/app/Fragment/mFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
aload 1
iconst_0
putfield android/support/v4/app/Fragment/mCalled Z
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/Fragment/onAttach(Landroid/app/Activity;)V
aload 1
getfield android/support/v4/app/Fragment/mCalled Z
ifne L18
new android/support/v4/app/SuperNotCalledException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " did not call through to super.onAttach()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/support/v4/app/SuperNotCalledException/<init>(Ljava/lang/String;)V
athrow
L16:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mFragments Landroid/support/v4/app/FragmentManagerImpl;
astore 9
goto L17
L18:
aload 1
getfield android/support/v4/app/Fragment/mParentFragment Landroid/support/v4/app/Fragment;
ifnonnull L19
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
aload 1
invokevirtual android/support/v4/app/FragmentActivity/onAttachFragment(Landroid/support/v4/app/Fragment;)V
L19:
aload 1
getfield android/support/v4/app/Fragment/mRetaining Z
ifne L20
aload 1
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
invokevirtual android/support/v4/app/Fragment/performCreate(Landroid/os/Bundle;)V
L20:
aload 1
iconst_0
putfield android/support/v4/app/Fragment/mRetaining Z
iload 7
istore 6
aload 1
getfield android/support/v4/app/Fragment/mFromLayout Z
ifeq L8
aload 1
aload 1
aload 1
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
invokevirtual android/support/v4/app/Fragment/getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
aconst_null
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
invokevirtual android/support/v4/app/Fragment/performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
putfield android/support/v4/app/Fragment/mView Landroid/view/View;
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
ifnull L21
aload 1
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
putfield android/support/v4/app/Fragment/mInnerView Landroid/view/View;
aload 1
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
invokestatic android/support/v4/app/NoSaveStateFrameLayout/wrap(Landroid/view/View;)Landroid/view/ViewGroup;
putfield android/support/v4/app/Fragment/mView Landroid/view/View;
aload 1
getfield android/support/v4/app/Fragment/mHidden Z
ifeq L22
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L22:
aload 1
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
invokevirtual android/support/v4/app/Fragment/onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
iload 7
istore 6
L8:
iload 6
istore 8
iload 6
iconst_1
if_icmple L9
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L23
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "moveto ACTIVITY_CREATED: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L23:
aload 1
getfield android/support/v4/app/Fragment/mFromLayout Z
ifne L24
aconst_null
astore 9
aload 1
getfield android/support/v4/app/Fragment/mContainerId I
ifeq L25
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mContainer Landroid/support/v4/app/FragmentContainer;
aload 1
getfield android/support/v4/app/Fragment/mContainerId I
invokeinterface android/support/v4/app/FragmentContainer/findViewById(I)Landroid/view/View; 1
checkcast android/view/ViewGroup
astore 10
aload 10
astore 9
aload 10
ifnonnull L25
aload 10
astore 9
aload 1
getfield android/support/v4/app/Fragment/mRestored Z
ifne L25
aload 0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "No view found for id 0x"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield android/support/v4/app/Fragment/mContainerId I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " ("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual android/support/v4/app/Fragment/getResources()Landroid/content/res/Resources;
aload 1
getfield android/support/v4/app/Fragment/mContainerId I
invokevirtual android/content/res/Resources/getResourceName(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ") for fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
invokespecial android/support/v4/app/FragmentManagerImpl/throwException(Ljava/lang/RuntimeException;)V
aload 10
astore 9
L25:
aload 1
aload 9
putfield android/support/v4/app/Fragment/mContainer Landroid/view/ViewGroup;
aload 1
aload 1
aload 1
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
invokevirtual android/support/v4/app/Fragment/getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
aload 9
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
invokevirtual android/support/v4/app/Fragment/performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
putfield android/support/v4/app/Fragment/mView Landroid/view/View;
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
ifnull L26
aload 1
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
putfield android/support/v4/app/Fragment/mInnerView Landroid/view/View;
aload 1
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
invokestatic android/support/v4/app/NoSaveStateFrameLayout/wrap(Landroid/view/View;)Landroid/view/ViewGroup;
putfield android/support/v4/app/Fragment/mView Landroid/view/View;
aload 9
ifnull L27
aload 0
aload 1
iload 3
iconst_1
iload 4
invokevirtual android/support/v4/app/FragmentManagerImpl/loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
astore 10
aload 10
ifnull L28
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
aload 10
invokevirtual android/view/View/startAnimation(Landroid/view/animation/Animation;)V
L28:
aload 9
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
L27:
aload 1
getfield android/support/v4/app/Fragment/mHidden Z
ifeq L29
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L29:
aload 1
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
invokevirtual android/support/v4/app/Fragment/onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
L24:
aload 1
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
invokevirtual android/support/v4/app/Fragment/performActivityCreated(Landroid/os/Bundle;)V
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
ifnull L30
aload 1
aload 1
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
invokevirtual android/support/v4/app/Fragment/restoreViewState(Landroid/os/Bundle;)V
L30:
aload 1
aconst_null
putfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
iload 6
istore 8
L9:
iload 8
istore 7
iload 8
iconst_3
if_icmple L10
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L31
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "moveto STARTED: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L31:
aload 1
invokevirtual android/support/v4/app/Fragment/performStart()V
iload 8
istore 7
L10:
iload 7
istore 6
iload 7
iconst_4
if_icmple L12
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L32
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "moveto RESUMED: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L32:
aload 1
iconst_1
putfield android/support/v4/app/Fragment/mResumed Z
aload 1
invokevirtual android/support/v4/app/Fragment/performResume()V
aload 1
aconst_null
putfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
aload 1
aconst_null
putfield android/support/v4/app/Fragment/mSavedViewState Landroid/util/SparseArray;
iload 7
istore 6
goto L12
L21:
aload 1
aconst_null
putfield android/support/v4/app/Fragment/mInnerView Landroid/view/View;
iload 7
istore 6
goto L8
L26:
aload 1
aconst_null
putfield android/support/v4/app/Fragment/mInnerView Landroid/view/View;
goto L24
L4:
iload 2
istore 6
aload 1
getfield android/support/v4/app/Fragment/mState I
iload 2
if_icmple L12
aload 1
getfield android/support/v4/app/Fragment/mState I
tableswitch 1
L33
L34
L35
L36
L37
default : L38
L38:
iload 2
istore 6
goto L12
L33:
iload 2
istore 6
iload 2
iconst_1
if_icmpge L12
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mDestroyed Z
ifeq L39
aload 1
getfield android/support/v4/app/Fragment/mAnimatingAway Landroid/view/View;
ifnull L39
aload 1
getfield android/support/v4/app/Fragment/mAnimatingAway Landroid/view/View;
astore 9
aload 1
aconst_null
putfield android/support/v4/app/Fragment/mAnimatingAway Landroid/view/View;
aload 9
invokevirtual android/view/View/clearAnimation()V
L39:
aload 1
getfield android/support/v4/app/Fragment/mAnimatingAway Landroid/view/View;
ifnull L40
aload 1
iload 2
putfield android/support/v4/app/Fragment/mStateAfterAnimating I
iconst_1
istore 6
goto L12
L37:
iload 2
iconst_5
if_icmpge L36
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L41
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "movefrom RESUMED: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L41:
aload 1
invokevirtual android/support/v4/app/Fragment/performPause()V
aload 1
iconst_0
putfield android/support/v4/app/Fragment/mResumed Z
L36:
iload 2
iconst_4
if_icmpge L35
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L42
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "movefrom STARTED: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L42:
aload 1
invokevirtual android/support/v4/app/Fragment/performStop()V
L35:
iload 2
iconst_3
if_icmpge L34
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L43
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "movefrom STOPPED: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L43:
aload 1
invokevirtual android/support/v4/app/Fragment/performReallyStop()V
L34:
iload 2
iconst_2
if_icmpge L33
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L44
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "movefrom ACTIVITY_CREATED: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L44:
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
ifnull L45
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/isFinishing()Z
ifne L45
aload 1
getfield android/support/v4/app/Fragment/mSavedViewState Landroid/util/SparseArray;
ifnonnull L45
aload 0
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
L45:
aload 1
invokevirtual android/support/v4/app/Fragment/performDestroyView()V
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
ifnull L46
aload 1
getfield android/support/v4/app/Fragment/mContainer Landroid/view/ViewGroup;
ifnull L46
aconst_null
astore 10
aload 10
astore 9
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mCurState I
ifle L47
aload 10
astore 9
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mDestroyed Z
ifne L47
aload 0
aload 1
iload 3
iconst_0
iload 4
invokevirtual android/support/v4/app/FragmentManagerImpl/loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
astore 9
L47:
aload 9
ifnull L48
aload 1
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
putfield android/support/v4/app/Fragment/mAnimatingAway Landroid/view/View;
aload 1
iload 2
putfield android/support/v4/app/Fragment/mStateAfterAnimating I
aload 9
new android/support/v4/app/FragmentManagerImpl$5
dup
aload 0
aload 1
invokespecial android/support/v4/app/FragmentManagerImpl$5/<init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/Fragment;)V
invokevirtual android/view/animation/Animation/setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
aload 9
invokevirtual android/view/View/startAnimation(Landroid/view/animation/Animation;)V
L48:
aload 1
getfield android/support/v4/app/Fragment/mContainer Landroid/view/ViewGroup;
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
invokevirtual android/view/ViewGroup/removeView(Landroid/view/View;)V
L46:
aload 1
aconst_null
putfield android/support/v4/app/Fragment/mContainer Landroid/view/ViewGroup;
aload 1
aconst_null
putfield android/support/v4/app/Fragment/mView Landroid/view/View;
aload 1
aconst_null
putfield android/support/v4/app/Fragment/mInnerView Landroid/view/View;
goto L33
L40:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L49
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "movefrom CREATED: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L49:
aload 1
getfield android/support/v4/app/Fragment/mRetaining Z
ifne L50
aload 1
invokevirtual android/support/v4/app/Fragment/performDestroy()V
L50:
aload 1
iconst_0
putfield android/support/v4/app/Fragment/mCalled Z
aload 1
invokevirtual android/support/v4/app/Fragment/onDetach()V
aload 1
getfield android/support/v4/app/Fragment/mCalled Z
ifne L51
new android/support/v4/app/SuperNotCalledException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " did not call through to super.onDetach()"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial android/support/v4/app/SuperNotCalledException/<init>(Ljava/lang/String;)V
athrow
L51:
iload 2
istore 6
iload 5
ifne L12
aload 1
getfield android/support/v4/app/Fragment/mRetaining Z
ifne L52
aload 0
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/makeInactive(Landroid/support/v4/app/Fragment;)V
iload 2
istore 6
goto L12
L52:
aload 1
aconst_null
putfield android/support/v4/app/Fragment/mActivity Landroid/support/v4/app/FragmentActivity;
aload 1
aconst_null
putfield android/support/v4/app/Fragment/mFragmentManager Landroid/support/v4/app/FragmentManagerImpl;
iload 2
istore 6
goto L12
.limit locals 11
.limit stack 6
.end method

.method public noteStateNotSaved()V
aload 0
iconst_0
putfield android/support/v4/app/FragmentManagerImpl/mStateSaved Z
return
.limit locals 1
.limit stack 2
.end method

.method public performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
aload 1
getfield android/support/v4/app/Fragment/mDeferStart Z
ifeq L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mExecutingActions Z
ifeq L1
aload 0
iconst_1
putfield android/support/v4/app/FragmentManagerImpl/mHavePendingDeferredStart Z
L0:
return
L1:
aload 1
iconst_0
putfield android/support/v4/app/Fragment/mDeferStart Z
aload 0
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mCurState I
iconst_0
iconst_0
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
return
.limit locals 2
.limit stack 6
.end method

.method public popBackStack()V
aload 0
new android/support/v4/app/FragmentManagerImpl$2
dup
aload 0
invokespecial android/support/v4/app/FragmentManagerImpl$2/<init>(Landroid/support/v4/app/FragmentManagerImpl;)V
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/enqueueAction(Ljava/lang/Runnable;Z)V
return
.limit locals 1
.limit stack 4
.end method

.method public popBackStack(II)V
iload 1
ifge L0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Bad id: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
new android/support/v4/app/FragmentManagerImpl$4
dup
aload 0
iload 1
iload 2
invokespecial android/support/v4/app/FragmentManagerImpl$4/<init>(Landroid/support/v4/app/FragmentManagerImpl;II)V
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/enqueueAction(Ljava/lang/Runnable;Z)V
return
.limit locals 3
.limit stack 6
.end method

.method public popBackStack(Ljava/lang/String;I)V
aload 0
new android/support/v4/app/FragmentManagerImpl$3
dup
aload 0
aload 1
iload 2
invokespecial android/support/v4/app/FragmentManagerImpl$3/<init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/enqueueAction(Ljava/lang/Runnable;Z)V
return
.limit locals 3
.limit stack 6
.end method

.method public popBackStackImmediate()Z
aload 0
invokespecial android/support/v4/app/FragmentManagerImpl/checkStateLoss()V
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/executePendingTransactions()Z
pop
aload 0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
aconst_null
iconst_m1
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
ireturn
.limit locals 1
.limit stack 5
.end method

.method public popBackStackImmediate(II)Z
aload 0
invokespecial android/support/v4/app/FragmentManagerImpl/checkStateLoss()V
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/executePendingTransactions()Z
pop
iload 1
ifge L0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Bad id: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
aconst_null
iload 1
iload 2
invokevirtual android/support/v4/app/FragmentManagerImpl/popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
ireturn
.limit locals 3
.limit stack 5
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
aload 0
invokespecial android/support/v4/app/FragmentManagerImpl/checkStateLoss()V
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/executePendingTransactions()Z
pop
aload 0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
getfield android/support/v4/app/FragmentActivity/mHandler Landroid/os/Handler;
aload 1
iconst_m1
iload 2
invokevirtual android/support/v4/app/FragmentManagerImpl/popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
ireturn
.limit locals 3
.limit stack 5
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 2
ifnonnull L2
iload 3
ifge L2
iload 4
iconst_1
iand
ifne L2
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 3
iload 3
iflt L1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
checkcast android/support/v4/app/BackStackRecord
iconst_1
invokevirtual android/support/v4/app/BackStackRecord/popFromBackStack(Z)V
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/reportBackStackChanged()V
L3:
iconst_1
ireturn
L2:
iconst_m1
istore 5
aload 2
ifnonnull L4
iload 3
iflt L5
L4:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 6
L6:
iload 6
iflt L7
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
iload 6
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/BackStackRecord
astore 1
aload 2
ifnull L8
aload 2
aload 1
invokevirtual android/support/v4/app/BackStackRecord/getName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L8
L7:
iload 6
iflt L1
iload 6
istore 5
iload 4
iconst_1
iand
ifeq L5
iload 6
iconst_1
isub
istore 4
L9:
iload 4
istore 5
iload 4
iflt L5
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
iload 4
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/BackStackRecord
astore 1
aload 2
ifnull L10
aload 2
aload 1
invokevirtual android/support/v4/app/BackStackRecord/getName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L11
L10:
iload 4
istore 5
iload 3
iflt L5
iload 4
istore 5
iload 3
aload 1
getfield android/support/v4/app/BackStackRecord/mIndex I
if_icmpne L5
L11:
iload 4
iconst_1
isub
istore 4
goto L9
L8:
iload 3
iflt L12
iload 3
aload 1
getfield android/support/v4/app/BackStackRecord/mIndex I
if_icmpeq L7
L12:
iload 6
iconst_1
isub
istore 6
goto L6
L5:
iload 5
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
if_icmpeq L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 3
L13:
iload 3
iload 5
if_icmple L14
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 3
iconst_1
isub
istore 3
goto L13
L14:
aload 1
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
istore 4
iconst_0
istore 3
L15:
iload 3
iload 4
if_icmpgt L16
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L17
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Popping back stack state: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L17:
aload 1
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/BackStackRecord
astore 2
iload 3
iload 4
if_icmpne L18
iconst_1
istore 7
L19:
aload 2
iload 7
invokevirtual android/support/v4/app/BackStackRecord/popFromBackStack(Z)V
iload 3
iconst_1
iadd
istore 3
goto L15
L18:
iconst_0
istore 7
goto L19
L16:
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/reportBackStackChanged()V
goto L3
.limit locals 8
.limit stack 4
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
aload 3
getfield android/support/v4/app/Fragment/mIndex I
ifge L0
aload 0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " is not currently in the FragmentManager"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
invokespecial android/support/v4/app/FragmentManagerImpl/throwException(Ljava/lang/RuntimeException;)V
L0:
aload 1
aload 2
aload 3
getfield android/support/v4/app/Fragment/mIndex I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
return
.limit locals 4
.limit stack 5
.end method

.method public removeFragment(Landroid/support/v4/app/Fragment;II)V
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L0
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "remove: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " nesting="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield android/support/v4/app/Fragment/mBackStackNesting I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 1
invokevirtual android/support/v4/app/Fragment/isInBackStack()Z
ifne L1
iconst_1
istore 4
L2:
aload 1
getfield android/support/v4/app/Fragment/mDetached Z
ifeq L3
iload 4
ifeq L4
L3:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L5
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
L5:
aload 1
getfield android/support/v4/app/Fragment/mHasMenu Z
ifeq L6
aload 1
getfield android/support/v4/app/Fragment/mMenuVisible Z
ifeq L6
aload 0
iconst_1
putfield android/support/v4/app/FragmentManagerImpl/mNeedMenuInvalidate Z
L6:
aload 1
iconst_0
putfield android/support/v4/app/Fragment/mAdded Z
aload 1
iconst_1
putfield android/support/v4/app/Fragment/mRemoving Z
iload 4
ifeq L7
iconst_0
istore 4
L8:
aload 0
aload 1
iload 4
iload 2
iload 3
iconst_0
invokevirtual android/support/v4/app/FragmentManagerImpl/moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
L4:
return
L1:
iconst_0
istore 4
goto L2
L7:
iconst_1
istore 4
goto L8
.limit locals 5
.limit stack 6
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackChangeListeners Ljava/util/ArrayList;
ifnull L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackChangeListeners Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method reportBackStackChanged()V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackChangeListeners Ljava/util/ArrayList;
ifnull L0
iconst_0
istore 1
L1:
iload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackChangeListeners Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackChangeListeners Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/FragmentManager$OnBackStackChangedListener
invokeinterface android/support/v4/app/FragmentManager$OnBackStackChangedListener/onBackStackChanged()V 0
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
.signature "(Landroid/os/Parcelable;Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;)V"
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
checkcast android/support/v4/app/FragmentManagerState
astore 1
aload 1
getfield android/support/v4/app/FragmentManagerState/mActive [Landroid/support/v4/app/FragmentState;
ifnull L1
aload 2
ifnull L2
iconst_0
istore 3
L3:
iload 3
aload 2
invokevirtual java/util/ArrayList/size()I
if_icmpge L2
aload 2
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 4
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L4
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "restoreAllState: re-attaching retained "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L4:
aload 1
getfield android/support/v4/app/FragmentManagerState/mActive [Landroid/support/v4/app/FragmentState;
aload 4
getfield android/support/v4/app/Fragment/mIndex I
aaload
astore 5
aload 5
aload 4
putfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
aload 4
aconst_null
putfield android/support/v4/app/Fragment/mSavedViewState Landroid/util/SparseArray;
aload 4
iconst_0
putfield android/support/v4/app/Fragment/mBackStackNesting I
aload 4
iconst_0
putfield android/support/v4/app/Fragment/mInLayout Z
aload 4
iconst_0
putfield android/support/v4/app/Fragment/mAdded Z
aload 4
aconst_null
putfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
aload 5
getfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
ifnull L5
aload 5
getfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/getClassLoader()Ljava/lang/ClassLoader;
invokevirtual android/os/Bundle/setClassLoader(Ljava/lang/ClassLoader;)V
aload 4
aload 5
getfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
ldc "android:view_state"
invokevirtual android/os/Bundle/getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
putfield android/support/v4/app/Fragment/mSavedViewState Landroid/util/SparseArray;
L5:
iload 3
iconst_1
iadd
istore 3
goto L3
L2:
aload 0
new java/util/ArrayList
dup
aload 1
getfield android/support/v4/app/FragmentManagerState/mActive [Landroid/support/v4/app/FragmentState;
arraylength
invokespecial java/util/ArrayList/<init>(I)V
putfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
ifnull L6
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L6:
iconst_0
istore 3
L7:
iload 3
aload 1
getfield android/support/v4/app/FragmentManagerState/mActive [Landroid/support/v4/app/FragmentState;
arraylength
if_icmpge L8
aload 1
getfield android/support/v4/app/FragmentManagerState/mActive [Landroid/support/v4/app/FragmentState;
iload 3
aaload
astore 4
aload 4
ifnull L9
aload 4
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mParent Landroid/support/v4/app/Fragment;
invokevirtual android/support/v4/app/FragmentState/instantiate(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
astore 5
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L10
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "restoreAllState: active #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ": "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L10:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 4
aconst_null
putfield android/support/v4/app/FragmentState/mInstance Landroid/support/v4/app/Fragment;
L11:
iload 3
iconst_1
iadd
istore 3
goto L7
L9:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
aconst_null
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
ifnonnull L12
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
L12:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L13
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "restoreAllState: avail #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L13:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailIndices Ljava/util/ArrayList;
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L11
L8:
aload 2
ifnull L14
iconst_0
istore 3
L15:
iload 3
aload 2
invokevirtual java/util/ArrayList/size()I
if_icmpge L14
aload 2
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 4
aload 4
getfield android/support/v4/app/Fragment/mTargetIndex I
iflt L16
aload 4
getfield android/support/v4/app/Fragment/mTargetIndex I
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L17
aload 4
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
aload 4
getfield android/support/v4/app/Fragment/mTargetIndex I
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
putfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
L16:
iload 3
iconst_1
iadd
istore 3
goto L15
L17:
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Re-attaching retained fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " target no longer exists: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
getfield android/support/v4/app/Fragment/mTargetIndex I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
aconst_null
putfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
goto L16
L14:
aload 1
getfield android/support/v4/app/FragmentManagerState/mAdded [I
ifnull L18
aload 0
new java/util/ArrayList
dup
aload 1
getfield android/support/v4/app/FragmentManagerState/mAdded [I
arraylength
invokespecial java/util/ArrayList/<init>(I)V
putfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iconst_0
istore 3
L19:
iload 3
aload 1
getfield android/support/v4/app/FragmentManagerState/mAdded [I
arraylength
if_icmpge L20
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
aload 1
getfield android/support/v4/app/FragmentManagerState/mAdded [I
iload 3
iaload
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 2
aload 2
ifnonnull L21
aload 0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "No instantiated fragment for index #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
getfield android/support/v4/app/FragmentManagerState/mAdded [I
iload 3
iaload
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
invokespecial android/support/v4/app/FragmentManagerImpl/throwException(Ljava/lang/RuntimeException;)V
L21:
aload 2
iconst_1
putfield android/support/v4/app/Fragment/mAdded Z
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L22
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "restoreAllState: added #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ": "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L22:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifeq L23
new java/lang/IllegalStateException
dup
ldc "Already added!"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L23:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 3
iconst_1
iadd
istore 3
goto L19
L18:
aload 0
aconst_null
putfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
L20:
aload 1
getfield android/support/v4/app/FragmentManagerState/mBackStack [Landroid/support/v4/app/BackStackState;
ifnull L24
aload 0
new java/util/ArrayList
dup
aload 1
getfield android/support/v4/app/FragmentManagerState/mBackStack [Landroid/support/v4/app/BackStackState;
arraylength
invokespecial java/util/ArrayList/<init>(I)V
putfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
iconst_0
istore 3
L25:
iload 3
aload 1
getfield android/support/v4/app/FragmentManagerState/mBackStack [Landroid/support/v4/app/BackStackState;
arraylength
if_icmpge L1
aload 1
getfield android/support/v4/app/FragmentManagerState/mBackStack [Landroid/support/v4/app/BackStackState;
iload 3
aaload
aload 0
invokevirtual android/support/v4/app/BackStackState/instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
astore 2
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L26
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "restoreAllState: back stack #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " (index "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
getfield android/support/v4/app/BackStackRecord/mIndex I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "): "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
ldc "  "
new java/io/PrintWriter
dup
new android/support/v4/util/LogWriter
dup
ldc "FragmentManager"
invokespecial android/support/v4/util/LogWriter/<init>(Ljava/lang/String;)V
invokespecial java/io/PrintWriter/<init>(Ljava/io/Writer;)V
iconst_0
invokevirtual android/support/v4/app/BackStackRecord/dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
L26:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
getfield android/support/v4/app/BackStackRecord/mIndex I
iflt L27
aload 0
aload 2
getfield android/support/v4/app/BackStackRecord/mIndex I
aload 2
invokevirtual android/support/v4/app/FragmentManagerImpl/setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
L27:
iload 3
iconst_1
iadd
istore 3
goto L25
L24:
aload 0
aconst_null
putfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
return
.limit locals 6
.limit stack 7
.end method

.method retainNonConfig()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
aconst_null
astore 4
aconst_null
astore 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
ifnull L0
iconst_0
istore 1
L1:
aload 3
astore 4
iload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 6
aload 3
astore 5
aload 6
ifnull L2
aload 3
astore 5
aload 6
getfield android/support/v4/app/Fragment/mRetainInstance Z
ifeq L2
aload 3
astore 4
aload 3
ifnonnull L3
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
L3:
aload 4
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 6
iconst_1
putfield android/support/v4/app/Fragment/mRetaining Z
aload 6
getfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
ifnull L4
aload 6
getfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
getfield android/support/v4/app/Fragment/mIndex I
istore 2
L5:
aload 6
iload 2
putfield android/support/v4/app/Fragment/mTargetIndex I
aload 4
astore 5
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L2
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "retainNonConfig: keeping retained "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 4
astore 5
L2:
iload 1
iconst_1
iadd
istore 1
aload 5
astore 3
goto L1
L4:
iconst_m1
istore 2
goto L5
L0:
aload 4
areturn
.limit locals 7
.limit stack 3
.end method

.method saveAllState()Landroid/os/Parcelable;
aload 0
invokevirtual android/support/v4/app/FragmentManagerImpl/execPendingActions()Z
pop
getstatic android/support/v4/app/FragmentManagerImpl/HONEYCOMB Z
ifeq L0
aload 0
iconst_1
putfield android/support/v4/app/FragmentManagerImpl/mStateSaved Z
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
ifnull L1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ifgt L2
L1:
aconst_null
areturn
L2:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 4
iload 4
anewarray android/support/v4/app/FragmentState
astore 8
iconst_0
istore 2
iconst_0
istore 1
L3:
iload 1
iload 4
if_icmpge L4
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 5
aload 5
ifnull L5
aload 5
getfield android/support/v4/app/Fragment/mIndex I
ifge L6
aload 0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failure saving state: active "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " has cleared index: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
getfield android/support/v4/app/Fragment/mIndex I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
invokespecial android/support/v4/app/FragmentManagerImpl/throwException(Ljava/lang/RuntimeException;)V
L6:
iconst_1
istore 3
new android/support/v4/app/FragmentState
dup
aload 5
invokespecial android/support/v4/app/FragmentState/<init>(Landroid/support/v4/app/Fragment;)V
astore 6
aload 8
iload 1
aload 6
aastore
aload 5
getfield android/support/v4/app/Fragment/mState I
ifle L7
aload 6
getfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
ifnonnull L7
aload 6
aload 0
aload 5
invokevirtual android/support/v4/app/FragmentManagerImpl/saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
putfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
aload 5
getfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
ifnull L8
aload 5
getfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
getfield android/support/v4/app/Fragment/mIndex I
ifge L9
aload 0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failure saving state: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " has target not in fragment manager: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
getfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
invokespecial android/support/v4/app/FragmentManagerImpl/throwException(Ljava/lang/RuntimeException;)V
L9:
aload 6
getfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
ifnonnull L10
aload 6
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
putfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
L10:
aload 0
aload 6
getfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
ldc "android:target_state"
aload 5
getfield android/support/v4/app/Fragment/mTarget Landroid/support/v4/app/Fragment;
invokevirtual android/support/v4/app/FragmentManagerImpl/putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
aload 5
getfield android/support/v4/app/Fragment/mTargetRequestCode I
ifeq L8
aload 6
getfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
ldc "android:target_req_state"
aload 5
getfield android/support/v4/app/Fragment/mTargetRequestCode I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
L8:
iload 3
istore 2
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L5
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Saved state of "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ": "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
getfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 3
istore 2
L5:
iload 1
iconst_1
iadd
istore 1
goto L3
L7:
aload 6
aload 5
getfield android/support/v4/app/Fragment/mSavedFragmentState Landroid/os/Bundle;
putfield android/support/v4/app/FragmentState/mSavedFragmentState Landroid/os/Bundle;
goto L8
L4:
iload 2
ifne L11
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L1
ldc "FragmentManager"
ldc "saveAllState: no fragments!"
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
aconst_null
areturn
L11:
aconst_null
astore 6
aconst_null
astore 7
aload 6
astore 5
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
ifnull L12
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
aload 6
astore 5
iload 2
ifle L12
iload 2
newarray int
astore 6
iconst_0
istore 1
L13:
aload 6
astore 5
iload 1
iload 2
if_icmpge L12
aload 6
iload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
getfield android/support/v4/app/Fragment/mIndex I
iastore
aload 6
iload 1
iaload
ifge L14
aload 0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Failure saving state: active "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " has cleared index: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
iload 1
iaload
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
invokespecial android/support/v4/app/FragmentManagerImpl/throwException(Ljava/lang/RuntimeException;)V
L14:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L15
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "saveAllState: adding fragment #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ": "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAdded Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L15:
iload 1
iconst_1
iadd
istore 1
goto L13
L12:
aload 7
astore 6
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
ifnull L16
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
aload 7
astore 6
iload 2
ifle L16
iload 2
anewarray android/support/v4/app/BackStackState
astore 7
iconst_0
istore 1
L17:
aload 7
astore 6
iload 1
iload 2
if_icmpge L16
aload 7
iload 1
new android/support/v4/app/BackStackState
dup
aload 0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/BackStackRecord
invokespecial android/support/v4/app/BackStackState/<init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;)V
aastore
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L18
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "saveAllState: adding back stack #"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ": "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStack Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L18:
iload 1
iconst_1
iadd
istore 1
goto L17
L16:
new android/support/v4/app/FragmentManagerState
dup
invokespecial android/support/v4/app/FragmentManagerState/<init>()V
astore 7
aload 7
aload 8
putfield android/support/v4/app/FragmentManagerState/mActive [Landroid/support/v4/app/FragmentState;
aload 7
aload 5
putfield android/support/v4/app/FragmentManagerState/mAdded [I
aload 7
aload 6
putfield android/support/v4/app/FragmentManagerState/mBackStack [Landroid/support/v4/app/BackStackState;
aload 7
areturn
.limit locals 9
.limit stack 7
.end method

.method saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
aconst_null
astore 3
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mStateBundle Landroid/os/Bundle;
ifnonnull L0
aload 0
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mStateBundle Landroid/os/Bundle;
L0:
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mStateBundle Landroid/os/Bundle;
invokevirtual android/support/v4/app/Fragment/performSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mStateBundle Landroid/os/Bundle;
invokevirtual android/os/Bundle/isEmpty()Z
ifne L1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mStateBundle Landroid/os/Bundle;
astore 3
aload 0
aconst_null
putfield android/support/v4/app/FragmentManagerImpl/mStateBundle Landroid/os/Bundle;
L1:
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
ifnull L2
aload 0
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
L2:
aload 3
astore 2
aload 1
getfield android/support/v4/app/Fragment/mSavedViewState Landroid/util/SparseArray;
ifnull L3
aload 3
astore 2
aload 3
ifnonnull L4
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
L4:
aload 2
ldc "android:view_state"
aload 1
getfield android/support/v4/app/Fragment/mSavedViewState Landroid/util/SparseArray;
invokevirtual android/os/Bundle/putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
L3:
aload 2
astore 3
aload 1
getfield android/support/v4/app/Fragment/mUserVisibleHint Z
ifne L5
aload 2
astore 3
aload 2
ifnonnull L6
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
L6:
aload 3
ldc "android:user_visible_hint"
aload 1
getfield android/support/v4/app/Fragment/mUserVisibleHint Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
L5:
aload 3
areturn
.limit locals 4
.limit stack 3
.end method

.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
aconst_null
astore 3
aload 1
getfield android/support/v4/app/Fragment/mIndex I
ifge L0
aload 0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Fragment "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc " is not currently in the FragmentManager"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
invokespecial android/support/v4/app/FragmentManagerImpl/throwException(Ljava/lang/RuntimeException;)V
L0:
aload 3
astore 2
aload 1
getfield android/support/v4/app/Fragment/mState I
ifle L1
aload 0
aload 1
invokevirtual android/support/v4/app/FragmentManagerImpl/saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
astore 1
aload 3
astore 2
aload 1
ifnull L1
new android/support/v4/app/Fragment$SavedState
dup
aload 1
invokespecial android/support/v4/app/Fragment$SavedState/<init>(Landroid/os/Bundle;)V
astore 2
L1:
aload 2
areturn
.limit locals 4
.limit stack 5
.end method

.method saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
aload 1
getfield android/support/v4/app/Fragment/mInnerView Landroid/view/View;
ifnonnull L0
L1:
return
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mStateArray Landroid/util/SparseArray;
ifnonnull L2
aload 0
new android/util/SparseArray
dup
invokespecial android/util/SparseArray/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mStateArray Landroid/util/SparseArray;
L3:
aload 1
getfield android/support/v4/app/Fragment/mInnerView Landroid/view/View;
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mStateArray Landroid/util/SparseArray;
invokevirtual android/view/View/saveHierarchyState(Landroid/util/SparseArray;)V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mStateArray Landroid/util/SparseArray;
invokevirtual android/util/SparseArray/size()I
ifle L1
aload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mStateArray Landroid/util/SparseArray;
putfield android/support/v4/app/Fragment/mSavedViewState Landroid/util/SparseArray;
aload 0
aconst_null
putfield android/support/v4/app/FragmentManagerImpl/mStateArray Landroid/util/SparseArray;
return
L2:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mStateArray Landroid/util/SparseArray;
invokevirtual android/util/SparseArray/clear()V
goto L3
.limit locals 2
.limit stack 3
.end method

.method public setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch all from L4 to L5 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
.catch all from L8 to L9 using L2
.catch all from L9 to L10 using L2
.catch all from L10 to L11 using L2
.catch all from L12 to L13 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
aload 0
monitorenter
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
L1:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 4
L3:
iload 4
istore 3
iload 1
iload 4
if_icmpge L17
L4:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L5
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Setting back stack index "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " to "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
iload 1
aload 2
invokevirtual java/util/ArrayList/set(ILjava/lang/Object;)Ljava/lang/Object;
pop
L6:
aload 0
monitorexit
L7:
return
L17:
iload 3
iload 1
if_icmpge L12
L8:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
aconst_null
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailBackStackIndices Ljava/util/ArrayList;
ifnonnull L9
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v4/app/FragmentManagerImpl/mAvailBackStackIndices Ljava/util/ArrayList;
L9:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L10
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Adding available back stack index "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L10:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mAvailBackStackIndices Ljava/util/ArrayList;
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L11:
iload 3
iconst_1
iadd
istore 3
goto L17
L12:
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L13
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Adding back stack index "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " with "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L13:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mBackStackIndices Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L14:
goto L6
L2:
astore 2
L15:
aload 0
monitorexit
L16:
aload 2
athrow
.limit locals 5
.limit stack 3
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;II)V
getstatic android/support/v4/app/FragmentManagerImpl/DEBUG Z
ifeq L0
ldc "FragmentManager"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "show: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
aload 1
getfield android/support/v4/app/Fragment/mHidden Z
ifeq L1
aload 1
iconst_0
putfield android/support/v4/app/Fragment/mHidden Z
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
ifnull L2
aload 0
aload 1
iload 2
iconst_1
iload 3
invokevirtual android/support/v4/app/FragmentManagerImpl/loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
astore 4
aload 4
ifnull L3
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
aload 4
invokevirtual android/view/View/startAnimation(Landroid/view/animation/Animation;)V
L3:
aload 1
getfield android/support/v4/app/Fragment/mView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L2:
aload 1
getfield android/support/v4/app/Fragment/mAdded Z
ifeq L4
aload 1
getfield android/support/v4/app/Fragment/mHasMenu Z
ifeq L4
aload 1
getfield android/support/v4/app/Fragment/mMenuVisible Z
ifeq L4
aload 0
iconst_1
putfield android/support/v4/app/FragmentManagerImpl/mNeedMenuInvalidate Z
L4:
aload 1
iconst_0
invokevirtual android/support/v4/app/Fragment/onHiddenChanged(Z)V
L1:
return
.limit locals 5
.limit stack 5
.end method

.method startPendingDeferredFragments()V
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
ifnonnull L0
L1:
return
L0:
iconst_0
istore 1
L2:
iload 1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActive Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 2
aload 2
ifnull L3
aload 0
aload 2
invokevirtual android/support/v4/app/FragmentManagerImpl/performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
L3:
iload 1
iconst_1
iadd
istore 1
goto L2
.limit locals 3
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
sipush 128
invokespecial java/lang/StringBuilder/<init>(I)V
astore 1
aload 1
ldc "FragmentManager{"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
aload 0
invokestatic java/lang/System/identityHashCode(Ljava/lang/Object;)I
invokestatic java/lang/Integer/toHexString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
ldc " in "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mParent Landroid/support/v4/app/Fragment;
ifnull L0
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mParent Landroid/support/v4/app/Fragment;
aload 1
invokestatic android/support/v4/util/DebugUtils/buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
L1:
aload 1
ldc "}}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L0:
aload 0
getfield android/support/v4/app/FragmentManagerImpl/mActivity Landroid/support/v4/app/FragmentActivity;
aload 1
invokestatic android/support/v4/util/DebugUtils/buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
goto L1
.limit locals 2
.limit stack 3
.end method
