.bytecode 50.0
.class synchronized android/support/v4/app/NoSaveStateFrameLayout
.super android/widget/FrameLayout

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method static wrap(Landroid/view/View;)Landroid/view/ViewGroup;
new android/support/v4/app/NoSaveStateFrameLayout
dup
aload 0
invokevirtual android/view/View/getContext()Landroid/content/Context;
invokespecial android/support/v4/app/NoSaveStateFrameLayout/<init>(Landroid/content/Context;)V
astore 1
aload 0
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
astore 2
aload 2
ifnull L0
aload 1
aload 2
invokevirtual android/support/v4/app/NoSaveStateFrameLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
L0:
aload 0
new android/widget/FrameLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 1
aload 0
invokevirtual android/support/v4/app/NoSaveStateFrameLayout/addView(Landroid/view/View;)V
aload 1
areturn
.limit locals 3
.limit stack 5
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
.signature "(Landroid/util/SparseArray<Landroid/os/Parcelable;>;)V"
aload 0
aload 1
invokevirtual android/support/v4/app/NoSaveStateFrameLayout/dispatchThawSelfOnly(Landroid/util/SparseArray;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
.signature "(Landroid/util/SparseArray<Landroid/os/Parcelable;>;)V"
aload 0
aload 1
invokevirtual android/support/v4/app/NoSaveStateFrameLayout/dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
return
.limit locals 2
.limit stack 2
.end method
