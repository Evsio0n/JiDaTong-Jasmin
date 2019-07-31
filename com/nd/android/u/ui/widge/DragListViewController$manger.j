.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/DragListViewController$manger
.super com/product/android/business/manager/MotionEventManager
.inner class protected manger inner com/nd/android/u/ui/widge/DragListViewController$manger outer com/nd/android/u/ui/widge/DragListViewController

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/DragListViewController;

.method public <init>(Lcom/nd/android/u/ui/widge/DragListViewController;Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
aload 0
aload 2
invokespecial com/product/android/business/manager/MotionEventManager/<init>(Landroid/view/View;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected onClick()Z
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mEventListener Lcom/nd/android/u/ui/widge/DragListViewController$onEventListener;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mEventListener Lcom/nd/android/u/ui/widge/DragListViewController$onEventListener;
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mSrcPosition I
invokeinterface com/nd/android/u/ui/widge/DragListViewController$onEventListener/onClick(I)V 1
L0:
aload 0
invokespecial com/product/android/business/manager/MotionEventManager/onClick()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected onDown(FF)Z
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
invokevirtual com/nd/android/u/ui/widge/DragListViewController/getParams()V
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mListView Landroid/widget/ListView;
fload 1
f2i
fload 2
f2i
invokevirtual android/widget/ListView/pointToPosition(II)I
putfield com/nd/android/u/ui/widge/DragListViewController/mSrcPosition I
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
iconst_0
putfield com/nd/android/u/ui/widge/DragListViewController/mbIsDragging Z
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method protected onLongClick(FF)Z
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mSize I
ifgt L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mSrcPosition I
iflt L1
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mSrcPosition I
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mSize I
if_icmpgt L1
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mListView Landroid/widget/ListView;
invokevirtual android/widget/ListView/getFirstVisiblePosition()I
istore 3
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mSrcPosition I
iload 3
isub
invokevirtual android/widget/ListView/getChildAt(I)Landroid/view/View;
astore 4
aload 4
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ifnonnull L1
aload 4
iconst_1
invokevirtual android/view/View/setDrawingCacheEnabled(Z)V
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
aload 4
invokevirtual android/view/View/getDrawingCache()Landroid/graphics/Bitmap;
putfield com/nd/android/u/ui/widge/DragListViewController/mBitmap Landroid/graphics/Bitmap;
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
iconst_1
putfield com/nd/android/u/ui/widge/DragListViewController/mbIsDragging Z
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mBitmap Landroid/graphics/Bitmap;
fload 2
f2i
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mOffset I
iadd
invokevirtual com/nd/android/u/ui/widge/DragListViewController/startDrag(Landroid/graphics/Bitmap;I)V
iconst_1
ireturn
.limit locals 5
.limit stack 4
.end method

.method protected onMove(FFFF)Z
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mSize I
ifle L0
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mbIsDragging Z
ifne L1
L0:
iconst_0
ireturn
L1:
fload 4
ldc_w 0.3F
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mListViewHeight I
i2f
fmul
fcmpg
iflt L2
fload 4
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mListViewHeight I
i2f
ldc_w 0.7F
fmul
fcmpl
ifle L3
L2:
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mListView Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/getChildAt(I)Landroid/view/View;
astore 7
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
fload 4
invokevirtual com/nd/android/u/ui/widge/DragListViewController/getScrollRange(F)I
istore 5
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mListView Landroid/widget/ListView;
invokevirtual android/widget/ListView/getFirstVisiblePosition()I
istore 6
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mListView Landroid/widget/ListView;
iload 6
aload 7
invokevirtual android/view/View/getTop()I
iload 5
iadd
invokevirtual android/widget/ListView/setSelectionFromTop(II)V
L3:
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
fload 4
f2i
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mOffset I
iadd
invokevirtual com/nd/android/u/ui/widge/DragListViewController/onDrag(I)V
iconst_0
ireturn
.limit locals 8
.limit stack 4
.end method

.method protected onUp(FF)Z
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mSize I
ifle L0
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mbIsDragging Z
ifne L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
invokevirtual com/nd/android/u/ui/widge/DragListViewController/stopDrag()V
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mListView Landroid/widget/ListView;
fload 1
f2i
fload 2
f2i
invokevirtual android/widget/ListView/pointToPosition(II)I
istore 4
fload 2
fconst_0
fcmpg
ifgt L2
iconst_0
istore 3
L3:
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mEventListener Lcom/nd/android/u/ui/widge/DragListViewController$onEventListener;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mEventListener Lcom/nd/android/u/ui/widge/DragListViewController$onEventListener;
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mSrcPosition I
iload 3
invokeinterface com/nd/android/u/ui/widge/DragListViewController$onEventListener/onSwitch(II)V 2
iconst_0
ireturn
L2:
fload 2
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mListViewHeight I
i2f
fcmpl
ifle L4
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mSize I
iconst_1
isub
istore 3
goto L3
L4:
fload 2
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mSize I
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mItemHeight I
imul
i2f
fcmpl
ifle L5
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mSize I
iconst_1
isub
istore 3
goto L3
L5:
iload 4
iflt L0
iload 4
istore 3
iload 4
aload 0
getfield com/nd/android/u/ui/widge/DragListViewController$manger/this$0 Lcom/nd/android/u/ui/widge/DragListViewController;
getfield com/nd/android/u/ui/widge/DragListViewController/mSize I
if_icmple L3
iconst_0
ireturn
.limit locals 5
.limit stack 3
.end method
