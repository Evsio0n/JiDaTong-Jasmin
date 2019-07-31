.bytecode 50.0
.class public synchronized com/common/android/ui/wheel/WheelView
.super android/view/View
.inner class inner com/common/android/ui/wheel/WheelView$1
.inner class inner com/common/android/ui/wheel/WheelView$2

.field private static final 'DEF_VISIBLE_ITEMS' I = 5


.field private static final 'ITEM_OFFSET_PERCENT' I = 10


.field private static final 'PADDING' I = 10


.field private 'centerDrawable' Landroid/graphics/drawable/Drawable;

.field private 'changingListeners' Ljava/util/List; signature "Ljava/util/List<Lcom/common/android/ui/wheel/OnWheelChangedListener;>;"

.field private 'clickingListeners' Ljava/util/List; signature "Ljava/util/List<Lcom/common/android/ui/wheel/OnWheelClickedListener;>;"

.field private 'currentItem' I

.field private 'dataObserver' Landroid/database/DataSetObserver;

.field private 'firstItem' I

.field 'isCyclic' Z

.field private 'isScrollingPerformed' Z

.field private 'itemHeight' I

.field private 'itemsLayout' Landroid/widget/LinearLayout;

.field private 'mBackgroundId' I

.field private 'recycle' Lcom/common/android/ui/wheel/WheelRecycle;

.field private 'scroller' Lcom/common/android/ui/wheel/WheelScroller;

.field 'scrollingListener' Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;

.field private 'scrollingListeners' Ljava/util/List; signature "Ljava/util/List<Lcom/common/android/ui/wheel/OnWheelScrollListener;>;"

.field private 'scrollingOffset' I

.field private 'viewAdapter' Lcom/common/android/ui/wheel/WheelViewAdapter;

.field private 'visibleItems' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/view/View/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelView/currentItem I
aload 0
iconst_5
putfield com/common/android/ui/wheel/WheelView/visibleItems I
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelView/itemHeight I
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelView/isCyclic Z
aload 0
new com/common/android/ui/wheel/WheelRecycle
dup
aload 0
invokespecial com/common/android/ui/wheel/WheelRecycle/<init>(Lcom/common/android/ui/wheel/WheelView;)V
putfield com/common/android/ui/wheel/WheelView/recycle Lcom/common/android/ui/wheel/WheelRecycle;
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/common/android/ui/wheel/WheelView/changingListeners Ljava/util/List;
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/common/android/ui/wheel/WheelView/scrollingListeners Ljava/util/List;
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/common/android/ui/wheel/WheelView/clickingListeners Ljava/util/List;
aload 0
new com/common/android/ui/wheel/WheelView$1
dup
aload 0
invokespecial com/common/android/ui/wheel/WheelView$1/<init>(Lcom/common/android/ui/wheel/WheelView;)V
putfield com/common/android/ui/wheel/WheelView/scrollingListener Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;
aload 0
new com/common/android/ui/wheel/WheelView$2
dup
aload 0
invokespecial com/common/android/ui/wheel/WheelView$2/<init>(Lcom/common/android/ui/wheel/WheelView;)V
putfield com/common/android/ui/wheel/WheelView/dataObserver Landroid/database/DataSetObserver;
aload 0
aload 1
invokespecial com/common/android/ui/wheel/WheelView/initData(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/View/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelView/currentItem I
aload 0
iconst_5
putfield com/common/android/ui/wheel/WheelView/visibleItems I
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelView/itemHeight I
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelView/isCyclic Z
aload 0
new com/common/android/ui/wheel/WheelRecycle
dup
aload 0
invokespecial com/common/android/ui/wheel/WheelRecycle/<init>(Lcom/common/android/ui/wheel/WheelView;)V
putfield com/common/android/ui/wheel/WheelView/recycle Lcom/common/android/ui/wheel/WheelRecycle;
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/common/android/ui/wheel/WheelView/changingListeners Ljava/util/List;
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/common/android/ui/wheel/WheelView/scrollingListeners Ljava/util/List;
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/common/android/ui/wheel/WheelView/clickingListeners Ljava/util/List;
aload 0
new com/common/android/ui/wheel/WheelView$1
dup
aload 0
invokespecial com/common/android/ui/wheel/WheelView$1/<init>(Lcom/common/android/ui/wheel/WheelView;)V
putfield com/common/android/ui/wheel/WheelView/scrollingListener Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;
aload 0
new com/common/android/ui/wheel/WheelView$2
dup
aload 0
invokespecial com/common/android/ui/wheel/WheelView$2/<init>(Lcom/common/android/ui/wheel/WheelView;)V
putfield com/common/android/ui/wheel/WheelView/dataObserver Landroid/database/DataSetObserver;
aload 0
aload 1
invokespecial com/common/android/ui/wheel/WheelView/initData(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/view/View/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelView/currentItem I
aload 0
iconst_5
putfield com/common/android/ui/wheel/WheelView/visibleItems I
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelView/itemHeight I
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelView/isCyclic Z
aload 0
new com/common/android/ui/wheel/WheelRecycle
dup
aload 0
invokespecial com/common/android/ui/wheel/WheelRecycle/<init>(Lcom/common/android/ui/wheel/WheelView;)V
putfield com/common/android/ui/wheel/WheelView/recycle Lcom/common/android/ui/wheel/WheelRecycle;
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/common/android/ui/wheel/WheelView/changingListeners Ljava/util/List;
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/common/android/ui/wheel/WheelView/scrollingListeners Ljava/util/List;
aload 0
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
putfield com/common/android/ui/wheel/WheelView/clickingListeners Ljava/util/List;
aload 0
new com/common/android/ui/wheel/WheelView$1
dup
aload 0
invokespecial com/common/android/ui/wheel/WheelView$1/<init>(Lcom/common/android/ui/wheel/WheelView;)V
putfield com/common/android/ui/wheel/WheelView/scrollingListener Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;
aload 0
new com/common/android/ui/wheel/WheelView$2
dup
aload 0
invokespecial com/common/android/ui/wheel/WheelView$2/<init>(Lcom/common/android/ui/wheel/WheelView;)V
putfield com/common/android/ui/wheel/WheelView/dataObserver Landroid/database/DataSetObserver;
aload 0
aload 1
invokespecial com/common/android/ui/wheel/WheelView/initData(Landroid/content/Context;)V
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$000(Lcom/common/android/ui/wheel/WheelView;)Z
aload 0
getfield com/common/android/ui/wheel/WheelView/isScrollingPerformed Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/common/android/ui/wheel/WheelView;Z)Z
aload 0
iload 1
putfield com/common/android/ui/wheel/WheelView/isScrollingPerformed Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/common/android/ui/wheel/WheelView;I)V
aload 0
iload 1
invokespecial com/common/android/ui/wheel/WheelView/doScroll(I)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/common/android/ui/wheel/WheelView;)I
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingOffset I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/common/android/ui/wheel/WheelView;I)I
aload 0
iload 1
putfield com/common/android/ui/wheel/WheelView/scrollingOffset I
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/common/android/ui/wheel/WheelView;)Lcom/common/android/ui/wheel/WheelScroller;
aload 0
getfield com/common/android/ui/wheel/WheelView/scroller Lcom/common/android/ui/wheel/WheelScroller;
areturn
.limit locals 1
.limit stack 1
.end method

.method private addViewItem(IZ)Z
iconst_0
istore 3
aload 0
iload 1
invokespecial com/common/android/ui/wheel/WheelView/getItemView(I)Landroid/view/View;
astore 4
aload 4
ifnull L0
iload 2
ifeq L1
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
aload 4
iconst_0
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;I)V
L2:
iconst_1
istore 3
L0:
iload 3
ireturn
L1:
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
aload 4
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
goto L2
.limit locals 5
.limit stack 3
.end method

.method private buildViewForMeasuring()V
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield com/common/android/ui/wheel/WheelView/recycle Lcom/common/android/ui/wheel/WheelRecycle;
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
aload 0
getfield com/common/android/ui/wheel/WheelView/firstItem I
new com/common/android/ui/wheel/ItemsRange
dup
invokespecial com/common/android/ui/wheel/ItemsRange/<init>()V
invokevirtual com/common/android/ui/wheel/WheelRecycle/recycleItems(Landroid/widget/LinearLayout;ILcom/common/android/ui/wheel/ItemsRange;)I
pop
L1:
aload 0
getfield com/common/android/ui/wheel/WheelView/visibleItems I
iconst_2
idiv
istore 2
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
iload 2
iadd
istore 1
L2:
iload 1
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
iload 2
isub
if_icmplt L3
aload 0
iload 1
iconst_1
invokespecial com/common/android/ui/wheel/WheelView/addViewItem(IZ)Z
ifeq L4
aload 0
iload 1
putfield com/common/android/ui/wheel/WheelView/firstItem I
L4:
iload 1
iconst_1
isub
istore 1
goto L2
L0:
aload 0
invokespecial com/common/android/ui/wheel/WheelView/createItemsLayout()V
goto L1
L3:
return
.limit locals 3
.limit stack 5
.end method

.method private calculateLayoutWidth(II)I
aload 0
invokespecial com/common/android/ui/wheel/WheelView/initResourcesIfNecessary()V
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
new android/view/ViewGroup$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/view/ViewGroup$LayoutParams/<init>(II)V
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
iload 1
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
invokevirtual android/widget/LinearLayout/measure(II)V
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getMeasuredWidth()I
istore 3
iload 2
ldc_w 1073741824
if_icmpne L0
iload 1
istore 3
L1:
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
iload 3
bipush 20
isub
ldc_w 1073741824
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
iconst_0
iconst_0
invokestatic android/view/View$MeasureSpec/makeMeasureSpec(II)I
invokevirtual android/widget/LinearLayout/measure(II)V
iload 3
ireturn
L0:
iload 3
bipush 20
iadd
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getSuggestedMinimumWidth()I
invokestatic java/lang/Math/max(II)I
istore 4
iload 4
istore 3
iload 2
ldc_w -2147483648
if_icmpne L1
iload 4
istore 3
iload 1
iload 4
if_icmpge L1
iload 1
istore 3
goto L1
.limit locals 5
.limit stack 5
.end method

.method private createItemsLayout()V
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
ifnonnull L0
aload 0
new android/widget/LinearLayout
dup
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getContext()Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
putfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
iconst_1
invokevirtual android/widget/LinearLayout/setOrientation(I)V
L0:
return
.limit locals 1
.limit stack 4
.end method

.method private doScroll(I)V
aload 0
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingOffset I
iload 1
iadd
putfield com/common/android/ui/wheel/WheelView/scrollingOffset I
aload 0
invokespecial com/common/android/ui/wheel/WheelView/getItemHeight()I
istore 6
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingOffset I
iload 6
idiv
istore 3
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
iload 3
isub
istore 4
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
invokeinterface com/common/android/ui/wheel/WheelViewAdapter/getItemsCount()I 0
istore 7
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingOffset I
iload 6
irem
istore 1
iload 1
istore 5
iload 1
invokestatic java/lang/Math/abs(I)I
iload 6
iconst_2
idiv
if_icmpgt L0
iconst_0
istore 5
L0:
aload 0
getfield com/common/android/ui/wheel/WheelView/isCyclic Z
ifeq L1
iload 7
ifle L1
iload 5
ifle L2
iload 4
iconst_1
isub
istore 2
iload 3
iconst_1
iadd
istore 1
L3:
iload 2
ifge L4
iload 2
iload 7
iadd
istore 2
goto L3
L2:
iload 3
istore 1
iload 4
istore 2
iload 5
ifge L3
iload 4
iconst_1
iadd
istore 2
iload 3
iconst_1
isub
istore 1
goto L3
L4:
iload 2
iload 7
irem
istore 2
L5:
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingOffset I
istore 3
iload 2
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
if_icmpeq L6
aload 0
iload 2
iconst_0
invokevirtual com/common/android/ui/wheel/WheelView/setCurrentItem(IZ)V
L7:
aload 0
iload 3
iload 1
iload 6
imul
isub
putfield com/common/android/ui/wheel/WheelView/scrollingOffset I
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingOffset I
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getHeight()I
if_icmple L8
aload 0
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingOffset I
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getHeight()I
irem
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getHeight()I
iadd
putfield com/common/android/ui/wheel/WheelView/scrollingOffset I
L8:
return
L1:
iload 4
ifge L9
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
istore 1
iconst_0
istore 2
goto L5
L9:
iload 4
iload 7
if_icmplt L10
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
iload 7
isub
iconst_1
iadd
istore 1
iload 7
iconst_1
isub
istore 2
goto L5
L10:
iload 4
ifle L11
iload 5
ifle L11
iload 4
iconst_1
isub
istore 2
iload 3
iconst_1
iadd
istore 1
goto L5
L11:
iload 3
istore 1
iload 4
istore 2
iload 4
iload 7
iconst_1
isub
if_icmpge L5
iload 3
istore 1
iload 4
istore 2
iload 5
ifge L5
iload 4
iconst_1
iadd
istore 2
iload 3
iconst_1
isub
istore 1
goto L5
L6:
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/invalidate()V
goto L7
.limit locals 8
.limit stack 4
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getHeight()I
iconst_2
idiv
iconst_2
iadd
istore 2
aload 0
invokespecial com/common/android/ui/wheel/WheelView/getItemHeight()I
iconst_2
idiv
i2d
ldc2_w 1.2D
dmul
d2i
istore 3
aload 0
getfield com/common/android/ui/wheel/WheelView/centerDrawable Landroid/graphics/drawable/Drawable;
iconst_0
iload 2
iload 3
isub
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getWidth()I
iload 2
iload 3
iadd
invokevirtual android/graphics/drawable/Drawable/setBounds(IIII)V
aload 0
getfield com/common/android/ui/wheel/WheelView/centerDrawable Landroid/graphics/drawable/Drawable;
aload 1
invokevirtual android/graphics/drawable/Drawable/draw(Landroid/graphics/Canvas;)V
return
.limit locals 4
.limit stack 6
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
aload 1
invokevirtual android/graphics/Canvas/save()I
pop
aload 1
ldc_w 10.0F
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
aload 0
getfield com/common/android/ui/wheel/WheelView/firstItem I
isub
aload 0
invokespecial com/common/android/ui/wheel/WheelView/getItemHeight()I
imul
aload 0
invokespecial com/common/android/ui/wheel/WheelView/getItemHeight()I
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getHeight()I
isub
iconst_2
idiv
iadd
ineg
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingOffset I
iadd
i2f
invokevirtual android/graphics/Canvas/translate(FF)V
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
aload 1
invokevirtual android/widget/LinearLayout/draw(Landroid/graphics/Canvas;)V
aload 1
invokevirtual android/graphics/Canvas/restore()V
return
.limit locals 2
.limit stack 5
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
return
.limit locals 2
.limit stack 0
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
aload 1
ifnull L0
aload 1
iconst_0
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
ifnull L0
aload 0
aload 1
iconst_0
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getMeasuredHeight()I
putfield com/common/android/ui/wheel/WheelView/itemHeight I
L0:
aload 0
getfield com/common/android/ui/wheel/WheelView/itemHeight I
aload 0
getfield com/common/android/ui/wheel/WheelView/visibleItems I
imul
aload 0
getfield com/common/android/ui/wheel/WheelView/itemHeight I
bipush 10
imul
bipush 50
idiv
isub
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getSuggestedMinimumHeight()I
invokestatic java/lang/Math/max(II)I
ireturn
.limit locals 2
.limit stack 3
.end method

.method private getItemHeight()I
aload 0
getfield com/common/android/ui/wheel/WheelView/itemHeight I
ifeq L0
aload 0
getfield com/common/android/ui/wheel/WheelView/itemHeight I
ireturn
L0:
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
ifnull L1
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
ifnull L1
aload 0
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
invokevirtual android/view/View/getHeight()I
putfield com/common/android/ui/wheel/WheelView/itemHeight I
aload 0
getfield com/common/android/ui/wheel/WheelView/itemHeight I
ireturn
L1:
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getHeight()I
aload 0
getfield com/common/android/ui/wheel/WheelView/visibleItems I
idiv
ireturn
.limit locals 1
.limit stack 3
.end method

.method private getItemView(I)Landroid/view/View;
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
ifnull L0
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
invokeinterface com/common/android/ui/wheel/WheelViewAdapter/getItemsCount()I 0
ifne L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
invokeinterface com/common/android/ui/wheel/WheelViewAdapter/getItemsCount()I 0
istore 3
iload 1
istore 2
aload 0
iload 1
invokespecial com/common/android/ui/wheel/WheelView/isValidItemIndex(I)Z
ifne L2
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
aload 0
getfield com/common/android/ui/wheel/WheelView/recycle Lcom/common/android/ui/wheel/WheelRecycle;
invokevirtual com/common/android/ui/wheel/WheelRecycle/getEmptyItem()Landroid/view/View;
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
invokeinterface com/common/android/ui/wheel/WheelViewAdapter/getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View; 2
areturn
L2:
iload 2
ifge L3
iload 2
iload 3
iadd
istore 2
goto L2
L3:
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
iload 2
iload 3
irem
aload 0
getfield com/common/android/ui/wheel/WheelView/recycle Lcom/common/android/ui/wheel/WheelRecycle;
invokevirtual com/common/android/ui/wheel/WheelRecycle/getItem()Landroid/view/View;
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
invokeinterface com/common/android/ui/wheel/WheelViewAdapter/getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View; 3
areturn
.limit locals 4
.limit stack 4
.end method

.method private getItemsRange()Lcom/common/android/ui/wheel/ItemsRange;
aload 0
invokespecial com/common/android/ui/wheel/WheelView/getItemHeight()I
ifne L0
aconst_null
areturn
L0:
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
istore 1
iconst_1
istore 2
L1:
aload 0
invokespecial com/common/android/ui/wheel/WheelView/getItemHeight()I
iload 2
imul
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getHeight()I
if_icmpge L2
iload 1
iconst_1
isub
istore 1
iload 2
iconst_2
iadd
istore 2
goto L1
L2:
iload 2
istore 4
iload 1
istore 3
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingOffset I
ifeq L3
iload 1
istore 3
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingOffset I
ifle L4
iload 1
iconst_1
isub
istore 3
L4:
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingOffset I
aload 0
invokespecial com/common/android/ui/wheel/WheelView/getItemHeight()I
idiv
istore 1
iload 3
iload 1
isub
istore 3
iload 2
iconst_1
iadd
i2d
iload 1
i2d
invokestatic java/lang/Math/asin(D)D
dadd
d2i
istore 4
L3:
new com/common/android/ui/wheel/ItemsRange
dup
iload 3
iload 4
invokespecial com/common/android/ui/wheel/ItemsRange/<init>(II)V
areturn
.limit locals 5
.limit stack 4
.end method

.method private initData(Landroid/content/Context;)V
aload 0
new com/common/android/ui/wheel/WheelScroller
dup
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getContext()Landroid/content/Context;
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingListener Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;
invokespecial com/common/android/ui/wheel/WheelScroller/<init>(Landroid/content/Context;Lcom/common/android/ui/wheel/WheelScroller$ScrollingListener;)V
putfield com/common/android/ui/wheel/WheelView/scroller Lcom/common/android/ui/wheel/WheelScroller;
return
.limit locals 2
.limit stack 5
.end method

.method private initResourcesIfNecessary()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/common/android/ui/wheel/WheelView/centerDrawable Landroid/graphics/drawable/Drawable;
ifnonnull L3
aload 0
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getContext()Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/allcommon/R$drawable/wheel_val I
invokevirtual android/content/res/Resources/getDrawable(I)Landroid/graphics/drawable/Drawable;
putfield com/common/android/ui/wheel/WheelView/centerDrawable Landroid/graphics/drawable/Drawable;
L3:
aload 0
getfield com/common/android/ui/wheel/WheelView/mBackgroundId I
ifeq L4
L0:
aload 0
aload 0
getfield com/common/android/ui/wheel/WheelView/mBackgroundId I
invokevirtual com/common/android/ui/wheel/WheelView/setBackgroundResource(I)V
L1:
return
L2:
astore 1
aload 0
getstatic com/nd/android/u/allcommon/R$drawable/wheel_bg I
invokevirtual com/common/android/ui/wheel/WheelView/setBackgroundResource(I)V
return
L4:
aload 0
getstatic com/nd/android/u/allcommon/R$drawable/wheel_bg I
invokevirtual com/common/android/ui/wheel/WheelView/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 3
.end method

.method private isValidItemIndex(I)Z
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
ifnull L0
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
invokeinterface com/common/android/ui/wheel/WheelViewAdapter/getItemsCount()I 0
ifle L0
aload 0
getfield com/common/android/ui/wheel/WheelView/isCyclic Z
ifne L1
iload 1
iflt L0
iload 1
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
invokeinterface com/common/android/ui/wheel/WheelViewAdapter/getItemsCount()I 0
if_icmpge L0
L1:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private layout(II)V
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
iconst_0
iconst_0
iload 1
bipush 20
isub
iload 2
invokevirtual android/widget/LinearLayout/layout(IIII)V
return
.limit locals 3
.limit stack 5
.end method

.method private rebuildItems()Z
aload 0
invokespecial com/common/android/ui/wheel/WheelView/getItemsRange()Lcom/common/android/ui/wheel/ItemsRange;
astore 6
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
ifnull L0
aload 0
getfield com/common/android/ui/wheel/WheelView/recycle Lcom/common/android/ui/wheel/WheelRecycle;
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
aload 0
getfield com/common/android/ui/wheel/WheelView/firstItem I
aload 6
invokevirtual com/common/android/ui/wheel/WheelRecycle/recycleItems(Landroid/widget/LinearLayout;ILcom/common/android/ui/wheel/ItemsRange;)I
istore 1
aload 0
getfield com/common/android/ui/wheel/WheelView/firstItem I
iload 1
if_icmpeq L1
iconst_1
istore 4
L2:
aload 0
iload 1
putfield com/common/android/ui/wheel/WheelView/firstItem I
L3:
iload 4
istore 5
iload 4
ifne L4
aload 0
getfield com/common/android/ui/wheel/WheelView/firstItem I
aload 6
invokevirtual com/common/android/ui/wheel/ItemsRange/getFirst()I
if_icmpne L5
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
aload 6
invokevirtual com/common/android/ui/wheel/ItemsRange/getCount()I
if_icmpeq L6
L5:
iconst_1
istore 5
L4:
aload 0
getfield com/common/android/ui/wheel/WheelView/firstItem I
aload 6
invokevirtual com/common/android/ui/wheel/ItemsRange/getFirst()I
if_icmple L7
aload 0
getfield com/common/android/ui/wheel/WheelView/firstItem I
aload 6
invokevirtual com/common/android/ui/wheel/ItemsRange/getLast()I
if_icmpgt L7
aload 0
getfield com/common/android/ui/wheel/WheelView/firstItem I
iconst_1
isub
istore 1
L8:
iload 1
aload 6
invokevirtual com/common/android/ui/wheel/ItemsRange/getFirst()I
if_icmplt L9
aload 0
iload 1
iconst_1
invokespecial com/common/android/ui/wheel/WheelView/addViewItem(IZ)Z
ifne L10
L9:
aload 0
getfield com/common/android/ui/wheel/WheelView/firstItem I
istore 2
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
istore 1
L11:
iload 1
aload 6
invokevirtual com/common/android/ui/wheel/ItemsRange/getCount()I
if_icmpge L12
iload 2
istore 3
aload 0
aload 0
getfield com/common/android/ui/wheel/WheelView/firstItem I
iload 1
iadd
iconst_0
invokespecial com/common/android/ui/wheel/WheelView/addViewItem(IZ)Z
ifne L13
iload 2
istore 3
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getChildCount()I
ifne L13
iload 2
iconst_1
iadd
istore 3
L13:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 2
goto L11
L1:
iconst_0
istore 4
goto L2
L0:
aload 0
invokespecial com/common/android/ui/wheel/WheelView/createItemsLayout()V
iconst_1
istore 4
goto L3
L6:
iconst_0
istore 5
goto L4
L10:
aload 0
iload 1
putfield com/common/android/ui/wheel/WheelView/firstItem I
iload 1
iconst_1
isub
istore 1
goto L8
L7:
aload 0
aload 6
invokevirtual com/common/android/ui/wheel/ItemsRange/getFirst()I
putfield com/common/android/ui/wheel/WheelView/firstItem I
goto L9
L12:
aload 0
iload 2
putfield com/common/android/ui/wheel/WheelView/firstItem I
iload 5
ireturn
.limit locals 7
.limit stack 4
.end method

.method private updateView()V
aload 0
invokespecial com/common/android/ui/wheel/WheelView/rebuildItems()Z
ifeq L0
aload 0
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getWidth()I
ldc_w 1073741824
invokespecial com/common/android/ui/wheel/WheelView/calculateLayoutWidth(II)I
pop
aload 0
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getWidth()I
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getHeight()I
invokespecial com/common/android/ui/wheel/WheelView/layout(II)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public addChangingListener(Lcom/common/android/ui/wheel/OnWheelChangedListener;)V
aload 0
getfield com/common/android/ui/wheel/WheelView/changingListeners Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public addClickingListener(Lcom/common/android/ui/wheel/OnWheelClickedListener;)V
aload 0
getfield com/common/android/ui/wheel/WheelView/clickingListeners Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public addScrollingListener(Lcom/common/android/ui/wheel/OnWheelScrollListener;)V
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingListeners Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public getCurrentItem()I
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getViewAdapter()Lcom/common/android/ui/wheel/WheelViewAdapter;
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getVisibleItems()I
aload 0
getfield com/common/android/ui/wheel/WheelView/visibleItems I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public invalidateWheel(Z)V
iload 1
ifeq L0
aload 0
getfield com/common/android/ui/wheel/WheelView/recycle Lcom/common/android/ui/wheel/WheelRecycle;
invokevirtual com/common/android/ui/wheel/WheelRecycle/clearAll()V
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
ifnull L1
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/removeAllViews()V
L1:
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelView/scrollingOffset I
L2:
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/invalidate()V
return
L0:
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
ifnull L2
aload 0
getfield com/common/android/ui/wheel/WheelView/recycle Lcom/common/android/ui/wheel/WheelRecycle;
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
aload 0
getfield com/common/android/ui/wheel/WheelView/firstItem I
new com/common/android/ui/wheel/ItemsRange
dup
invokespecial com/common/android/ui/wheel/ItemsRange/<init>()V
invokevirtual com/common/android/ui/wheel/WheelRecycle/recycleItems(Landroid/widget/LinearLayout;ILcom/common/android/ui/wheel/ItemsRange;)I
pop
goto L2
.limit locals 2
.limit stack 5
.end method

.method public isCyclic()Z
aload 0
getfield com/common/android/ui/wheel/WheelView/isCyclic Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected notifyChangingListeners(II)V
aload 0
getfield com/common/android/ui/wheel/WheelView/changingListeners Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/wheel/OnWheelChangedListener
aload 0
iload 1
iload 2
invokeinterface com/common/android/ui/wheel/OnWheelChangedListener/onChanged(Lcom/common/android/ui/wheel/WheelView;II)V 3
goto L0
L1:
return
.limit locals 4
.limit stack 4
.end method

.method protected notifyClickListenersAboutClick(I)V
aload 0
getfield com/common/android/ui/wheel/WheelView/clickingListeners Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/wheel/OnWheelClickedListener
aload 0
iload 1
invokeinterface com/common/android/ui/wheel/OnWheelClickedListener/onItemClicked(Lcom/common/android/ui/wheel/WheelView;I)V 2
goto L0
L1:
return
.limit locals 3
.limit stack 3
.end method

.method protected notifyScrollingListenersAboutEnd()V
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingListeners Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/wheel/OnWheelScrollListener
aload 0
invokeinterface com/common/android/ui/wheel/OnWheelScrollListener/onScrollingFinished(Lcom/common/android/ui/wheel/WheelView;)V 1
goto L0
L1:
return
.limit locals 2
.limit stack 2
.end method

.method protected notifyScrollingListenersAboutStart()V
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingListeners Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/common/android/ui/wheel/OnWheelScrollListener
aload 0
invokeinterface com/common/android/ui/wheel/OnWheelScrollListener/onScrollingStarted(Lcom/common/android/ui/wheel/WheelView;)V 1
goto L0
L1:
return
.limit locals 2
.limit stack 2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial android/view/View/onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
ifnull L0
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
invokeinterface com/common/android/ui/wheel/WheelViewAdapter/getItemsCount()I 0
ifle L0
aload 0
invokespecial com/common/android/ui/wheel/WheelView/updateView()V
aload 0
aload 1
invokespecial com/common/android/ui/wheel/WheelView/drawItems(Landroid/graphics/Canvas;)V
aload 0
aload 1
invokespecial com/common/android/ui/wheel/WheelView/drawCenterRect(Landroid/graphics/Canvas;)V
L0:
aload 0
aload 1
invokespecial com/common/android/ui/wheel/WheelView/drawShadows(Landroid/graphics/Canvas;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onLayout(ZIIII)V
aload 0
iload 4
iload 2
isub
iload 5
iload 3
isub
invokespecial com/common/android/ui/wheel/WheelView/layout(II)V
return
.limit locals 6
.limit stack 4
.end method

.method protected onMeasure(II)V
iload 1
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 3
iload 2
invokestatic android/view/View$MeasureSpec/getMode(I)I
istore 4
iload 1
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 1
iload 2
invokestatic android/view/View$MeasureSpec/getSize(I)I
istore 2
aload 0
invokespecial com/common/android/ui/wheel/WheelView/buildViewForMeasuring()V
aload 0
iload 1
iload 3
invokespecial com/common/android/ui/wheel/WheelView/calculateLayoutWidth(II)I
istore 5
iload 4
ldc_w 1073741824
if_icmpne L0
iload 2
istore 1
L1:
aload 0
iload 5
iload 1
invokevirtual com/common/android/ui/wheel/WheelView/setMeasuredDimension(II)V
return
L0:
aload 0
aload 0
getfield com/common/android/ui/wheel/WheelView/itemsLayout Landroid/widget/LinearLayout;
invokespecial com/common/android/ui/wheel/WheelView/getDesiredHeight(Landroid/widget/LinearLayout;)I
istore 3
iload 3
istore 1
iload 4
ldc_w -2147483648
if_icmpne L1
iload 3
iload 2
invokestatic java/lang/Math/min(II)I
istore 1
goto L1
.limit locals 6
.limit stack 3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/isEnabled()Z
ifeq L0
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getViewAdapter()Lcom/common/android/ui/wheel/WheelViewAdapter;
ifnonnull L1
L0:
iconst_1
ireturn
L1:
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 1
L2
L3
default : L4
L4:
aload 0
getfield com/common/android/ui/wheel/WheelView/scroller Lcom/common/android/ui/wheel/WheelScroller;
aload 1
invokevirtual com/common/android/ui/wheel/WheelScroller/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L3:
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getParent()Landroid/view/ViewParent;
ifnull L4
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getParent()Landroid/view/ViewParent;
iconst_1
invokeinterface android/view/ViewParent/requestDisallowInterceptTouchEvent(Z)V 1
goto L4
L2:
aload 0
getfield com/common/android/ui/wheel/WheelView/isScrollingPerformed Z
ifne L4
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/getHeight()I
iconst_2
idiv
isub
istore 2
iload 2
ifle L5
iload 2
aload 0
invokespecial com/common/android/ui/wheel/WheelView/getItemHeight()I
iconst_2
idiv
iadd
istore 2
L6:
iload 2
aload 0
invokespecial com/common/android/ui/wheel/WheelView/getItemHeight()I
idiv
istore 2
aload 0
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
iload 2
iadd
invokevirtual com/common/android/ui/wheel/WheelView/notifyClickListenersAboutClick(I)V
goto L4
L5:
iload 2
aload 0
invokespecial com/common/android/ui/wheel/WheelView/getItemHeight()I
iconst_2
idiv
isub
istore 2
goto L6
.limit locals 3
.limit stack 3
.end method

.method public removeChangingListener(Lcom/common/android/ui/wheel/OnWheelChangedListener;)V
aload 0
getfield com/common/android/ui/wheel/WheelView/changingListeners Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public removeClickingListener(Lcom/common/android/ui/wheel/OnWheelClickedListener;)V
aload 0
getfield com/common/android/ui/wheel/WheelView/clickingListeners Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public removeScrollingListener(Lcom/common/android/ui/wheel/OnWheelScrollListener;)V
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingListeners Ljava/util/List;
aload 1
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public scroll(II)V
aload 0
invokespecial com/common/android/ui/wheel/WheelView/getItemHeight()I
istore 3
aload 0
getfield com/common/android/ui/wheel/WheelView/scrollingOffset I
istore 4
aload 0
getfield com/common/android/ui/wheel/WheelView/scroller Lcom/common/android/ui/wheel/WheelScroller;
iload 3
iload 1
imul
iload 4
isub
iload 2
invokevirtual com/common/android/ui/wheel/WheelScroller/scroll(II)V
return
.limit locals 5
.limit stack 3
.end method

.method public setBackgroundResId(I)V
aload 0
iload 1
putfield com/common/android/ui/wheel/WheelView/mBackgroundId I
return
.limit locals 2
.limit stack 2
.end method

.method public setCurrentItem(I)V
aload 0
iload 1
iconst_0
invokevirtual com/common/android/ui/wheel/WheelView/setCurrentItem(IZ)V
return
.limit locals 2
.limit stack 3
.end method

.method public setCurrentItem(IZ)V
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
ifnull L0
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
invokeinterface com/common/android/ui/wheel/WheelViewAdapter/getItemsCount()I 0
ifne L1
L0:
return
L1:
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
invokeinterface com/common/android/ui/wheel/WheelViewAdapter/getItemsCount()I 0
istore 5
iload 1
iflt L2
iload 1
istore 3
iload 1
iload 5
if_icmplt L3
L2:
aload 0
getfield com/common/android/ui/wheel/WheelView/isCyclic Z
ifeq L0
L4:
iload 1
ifge L5
iload 1
iload 5
iadd
istore 1
goto L4
L5:
iload 1
iload 5
irem
istore 3
L3:
iload 3
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
if_icmpeq L0
iload 2
ifeq L6
iload 3
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
isub
istore 4
iload 4
istore 1
aload 0
getfield com/common/android/ui/wheel/WheelView/isCyclic Z
ifeq L7
iload 3
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
invokestatic java/lang/Math/min(II)I
iload 5
iadd
iload 3
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
invokestatic java/lang/Math/max(II)I
isub
istore 3
iload 4
istore 1
iload 3
iload 4
invokestatic java/lang/Math/abs(I)I
if_icmpge L7
iload 4
ifge L8
iload 3
istore 1
L7:
aload 0
iload 1
iconst_0
invokevirtual com/common/android/ui/wheel/WheelView/scroll(II)V
return
L8:
iload 3
ineg
istore 1
goto L7
L6:
aload 0
iconst_0
putfield com/common/android/ui/wheel/WheelView/scrollingOffset I
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
istore 1
aload 0
iload 3
putfield com/common/android/ui/wheel/WheelView/currentItem I
aload 0
iload 1
aload 0
getfield com/common/android/ui/wheel/WheelView/currentItem I
invokevirtual com/common/android/ui/wheel/WheelView/notifyChangingListeners(II)V
aload 0
invokevirtual com/common/android/ui/wheel/WheelView/invalidate()V
return
.limit locals 6
.limit stack 3
.end method

.method public setCyclic(Z)V
aload 0
iload 1
putfield com/common/android/ui/wheel/WheelView/isCyclic Z
aload 0
iconst_0
invokevirtual com/common/android/ui/wheel/WheelView/invalidateWheel(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
getfield com/common/android/ui/wheel/WheelView/scroller Lcom/common/android/ui/wheel/WheelScroller;
aload 1
invokevirtual com/common/android/ui/wheel/WheelScroller/setInterpolator(Landroid/view/animation/Interpolator;)V
return
.limit locals 2
.limit stack 2
.end method

.method public setViewAdapter(Lcom/common/android/ui/wheel/WheelViewAdapter;)V
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
ifnull L0
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
aload 0
getfield com/common/android/ui/wheel/WheelView/dataObserver Landroid/database/DataSetObserver;
invokeinterface com/common/android/ui/wheel/WheelViewAdapter/unregisterDataSetObserver(Landroid/database/DataSetObserver;)V 1
L0:
aload 0
aload 1
putfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
ifnull L1
aload 0
getfield com/common/android/ui/wheel/WheelView/viewAdapter Lcom/common/android/ui/wheel/WheelViewAdapter;
aload 0
getfield com/common/android/ui/wheel/WheelView/dataObserver Landroid/database/DataSetObserver;
invokeinterface com/common/android/ui/wheel/WheelViewAdapter/registerDataSetObserver(Landroid/database/DataSetObserver;)V 1
L1:
aload 0
iconst_1
invokevirtual com/common/android/ui/wheel/WheelView/invalidateWheel(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method public setVisibleItems(I)V
aload 0
iload 1
putfield com/common/android/ui/wheel/WheelView/visibleItems I
return
.limit locals 2
.limit stack 2
.end method

.method public stopScrolling()V
aload 0
getfield com/common/android/ui/wheel/WheelView/scroller Lcom/common/android/ui/wheel/WheelScroller;
invokevirtual com/common/android/ui/wheel/WheelScroller/stopScrolling()V
return
.limit locals 1
.limit stack 1
.end method
