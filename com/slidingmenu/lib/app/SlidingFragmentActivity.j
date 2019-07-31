.bytecode 50.0
.class public synchronized com/slidingmenu/lib/app/SlidingFragmentActivity
.super android/support/v4/app/FragmentActivity
.implements com/slidingmenu/lib/app/SlidingActivityBase

.field private 'mHelper' Lcom/slidingmenu/lib/app/SlidingActivityHelper;

.method public <init>()V
aload 0
invokespecial android/support/v4/app/FragmentActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public findViewById(I)Landroid/view/View;
aload 0
iload 1
invokespecial android/support/v4/app/FragmentActivity/findViewById(I)Landroid/view/View;
astore 2
aload 2
ifnull L0
aload 2
areturn
L0:
aload 0
getfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
iload 1
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/findViewById(I)Landroid/view/View;
areturn
.limit locals 3
.limit stack 2
.end method

.method public getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;
aload 0
getfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onCreate(Landroid/os/Bundle;)V
aload 0
new com/slidingmenu/lib/app/SlidingActivityHelper
dup
aload 0
invokespecial com/slidingmenu/lib/app/SlidingActivityHelper/<init>(Landroid/app/Activity;)V
putfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
aload 0
getfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
aload 1
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/onCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
aload 0
getfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
iload 1
aload 2
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/onKeyUp(ILandroid/view/KeyEvent;)Z
istore 3
iload 3
ifeq L0
iload 3
ireturn
L0:
aload 0
iload 1
aload 2
invokespecial android/support/v4/app/FragmentActivity/onKeyUp(ILandroid/view/KeyEvent;)Z
ireturn
.limit locals 4
.limit stack 3
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onPostCreate(Landroid/os/Bundle;)V
aload 0
getfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
aload 1
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/onPostCreate(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial android/support/v4/app/FragmentActivity/onSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
aload 1
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/onSaveInstanceState(Landroid/os/Bundle;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setBehindContentView(I)V
aload 0
aload 0
invokevirtual com/slidingmenu/lib/app/SlidingFragmentActivity/getLayoutInflater()Landroid/view/LayoutInflater;
iload 1
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
invokevirtual com/slidingmenu/lib/app/SlidingFragmentActivity/setBehindContentView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 4
.end method

.method public setBehindContentView(Landroid/view/View;)V
aload 0
aload 1
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual com/slidingmenu/lib/app/SlidingFragmentActivity/setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 2
.limit stack 6
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
aload 1
aload 2
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 3
.limit stack 3
.end method

.method public setContentView(I)V
aload 0
aload 0
invokevirtual com/slidingmenu/lib/app/SlidingFragmentActivity/getLayoutInflater()Landroid/view/LayoutInflater;
iload 1
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
invokevirtual com/slidingmenu/lib/app/SlidingFragmentActivity/setContentView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 4
.end method

.method public setContentView(Landroid/view/View;)V
aload 0
aload 1
new android/view/ViewGroup$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual com/slidingmenu/lib/app/SlidingFragmentActivity/setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 2
.limit stack 6
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
aload 1
aload 2
invokespecial android/support/v4/app/FragmentActivity/setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
aload 1
aload 2
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return
.limit locals 3
.limit stack 3
.end method

.method public setSlidingActionBarEnabled(Z)V
aload 0
getfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
iload 1
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/setSlidingActionBarEnabled(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public showContent()V
aload 0
getfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/showContent()V
return
.limit locals 1
.limit stack 1
.end method

.method public showMenu()V
aload 0
getfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/showMenu()V
return
.limit locals 1
.limit stack 1
.end method

.method public showSecondaryMenu()V
aload 0
getfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/showSecondaryMenu()V
return
.limit locals 1
.limit stack 1
.end method

.method public toggle()V
aload 0
getfield com/slidingmenu/lib/app/SlidingFragmentActivity/mHelper Lcom/slidingmenu/lib/app/SlidingActivityHelper;
invokevirtual com/slidingmenu/lib/app/SlidingActivityHelper/toggle()V
return
.limit locals 1
.limit stack 1
.end method
