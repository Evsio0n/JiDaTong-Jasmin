.bytecode 50.0
.class public synchronized android/support/v13/app/FragmentTabHost
.super android/widget/TabHost
.implements android/widget/TabHost$OnTabChangeListener
.inner class static synthetic inner android/support/v13/app/FragmentTabHost$1
.inner class static DummyTabFactory inner android/support/v13/app/FragmentTabHost$DummyTabFactory outer android/support/v13/app/FragmentTabHost
.inner class static SavedState inner android/support/v13/app/FragmentTabHost$SavedState outer android/support/v13/app/FragmentTabHost
.inner class static final inner android/support/v13/app/FragmentTabHost$SavedState$1
.inner class static final TabInfo inner android/support/v13/app/FragmentTabHost$TabInfo outer android/support/v13/app/FragmentTabHost

.field private 'mAttached' Z

.field private 'mContainerId' I

.field private 'mContext' Landroid/content/Context;

.field private 'mFragmentManager' Landroid/app/FragmentManager;

.field private 'mLastTab' Landroid/support/v13/app/FragmentTabHost$TabInfo;

.field private 'mOnTabChangeListener' Landroid/widget/TabHost$OnTabChangeListener;

.field private 'mRealTabContent' Landroid/widget/FrameLayout;

.field private final 'mTabs' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/support/v13/app/FragmentTabHost$TabInfo;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial android/widget/TabHost/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v13/app/FragmentTabHost/mTabs Ljava/util/ArrayList;
aload 0
aload 1
aconst_null
invokespecial android/support/v13/app/FragmentTabHost/initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/TabHost/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield android/support/v13/app/FragmentTabHost/mTabs Ljava/util/ArrayList;
aload 0
aload 1
aload 2
invokespecial android/support/v13/app/FragmentTabHost/initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 3
.limit stack 3
.end method

.method private doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
aconst_null
astore 4
iconst_0
istore 3
L0:
iload 3
aload 0
getfield android/support/v13/app/FragmentTabHost/mTabs Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
getfield android/support/v13/app/FragmentTabHost/mTabs Ljava/util/ArrayList;
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v13/app/FragmentTabHost$TabInfo
astore 5
aload 5
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 5
astore 4
L2:
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
aload 4
ifnonnull L3
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "No tab known for tag "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L3:
aload 2
astore 1
aload 0
getfield android/support/v13/app/FragmentTabHost/mLastTab Landroid/support/v13/app/FragmentTabHost$TabInfo;
aload 4
if_acmpeq L4
aload 2
astore 1
aload 2
ifnonnull L5
aload 0
getfield android/support/v13/app/FragmentTabHost/mFragmentManager Landroid/app/FragmentManager;
invokevirtual android/app/FragmentManager/beginTransaction()Landroid/app/FragmentTransaction;
astore 1
L5:
aload 0
getfield android/support/v13/app/FragmentTabHost/mLastTab Landroid/support/v13/app/FragmentTabHost$TabInfo;
ifnull L6
aload 0
getfield android/support/v13/app/FragmentTabHost/mLastTab Landroid/support/v13/app/FragmentTabHost$TabInfo;
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;
ifnull L6
aload 1
aload 0
getfield android/support/v13/app/FragmentTabHost/mLastTab Landroid/support/v13/app/FragmentTabHost$TabInfo;
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;
invokevirtual android/app/FragmentTransaction/detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
pop
L6:
aload 4
ifnull L7
aload 4
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;
ifnonnull L8
aload 4
aload 0
getfield android/support/v13/app/FragmentTabHost/mContext Landroid/content/Context;
aload 4
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$300(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
aload 4
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$400(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/os/Bundle;
invokestatic android/app/Fragment/instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$102(Landroid/support/v13/app/FragmentTabHost$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;
pop
aload 1
aload 0
getfield android/support/v13/app/FragmentTabHost/mContainerId I
aload 4
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;
aload 4
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;
invokevirtual android/app/FragmentTransaction/add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
pop
L7:
aload 0
aload 4
putfield android/support/v13/app/FragmentTabHost/mLastTab Landroid/support/v13/app/FragmentTabHost$TabInfo;
L4:
aload 1
areturn
L8:
aload 1
aload 4
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;
invokevirtual android/app/FragmentTransaction/attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
pop
goto L7
.limit locals 6
.limit stack 4
.end method

.method private ensureContent()V
aload 0
getfield android/support/v13/app/FragmentTabHost/mRealTabContent Landroid/widget/FrameLayout;
ifnonnull L0
aload 0
aload 0
aload 0
getfield android/support/v13/app/FragmentTabHost/mContainerId I
invokevirtual android/support/v13/app/FragmentTabHost/findViewById(I)Landroid/view/View;
checkcast android/widget/FrameLayout
putfield android/support/v13/app/FragmentTabHost/mRealTabContent Landroid/widget/FrameLayout;
aload 0
getfield android/support/v13/app/FragmentTabHost/mRealTabContent Landroid/widget/FrameLayout;
ifnonnull L0
new java/lang/IllegalStateException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "No tab content FrameLayout found for id "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield android/support/v13/app/FragmentTabHost/mContainerId I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
return
.limit locals 1
.limit stack 4
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 1
aload 2
iconst_1
newarray int
dup
iconst_0
ldc_w 16842995
iastore
iconst_0
iconst_0
invokevirtual android/content/Context/obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
astore 2
aload 0
aload 2
iconst_0
iconst_0
invokevirtual android/content/res/TypedArray/getResourceId(II)I
putfield android/support/v13/app/FragmentTabHost/mContainerId I
aload 2
invokevirtual android/content/res/TypedArray/recycle()V
aload 0
aload 0
invokespecial android/widget/TabHost/setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
aload 0
ldc_w 16908307
invokevirtual android/support/v13/app/FragmentTabHost/findViewById(I)Landroid/view/View;
ifnonnull L0
new android/widget/LinearLayout
dup
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 2
aload 2
iconst_1
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 0
aload 2
new android/widget/FrameLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/FrameLayout$LayoutParams/<init>(II)V
invokevirtual android/support/v13/app/FragmentTabHost/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/TabWidget
dup
aload 1
invokespecial android/widget/TabWidget/<init>(Landroid/content/Context;)V
astore 3
aload 3
ldc_w 16908307
invokevirtual android/widget/TabWidget/setId(I)V
aload 3
iconst_0
invokevirtual android/widget/TabWidget/setOrientation(I)V
aload 2
aload 3
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
bipush -2
fconst_0
invokespecial android/widget/LinearLayout$LayoutParams/<init>(IIF)V
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/FrameLayout
dup
aload 1
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
astore 3
aload 3
ldc_w 16908305
invokevirtual android/widget/FrameLayout/setId(I)V
aload 2
aload 3
new android/widget/LinearLayout$LayoutParams
dup
iconst_0
iconst_0
fconst_0
invokespecial android/widget/LinearLayout$LayoutParams/<init>(IIF)V
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new android/widget/FrameLayout
dup
aload 1
invokespecial android/widget/FrameLayout/<init>(Landroid/content/Context;)V
astore 1
aload 0
aload 1
putfield android/support/v13/app/FragmentTabHost/mRealTabContent Landroid/widget/FrameLayout;
aload 0
getfield android/support/v13/app/FragmentTabHost/mRealTabContent Landroid/widget/FrameLayout;
aload 0
getfield android/support/v13/app/FragmentTabHost/mContainerId I
invokevirtual android/widget/FrameLayout/setId(I)V
aload 2
aload 1
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_0
fconst_1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(IIF)V
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
L0:
return
.limit locals 4
.limit stack 7
.end method

.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
.signature "(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class<*>;Landroid/os/Bundle;)V"
aload 1
new android/support/v13/app/FragmentTabHost$DummyTabFactory
dup
aload 0
getfield android/support/v13/app/FragmentTabHost/mContext Landroid/content/Context;
invokespecial android/support/v13/app/FragmentTabHost$DummyTabFactory/<init>(Landroid/content/Context;)V
invokevirtual android/widget/TabHost$TabSpec/setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;
pop
aload 1
invokevirtual android/widget/TabHost$TabSpec/getTag()Ljava/lang/String;
astore 4
new android/support/v13/app/FragmentTabHost$TabInfo
dup
aload 4
aload 2
aload 3
invokespecial android/support/v13/app/FragmentTabHost$TabInfo/<init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
astore 2
aload 0
getfield android/support/v13/app/FragmentTabHost/mAttached Z
ifeq L0
aload 2
aload 0
getfield android/support/v13/app/FragmentTabHost/mFragmentManager Landroid/app/FragmentManager;
aload 4
invokevirtual android/app/FragmentManager/findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$102(Landroid/support/v13/app/FragmentTabHost$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;
pop
aload 2
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;
ifnull L0
aload 2
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;
invokevirtual android/app/Fragment/isDetached()Z
ifne L0
aload 0
getfield android/support/v13/app/FragmentTabHost/mFragmentManager Landroid/app/FragmentManager;
invokevirtual android/app/FragmentManager/beginTransaction()Landroid/app/FragmentTransaction;
astore 3
aload 3
aload 2
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;
invokevirtual android/app/FragmentTransaction/detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
pop
aload 3
invokevirtual android/app/FragmentTransaction/commit()I
pop
L0:
aload 0
getfield android/support/v13/app/FragmentTabHost/mTabs Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
aload 1
invokevirtual android/support/v13/app/FragmentTabHost/addTab(Landroid/widget/TabHost$TabSpec;)V
return
.limit locals 5
.limit stack 5
.end method

.method protected onAttachedToWindow()V
aload 0
invokespecial android/widget/TabHost/onAttachedToWindow()V
aload 0
invokevirtual android/support/v13/app/FragmentTabHost/getCurrentTabTag()Ljava/lang/String;
astore 4
aconst_null
astore 2
iconst_0
istore 1
L0:
iload 1
aload 0
getfield android/support/v13/app/FragmentTabHost/mTabs Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L1
aload 0
getfield android/support/v13/app/FragmentTabHost/mTabs Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/support/v13/app/FragmentTabHost$TabInfo
astore 5
aload 5
aload 0
getfield android/support/v13/app/FragmentTabHost/mFragmentManager Landroid/app/FragmentManager;
aload 5
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;
invokevirtual android/app/FragmentManager/findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$102(Landroid/support/v13/app/FragmentTabHost$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;
pop
aload 2
astore 3
aload 5
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;
ifnull L2
aload 2
astore 3
aload 5
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;
invokevirtual android/app/Fragment/isDetached()Z
ifne L2
aload 5
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;
aload 4
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
aload 5
putfield android/support/v13/app/FragmentTabHost/mLastTab Landroid/support/v13/app/FragmentTabHost$TabInfo;
aload 2
astore 3
L2:
iload 1
iconst_1
iadd
istore 1
aload 3
astore 2
goto L0
L3:
aload 2
astore 3
aload 2
ifnonnull L4
aload 0
getfield android/support/v13/app/FragmentTabHost/mFragmentManager Landroid/app/FragmentManager;
invokevirtual android/app/FragmentManager/beginTransaction()Landroid/app/FragmentTransaction;
astore 3
L4:
aload 3
aload 5
invokestatic android/support/v13/app/FragmentTabHost$TabInfo/access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;
invokevirtual android/app/FragmentTransaction/detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
pop
goto L2
L1:
aload 0
iconst_1
putfield android/support/v13/app/FragmentTabHost/mAttached Z
aload 0
aload 4
aload 2
invokespecial android/support/v13/app/FragmentTabHost/doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
astore 2
aload 2
ifnull L5
aload 2
invokevirtual android/app/FragmentTransaction/commit()I
pop
aload 0
getfield android/support/v13/app/FragmentTabHost/mFragmentManager Landroid/app/FragmentManager;
invokevirtual android/app/FragmentManager/executePendingTransactions()Z
pop
L5:
return
.limit locals 6
.limit stack 3
.end method

.method protected onDetachedFromWindow()V
aload 0
invokespecial android/widget/TabHost/onDetachedFromWindow()V
aload 0
iconst_0
putfield android/support/v13/app/FragmentTabHost/mAttached Z
return
.limit locals 1
.limit stack 2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 1
checkcast android/support/v13/app/FragmentTabHost$SavedState
astore 1
aload 0
aload 1
invokevirtual android/support/v13/app/FragmentTabHost$SavedState/getSuperState()Landroid/os/Parcelable;
invokespecial android/widget/TabHost/onRestoreInstanceState(Landroid/os/Parcelable;)V
aload 0
aload 1
getfield android/support/v13/app/FragmentTabHost$SavedState/curTab Ljava/lang/String;
invokevirtual android/support/v13/app/FragmentTabHost/setCurrentTabByTag(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
new android/support/v13/app/FragmentTabHost$SavedState
dup
aload 0
invokespecial android/widget/TabHost/onSaveInstanceState()Landroid/os/Parcelable;
invokespecial android/support/v13/app/FragmentTabHost$SavedState/<init>(Landroid/os/Parcelable;)V
astore 1
aload 1
aload 0
invokevirtual android/support/v13/app/FragmentTabHost/getCurrentTabTag()Ljava/lang/String;
putfield android/support/v13/app/FragmentTabHost$SavedState/curTab Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public onTabChanged(Ljava/lang/String;)V
aload 0
getfield android/support/v13/app/FragmentTabHost/mAttached Z
ifeq L0
aload 0
aload 1
aconst_null
invokespecial android/support/v13/app/FragmentTabHost/doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
astore 2
aload 2
ifnull L0
aload 2
invokevirtual android/app/FragmentTransaction/commit()I
pop
L0:
aload 0
getfield android/support/v13/app/FragmentTabHost/mOnTabChangeListener Landroid/widget/TabHost$OnTabChangeListener;
ifnull L1
aload 0
getfield android/support/v13/app/FragmentTabHost/mOnTabChangeListener Landroid/widget/TabHost$OnTabChangeListener;
aload 1
invokeinterface android/widget/TabHost$OnTabChangeListener/onTabChanged(Ljava/lang/String;)V 1
L1:
return
.limit locals 3
.limit stack 3
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
aload 0
aload 1
putfield android/support/v13/app/FragmentTabHost/mOnTabChangeListener Landroid/widget/TabHost$OnTabChangeListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setup()V
.annotation visible Ljava/lang/Deprecated;
.end annotation
new java/lang/IllegalStateException
dup
ldc "Must call setup() that takes a Context and FragmentManager"
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public setup(Landroid/content/Context;Landroid/app/FragmentManager;)V
aload 0
invokespecial android/widget/TabHost/setup()V
aload 0
aload 1
putfield android/support/v13/app/FragmentTabHost/mContext Landroid/content/Context;
aload 0
aload 2
putfield android/support/v13/app/FragmentTabHost/mFragmentManager Landroid/app/FragmentManager;
aload 0
invokespecial android/support/v13/app/FragmentTabHost/ensureContent()V
return
.limit locals 3
.limit stack 2
.end method

.method public setup(Landroid/content/Context;Landroid/app/FragmentManager;I)V
aload 0
invokespecial android/widget/TabHost/setup()V
aload 0
aload 1
putfield android/support/v13/app/FragmentTabHost/mContext Landroid/content/Context;
aload 0
aload 2
putfield android/support/v13/app/FragmentTabHost/mFragmentManager Landroid/app/FragmentManager;
aload 0
iload 3
putfield android/support/v13/app/FragmentTabHost/mContainerId I
aload 0
invokespecial android/support/v13/app/FragmentTabHost/ensureContent()V
aload 0
getfield android/support/v13/app/FragmentTabHost/mRealTabContent Landroid/widget/FrameLayout;
iload 3
invokevirtual android/widget/FrameLayout/setId(I)V
aload 0
invokevirtual android/support/v13/app/FragmentTabHost/getId()I
iconst_m1
if_icmpne L0
aload 0
ldc_w 16908306
invokevirtual android/support/v13/app/FragmentTabHost/setId(I)V
L0:
return
.limit locals 4
.limit stack 2
.end method
