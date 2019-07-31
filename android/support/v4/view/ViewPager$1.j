.bytecode 50.0
.class final synchronized android/support/v4/view/ViewPager$1
.super java/lang/Object
.implements java/util/Comparator
.signature "Ljava/lang/Object;Ljava/util/Comparator<Landroid/support/v4/view/ViewPager$ItemInfo;>;"
.enclosing method android/support/v4/view/ViewPager
.inner class static final inner android/support/v4/view/ViewPager$1

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public compare(Landroid/support/v4/view/ViewPager$ItemInfo;Landroid/support/v4/view/ViewPager$ItemInfo;)I
aload 1
getfield android/support/v4/view/ViewPager$ItemInfo/position I
aload 2
getfield android/support/v4/view/ViewPager$ItemInfo/position I
isub
ireturn
.limit locals 3
.limit stack 2
.end method

.method public volatile synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
aload 0
aload 1
checkcast android/support/v4/view/ViewPager$ItemInfo
aload 2
checkcast android/support/v4/view/ViewPager$ItemInfo
invokevirtual android/support/v4/view/ViewPager$1/compare(Landroid/support/v4/view/ViewPager$ItemInfo;Landroid/support/v4/view/ViewPager$ItemInfo;)I
ireturn
.limit locals 3
.limit stack 3
.end method
