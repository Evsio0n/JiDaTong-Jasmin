.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable
.super java/lang/Object
.implements java/lang/Runnable
.inner class private FlingRunnable inner com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable outer com/nd/android/backpacksystem/widget/TDGallery

.field private 'mLastFlingY' I

.field private 'mScroller' Landroid/widget/Scroller;

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/TDGallery;

.method public <init>(Lcom/nd/android/backpacksystem/widget/TDGallery;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new android/widget/Scroller
dup
aload 1
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getContext()Landroid/content/Context;
invokespecial android/widget/Scroller/<init>(Landroid/content/Context;)V
putfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/mScroller Landroid/widget/Scroller;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;Z)V
aload 0
iload 1
invokespecial com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/endFling(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/backpacksystem/widget/TDGallery$FlingRunnable;)Landroid/widget/Scroller;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/mScroller Landroid/widget/Scroller;
areturn
.limit locals 1
.limit stack 1
.end method

.method private endFling(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
iconst_0
invokestatic com/nd/android/backpacksystem/widget/TDGallery/access$402(Lcom/nd/android/backpacksystem/widget/TDGallery;Z)Z
pop
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/mScroller Landroid/widget/Scroller;
iconst_1
invokevirtual android/widget/Scroller/forceFinished(Z)V
iload 1
ifeq L0
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/scrollIntoSlots()V
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/onEndFling()V
return
.limit locals 2
.limit stack 2
.end method

.method private startCommon()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/removeCallbacks(Ljava/lang/Runnable;)Z
pop
return
.limit locals 1
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokestatic com/nd/android/backpacksystem/widget/TDGallery/access$300(Lcom/nd/android/backpacksystem/widget/TDGallery;)Z
ifeq L0
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/runVertical()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public runVertical()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
getfield com/nd/android/backpacksystem/widget/TDGallery/mItemCount I
ifne L0
aload 0
iconst_1
invokespecial com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/endFling(Z)V
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
iconst_0
invokestatic com/nd/android/backpacksystem/widget/TDGallery/access$602(Lcom/nd/android/backpacksystem/widget/TDGallery;Z)Z
pop
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/mScroller Landroid/widget/Scroller;
astore 5
aload 5
invokevirtual android/widget/Scroller/computeScrollOffset()Z
istore 4
aload 5
invokevirtual android/widget/Scroller/getCurrY()I
istore 2
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/mLastFlingY I
iload 2
isub
istore 1
iload 1
ifle L1
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
invokestatic com/nd/android/backpacksystem/widget/TDGallery/access$702(Lcom/nd/android/backpacksystem/widget/TDGallery;I)I
pop
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getHeight()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingTop()I
isub
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingBottom()I
isub
iconst_1
isub
iload 1
invokestatic java/lang/Math/min(II)I
istore 1
L2:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
iload 1
invokestatic com/nd/android/backpacksystem/widget/TDGallery/access$800(Lcom/nd/android/backpacksystem/widget/TDGallery;I)V
iload 4
ifeq L3
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokestatic com/nd/android/backpacksystem/widget/TDGallery/access$600(Lcom/nd/android/backpacksystem/widget/TDGallery;)Z
ifne L3
aload 0
iload 2
putfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/mLastFlingY I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/post(Ljava/lang/Runnable;)Z
pop
return
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getChildCount()I
istore 3
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
getfield com/nd/android/backpacksystem/widget/TDGallery/mFirstPosition I
iload 3
iconst_1
isub
iadd
invokestatic com/nd/android/backpacksystem/widget/TDGallery/access$702(Lcom/nd/android/backpacksystem/widget/TDGallery;I)I
pop
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getHeight()I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingBottom()I
isub
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/getPaddingTop()I
isub
iconst_1
isub
ineg
iload 1
invokestatic java/lang/Math/max(II)I
istore 1
goto L2
L3:
aload 0
iconst_1
invokespecial com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/endFling(Z)V
return
.limit locals 6
.limit stack 4
.end method

.method public startUsingDistance(I)V
iload 1
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokestatic com/nd/android/backpacksystem/widget/TDGallery/access$300(Lcom/nd/android/backpacksystem/widget/TDGallery;)Z
ifeq L1
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/startCommon()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
iconst_1
invokestatic com/nd/android/backpacksystem/widget/TDGallery/access$402(Lcom/nd/android/backpacksystem/widget/TDGallery;Z)Z
pop
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/mLastFlingY I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/mScroller Landroid/widget/Scroller;
iconst_0
iconst_0
iconst_0
iload 1
ineg
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokestatic com/nd/android/backpacksystem/widget/TDGallery/access$500(Lcom/nd/android/backpacksystem/widget/TDGallery;)I
invokevirtual android/widget/Scroller/startScroll(IIIII)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 2
.limit stack 6
.end method

.method public startUsingVelocity(I)V
iload 1
ifne L0
L1:
return
L0:
aload 0
invokespecial com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/startCommon()V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
invokestatic com/nd/android/backpacksystem/widget/TDGallery/access$300(Lcom/nd/android/backpacksystem/widget/TDGallery;)Z
ifeq L1
iload 1
ifge L2
ldc_w 2147483647
istore 2
L3:
aload 0
iload 2
putfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/mLastFlingY I
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/mScroller Landroid/widget/Scroller;
iconst_0
iload 2
iconst_0
iload 1
iconst_0
ldc_w 2147483647
iconst_0
ldc_w 2147483647
invokevirtual android/widget/Scroller/fling(IIIIIIII)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/post(Ljava/lang/Runnable;)Z
pop
return
L2:
iconst_0
istore 2
goto L3
.limit locals 3
.limit stack 9
.end method

.method public stop(Z)V
aload 0
getfield com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/this$0 Lcom/nd/android/backpacksystem/widget/TDGallery;
aload 0
invokevirtual com/nd/android/backpacksystem/widget/TDGallery/removeCallbacks(Ljava/lang/Runnable;)Z
pop
aload 0
iload 1
invokespecial com/nd/android/backpacksystem/widget/TDGallery$FlingRunnable/endFling(Z)V
return
.limit locals 2
.limit stack 2
.end method
