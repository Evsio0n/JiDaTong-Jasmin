.bytecode 50.0
.class synchronized com/slidingmenu/lib/app/SlidingActivityHelper$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/slidingmenu/lib/app/SlidingActivityHelper/onPostCreate(Landroid/os/Bundle;)V
.inner class inner com/slidingmenu/lib/app/SlidingActivityHelper$1

.field final synthetic 'this$0' Lcom/slidingmenu/lib/app/SlidingActivityHelper;

.field private final synthetic 'val$open' Z

.field private final synthetic 'val$secondary' Z

.method <init>(Lcom/slidingmenu/lib/app/SlidingActivityHelper;ZZ)V
aload 0
aload 1
putfield com/slidingmenu/lib/app/SlidingActivityHelper$1/this$0 Lcom/slidingmenu/lib/app/SlidingActivityHelper;
aload 0
iload 2
putfield com/slidingmenu/lib/app/SlidingActivityHelper$1/val$open Z
aload 0
iload 3
putfield com/slidingmenu/lib/app/SlidingActivityHelper$1/val$secondary Z
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper$1/val$open Z
ifeq L0
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper$1/val$secondary Z
ifeq L1
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper$1/this$0 Lcom/slidingmenu/lib/app/SlidingActivityHelper;
invokestatic com/slidingmenu/lib/app/SlidingActivityHelper/access$0(Lcom/slidingmenu/lib/app/SlidingActivityHelper;)Lcom/slidingmenu/lib/SlidingMenu;
iconst_0
invokevirtual com/slidingmenu/lib/SlidingMenu/showSecondaryMenu(Z)V
return
L1:
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper$1/this$0 Lcom/slidingmenu/lib/app/SlidingActivityHelper;
invokestatic com/slidingmenu/lib/app/SlidingActivityHelper/access$0(Lcom/slidingmenu/lib/app/SlidingActivityHelper;)Lcom/slidingmenu/lib/SlidingMenu;
iconst_0
invokevirtual com/slidingmenu/lib/SlidingMenu/showMenu(Z)V
return
L0:
aload 0
getfield com/slidingmenu/lib/app/SlidingActivityHelper$1/this$0 Lcom/slidingmenu/lib/app/SlidingActivityHelper;
invokestatic com/slidingmenu/lib/app/SlidingActivityHelper/access$0(Lcom/slidingmenu/lib/app/SlidingActivityHelper;)Lcom/slidingmenu/lib/SlidingMenu;
iconst_0
invokevirtual com/slidingmenu/lib/SlidingMenu/showContent(Z)V
return
.limit locals 1
.limit stack 2
.end method
