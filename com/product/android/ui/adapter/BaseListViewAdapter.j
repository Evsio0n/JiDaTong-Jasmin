.bytecode 50.0
.class public synchronized abstract com/product/android/ui/adapter/BaseListViewAdapter
.super android/widget/BaseAdapter

.field protected static final 'TYPE_HR_RECOGNIZE_ITEM' I = 1


.field protected static final 'TYPE_MAX_COUNT' I = 2


.field protected static final 'TYPE_PHOTOWALL_ITEM' I = 0


.field protected 'context' Landroid/content/Context;

.field protected 'gridItemNum' I

.field protected 'mDataList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Ljava/lang/Object;>;"

.field public 'mHRRecognizeSet' Ljava/util/TreeSet;

.field private 'scrollState' I

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Ljava/lang/Object;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new java/util/TreeSet
dup
invokespecial java/util/TreeSet/<init>()V
putfield com/product/android/ui/adapter/BaseListViewAdapter/mHRRecognizeSet Ljava/util/TreeSet;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/product/android/ui/adapter/BaseListViewAdapter/scrollState I
aload 0
iconst_0
putfield com/product/android/ui/adapter/BaseListViewAdapter/gridItemNum I
aload 0
aload 1
putfield com/product/android/ui/adapter/BaseListViewAdapter/context Landroid/content/Context;
aload 2
ifnull L0
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Ljava/lang/Object;>;I)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new java/util/TreeSet
dup
invokespecial java/util/TreeSet/<init>()V
putfield com/product/android/ui/adapter/BaseListViewAdapter/mHRRecognizeSet Ljava/util/TreeSet;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
aload 0
iconst_0
putfield com/product/android/ui/adapter/BaseListViewAdapter/scrollState I
aload 0
iconst_0
putfield com/product/android/ui/adapter/BaseListViewAdapter/gridItemNum I
aload 0
aload 1
putfield com/product/android/ui/adapter/BaseListViewAdapter/context Landroid/content/Context;
aload 2
ifnull L0
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
aload 2
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
L0:
aload 0
iload 3
putfield com/product/android/ui/adapter/BaseListViewAdapter/gridItemNum I
return
.limit locals 4
.limit stack 3
.end method

.method public addItemList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<*>;)V"
aload 1
ifnull L0
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
aload 0
invokevirtual com/product/android/ui/adapter/BaseListViewAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public clearAdapter()V
aload 0
aconst_null
putfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/product/android/ui/adapter/BaseListViewAdapter/context Landroid/content/Context;
return
.limit locals 1
.limit stack 2
.end method

.method public clearDataList()V
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getDataList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Ljava/lang/Object;>;"
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getEnd(I)I
iload 1
istore 2
iload 1
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmple L0
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
istore 2
L0:
iload 2
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getGridItemNum()I
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/gridItemNum I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getItemViewType(I)I
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mHRRecognizeSet Ljava/util/TreeSet;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/TreeSet/contains(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getScrollState()I
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/scrollState I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getViewTypeCount()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected isScrollStateIdle()Z
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/scrollState I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setDataList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/Object;>;)V"
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/addAll(Ljava/util/Collection;)Z
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setHRRecognizeItemFlag()V
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mHRRecognizeSet Ljava/util/TreeSet;
aload 0
getfield com/product/android/ui/adapter/BaseListViewAdapter/mDataList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual java/util/TreeSet/add(Ljava/lang/Object;)Z
pop
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public setIsEditMode(Z)V
return
.limit locals 2
.limit stack 0
.end method

.method public setScrollState(I)V
aload 0
iload 1
putfield com/product/android/ui/adapter/BaseListViewAdapter/scrollState I
return
.limit locals 2
.limit stack 2
.end method
