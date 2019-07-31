.bytecode 50.0
.class public synchronized com/product/android/ui/adapter/TopRankListViewAdapter
.super android/widget/BaseAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mScreenWidth' I

.field private 'mTopType' I

.field private 'mlistRank' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/RankInfo;>;"

.method public <init>(Landroid/content/Context;II)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/product/android/ui/adapter/TopRankListViewAdapter/mContext Landroid/content/Context;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
aload 0
iload 2
putfield com/product/android/ui/adapter/TopRankListViewAdapter/mTopType I
aload 0
iload 3
putfield com/product/android/ui/adapter/TopRankListViewAdapter/mScreenWidth I
return
.limit locals 4
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
ifnonnull L0
iconst_0
istore 1
L1:
iload 1
ireturn
L0:
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 2
iload 2
istore 1
iload 2
tableswitch 0
L1
L1
L2
L2
default : L3
L3:
iload 2
iconst_1
isub
iconst_3
idiv
iconst_2
iadd
ireturn
L2:
iconst_2
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
new android/widget/LinearLayout
dup
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mContext Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 3
new com/product/android/ui/widget/TopRankItemView
dup
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mContext Landroid/content/Context;
invokespecial com/product/android/ui/widget/TopRankItemView/<init>(Landroid/content/Context;)V
astore 2
new com/product/android/ui/widget/TopRankItemView
dup
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mContext Landroid/content/Context;
invokespecial com/product/android/ui/widget/TopRankItemView/<init>(Landroid/content/Context;)V
astore 4
new com/product/android/ui/widget/TopRankItemView
dup
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mContext Landroid/content/Context;
invokespecial com/product/android/ui/widget/TopRankItemView/<init>(Landroid/content/Context;)V
astore 5
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 6
aload 6
fconst_1
putfield android/widget/LinearLayout$LayoutParams/weight F
aload 6
iconst_3
iconst_3
iconst_3
iconst_3
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 3
aload 2
aload 6
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 3
aload 4
aload 6
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
aload 3
aload 5
aload 6
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
L0:
aload 3
checkcast android/widget/LinearLayout
astore 5
aload 5
iconst_0
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast com/product/android/ui/widget/TopRankItemView
astore 2
aload 5
iconst_1
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast com/product/android/ui/widget/TopRankItemView
astore 4
aload 5
iconst_2
invokevirtual android/widget/LinearLayout/getChildAt(I)Landroid/view/View;
checkcast com/product/android/ui/widget/TopRankItemView
astore 5
iload 1
tableswitch 0
L1
L2
default : L3
L3:
iload 1
iconst_3
imul
iconst_3
isub
istore 1
aload 2
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/RankInfo
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mScreenWidth I
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mTopType I
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/DEFAULT Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
invokevirtual com/product/android/ui/widget/TopRankItemView/setData(Lcom/product/android/commonInterface/contact/RankInfo;IILcom/product/android/business/headImage/HeadImageLoader$ImageType;)V
aload 2
iconst_0
invokevirtual com/product/android/ui/widget/TopRankItemView/setVisibility(I)V
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
iconst_1
iadd
if_icmple L4
aload 4
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
iload 1
iconst_1
iadd
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/RankInfo
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mScreenWidth I
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mTopType I
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/DEFAULT Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
invokevirtual com/product/android/ui/widget/TopRankItemView/setData(Lcom/product/android/commonInterface/contact/RankInfo;IILcom/product/android/business/headImage/HeadImageLoader$ImageType;)V
aload 4
iconst_0
invokevirtual com/product/android/ui/widget/TopRankItemView/setVisibility(I)V
L5:
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 1
iconst_2
iadd
if_icmple L6
aload 5
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
iload 1
iconst_2
iadd
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/RankInfo
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mScreenWidth I
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mTopType I
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/DEFAULT Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
invokevirtual com/product/android/ui/widget/TopRankItemView/setData(Lcom/product/android/commonInterface/contact/RankInfo;IILcom/product/android/business/headImage/HeadImageLoader$ImageType;)V
aload 5
iconst_0
invokevirtual com/product/android/ui/widget/TopRankItemView/setVisibility(I)V
aload 3
areturn
L1:
aload 2
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/RankInfo
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mScreenWidth I
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mTopType I
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/LARGE Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
invokevirtual com/product/android/ui/widget/TopRankItemView/setData(Lcom/product/android/commonInterface/contact/RankInfo;IILcom/product/android/business/headImage/HeadImageLoader$ImageType;)V
aload 2
iconst_0
invokevirtual com/product/android/ui/widget/TopRankItemView/setVisibility(I)V
aload 4
bipush 8
invokevirtual com/product/android/ui/widget/TopRankItemView/setVisibility(I)V
aload 5
bipush 8
invokevirtual com/product/android/ui/widget/TopRankItemView/setVisibility(I)V
aload 3
areturn
L2:
aload 2
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
iconst_1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/RankInfo
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mScreenWidth I
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mTopType I
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/MIDIUM Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
invokevirtual com/product/android/ui/widget/TopRankItemView/setData(Lcom/product/android/commonInterface/contact/RankInfo;IILcom/product/android/business/headImage/HeadImageLoader$ImageType;)V
aload 2
iconst_0
invokevirtual com/product/android/ui/widget/TopRankItemView/setVisibility(I)V
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_2
if_icmple L7
aload 4
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
iconst_2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/RankInfo
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mScreenWidth I
aload 0
getfield com/product/android/ui/adapter/TopRankListViewAdapter/mTopType I
getstatic com/product/android/business/headImage/HeadImageLoader$ImageType/MIDIUM Lcom/product/android/business/headImage/HeadImageLoader$ImageType;
invokevirtual com/product/android/ui/widget/TopRankItemView/setData(Lcom/product/android/commonInterface/contact/RankInfo;IILcom/product/android/business/headImage/HeadImageLoader$ImageType;)V
aload 4
iconst_0
invokevirtual com/product/android/ui/widget/TopRankItemView/setVisibility(I)V
L8:
aload 5
bipush 8
invokevirtual com/product/android/ui/widget/TopRankItemView/setVisibility(I)V
aload 3
areturn
L7:
aload 4
iconst_4
invokevirtual com/product/android/ui/widget/TopRankItemView/setVisibility(I)V
goto L8
L4:
aload 4
iconst_4
invokevirtual com/product/android/ui/widget/TopRankItemView/setVisibility(I)V
goto L5
L6:
aload 5
iconst_4
invokevirtual com/product/android/ui/widget/TopRankItemView/setVisibility(I)V
aload 3
areturn
.limit locals 7
.limit stack 5
.end method

.method public setRankInfos(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/RankInfo;>;)V"
aload 0
aload 1
putfield com/product/android/ui/adapter/TopRankListViewAdapter/mlistRank Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
