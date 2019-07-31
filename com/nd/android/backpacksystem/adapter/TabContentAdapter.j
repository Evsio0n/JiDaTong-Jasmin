.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/adapter/TabContentAdapter
.super android/support/v4/app/FragmentPagerAdapter

.field private final 'mTabs' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"

.field private final 'mViewPager' Landroid/support/v4/view/ViewPager;

.method public <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Landroid/support/v4/view/ViewPager;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentPagerAdapter/<init>(Landroid/support/v4/app/FragmentManager;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/backpacksystem/adapter/TabContentAdapter/mTabs Ljava/util/ArrayList;
aload 0
aload 3
putfield com/nd/android/backpacksystem/adapter/TabContentAdapter/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
getfield com/nd/android/backpacksystem/adapter/TabContentAdapter/mViewPager Landroid/support/v4/view/ViewPager;
aload 0
invokevirtual android/support/v4/view/ViewPager/setAdapter(Landroid/support/v4/view/PagerAdapter;)V
return
.limit locals 4
.limit stack 3
.end method

.method public addTab(Landroid/support/v4/app/Fragment;)V
aload 0
getfield com/nd/android/backpacksystem/adapter/TabContentAdapter/mTabs Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
invokevirtual com/nd/android/backpacksystem/adapter/TabContentAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/backpacksystem/adapter/TabContentAdapter/mTabs Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
aload 0
getfield com/nd/android/backpacksystem/adapter/TabContentAdapter/mTabs Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
areturn
.limit locals 2
.limit stack 2
.end method
