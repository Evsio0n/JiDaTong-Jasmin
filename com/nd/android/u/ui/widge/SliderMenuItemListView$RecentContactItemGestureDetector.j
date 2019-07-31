.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector
.super android/view/GestureDetector$SimpleOnGestureListener
.inner class private RecentContactItemGestureDetector inner com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector outer com/nd/android/u/ui/widge/SliderMenuItemListView

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/SliderMenuItemListView;

.method private <init>(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
aload 0
invokespecial android/view/GestureDetector$SimpleOnGestureListener/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;Lcom/nd/android/u/ui/widge/SliderMenuItemListView$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/<init>(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
invokestatic com/nd/android/u/ui/widge/SliderMenuItemListView/access$100(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)Lcom/nd/android/u/ui/widge/SliderMenuView;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
invokestatic com/nd/android/u/ui/widge/SliderMenuItemListView/access$100(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getExpanedState()I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPAND I
if_icmpeq L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mOnItemListener Lcom/nd/android/u/ui/widge/SliderMenuItemListView$OnItemListener;
ifnull L1
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mOnItemListener Lcom/nd/android/u/ui/widge/SliderMenuItemListView$OnItemListener;
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
invokestatic com/nd/android/u/ui/widge/SliderMenuItemListView/access$200(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
invokestatic com/nd/android/u/ui/widge/SliderMenuItemListView/access$300(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)I
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
invokeinterface com/nd/android/u/ui/widge/SliderMenuItemListView$OnItemListener/onItemLongPress(Landroid/view/View;ILandroid/view/View;)V 3
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
aconst_null
invokestatic com/nd/android/u/ui/widge/SliderMenuItemListView/access$102(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;Lcom/nd/android/u/ui/widge/SliderMenuView;)Lcom/nd/android/u/ui/widge/SliderMenuView;
pop
return
.limit locals 2
.limit stack 4
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
invokestatic com/nd/android/u/ui/widge/SliderMenuItemListView/access$100(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)Lcom/nd/android/u/ui/widge/SliderMenuView;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
invokestatic com/nd/android/u/ui/widge/SliderMenuItemListView/access$100(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getExpanedState()I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_UNEXPAND I
if_icmpne L1
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mOnItemListener Lcom/nd/android/u/ui/widge/SliderMenuItemListView$OnItemListener;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
getfield com/nd/android/u/ui/widge/SliderMenuItemListView/mOnItemListener Lcom/nd/android/u/ui/widge/SliderMenuItemListView$OnItemListener;
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
invokestatic com/nd/android/u/ui/widge/SliderMenuItemListView/access$200(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)Landroid/view/View;
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
invokestatic com/nd/android/u/ui/widge/SliderMenuItemListView/access$300(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)I
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
invokeinterface com/nd/android/u/ui/widge/SliderMenuItemListView$OnItemListener/onItemClick(Landroid/view/View;ILandroid/view/View;)V 3
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
aconst_null
invokestatic com/nd/android/u/ui/widge/SliderMenuItemListView/access$102(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;Lcom/nd/android/u/ui/widge/SliderMenuView;)Lcom/nd/android/u/ui/widge/SliderMenuView;
pop
L0:
iconst_0
ireturn
L1:
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
invokestatic com/nd/android/u/ui/widge/SliderMenuItemListView/access$100(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/getExpanedState()I
getstatic com/nd/android/u/ui/widge/SliderMenuView/EXPAND_STATE_EXPAND I
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/widge/SliderMenuItemListView$RecentContactItemGestureDetector/this$0 Lcom/nd/android/u/ui/widge/SliderMenuItemListView;
invokestatic com/nd/android/u/ui/widge/SliderMenuItemListView/access$100(Lcom/nd/android/u/ui/widge/SliderMenuItemListView;)Lcom/nd/android/u/ui/widge/SliderMenuView;
invokevirtual com/nd/android/u/ui/widge/SliderMenuView/startUnexpandMenuFromFul()V
goto L0
.limit locals 2
.limit stack 4
.end method
