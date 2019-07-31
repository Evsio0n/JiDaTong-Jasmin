.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/TopRankPagerAdapter
.super android/support/v4/view/PagerAdapter
.implements com/common/android/ui/viewPagerIndicator/TitleProvider

.field private 'mContext' Landroid/content/Context;

.field private 'mListViews' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/view/View;>;"

.field private 'mTitleList' [I

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;[I)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Landroid/view/View;>;[I)V"
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mListViews Ljava/util/ArrayList;
aload 0
aload 3
putfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mTitleList [I
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mContext Landroid/content/Context;
return
.limit locals 4
.limit stack 2
.end method

.method public final destroyItem(Landroid/view/View;ILjava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mListViews Ljava/util/ArrayList;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mListViews Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iload 2
if_icmplt L1
aload 1
checkcast android/support/v4/view/ViewPager
aload 0
getfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mListViews Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/support/v4/view/ViewPager/removeView(Landroid/view/View;)V
return
.limit locals 4
.limit stack 3
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mListViews Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mListViews Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getTitle(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mTitleList [I
iload 1
iaload
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method

.method public final getmListViews()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Landroid/view/View;>;"
aload 0
getfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mListViews Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mListViews Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 1
checkcast android/support/v4/view/ViewPager
aload 0
getfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mListViews Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/support/v4/view/ViewPager/addView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/adapter/TopRankPagerAdapter/mListViews Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 3
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
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
