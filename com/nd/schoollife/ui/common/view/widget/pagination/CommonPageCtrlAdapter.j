.bytecode 50.0
.class public synchronized abstract com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter
.super android/widget/BaseAdapter
.implements com/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl
.implements com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate
.signature "<T:Ljava/lang/Object;>Landroid/widget/BaseAdapter;Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;Lcom/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate<TT;>;"
.inner class public static abstract interface CtrlViewCallBack inner com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter$CtrlViewCallBack outer com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter

.field public static final 'TAG' Ljava/lang/String;

.field private 'actionMode' I

.field private 'hasMoreData' Z

.field private 'mCallBack' Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter$CtrlViewCallBack;

.field protected 'mCtx' Landroid/content/Context;

.field private 'mList' Ljava/util/List; signature "Ljava/util/List<TT;>;"

.field private 'mPageInfo' Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;

.method static <clinit>()V
ldc com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mList Ljava/util/List;
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
aload 0
bipush 99
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/actionMode I
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/hasMoreData Z
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mCtx Landroid/content/Context;
aload 0
aload 2
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
return
.limit locals 3
.limit stack 3
.end method

.method public clearData()V
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/notifyDataSetChanged()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method protected getActionMode()I
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/actionMode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getList()Ljava/util/List;
.signature "()Ljava/util/List<TT;>;"
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isDataDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
.signature "(TT;TT;)Z"
aload 0
aload 1
aload 2
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected abstract isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
.signature "(TT;TT;)Z"
.end method

.method public isShowLoadMoreView()Z
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/hasMoreData Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAction(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/actionMode I
getstatic com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "setAction="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/v(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method public setCtrlViewCallBack(Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter$CtrlViewCallBack;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter$CtrlViewCallBack;
return
.limit locals 2
.limit stack 2
.end method

.method public setHasMoreDataFlag(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/hasMoreData Z
return
.limit locals 2
.limit stack 2
.end method

.method public updateData(Ljava/util/List;Z)V
.signature "(Ljava/util/List<TT;>;Z)V"
aload 1
ifnonnull L0
getstatic com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/TAG Ljava/lang/String;
ldc "updateData(list ) input list is null!"
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/hasMoreData Z
return
L0:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
ifnonnull L1
getstatic com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/TAG Ljava/lang/String;
ldc "PageInfo is null!"
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
return
L1:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mList Ljava/util/List;
ifnonnull L2
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mList Ljava/util/List;
L2:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getActionMode()I
bipush 99
if_icmpne L3
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L4
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L4:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
iconst_1
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/setPage(I)V
aload 1
invokeinterface java/util/List/size()I 0
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getSize()I
if_icmpge L5
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/hasMoreData Z
L6:
iload 2
ifeq L7
aload 0
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mList Ljava/util/List;
iconst_1
aload 0
invokestatic com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil/removeDuplicate(Ljava/util/List;ZLcom/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate;)Ljava/util/List;
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mList Ljava/util/List;
L7:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/notifyDataSetChanged()V
return
L5:
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/hasMoreData Z
goto L6
L3:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getActionMode()I
bipush 98
if_icmpne L7
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifne L8
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L8:
iload 2
ifeq L9
aload 0
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mList Ljava/util/List;
iconst_0
aload 0
invokestatic com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil/removeDuplicate(Ljava/util/List;ZLcom/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate;)Ljava/util/List;
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mList Ljava/util/List;
L9:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getPage()I
iconst_1
iadd
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/setPage(I)V
aload 1
invokeinterface java/util/List/size()I 0
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/CommonPageInfo/getSize()I
if_icmpge L10
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/hasMoreData Z
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter$CtrlViewCallBack;
ifnull L7
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter$CtrlViewCallBack;
invokeinterface com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter$CtrlViewCallBack/processNoMoreData()V 0
goto L7
L10:
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/hasMoreData Z
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter$CtrlViewCallBack;
ifnull L7
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter$CtrlViewCallBack;
invokeinterface com/nd/schoollife/ui/common/view/widget/pagination/CommonPageCtrlAdapter$CtrlViewCallBack/processHasMoreData()V 0
goto L7
.limit locals 3
.limit stack 4
.end method
