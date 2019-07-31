.bytecode 50.0
.class public synchronized abstract com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter
.super android/widget/BaseAdapter
.implements com/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl
.implements com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate
.signature "<T:Ljava/lang/Object;>Landroid/widget/BaseAdapter;Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;Lcom/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate<TT;>;"
.inner class public static abstract interface CtrlViewCallBack inner com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter$CtrlViewCallBack outer com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter

.field public static final 'TAG' Ljava/lang/String;

.field private 'actionMode' I

.field private 'hasMoreData' Z

.field private 'mCallBack' Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter$CtrlViewCallBack;

.field protected 'mCtx' Landroid/content/Context;

.field private 'mList' Ljava/util/List; signature "Ljava/util/List<TT;>;"

.field private 'mPageInfo' Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;

.method static <clinit>()V
ldc com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mList Ljava/util/List;
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
aload 0
bipush 99
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/actionMode I
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/hasMoreData Z
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mCtx Landroid/content/Context;
aload 0
aload 2
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
return
.limit locals 3
.limit stack 3
.end method

.method protected getActionMode()I
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/actionMode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getList()Ljava/util/List;
.signature "()Ljava/util/List<TT;>;"
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isDataDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
.signature "(TT;TT;)Z"
aload 0
aload 1
aload 2
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected abstract isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
.signature "(TT;TT;)Z"
.end method

.method public isShowLoadMoreView()Z
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/hasMoreData Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAction(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/actionMode I
return
.limit locals 2
.limit stack 2
.end method

.method public setCtrlViewCallBack(Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter$CtrlViewCallBack;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter$CtrlViewCallBack;
return
.limit locals 2
.limit stack 2
.end method

.method public setHasMoreData(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/hasMoreData Z
return
.limit locals 2
.limit stack 2
.end method

.method public updateData(Ljava/util/List;Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;Z)V
.signature "(Ljava/util/List<TT;>;Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;Z)V"
aload 1
ifnonnull L0
getstatic com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/TAG Ljava/lang/String;
ldc "updateData(list\uff0cGhostPageInfo api) input list is null!"
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
return
L0:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
ifnonnull L1
getstatic com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/TAG Ljava/lang/String;
ldc "PageInfo is null!"
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
return
L1:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mList Ljava/util/List;
ifnonnull L2
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mList Ljava/util/List;
L2:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/getGhostV()J
aload 2
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/getGhostV()J
lcmp
ifeq L3
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L4
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L4:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/setPage(I)V
aload 1
invokeinterface java/util/List/size()I 0
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/getSize()I
if_icmpge L5
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/hasMoreData Z
L6:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
aload 2
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/getGhostV()J
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/setGhostV(J)V
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/notifyDataSetChanged()V
return
L5:
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/hasMoreData Z
goto L6
L3:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/getActionMode()I
bipush 99
if_icmpne L7
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L8
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L8:
aload 1
invokeinterface java/util/List/size()I 0
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/getSize()I
if_icmpge L9
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/hasMoreData Z
L10:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/setPage(I)V
goto L6
L9:
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/hasMoreData Z
goto L10
L7:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/getActionMode()I
bipush 98
if_icmpne L6
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
iload 3
ifeq L11
aload 0
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mList Ljava/util/List;
iconst_0
aload 0
invokestatic com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil/removeDuplicate(Ljava/util/List;ZLcom/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate;)Ljava/util/List;
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mList Ljava/util/List;
L11:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/getPage()I
iconst_1
iadd
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/setPage(I)V
aload 1
invokeinterface java/util/List/size()I 0
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/GhostPageInfo/getSize()I
if_icmpge L12
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/hasMoreData Z
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter$CtrlViewCallBack;
ifnull L6
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter$CtrlViewCallBack;
invokeinterface com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter$CtrlViewCallBack/processNoMoreData()V 0
goto L6
L12:
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/hasMoreData Z
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter$CtrlViewCallBack;
ifnull L6
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter$CtrlViewCallBack;
invokeinterface com/nd/schoollife/ui/common/view/widget/pagination/GhostPageCtrlAdapter$CtrlViewCallBack/processHasMoreData()V 0
goto L6
.limit locals 4
.limit stack 4
.end method
