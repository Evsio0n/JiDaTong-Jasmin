.bytecode 50.0
.class public synchronized abstract com/huewu/pla/lib/internal/PLA_AdapterView
.super android/view/ViewGroup
.signature "<T::Landroid/widget/Adapter;>Landroid/view/ViewGroup;"
.inner class public static AdapterContextMenuInfo inner com/huewu/pla/lib/internal/PLA_AdapterView$AdapterContextMenuInfo outer com/huewu/pla/lib/internal/PLA_AdapterView
.inner class AdapterDataSetObserver inner com/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver outer com/huewu/pla/lib/internal/PLA_AdapterView
.inner class public static abstract interface OnItemClickListener inner com/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener outer com/huewu/pla/lib/internal/PLA_AdapterView
.inner class public static abstract interface OnItemLongClickListener inner com/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener outer com/huewu/pla/lib/internal/PLA_AdapterView
.inner class public static abstract interface OnItemSelectedListener inner com/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener outer com/huewu/pla/lib/internal/PLA_AdapterView
.inner class private SelectionNotifier inner com/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier outer com/huewu/pla/lib/internal/PLA_AdapterView

.field public static final 'INVALID_POSITION' I = -1


.field public static final 'INVALID_ROW_ID' J = -9223372036854775808L


.field public static final 'ITEM_VIEW_TYPE_HEADER_OR_FOOTER' I = -2


.field public static final 'ITEM_VIEW_TYPE_IGNORE' I = -1


.field static final 'SYNC_FIRST_POSITION' I = 1


.field static final 'SYNC_MAX_DURATION_MILLIS' I = 100


.field static final 'SYNC_SELECTED_POSITION' I = 0


.field 'mBlockLayoutRequests' Z

.field 'mDataChanged' Z

.field private 'mEmptyView' Landroid/view/View;

.field 'mFirstPosition' I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
.end annotation
.end field

.field 'mInLayout' Z

.field 'mItemCount' I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
.end annotation
.end field

.field private 'mLayoutHeight' I

.field 'mNeedSync' Z

.field 'mOldItemCount' I

.field 'mOldSelectedPosition' I

.field 'mOldSelectedRowId' J

.field 'mOnItemClickListener' Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;

.field 'mOnItemLongClickListener' Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;

.field 'mOnItemSelectedListener' Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;

.field 'mSelectedPosition' I
.annotation visible Landroid/view/ViewDebug$ExportedProperty;
category s = "list"
.end annotation
.end field

.field 'mSelectedRowId' J

.field private 'mSelectionNotifier' Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier; signature "Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>.SelectionNotifier;"

.field 'mSpecificTop' I

.field 'mSyncHeight' J

.field 'mSyncMode' I

.field 'mSyncPosition' I

.field 'mSyncRowId' J

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mFirstPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSyncRowId J
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mNeedSync Z
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mInLayout Z
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectedRowId J
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mOldSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mOldSelectedRowId J
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mBlockLayoutRequests Z
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mFirstPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSyncRowId J
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mNeedSync Z
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mInLayout Z
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectedRowId J
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mOldSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mOldSelectedRowId J
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mBlockLayoutRequests Z
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/view/ViewGroup/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mFirstPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSyncRowId J
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mNeedSync Z
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mInLayout Z
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectedRowId J
aload 0
iconst_m1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mOldSelectedPosition I
aload 0
ldc2_w -9223372036854775808L
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mOldSelectedRowId J
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mBlockLayoutRequests Z
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$0(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Landroid/os/Parcelable;)V
aload 0
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/onRestoreInstanceState(Landroid/os/Parcelable;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)Landroid/os/Parcelable;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/onSaveInstanceState()Landroid/os/Parcelable;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$2(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)V
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/fireOnSelected()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)V
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/performAccessibilityActionsOnSelected()V
return
.limit locals 1
.limit stack 1
.end method

.method private fireOnSelected()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mOnItemSelectedListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;
ifnonnull L0
return
L0:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getSelectedItemPosition()I
istore 1
iload 1
iflt L1
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getSelectedView()Landroid/view/View;
astore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mOnItemSelectedListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;
aload 0
aload 2
iload 1
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getAdapter()Landroid/widget/Adapter;
iload 1
invokeinterface android/widget/Adapter/getItemId(I)J 1
invokeinterface com/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener/onItemSelected(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Landroid/view/View;IJ)V 5
return
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mOnItemSelectedListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;
aload 0
invokeinterface com/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener/onNothingSelected(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)V 1
return
.limit locals 3
.limit stack 6
.end method

.method private performAccessibilityActionsOnSelected()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getSelectedItemPosition()I
iflt L0
aload 0
iconst_4
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/sendAccessibilityEvent(I)V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private updateEmptyStatus(Z)V
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "WrongCall" 
.end annotation
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/isInFilterMode()Z
ifeq L0
iconst_0
istore 1
L0:
iload 1
ifeq L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mEmptyView Landroid/view/View;
ifnull L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mEmptyView Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
bipush 8
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/setVisibility(I)V
L3:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mDataChanged Z
ifeq L4
aload 0
iconst_0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getLeft()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getTop()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getRight()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getBottom()I
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/onLayout(ZIIII)V
L4:
return
L2:
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/setVisibility(I)V
goto L3
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mEmptyView Landroid/view/View;
ifnull L5
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mEmptyView Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L5:
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/setVisibility(I)V
return
.limit locals 2
.limit stack 6
.end method

.method public addView(Landroid/view/View;)V
new java/lang/UnsupportedOperationException
dup
ldc "addView(View) is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public addView(Landroid/view/View;I)V
new java/lang/UnsupportedOperationException
dup
ldc "addView(View, int) is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
new java/lang/UnsupportedOperationException
dup
ldc "addView(View, int, LayoutParams) is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 4
.limit stack 3
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new java/lang/UnsupportedOperationException
dup
ldc "addView(View, LayoutParams) is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 3
.end method

.method protected canAnimate()Z
aload 0
invokespecial android/view/ViewGroup/canAnimate()Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mItemCount I
ifle L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method checkSelectionChanged()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectedPosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mOldSelectedPosition I
if_icmpne L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectedRowId J
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mOldSelectedRowId J
lcmp
ifeq L1
L0:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/selectionChanged()V
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectedPosition I
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mOldSelectedPosition I
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectedRowId J
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mOldSelectedRowId J
L1:
return
.limit locals 1
.limit stack 4
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
iconst_0
istore 2
aload 1
invokevirtual android/view/accessibility/AccessibilityEvent/getEventType()I
bipush 8
if_icmpne L0
aload 1
iconst_4
invokevirtual android/view/accessibility/AccessibilityEvent/setEventType(I)V
L0:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getSelectedView()Landroid/view/View;
astore 3
aload 3
ifnull L1
aload 3
aload 1
invokevirtual android/view/View/dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
istore 2
L1:
iload 2
ifne L2
aload 3
ifnull L3
aload 1
aload 3
invokevirtual android/view/View/isEnabled()Z
invokevirtual android/view/accessibility/AccessibilityEvent/setEnabled(Z)V
L3:
aload 1
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getCount()I
invokevirtual android/view/accessibility/AccessibilityEvent/setItemCount(I)V
aload 1
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getSelectedItemPosition()I
invokevirtual android/view/accessibility/AccessibilityEvent/setCurrentItemIndex(I)V
L2:
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
.signature "(Landroid/util/SparseArray<Landroid/os/Parcelable;>;)V"
aload 0
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/dispatchThawSelfOnly(Landroid/util/SparseArray;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
.signature "(Landroid/util/SparseArray<Landroid/os/Parcelable;>;)V"
aload 0
aload 1
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
return
.limit locals 2
.limit stack 2
.end method

.method findSyncPosition()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mItemCount I
istore 7
iload 7
ifne L0
iconst_m1
istore 5
L1:
iload 5
ireturn
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mSyncRowId J
lstore 8
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mSyncPosition I
istore 1
lload 8
ldc2_w -9223372036854775808L
lcmp
ifne L2
iconst_m1
ireturn
L2:
iload 7
iconst_1
isub
iconst_0
iload 1
invokestatic java/lang/Math/max(II)I
invokestatic java/lang/Math/min(II)I
istore 1
invokestatic android/os/SystemClock/uptimeMillis()J
lstore 10
iload 1
istore 3
iload 1
istore 4
iconst_0
istore 2
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getAdapter()Landroid/widget/Adapter;
astore 12
aload 12
ifnonnull L3
iconst_m1
ireturn
L4:
iload 1
istore 5
aload 12
iload 1
invokeinterface android/widget/Adapter/getItemId(I)J 1
lload 8
lcmp
ifeq L1
iload 4
iload 7
iconst_1
isub
if_icmpne L5
iconst_1
istore 5
L6:
iload 3
ifne L7
iconst_1
istore 6
L8:
iload 5
ifeq L9
iload 6
ifeq L9
L10:
iconst_m1
ireturn
L5:
iconst_0
istore 5
goto L6
L7:
iconst_0
istore 6
goto L8
L9:
iload 6
ifne L11
iload 2
ifeq L12
iload 5
ifne L12
L11:
iload 4
iconst_1
iadd
istore 4
iload 4
istore 1
iconst_0
istore 2
L3:
invokestatic android/os/SystemClock/uptimeMillis()J
lload 10
ldc2_w 100L
ladd
lcmp
ifle L4
goto L10
L12:
iload 5
ifne L13
iload 2
ifne L3
iload 6
ifne L3
L13:
iload 3
iconst_1
isub
istore 3
iload 3
istore 1
iconst_1
istore 2
goto L3
.limit locals 13
.limit stack 6
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
.signature "()TT;"
.end method

.method public getCount()I
.annotation visible Landroid/view/ViewDebug$CapturedViewProperty;
.end annotation
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mItemCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getEmptyView()Landroid/view/View;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mEmptyView Landroid/view/View;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFirstVisiblePosition()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mFirstPosition I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getAdapter()Landroid/widget/Adapter;
astore 2
aload 2
ifnull L0
iload 1
ifge L1
L0:
aconst_null
areturn
L1:
aload 2
iload 1
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public getItemIdAtPosition(I)J
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getAdapter()Landroid/widget/Adapter;
astore 2
aload 2
ifnull L0
iload 1
ifge L1
L0:
ldc2_w -9223372036854775808L
lreturn
L1:
aload 2
iload 1
invokeinterface android/widget/Adapter/getItemId(I)J 1
lreturn
.limit locals 3
.limit stack 2
.end method

.method public getLastVisiblePosition()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mFirstPosition I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getChildCount()I
iadd
iconst_1
isub
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final getOnItemClickListener()Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mOnItemClickListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getOnItemLongClickListener()Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mOnItemLongClickListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getOnItemSelectedListener()Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mOnItemSelectedListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPositionForView(Landroid/view/View;)I
.catch java/lang/ClassCastException from L0 to L1 using L2
L0:
aload 1
invokevirtual android/view/View/getParent()Landroid/view/ViewParent;
checkcast android/view/View
astore 5
aload 5
aload 0
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
istore 4
L1:
iload 4
ifeq L3
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getChildCount()I
istore 3
iconst_0
istore 2
L4:
iload 2
iload 3
if_icmplt L5
iconst_m1
ireturn
L3:
aload 5
astore 1
goto L0
L2:
astore 1
iconst_m1
ireturn
L5:
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getChildAt(I)Landroid/view/View;
aload 1
invokevirtual java/lang/Object/equals(Ljava/lang/Object;)Z
ifeq L6
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mFirstPosition I
iload 2
iadd
ireturn
L6:
iload 2
iconst_1
iadd
istore 2
goto L4
.limit locals 6
.limit stack 2
.end method

.method public getSelectedItem()Ljava/lang/Object;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getAdapter()Landroid/widget/Adapter;
astore 2
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getSelectedItemPosition()I
istore 1
aload 2
ifnull L0
aload 2
invokeinterface android/widget/Adapter/getCount()I 0
ifle L0
iload 1
iflt L0
aload 2
iload 1
invokeinterface android/widget/Adapter/getItem(I)Ljava/lang/Object; 1
areturn
L0:
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public getSelectedItemId()J
.annotation visible Landroid/view/ViewDebug$CapturedViewProperty;
.end annotation
ldc2_w -9223372036854775808L
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getSelectedItemPosition()I
.annotation visible Landroid/view/ViewDebug$CapturedViewProperty;
.end annotation
iconst_m1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mItemCount I
ifle L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mNeedSync Z
ifeq L0
aload 0
iconst_0
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mNeedSync Z
L0:
return
.limit locals 1
.limit stack 2
.end method

.method isInFilterMode()Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method lookForSelectablePosition(IZ)I
iload 1
ireturn
.limit locals 3
.limit stack 1
.end method

.method protected onDetachedFromWindow()V
aload 0
invokespecial android/view/ViewGroup/onDetachedFromWindow()V
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectionNotifier Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/removeCallbacks(Ljava/lang/Runnable;)Z
pop
return
.limit locals 1
.limit stack 2
.end method

.method protected onLayout(ZIIII)V
aload 0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getHeight()I
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mLayoutHeight I
return
.limit locals 6
.limit stack 2
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
iconst_0
istore 5
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mOnItemClickListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;
ifnull L0
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/playSoundEffect(I)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mOnItemClickListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;
aload 0
aload 1
iload 2
lload 3
invokeinterface com/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener/onItemClick(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Landroid/view/View;IJ)V 5
iconst_1
istore 5
L0:
iload 5
ireturn
.limit locals 6
.limit stack 6
.end method

.method rememberSyncState()V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getChildCount()I
ifle L0
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mNeedSync Z
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mLayoutHeight I
i2l
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSyncHeight J
aload 0
iconst_0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getChildAt(I)Landroid/view/View;
astore 1
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getAdapter()Landroid/widget/Adapter;
astore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mFirstPosition I
iflt L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mFirstPosition I
aload 2
invokeinterface android/widget/Adapter/getCount()I 0
if_icmpge L1
aload 0
aload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mFirstPosition I
invokeinterface android/widget/Adapter/getItemId(I)J 1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSyncRowId J
L2:
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mFirstPosition I
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSyncPosition I
aload 1
ifnull L3
aload 0
aload 1
invokevirtual android/view/View/getTop()I
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSpecificTop I
L3:
aload 0
iconst_1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSyncMode I
L0:
return
L1:
aload 0
ldc2_w -1L
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSyncRowId J
goto L2
.limit locals 3
.limit stack 3
.end method

.method public removeAllViews()V
new java/lang/UnsupportedOperationException
dup
ldc "removeAllViews() is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 3
.end method

.method public removeView(Landroid/view/View;)V
new java/lang/UnsupportedOperationException
dup
ldc "removeView(View) is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public removeViewAt(I)V
new java/lang/UnsupportedOperationException
dup
ldc "removeViewAt(int) is not supported in AdapterView"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method selectionChanged()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mOnItemSelectedListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mInLayout Z
ifne L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mBlockLayoutRequests Z
ifeq L2
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectionNotifier Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;
ifnonnull L3
aload 0
new com/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier
dup
aload 0
aconst_null
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier/<init>(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;)V
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectionNotifier Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;
L3:
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AdapterView/mSelectionNotifier Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/post(Ljava/lang/Runnable;)Z
pop
L0:
return
L2:
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/fireOnSelected()V
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/performAccessibilityActionsOnSelected()V
return
.limit locals 1
.limit stack 5
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
.signature "(TT;)V"
.end method

.method public setEmptyView(Landroid/view/View;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mEmptyView Landroid/view/View;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/getAdapter()Landroid/widget/Adapter;
astore 1
aload 1
ifnull L0
aload 1
invokeinterface android/widget/Adapter/isEmpty()Z 0
ifne L0
iconst_0
istore 2
L1:
aload 0
iload 2
invokespecial com/huewu/pla/lib/internal/PLA_AdapterView/updateEmptyStatus(Z)V
return
L0:
iconst_1
istore 2
goto L1
.limit locals 3
.limit stack 2
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
new java/lang/RuntimeException
dup
ldc "Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
.limit locals 2
.limit stack 3
.end method

.method public setOnItemClickListener(Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mOnItemClickListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnItemLongClickListener(Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;)V
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/isLongClickable()Z
ifne L0
aload 0
iconst_1
invokevirtual com/huewu/pla/lib/internal/PLA_AdapterView/setLongClickable(Z)V
L0:
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mOnItemLongClickListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnItemSelectedListener(Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AdapterView/mOnItemSelectedListener Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;
return
.limit locals 2
.limit stack 2
.end method

.method public abstract setSelection(I)V
.end method
