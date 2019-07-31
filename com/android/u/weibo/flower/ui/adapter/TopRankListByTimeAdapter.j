.bytecode 50.0
.class public synchronized com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter
.super android/widget/BaseAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mlistRank' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/RankInfo;>;"

.method public <init>(Landroid/content/Context;I)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter/mContext Landroid/content/Context;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter/mlistRank Ljava/util/List;
return
.limit locals 3
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter/mlistRank Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter/mlistRank Ljava/util/List;
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
aload 0
getfield com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter/mlistRank Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/RankInfo
astore 4
aload 2
checkcast com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
new com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView
dup
aload 0
getfield com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter/mContext Landroid/content/Context;
invokespecial com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/<init>(Landroid/content/Context;)V
astore 2
L0:
aload 2
aload 4
invokevirtual com/android/u/weibo/flower/ui/widget/TopRankByTimeItemView/initData(Lcom/product/android/commonInterface/contact/RankInfo;)V
aload 2
areturn
.limit locals 5
.limit stack 3
.end method

.method public setData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/RankInfo;>;)V"
aload 0
getfield com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter/mlistRank Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/android/u/weibo/flower/ui/adapter/TopRankListByTimeAdapter/mlistRank Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method
