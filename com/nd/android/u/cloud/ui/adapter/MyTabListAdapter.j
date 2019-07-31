.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/MyTabListAdapter
.super android/widget/BaseAdapter
.inner class static synthetic inner com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$1
.inner class public static MyTabItemBean inner com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean outer com/nd/android/u/cloud/ui/adapter/MyTabListAdapter
.inner class private ViewHolder inner com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder outer com/nd/android/u/cloud/ui/adapter/MyTabListAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mItemValueList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;>;"

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/mContext Landroid/content/Context;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/mItemValueList Ljava/util/List;
return
.limit locals 2
.limit stack 3
.end method

.method public addItemValueList(Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean;)V
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/mItemValueList Ljava/util/List;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/mItemValueList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public clearItemValueList()V
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/mItemValueList Ljava/util/List;
ifnonnull L0
return
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/mItemValueList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/mItemValueList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/mItemValueList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder/<init>(Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter;Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$1;)V
astore 3
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/mContext Landroid/content/Context;
ldc_w 2130903516
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
ldc_w 2131626095
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/tast/main/widget/CircleLiquidProgressView
invokestatic com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder/access$102(Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder;Lcom/nd/android/u/tast/main/widget/CircleLiquidProgressView;)Lcom/nd/android/u/tast/main/widget/CircleLiquidProgressView;
pop
aload 3
aload 2
ldc_w 2131625692
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokestatic com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder/access$202(Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
pop
aload 3
aload 2
ldc_w 2131626096
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
invokestatic com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder/access$302(Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
pop
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 3
invokestatic com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder/access$200(Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/mItemValueList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean
invokevirtual com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean/getItemName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
invokestatic com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder/access$300(Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/mItemValueList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean
invokevirtual com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean/getSubItemName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
invokestatic com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder/access$100(Lcom/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder;)Lcom/nd/android/u/tast/main/widget/CircleLiquidProgressView;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter/mItemValueList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean
invokevirtual com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean/getTaskProcess()I
invokevirtual com/nd/android/u/tast/main/widget/CircleLiquidProgressView/setProgress(I)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$ViewHolder
astore 3
goto L1
.limit locals 4
.limit stack 4
.end method
