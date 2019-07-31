.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/guide/GuideAdapter
.super android/support/v4/view/PagerAdapter

.field private 'mViews' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/view/View;>;"

.method public <init>(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Landroid/view/View;>;)V"
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/guide/GuideAdapter/mViews Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
aload 1
checkcast android/support/v4/view/ViewPager
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideAdapter/mViews Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/support/v4/view/ViewPager/removeView(Landroid/view/View;)V
return
.limit locals 4
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideAdapter/mViews Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideAdapter/mViews Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
aload 1
checkcast android/support/v4/view/ViewPager
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideAdapter/mViews Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/view/View
iconst_0
invokevirtual android/support/v4/view/ViewPager/addView(Landroid/view/View;I)V
aload 0
getfield com/nd/android/u/cloud/activity/guide/GuideAdapter/mViews Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
aload 1
aload 2
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
