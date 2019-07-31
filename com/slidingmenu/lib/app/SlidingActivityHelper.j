.bytecode 50.0
.class public synchronized com/slidingmenu/lib/app/SlidingActivityHelper
.super java/lang/Object
.inner class inner com/slidingmenu/lib/app/SlidingActivityHelper$1

.field private 'mActivity' Landroid/app/Activity;

.field private 'mBroadcasting' Z

.field private 'mEnableSlide' Z

.field private 'mOnPostCreateCalled' Z

.field private 'mSlidingMenu' Lcom/slidingmenu/lib/SlidingMenu;

.field private 'mViewAbove' Landroid/view/View;

.field private 'mViewBehind' Landroid/view/View;

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/slidingmenu/lib/app/SlidingActivityHelper/mBroadcasting Z
aload 0
iconst_0
putfield com/slidingmenu/lib/app/SlidingActivityHelper/mOnPostCreateCalled Z
aload 0
iconst_1
putfield com/slidingmenu/lib/app/SlidingActivityHelper/mEnableSlide Z
aload 0
aload 1
putfield com/slidingmenu/lib/app/SlidingActivityHelper/mActivity Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$0(Lcom/slidingmenu/lib/app/SlidingActivityHelper;)Lcom/slidingmenu/lib/SlidingMenu;
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
areturn
.limit locals 1
.limit stack 1
.end method

.method public findViewById(I)Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
ifnull L0
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
iload 1
invokevirtual com/slidingmenu/lib/SlidingMenu/findViewById(I)Landroid/view/View;
astore 2
aload 2
ifnull L0
aload 2
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mActivity Landroid/app/Activity;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getResources()Landroid/content/res/Resources;
ldc "layout"
ldc "slidingmenumain"
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/getPackageName()Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
checkcast com/slidingmenu/lib/SlidingMenu
putfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
return
.limit locals 2
.limit stack 6
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
iload 1
iconst_4
if_icmpne L0
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
invokevirtual com/slidingmenu/lib/SlidingMenu/isMenuShowing()Z
ifeq L0
aload 0
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/showContent()V
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
iconst_1
istore 2
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mViewBehind Landroid/view/View;
ifnull L0
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mViewAbove Landroid/view/View;
ifnonnull L1
L0:
new java/lang/IllegalStateException
dup
ldc "Both setBehindContentView must be called in onCreate in addition to setContentView."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
iconst_1
putfield com/slidingmenu/lib/app/SlidingActivityHelper/mOnPostCreateCalled Z
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
astore 5
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mActivity Landroid/app/Activity;
astore 6
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mEnableSlide Z
ifeq L2
iconst_0
istore 2
L2:
aload 5
aload 6
iload 2
invokevirtual com/slidingmenu/lib/SlidingMenu/attachToActivity(Landroid/app/Activity;I)V
aload 1
ifnull L3
aload 1
ldc "SlidingActivityHelper.open"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
istore 3
aload 1
ldc "SlidingActivityHelper.secondary"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
istore 4
L4:
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/slidingmenu/lib/app/SlidingActivityHelper$1
dup
aload 0
iload 3
iload 4
invokespecial com/slidingmenu/lib/app/SlidingActivityHelper$1/<init>(Lcom/slidingmenu/lib/app/SlidingActivityHelper;ZZ)V
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
return
L3:
iconst_0
istore 3
iconst_0
istore 4
goto L4
.limit locals 7
.limit stack 6
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
aload 1
ldc "SlidingActivityHelper.open"
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
invokevirtual com/slidingmenu/lib/SlidingMenu/isMenuShowing()Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 1
ldc "SlidingActivityHelper.secondary"
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
invokevirtual com/slidingmenu/lib/SlidingMenu/isSecondaryMenuShowing()Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
return
.limit locals 2
.limit stack 3
.end method

.method public registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mBroadcasting Z
ifne L0
aload 0
aload 1
putfield com/slidingmenu/lib/app/SlidingActivityHelper/mViewAbove Landroid/view/View;
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
aload 1
putfield com/slidingmenu/lib/app/SlidingActivityHelper/mViewBehind Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mViewBehind Landroid/view/View;
invokevirtual com/slidingmenu/lib/SlidingMenu/setMenu(Landroid/view/View;)V
return
.limit locals 3
.limit stack 2
.end method

.method public setContentView(Landroid/view/View;)V
aload 0
iconst_1
putfield com/slidingmenu/lib/app/SlidingActivityHelper/mBroadcasting Z
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mActivity Landroid/app/Activity;
aload 1
invokevirtual android/app/Activity/setContentView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setSlidingActionBarEnabled(Z)V
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mOnPostCreateCalled Z
ifeq L0
new java/lang/IllegalStateException
dup
ldc "enableSlidingActionBar must be called in onCreate."
invokespecial java/lang/IllegalStateException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iload 1
putfield com/slidingmenu/lib/app/SlidingActivityHelper/mEnableSlide Z
return
.limit locals 2
.limit stack 3
.end method

.method public showContent()V
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
invokevirtual com/slidingmenu/lib/SlidingMenu/showContent()V
return
.limit locals 1
.limit stack 1
.end method

.method public showMenu()V
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
invokevirtual com/slidingmenu/lib/SlidingMenu/showMenu()V
return
.limit locals 1
.limit stack 1
.end method

.method public showSecondaryMenu()V
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
invokevirtual com/slidingmenu/lib/SlidingMenu/showSecondaryMenu()V
return
.limit locals 1
.limit stack 1
.end method

.method public toggle()V
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper/mSlidingMenu Lcom/slidingmenu/lib/SlidingMenu;
invokevirtual com/slidingmenu/lib/SlidingMenu/toggle()V
return
.limit locals 1
.limit stack 1
.end method
