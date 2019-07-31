.bytecode 50.0
.class synchronized com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin
.super java/lang/Object
.inner class RecycleBin inner com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin outer com/huewu/pla/lib/internal/PLA_AbsListView

.field private 'mActiveViews' [Landroid/view/View;

.field private 'mCurrentScrap' Ljava/util/Stack; signature "Ljava/util/Stack<Landroid/view/View;>;"

.field private 'mFirstActivePosition' I

.field private 'mRecyclerListener' Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;

.field private 'mScrapViews' [Ljava/util/Stack; signature "[Ljava/util/Stack<Landroid/view/View;>;"

.field private 'mViewTypeCount' I

.field final synthetic 'this$0' Lcom/huewu/pla/lib/internal/PLA_AbsListView;

.method <init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
anewarray android/view/View
putfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mActiveViews [Landroid/view/View;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$0(Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;)Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mRecyclerListener Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;)V
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mRecyclerListener Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;
return
.limit locals 2
.limit stack 2
.end method

.method private pruneScrapViews()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mActiveViews [Landroid/view/View;
arraylength
istore 4
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mViewTypeCount I
istore 5
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mScrapViews [Ljava/util/Stack;
astore 7
iconst_0
istore 1
L0:
iload 1
iload 5
if_icmplt L1
return
L1:
aload 7
iload 1
aaload
astore 8
aload 8
invokevirtual java/util/Stack/size()I
istore 6
iconst_0
istore 3
iload 6
iconst_1
isub
istore 2
L2:
iload 3
iload 6
iload 4
isub
if_icmplt L3
iload 1
iconst_1
iadd
istore 1
goto L0
L3:
ldc "remove scarp views from pruneScrapViews"
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 8
iload 2
invokevirtual java/util/Stack/remove(I)Ljava/lang/Object;
checkcast android/view/View
iconst_0
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView/access$3(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;Z)V
iload 3
iconst_1
iadd
istore 3
iload 2
iconst_1
isub
istore 2
goto L2
.limit locals 9
.limit stack 3
.end method

.method addScrapView(Landroid/view/View;)V
ldc "addToScrap"
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 1
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
astore 3
aload 3
ifnonnull L0
L1:
return
L0:
aload 3
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/viewType I
istore 2
aload 0
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/shouldRecycleViewType(I)Z
ifne L2
iload 2
bipush -2
if_icmpeq L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 1
iconst_0
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView/access$3(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;Z)V
return
L2:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mViewTypeCount I
iconst_1
if_icmpne L3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 1
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView/access$4(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mCurrentScrap Ljava/util/Stack;
aload 1
invokevirtual java/util/Stack/add(Ljava/lang/Object;)Z
pop
L4:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mRecyclerListener Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;
ifnull L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mRecyclerListener Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;
aload 1
invokeinterface com/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener/onMovedToScrapHeap(Landroid/view/View;)V 1
return
L3:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 1
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView/access$4(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mScrapViews [Ljava/util/Stack;
iload 2
aaload
aload 1
invokevirtual java/util/Stack/push(Ljava/lang/Object;)Ljava/lang/Object;
pop
goto L4
.limit locals 4
.limit stack 3
.end method

.method clear()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mViewTypeCount I
iconst_1
if_icmpne L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mCurrentScrap Ljava/util/Stack;
astore 5
aload 5
invokevirtual java/util/Stack/size()I
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmplt L2
L3:
return
L2:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 5
iload 2
iconst_1
isub
iload 1
isub
invokevirtual java/util/Stack/remove(I)Ljava/lang/Object;
checkcast android/view/View
iconst_0
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView/access$3(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;Z)V
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mViewTypeCount I
istore 3
iconst_0
istore 1
L4:
iload 1
iload 3
if_icmpge L3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mScrapViews [Ljava/util/Stack;
iload 1
aaload
astore 5
aload 5
invokevirtual java/util/Stack/size()I
istore 4
iconst_0
istore 2
L5:
iload 2
iload 4
if_icmplt L6
iload 1
iconst_1
iadd
istore 1
goto L4
L6:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 5
iload 4
iconst_1
isub
iload 2
isub
invokevirtual java/util/Stack/remove(I)Ljava/lang/Object;
checkcast android/view/View
iconst_0
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView/access$3(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;Z)V
iload 2
iconst_1
iadd
istore 2
goto L5
.limit locals 6
.limit stack 4
.end method

.method fillActiveViews(II)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mActiveViews [Landroid/view/View;
arraylength
iload 1
if_icmpge L0
aload 0
iload 1
anewarray android/view/View
putfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mActiveViews [Landroid/view/View;
L0:
aload 0
iload 2
putfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mFirstActivePosition I
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mActiveViews [Landroid/view/View;
astore 3
iconst_0
istore 2
L1:
iload 2
iload 1
if_icmplt L2
return
L2:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
iload 2
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getChildAt(I)Landroid/view/View;
astore 4
aload 4
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
astore 5
aload 5
ifnull L3
aload 5
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/viewType I
bipush -2
if_icmpeq L3
aload 3
iload 2
aload 4
aastore
L3:
iload 2
iconst_1
iadd
istore 2
goto L1
.limit locals 6
.limit stack 3
.end method

.method getActiveView(I)Landroid/view/View;
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mFirstActivePosition I
isub
istore 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mActiveViews [Landroid/view/View;
astore 2
iload 1
iflt L0
iload 1
aload 2
arraylength
if_icmpge L0
aload 2
iload 1
aaload
astore 3
aload 2
iload 1
aconst_null
aastore
aload 3
areturn
L0:
aconst_null
areturn
.limit locals 4
.limit stack 3
.end method

.method getScrapView(I)Landroid/view/View;
new java/lang/StringBuilder
dup
ldc "getFromScrap: "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView/getHeaderViewsCount()I
iload 1
if_icmple L0
aconst_null
areturn
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mViewTypeCount I
iconst_1
if_icmpne L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mCurrentScrap Ljava/util/Stack;
astore 4
L2:
aload 4
invokevirtual java/util/Stack/size()I
istore 3
iload 3
iconst_1
isub
istore 2
L3:
iload 2
ifge L4
iload 3
ifle L5
aload 4
iconst_0
invokevirtual java/util/Stack/remove(I)Ljava/lang/Object;
checkcast android/view/View
areturn
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
getfield com/huewu/pla/lib/internal/PLA_AbsListView/mAdapter Landroid/widget/ListAdapter;
iload 1
invokeinterface android/widget/ListAdapter/getItemViewType(I)I 1
istore 2
iload 2
iflt L6
iload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mScrapViews [Ljava/util/Stack;
arraylength
if_icmpge L6
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mScrapViews [Ljava/util/Stack;
iload 2
aaload
astore 4
goto L2
L6:
aconst_null
areturn
L4:
aload 4
iload 2
invokevirtual java/util/Stack/get(I)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/scrappedFromPosition I
iload 1
if_icmpne L7
aload 4
iload 2
invokevirtual java/util/Stack/remove(I)Ljava/lang/Object;
checkcast android/view/View
areturn
L7:
iload 2
iconst_1
isub
istore 2
goto L3
L5:
aconst_null
areturn
.limit locals 5
.limit stack 3
.end method

.method public markChildrenDirty()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mViewTypeCount I
iconst_1
if_icmpne L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mCurrentScrap Ljava/util/Stack;
astore 5
aload 5
invokevirtual java/util/Stack/size()I
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmplt L2
L3:
return
L2:
aload 5
iload 1
invokevirtual java/util/Stack/get(I)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/view/View/forceLayout()V
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mViewTypeCount I
istore 3
iconst_0
istore 1
L4:
iload 1
iload 3
if_icmpge L3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mScrapViews [Ljava/util/Stack;
iload 1
aaload
astore 5
aload 5
invokevirtual java/util/Stack/size()I
istore 4
iconst_0
istore 2
L5:
iload 2
iload 4
if_icmplt L6
iload 1
iconst_1
iadd
istore 1
goto L4
L6:
aload 5
iload 2
invokevirtual java/util/Stack/get(I)Ljava/lang/Object;
checkcast android/view/View
invokevirtual android/view/View/forceLayout()V
iload 2
iconst_1
iadd
istore 2
goto L5
.limit locals 6
.limit stack 2
.end method

.method reclaimScrapViews(Ljava/util/List;)V
.signature "(Ljava/util/List<Landroid/view/View;>;)V"
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mViewTypeCount I
iconst_1
if_icmpne L0
aload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mCurrentScrap Ljava/util/Stack;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L1:
return
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mViewTypeCount I
istore 3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mScrapViews [Ljava/util/Stack;
astore 4
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L1
aload 4
iload 2
aaload
astore 5
ldc "add scarp views from reclaimScrapViews"
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 1
aload 5
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
iload 2
iconst_1
iadd
istore 2
goto L2
.limit locals 6
.limit stack 2
.end method

.method scrapActiveViews()V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mActiveViews [Landroid/view/View;
astore 7
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mRecyclerListener Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;
ifnull L0
iconst_1
istore 1
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mViewTypeCount I
iconst_1
if_icmple L2
iconst_1
istore 2
L3:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mCurrentScrap Ljava/util/Stack;
astore 5
aload 7
arraylength
iconst_1
isub
istore 3
L4:
iload 3
ifge L5
aload 0
invokespecial com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/pruneScrapViews()V
return
L0:
iconst_0
istore 1
goto L1
L2:
iconst_0
istore 2
goto L3
L5:
aload 7
iload 3
aaload
astore 8
aload 5
astore 6
aload 8
ifnull L6
aload 8
invokevirtual android/view/View/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams
getfield com/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams/viewType I
istore 4
aload 7
iload 3
aconst_null
aastore
aload 0
iload 4
invokevirtual com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/shouldRecycleViewType(I)Z
ifne L7
aload 5
astore 6
iload 4
bipush -2
if_icmpeq L6
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 8
iconst_0
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView/access$3(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;Z)V
aload 5
astore 6
L6:
iload 3
iconst_1
isub
istore 3
aload 6
astore 5
goto L4
L7:
iload 2
ifeq L8
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mScrapViews [Ljava/util/Stack;
iload 4
aaload
astore 5
L8:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/this$0 Lcom/huewu/pla/lib/internal/PLA_AbsListView;
aload 8
invokestatic com/huewu/pla/lib/internal/PLA_AbsListView/access$4(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;)V
ldc "addToScrap from scrapActiveViews"
invokestatic com/huewu/pla/lib/DebugUtil/i(Ljava/lang/String;)V
aload 5
aload 8
invokevirtual java/util/Stack/add(Ljava/lang/Object;)Z
pop
aload 5
astore 6
iload 1
ifeq L6
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mRecyclerListener Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;
aload 8
invokeinterface com/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener/onMovedToScrapHeap(Landroid/view/View;)V 1
aload 5
astore 6
goto L6
.limit locals 9
.limit stack 3
.end method

.method setCacheColorHint(I)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mViewTypeCount I
iconst_1
if_icmpne L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mCurrentScrap Ljava/util/Stack;
astore 6
aload 6
invokevirtual java/util/Stack/size()I
istore 3
iconst_0
istore 2
L1:
iload 2
iload 3
if_icmplt L2
L3:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mActiveViews [Landroid/view/View;
astore 6
aload 6
arraylength
istore 3
iconst_0
istore 2
L4:
iload 2
iload 3
if_icmplt L5
return
L2:
aload 6
iload 2
invokevirtual java/util/Stack/get(I)Ljava/lang/Object;
checkcast android/view/View
iload 1
invokevirtual android/view/View/setDrawingCacheBackgroundColor(I)V
iload 2
iconst_1
iadd
istore 2
goto L1
L0:
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mViewTypeCount I
istore 4
iconst_0
istore 2
L6:
iload 2
iload 4
if_icmpge L3
aload 0
getfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mScrapViews [Ljava/util/Stack;
iload 2
aaload
astore 6
aload 6
invokevirtual java/util/Stack/size()I
istore 5
iconst_0
istore 3
L7:
iload 3
iload 5
if_icmplt L8
iload 2
iconst_1
iadd
istore 2
goto L6
L8:
aload 6
iload 2
invokevirtual java/util/Stack/get(I)Ljava/lang/Object;
checkcast android/view/View
iload 1
invokevirtual android/view/View/setDrawingCacheBackgroundColor(I)V
iload 3
iconst_1
iadd
istore 3
goto L7
L5:
aload 6
iload 2
aaload
astore 7
aload 7
ifnull L9
aload 7
iload 1
invokevirtual android/view/View/setDrawingCacheBackgroundColor(I)V
L9:
iload 2
iconst_1
iadd
istore 2
goto L4
.limit locals 8
.limit stack 2
.end method

.method public setViewTypeCount(I)V
iload 1
iconst_1
if_icmpge L0
new java/lang/IllegalArgumentException
dup
ldc "Can't have a viewTypeCount < 1"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
iload 1
anewarray java/util/Stack
astore 3
iconst_0
istore 2
L1:
iload 2
iload 1
if_icmplt L2
aload 0
iload 1
putfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mViewTypeCount I
aload 0
aload 3
iconst_0
aaload
putfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mCurrentScrap Ljava/util/Stack;
aload 0
aload 3
putfield com/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin/mScrapViews [Ljava/util/Stack;
return
L2:
aload 3
iload 2
new java/util/Stack
dup
invokespecial java/util/Stack/<init>()V
aastore
iload 2
iconst_1
iadd
istore 2
goto L1
.limit locals 4
.limit stack 4
.end method

.method public shouldRecycleViewType(I)Z
iload 1
iflt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method
