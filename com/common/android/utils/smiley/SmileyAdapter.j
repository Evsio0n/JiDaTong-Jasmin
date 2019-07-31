.bytecode 50.0
.class public synchronized com/common/android/utils/smiley/SmileyAdapter
.super android/widget/BaseAdapter
.inner class Holder inner com/common/android/utils/smiley/SmileyAdapter$Holder outer com/common/android/utils/smiley/SmileyAdapter

.field private final 'TAG' Ljava/lang/String;

.field private 'mContext' Landroid/content/Context;

.field private 'mLayoutId' I

.field private 'mSmileyList' Ljava/util/List; signature "Ljava/util/List<Lcom/common/android/utils/smiley/Smiley;>;"

.field private 'mType' I

.field private 'pageNo' I

.field private 'pageSize' I

.field private 'smileyhelper' Lcom/common/android/utils/smiley/Smileyhelper;

.field private 'total' I

.method public <init>(Landroid/content/Context;I)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
ldc "SmileyAdapter"
putfield com/common/android/utils/smiley/SmileyAdapter/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/common/android/utils/smiley/SmileyAdapter/mSmileyList Ljava/util/List;
aload 0
bipush 21
putfield com/common/android/utils/smiley/SmileyAdapter/pageSize I
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyAdapter/pageNo I
aload 0
iconst_0
putfield com/common/android/utils/smiley/SmileyAdapter/total I
aload 0
aload 1
putfield com/common/android/utils/smiley/SmileyAdapter/mContext Landroid/content/Context;
aload 0
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
putfield com/common/android/utils/smiley/SmileyAdapter/smileyhelper Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
iload 2
putfield com/common/android/utils/smiley/SmileyAdapter/mType I
aload 0
invokespecial com/common/android/utils/smiley/SmileyAdapter/initSize()V
aload 0
invokespecial com/common/android/utils/smiley/SmileyAdapter/initAllSmileyList()V
return
.limit locals 3
.limit stack 2
.end method

.method private initAllSmileyList()V
aload 0
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/smileyhelper Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mType I
invokevirtual com/common/android/utils/smiley/Smileyhelper/getSmileyList(I)Ljava/util/List;
putfield com/common/android/utils/smiley/SmileyAdapter/mSmileyList Ljava/util/List;
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mSmileyList Ljava/util/List;
ifnull L0
aload 0
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mSmileyList Ljava/util/List;
invokeinterface java/util/List/size()I 0
putfield com/common/android/utils/smiley/SmileyAdapter/total I
L0:
return
.limit locals 1
.limit stack 3
.end method

.method private initSize()V
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mType I
iconst_4
if_icmpeq L0
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mType I
ifeq L0
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mType I
iconst_3
if_icmpne L1
L0:
aload 0
bipush 8
putfield com/common/android/utils/smiley/SmileyAdapter/pageSize I
aload 0
getstatic com/nd/android/u/allcommon/R$layout/smiley_item_cat I
putfield com/common/android/utils/smiley/SmileyAdapter/mLayoutId I
return
L1:
aload 0
bipush 21
putfield com/common/android/utils/smiley/SmileyAdapter/pageSize I
aload 0
getstatic com/nd/android/u/allcommon/R$layout/smiley_item I
putfield com/common/android/utils/smiley/SmileyAdapter/mLayoutId I
return
.limit locals 1
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mSmileyList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageNo I
iconst_1
iadd
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageSize I
imul
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/total I
if_icmple L1
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/total I
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageNo I
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageSize I
imul
isub
ireturn
L1:
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageSize I
ireturn
.limit locals 1
.limit stack 3
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mSmileyList Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mSmileyList Ljava/util/List;
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageNo I
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageSize I
imul
iload 1
iadd
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 3
.end method

.method public getItemId(I)J
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageNo I
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageSize I
imul
iload 1
iadd
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getPageNo()I
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageNo I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPageNoCount()I
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/total I
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageSize I
idiv
istore 2
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/total I
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageSize I
irem
ifne L0
iconst_0
istore 1
L1:
iload 1
iload 2
iadd
ireturn
L0:
iconst_1
istore 1
goto L1
.limit locals 3
.limit stack 2
.end method

.method public getPageSize()I
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mSmileyList Ljava/util/List;
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageNo I
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/pageSize I
imul
iload 1
iadd
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/common/android/utils/smiley/Smiley
astore 4
aload 2
astore 3
aload 2
ifnonnull L0
new com/common/android/utils/smiley/SmileyAdapter$Holder
dup
aload 0
invokespecial com/common/android/utils/smiley/SmileyAdapter$Holder/<init>(Lcom/common/android/utils/smiley/SmileyAdapter;)V
astore 2
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mLayoutId I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mType I
ifne L1
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 4
getfield com/common/android/utils/smiley/Smiley/id I
invokevirtual com/common/android/utils/smiley/Smileyhelper/isCatID(I)Z
ifne L2
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 4
getfield com/common/android/utils/smiley/Smiley/id I
invokevirtual com/common/android/utils/smiley/Smileyhelper/isCosID(I)Z
ifeq L3
L2:
aload 3
getstatic com/nd/android/u/allcommon/R$id/smiley_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 3
getstatic com/nd/android/u/allcommon/R$id/smiley_img_normal I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 2
aload 3
getstatic com/nd/android/u/allcommon/R$id/smiley_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/common/android/utils/smiley/SmileyAdapter$Holder/image Landroid/widget/ImageView;
L4:
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/common/android/utils/smiley/SmileyAdapter$Holder
astore 2
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/smileyhelper Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
getfield com/common/android/utils/smiley/SmileyAdapter/mContext Landroid/content/Context;
aload 2
getfield com/common/android/utils/smiley/SmileyAdapter$Holder/image Landroid/widget/ImageView;
aload 4
getfield com/common/android/utils/smiley/Smiley/name Ljava/lang/String;
invokevirtual com/common/android/utils/smiley/Smileyhelper/setSmiley(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
aload 3
areturn
L3:
aload 3
getstatic com/nd/android/u/allcommon/R$id/smiley_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 3
getstatic com/nd/android/u/allcommon/R$id/smiley_img_normal I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 2
aload 3
getstatic com/nd/android/u/allcommon/R$id/smiley_img_normal I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/common/android/utils/smiley/SmileyAdapter$Holder/image Landroid/widget/ImageView;
goto L4
L1:
aload 2
aload 3
getstatic com/nd/android/u/allcommon/R$id/smiley_img I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/common/android/utils/smiley/SmileyAdapter$Holder/image Landroid/widget/ImageView;
goto L4
.limit locals 5
.limit stack 4
.end method

.method public setPageNo(I)V
aload 0
iload 1
putfield com/common/android/utils/smiley/SmileyAdapter/pageNo I
return
.limit locals 2
.limit stack 2
.end method

.method public setSmileyList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/common/android/utils/smiley/Smiley;>;)V"
aload 0
aload 1
putfield com/common/android/utils/smiley/SmileyAdapter/mSmileyList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
