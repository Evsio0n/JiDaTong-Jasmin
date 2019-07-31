.bytecode 50.0
.class synchronized com/slidingmenu/lib/SlidingMenu$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/slidingmenu/lib/SlidingMenu/manageLayers(F)V
.inner class inner com/slidingmenu/lib/SlidingMenu$2

.field final synthetic 'this$0' Lcom/slidingmenu/lib/SlidingMenu;

.field private final synthetic 'val$layerType' I

.method <init>(Lcom/slidingmenu/lib/SlidingMenu;I)V
aload 0
aload 1
putfield com/slidingmenu/lib/SlidingMenu$2/this$0 Lcom/slidingmenu/lib/SlidingMenu;
aload 0
iload 2
putfield com/slidingmenu/lib/SlidingMenu$2/val$layerType I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/slidingmenu/lib/SlidingMenu$2/this$0 Lcom/slidingmenu/lib/SlidingMenu;
invokevirtual com/slidingmenu/lib/SlidingMenu/getContent()Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/SlidingMenu$2/val$layerType I
aconst_null
invokevirtual android/view/View/setLayerType(ILandroid/graphics/Paint;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu$2/this$0 Lcom/slidingmenu/lib/SlidingMenu;
invokevirtual com/slidingmenu/lib/SlidingMenu/getMenu()Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/SlidingMenu$2/val$layerType I
aconst_null
invokevirtual android/view/View/setLayerType(ILandroid/graphics/Paint;)V
aload 0
getfield com/slidingmenu/lib/SlidingMenu$2/this$0 Lcom/slidingmenu/lib/SlidingMenu;
invokevirtual com/slidingmenu/lib/SlidingMenu/getSecondaryMenu()Landroid/view/View;
ifnull L0
aload 0
getfield com/slidingmenu/lib/SlidingMenu$2/this$0 Lcom/slidingmenu/lib/SlidingMenu;
invokevirtual com/slidingmenu/lib/SlidingMenu/getSecondaryMenu()Landroid/view/View;
aload 0
getfield com/slidingmenu/lib/SlidingMenu$2/val$layerType I
aconst_null
invokevirtual android/view/View/setLayerType(ILandroid/graphics/Paint;)V
L0:
return
.limit locals 1
.limit stack 3
.end method
