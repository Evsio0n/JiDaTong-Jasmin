.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/widget/PspItemViews
.super android/widget/LinearLayout

.field private 'llItems' Landroid/widget/LinearLayout;

.field private 'mDatas' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;"

.field private 'mItemView' [Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;

.field private 'mLvGroupTitle' Landroid/widget/LinearLayout;

.field private 'mTvpGroupName' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_3
anewarray com/nd/android/u/publicNumber/ui/widget/PspItemView
putfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mItemView [Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/chat/R$layout/item_3views I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/pspGroupName I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemViews/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mTvpGroupName Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/llItems I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemViews/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/llItems Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mItemView [Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
iconst_0
aload 0
getstatic com/nd/android/u/chat/R$id/llItem1 I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemViews/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/publicNumber/ui/widget/PspItemView
aastore
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mItemView [Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
iconst_1
aload 0
getstatic com/nd/android/u/chat/R$id/llItem2 I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemViews/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/publicNumber/ui/widget/PspItemView
aastore
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mItemView [Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
iconst_2
aload 0
getstatic com/nd/android/u/chat/R$id/llItem3 I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemViews/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/publicNumber/ui/widget/PspItemView
aastore
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/lvGroupTitle I
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemViews/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mLvGroupTitle Landroid/widget/LinearLayout;
return
.limit locals 2
.limit stack 4
.end method

.method public getData()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;"
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mDatas Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getItemView(I)Landroid/view/View;
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mItemView [Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
iload 1
aaload
areturn
.limit locals 2
.limit stack 2
.end method

.method public setData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;)V"
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mDatas Ljava/util/ArrayList;
aload 1
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
astore 4
aload 4
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/isGroupTitle Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/llItems Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mLvGroupTitle Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mTvpGroupName Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/groupName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/llItems Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mLvGroupTitle Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 1
invokevirtual java/util/ArrayList/size()I
istore 3
iconst_0
istore 2
L2:
iload 2
iload 3
if_icmpge L3
aload 1
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo
astore 4
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mItemView [Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
iload 2
aaload
aload 4
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemView/setData(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mItemView [Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
iload 2
aaload
iconst_0
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemView/setVisibility(I)V
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
iload 3
istore 2
L4:
iload 2
iconst_3
if_icmpge L1
aload 0
getfield com/nd/android/u/publicNumber/ui/widget/PspItemViews/mItemView [Lcom/nd/android/u/publicNumber/ui/widget/PspItemView;
iload 2
aaload
iconst_4
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspItemView/setVisibility(I)V
iload 2
iconst_1
iadd
istore 2
goto L4
.limit locals 5
.limit stack 2
.end method
