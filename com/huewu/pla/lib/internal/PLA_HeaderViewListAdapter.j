.bytecode 50.0
.class public synchronized com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter
.super java/lang/Object
.implements android/widget/WrapperListAdapter
.implements android/widget/Filterable

.field static final 'EMPTY_INFO_LIST' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;>;"

.field private final 'mAdapter' Landroid/widget/ListAdapter;

.field 'mAreAllFixedViewsSelectable' Z

.field 'mFooterViewInfos' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;>;"

.field 'mHeaderViewInfos' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;>;"

.field private final 'mIsFilterable' Z

.method static <clinit>()V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putstatic com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/EMPTY_INFO_LIST Ljava/util/ArrayList;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
.signature "(Ljava/util/ArrayList<Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;>;Ljava/util/ArrayList<Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;>;Landroid/widget/ListAdapter;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 3
putfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
aload 0
aload 3
instanceof android/widget/Filterable
putfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mIsFilterable Z
aload 1
ifnonnull L0
aload 0
getstatic com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/EMPTY_INFO_LIST Ljava/util/ArrayList;
putfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mHeaderViewInfos Ljava/util/ArrayList;
L1:
aload 2
ifnonnull L2
aload 0
getstatic com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/EMPTY_INFO_LIST Ljava/util/ArrayList;
putfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mFooterViewInfos Ljava/util/ArrayList;
L3:
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mHeaderViewInfos Ljava/util/ArrayList;
invokespecial com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/areAllListInfosSelectable(Ljava/util/ArrayList;)Z
ifeq L4
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mFooterViewInfos Ljava/util/ArrayList;
invokespecial com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/areAllListInfosSelectable(Ljava/util/ArrayList;)Z
ifeq L4
iconst_1
istore 4
L5:
aload 0
iload 4
putfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAreAllFixedViewsSelectable Z
return
L0:
aload 0
aload 1
putfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mHeaderViewInfos Ljava/util/ArrayList;
goto L1
L2:
aload 0
aload 2
putfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mFooterViewInfos Ljava/util/ArrayList;
goto L3
L4:
iconst_0
istore 4
goto L5
.limit locals 5
.limit stack 2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
.signature "(Ljava/util/ArrayList<Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;>;)Z"
aload 1
ifnull L0
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L2
L0:
iconst_1
ireturn
L2:
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
getfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/isSelectable Z
ifne L1
iconst_0
ireturn
.limit locals 2
.limit stack 1
.end method

.method public areAllItemsEnabled()Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAreAllFixedViewsSelectable Z
ifeq L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/areAllItemsEnabled()Z 0
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
ifnull L0
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/getFootersCount()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/getHeadersCount()I
iadd
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
iadd
ireturn
L0:
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/getFootersCount()I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/getHeadersCount()I
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public getFilter()Landroid/widget/Filter;
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mIsFilterable Z
ifeq L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
checkcast android/widget/Filterable
invokeinterface android/widget/Filterable/getFilter()Landroid/widget/Filter; 0
areturn
L0:
aconst_null
areturn
.limit locals 1
.limit stack 1
.end method

.method public getFootersCount()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mFooterViewInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getHeadersCount()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mHeaderViewInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/getHeadersCount()I
istore 2
iload 1
iload 2
if_icmpge L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mHeaderViewInfos Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
getfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/data Ljava/lang/Object;
areturn
L0:
iload 1
iload 2
isub
istore 3
iconst_0
istore 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
ifnull L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
istore 2
iload 2
istore 1
iload 3
iload 2
if_icmpge L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
iload 3
invokeinterface android/widget/ListAdapter/getItem(I)Ljava/lang/Object; 1
areturn
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mFooterViewInfos Ljava/util/ArrayList;
iload 3
iload 1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
getfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/data Ljava/lang/Object;
areturn
.limit locals 4
.limit stack 3
.end method

.method public getItemId(I)J
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/getHeadersCount()I
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
ifnull L0
iload 1
iload 2
if_icmplt L0
iload 1
iload 2
isub
istore 1
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
if_icmpge L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
iload 1
invokeinterface android/widget/ListAdapter/getItemId(I)J 1
lreturn
L0:
ldc2_w -1L
lreturn
.limit locals 3
.limit stack 2
.end method

.method public getItemViewType(I)I
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/getHeadersCount()I
istore 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
ifnull L0
iload 1
iload 2
if_icmplt L0
iload 1
iload 2
isub
istore 1
iload 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
if_icmpge L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
iload 1
invokeinterface android/widget/ListAdapter/getItemViewType(I)I 1
ireturn
L0:
bipush -2
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/getHeadersCount()I
istore 4
iload 1
iload 4
if_icmpge L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mHeaderViewInfos Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
getfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/view Landroid/view/View;
areturn
L0:
iload 1
iload 4
isub
istore 5
iconst_0
istore 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
ifnull L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
istore 4
iload 4
istore 1
iload 5
iload 4
if_icmpge L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
iload 5
aload 2
aload 3
invokeinterface android/widget/ListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View; 3
areturn
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mFooterViewInfos Ljava/util/ArrayList;
iload 5
iload 1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
getfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/view Landroid/view/View;
areturn
.limit locals 6
.limit stack 4
.end method

.method public getViewTypeCount()I
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getViewTypeCount()I 0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hasStableIds()Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/hasStableIds()Z 0
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isEmpty()Z
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/isEmpty()Z 0
ifne L0
iconst_0
ireturn
L0:
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isEnabled(I)Z
aload 0
invokevirtual com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/getHeadersCount()I
istore 2
iload 1
iload 2
if_icmpge L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mHeaderViewInfos Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
getfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/isSelectable Z
ireturn
L0:
iload 1
iload 2
isub
istore 3
iconst_0
istore 1
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
ifnull L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
invokeinterface android/widget/ListAdapter/getCount()I 0
istore 2
iload 2
istore 1
iload 3
iload 2
if_icmpge L1
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
iload 3
invokeinterface android/widget/ListAdapter/isEnabled(I)Z 1
ireturn
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mFooterViewInfos Ljava/util/ArrayList;
iload 3
iload 1
isub
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
getfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/isSelectable Z
ireturn
.limit locals 4
.limit stack 3
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
aload 1
invokeinterface android/widget/ListAdapter/registerDataSetObserver(Landroid/database/DataSetObserver;)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public removeFooter(Landroid/view/View;)Z
iconst_0
istore 4
iconst_0
istore 2
L0:
iload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mFooterViewInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmplt L1
iconst_0
ireturn
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mFooterViewInfos Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
getfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/view Landroid/view/View;
aload 1
if_acmpne L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mFooterViewInfos Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
iload 4
istore 3
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mHeaderViewInfos Ljava/util/ArrayList;
invokespecial com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/areAllListInfosSelectable(Ljava/util/ArrayList;)Z
ifeq L3
iload 4
istore 3
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mFooterViewInfos Ljava/util/ArrayList;
invokespecial com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/areAllListInfosSelectable(Ljava/util/ArrayList;)Z
ifeq L3
iconst_1
istore 3
L3:
aload 0
iload 3
putfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAreAllFixedViewsSelectable Z
iconst_1
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 5
.limit stack 2
.end method

.method public removeHeader(Landroid/view/View;)Z
iconst_0
istore 4
iconst_0
istore 2
L0:
iload 2
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mHeaderViewInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmplt L1
iconst_0
ireturn
L1:
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mHeaderViewInfos Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo
getfield com/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo/view Landroid/view/View;
aload 1
if_acmpne L2
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mHeaderViewInfos Ljava/util/ArrayList;
iload 2
invokevirtual java/util/ArrayList/remove(I)Ljava/lang/Object;
pop
iload 4
istore 3
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mHeaderViewInfos Ljava/util/ArrayList;
invokespecial com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/areAllListInfosSelectable(Ljava/util/ArrayList;)Z
ifeq L3
iload 4
istore 3
aload 0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mFooterViewInfos Ljava/util/ArrayList;
invokespecial com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/areAllListInfosSelectable(Ljava/util/ArrayList;)Z
ifeq L3
iconst_1
istore 3
L3:
aload 0
iload 3
putfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAreAllFixedViewsSelectable Z
iconst_1
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 5
.limit stack 2
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
ifnull L0
aload 0
getfield com/huewu/pla/lib/internal/PLA_HeaderViewListAdapter/mAdapter Landroid/widget/ListAdapter;
aload 1
invokeinterface android/widget/ListAdapter/unregisterDataSetObserver(Landroid/database/DataSetObserver;)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method
