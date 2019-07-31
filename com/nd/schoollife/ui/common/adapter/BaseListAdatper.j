.bytecode 50.0
.class public synchronized abstract com/nd/schoollife/ui/common/adapter/BaseListAdatper
.super android/widget/BaseAdapter
.annotation visible Ljava/lang/Deprecated;
.end annotation

.field private 'mCtx' Landroid/content/Context;

.field private 'mList' Ljava/util/List;

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/common/adapter/BaseListAdatper/mCtx Landroid/content/Context;
aload 0
aload 2
putfield com/nd/schoollife/ui/common/adapter/BaseListAdatper/mList Ljava/util/List;
aload 0
getfield com/nd/schoollife/ui/common/adapter/BaseListAdatper/mList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
iconst_0
invokespecial java/util/ArrayList/<init>(I)V
putfield com/nd/schoollife/ui/common/adapter/BaseListAdatper/mList Ljava/util/List;
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public getCount()I
aload 0
getfield com/nd/schoollife/ui/common/adapter/BaseListAdatper/mList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public abstract getCustomerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
aload 2
aload 3
invokevirtual com/nd/schoollife/ui/common/adapter/BaseListAdatper/getCustomerView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
areturn
.limit locals 4
.limit stack 4
.end method
