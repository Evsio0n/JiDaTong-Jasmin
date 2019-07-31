.bytecode 50.0
.class public synchronized abstract com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter
.super android/widget/BaseAdapter
.implements com/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl
.implements com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate
.signature "<T:Ljava/lang/Object;>Landroid/widget/BaseAdapter;Lcom/nd/schoollife/ui/common/view/widget/pagination/ILoadDataPageCtrl;Lcom/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate<TT;>;"
.inner class static synthetic inner com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$1
.inner class public static abstract interface CtrlViewCallBack inner com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$CtrlViewCallBack outer com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter

.field public static final 'TAG' Ljava/lang/String;

.field private 'actionMode' I

.field private 'hasMoreData' Z

.field private 'mCallBack' Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$CtrlViewCallBack;

.field protected 'mCtx' Landroid/content/Context;

.field private 'mList' Ljava/util/List; signature "Ljava/util/List<TT;>;"

.field private 'mPageInfo' Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;

.method static <clinit>()V
ldc com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
putstatic com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/TAG Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mList Ljava/util/List;
aload 0
aconst_null
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
aload 0
bipush 99
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/actionMode I
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/hasMoreData Z
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mCtx Landroid/content/Context;
aload 0
aload 2
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
return
.limit locals 3
.limit stack 3
.end method

.method private getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected getActionMode()I
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/actionMode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getList()Ljava/util/List;
.signature "()Ljava/util/List<TT;>;"
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMaxActive(Lcom/nd/schoollife/ui/common/task/CallStyle;)J
getstatic com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$1/$SwitchMap$com$nd$schoollife$ui$common$task$CallStyle [I
aload 1
invokevirtual com/nd/schoollife/ui/common/task/CallStyle/ordinal()I
iaload
tableswitch 1
L0
L0
L1
default : L2
L2:
ldc2_w -1L
lreturn
L0:
lconst_0
lreturn
L1:
ldc2_w -1L
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getMinActive(Lcom/nd/schoollife/ui/common/task/CallStyle;)J
getstatic com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$1/$SwitchMap$com$nd$schoollife$ui$common$task$CallStyle [I
aload 1
invokevirtual com/nd/schoollife/ui/common/task/CallStyle/ordinal()I
iaload
tableswitch 1
L0
L0
L1
L1
L1
default : L2
L2:
ldc2_w -1L
lreturn
L0:
ldc2_w -1L
lreturn
L1:
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/getMinActive()J
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getPageSize()I
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
ifnull L0
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/getSize()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isDataDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
.signature "(TT;TT;)Z"
aload 0
aload 1
aload 2
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
ireturn
.limit locals 3
.limit stack 3
.end method

.method protected abstract isDuplicate(Ljava/lang/Object;Ljava/lang/Object;)Z
.signature "(TT;TT;)Z"
.end method

.method public isShowLoadMoreView()Z
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/hasMoreData Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setAction(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/actionMode I
getstatic com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/TAG Ljava/lang/String;
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

.method public setCtrlViewCallBack(Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$CtrlViewCallBack;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$CtrlViewCallBack;
return
.limit locals 2
.limit stack 2
.end method

.method public updateData(Ljava/util/List;JJZ)V
.signature "(Ljava/util/List<TT;>;JJZ)V"
aload 1
ifnonnull L0
getstatic com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/TAG Ljava/lang/String;
ldc "updateData(list) input params is null!"
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
return
L0:
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
ifnonnull L1
getstatic com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/TAG Ljava/lang/String;
ldc "PageInfo is null!"
invokestatic com/nd/schoollife/common/utils/ui/LogUtil/e(Ljava/lang/String;Ljava/lang/String;)V
return
L1:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mList Ljava/util/List;
ifnonnull L2
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mList Ljava/util/List;
L2:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/getActionMode()I
bipush 99
if_icmpne L3
aload 1
invokeinterface java/util/List/size()I 0
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/getSize()I
if_icmpge L4
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
iload 6
ifeq L5
aload 0
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mList Ljava/util/List;
iconst_1
aload 0
invokestatic com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil/removeDuplicate(Ljava/util/List;ZLcom/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate;)Ljava/util/List;
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mList Ljava/util/List;
L5:
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/hasMoreData Z
L6:
lload 2
lconst_0
lcmp
ifle L7
lload 2
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/getMaxActive()J
lcmp
ifgt L8
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/getMaxActive()J
lconst_0
lcmp
ifge L7
L8:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
lload 2
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/setMaxActive(J)V
L7:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mPageInfo Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
lload 4
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/setMinActive(J)V
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/notifyDataSetChanged()V
return
L4:
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/hasMoreData Z
goto L6
L3:
aload 0
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/getActionMode()I
bipush 98
if_icmpne L6
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
iload 6
ifeq L9
aload 0
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mList Ljava/util/List;
iconst_0
aload 0
invokestatic com/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil/removeDuplicate(Ljava/util/List;ZLcom/nd/schoollife/ui/common/view/widget/pagination/CollectionDataUtil$DataDuplicate;)Ljava/util/List;
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mList Ljava/util/List;
L9:
aload 1
invokeinterface java/util/List/size()I 0
aload 0
invokespecial com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/getPageInfo()Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo;
invokevirtual com/nd/schoollife/ui/common/view/widget/pagination/ActivePageInfo/getSize()I
if_icmpge L10
aload 0
iconst_0
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/hasMoreData Z
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$CtrlViewCallBack;
ifnull L6
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$CtrlViewCallBack;
invokeinterface com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$CtrlViewCallBack/processNoMoreData()V 0
goto L6
L10:
aload 0
iconst_1
putfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/hasMoreData Z
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$CtrlViewCallBack;
ifnull L6
aload 0
getfield com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter/mCallBack Lcom/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$CtrlViewCallBack;
invokeinterface com/nd/schoollife/ui/common/view/widget/pagination/ActivePageCtrlAdapter$CtrlViewCallBack/processHasMoreData()V 0
goto L6
.limit locals 7
.limit stack 4
.end method
