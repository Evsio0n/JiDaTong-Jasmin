.bytecode 50.0
.class synchronized com/slidingmenu/lib/SlidingMenu$1
.super java/lang/Object
.implements com/slidingmenu/lib/CustomViewAbove$OnPageChangeListener
.enclosing method com/slidingmenu/lib/SlidingMenu/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.inner class inner com/slidingmenu/lib/SlidingMenu$1

.field public static final 'POSITION_CLOSE' I = 1


.field public static final 'POSITION_OPEN' I = 0


.field final synthetic 'this$0' Lcom/slidingmenu/lib/SlidingMenu;

.method <init>(Lcom/slidingmenu/lib/SlidingMenu;)V
aload 0
aload 1
putfield com/slidingmenu/lib/SlidingMenu$1/this$0 Lcom/slidingmenu/lib/SlidingMenu;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPageScrolled(IFI)V
return
.limit locals 4
.limit stack 0
.end method

.method public onPageSelected(I)V
iload 1
ifne L0
aload 0
getfield com/slidingmenu/lib/SlidingMenu$1/this$0 Lcom/slidingmenu/lib/SlidingMenu;
invokestatic com/slidingmenu/lib/SlidingMenu/access$0(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/SlidingMenu$OnOpenListener;
ifnull L0
aload 0
getfield com/slidingmenu/lib/SlidingMenu$1/this$0 Lcom/slidingmenu/lib/SlidingMenu;
invokestatic com/slidingmenu/lib/SlidingMenu/access$0(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/SlidingMenu$OnOpenListener;
invokeinterface com/slidingmenu/lib/SlidingMenu$OnOpenListener/onOpen()V 0
L1:
return
L0:
iload 1
iconst_1
if_icmpne L1
aload 0
getfield com/slidingmenu/lib/SlidingMenu$1/this$0 Lcom/slidingmenu/lib/SlidingMenu;
invokestatic com/slidingmenu/lib/SlidingMenu/access$1(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/SlidingMenu$OnCloseListener;
ifnull L1
aload 0
getfield com/slidingmenu/lib/SlidingMenu$1/this$0 Lcom/slidingmenu/lib/SlidingMenu;
invokestatic com/slidingmenu/lib/SlidingMenu/access$1(Lcom/slidingmenu/lib/SlidingMenu;)Lcom/slidingmenu/lib/SlidingMenu$OnCloseListener;
invokeinterface com/slidingmenu/lib/SlidingMenu$OnCloseListener/onClose()V 0
return
.limit locals 2
.limit stack 2
.end method
