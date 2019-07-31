.bytecode 50.0
.class synchronized android/support/v4/view/ViewPager$ViewPositionComparator
.super java/lang/Object
.implements java/util/Comparator
.signature "Ljava/lang/Object;Ljava/util/Comparator<Landroid/view/View;>;"
.inner class static ViewPositionComparator inner android/support/v4/view/ViewPager$ViewPositionComparator outer android/support/v4/view/ViewPager

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public compare(Landroid/view/View;Landroid/view/View;)I
aload 1
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/support/v4/view/ViewPager$LayoutParams
astore 1
aload 2
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/support/v4/view/ViewPager$LayoutParams
astore 2
aload 1
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
aload 2
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
if_icmpeq L0
aload 1
getfield android/support/v4/view/ViewPager$LayoutParams/isDecor Z
ifeq L1
iconst_1
ireturn
L1:
iconst_m1
ireturn
L0:
aload 1
getfield android/support/v4/view/ViewPager$LayoutParams/position I
aload 2
getfield android/support/v4/view/ViewPager$LayoutParams/position I
isub
ireturn
.limit locals 3
.limit stack 2
.end method

.method public volatile synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
aload 0
aload 1
checkcast android/view/View
aload 2
checkcast android/view/View
invokevirtual android/support/v4/view/ViewPager$ViewPositionComparator/compare(Landroid/view/View;Landroid/view/View;)I
ireturn
.limit locals 3
.limit stack 3
.end method
