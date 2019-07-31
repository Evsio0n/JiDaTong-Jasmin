.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter
.super android/support/v4/view/PagerAdapter
.implements com/common/android/ui/viewPagerIndicator/TitleProvider

.field 'counts' [I

.field 'mListViews' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/view/View;>;"

.field private 'mTitleList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/String;>;"

.method public <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Landroid/view/View;>;Ljava/util/ArrayList<Ljava/lang/String;>;)V"
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mListViews Ljava/util/ArrayList;
aload 0
aload 2
putfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mTitleList Ljava/util/ArrayList;
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mTitleList Ljava/util/ArrayList;
ifnull L0
aload 0
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mTitleList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
newarray int
putfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/counts [I
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mListViews Ljava/util/ArrayList;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mListViews Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iload 2
if_icmplt L1
aload 1
checkcast android/support/v4/view/ViewPager
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mListViews Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/support/v4/view/ViewPager/removeView(Landroid/view/View;)V
return
.limit locals 4
.limit stack 3
.end method

.method public finishUpdate(Landroid/view/View;)V
return
.limit locals 2
.limit stack 0
.end method

.method public getCount()I
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mListViews Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mListViews Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTitle(I)Ljava/lang/String;
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mTitleList Ljava/util/ArrayList;
ifnull L0
iload 1
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mTitleList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/counts [I
ifnull L1
iload 1
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/counts [I
arraylength
if_icmpge L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mTitleList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/counts [I
iload 1
iaload
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
L1:
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mTitleList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/String
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "title"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public getmListViews()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Landroid/view/View;>;"
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mListViews Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mListViews Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 1
checkcast android/support/v4/view/ViewPager
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mListViews Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/support/v4/view/ViewPager/addView(Landroid/view/View;)V
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mListViews Ljava/util/ArrayList;
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

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
return
.limit locals 3
.limit stack 0
.end method

.method public saveState()Landroid/os/Parcelable;
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCount(II)V
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/counts [I
ifnull L0
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/counts [I
arraylength
iload 1
if_icmplt L0
aload 0
getfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/counts [I
iload 1
iload 2
iastore
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public setmListViews(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Landroid/view/View;>;)V"
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/adapter/SendFlowerPagerAdapter/mListViews Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public startUpdate(Landroid/view/View;)V
return
.limit locals 2
.limit stack 0
.end method
