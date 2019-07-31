.bytecode 50.0
.class synchronized com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1
.super java/lang/Object
.implements com/product/android/ui/waterfall/LazyScrollView$OnScrollListener
.enclosing method com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/initLayout()V
.inner class inner com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;

.method <init>(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onAutoScroll(IIII)V
iload 2
ifne L0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$000(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/product/android/ui/waterfall/OnHeaderScrollListener;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$000(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/product/android/ui/waterfall/OnHeaderScrollListener;
invokeinterface com/product/android/ui/waterfall/OnHeaderScrollListener/showHeader()V 0
L0:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
iload 2
i2l
iload 4
i2l
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$700(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;JJ)V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
iload 2
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$802(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;I)I
pop
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$200(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Ljava/util/ArrayList;
ifnull L1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$400(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$200(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
if_icmplt L2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$400(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$506(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
if_icmplt L2
L1:
return
L2:
iload 2
iload 4
if_icmple L1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$900(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/product/android/ui/waterfall/LazyScrollView;
ifnull L1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$900(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/product/android/ui/waterfall/LazyScrollView;
iconst_0
invokevirtual com/product/android/ui/waterfall/LazyScrollView/getChildAt(I)Landroid/view/View;
ifnull L1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$900(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/product/android/ui/waterfall/LazyScrollView;
iconst_0
invokevirtual com/product/android/ui/waterfall/LazyScrollView/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getMeasuredHeight()I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$900(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/product/android/ui/waterfall/LazyScrollView;
invokevirtual com/product/android/ui/waterfall/LazyScrollView/getScrollY()I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$900(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/product/android/ui/waterfall/LazyScrollView;
invokevirtual com/product/android/ui/waterfall/LazyScrollView/getHeight()I
iconst_2
imul
iadd
if_icmpgt L1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
iconst_1
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$602(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;Z)Z
pop
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokevirtual com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/refreshWaterFlow()V
return
.limit locals 5
.limit stack 5
.end method

.method public onBottom()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$100(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Z
ifeq L0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$200(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Ljava/util/ArrayList;
ifnonnull L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$300(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Z
ifne L2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$400(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$200(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
iconst_1
isub
if_icmplt L2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$400(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$506(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
if_icmpge L0
L2:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
iconst_1
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$602(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;Z)Z
pop
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokevirtual com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/refreshWaterFlow()V
return
.limit locals 1
.limit stack 3
.end method

.method public onMove()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$1000(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Z
ifeq L0
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/pause()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
iconst_0
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$1002(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;Z)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public onScroll()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$000(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/product/android/ui/waterfall/OnHeaderScrollListener;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$000(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/product/android/ui/waterfall/OnHeaderScrollListener;
invokeinterface com/product/android/ui/waterfall/OnHeaderScrollListener/hideHeader()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onStop()V
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/resume()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
iconst_1
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$1002(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;Z)Z
pop
return
.limit locals 1
.limit stack 2
.end method

.method public onTop()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$000(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/product/android/ui/waterfall/OnHeaderScrollListener;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$1/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$000(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/product/android/ui/waterfall/OnHeaderScrollListener;
invokeinterface com/product/android/ui/waterfall/OnHeaderScrollListener/showHeader()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public onUp()V
return
.limit locals 1
.limit stack 0
.end method
