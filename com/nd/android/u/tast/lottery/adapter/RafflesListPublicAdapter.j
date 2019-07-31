.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter
.super android/widget/BaseAdapter
.inner class static final ViewHolder inner com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter$ViewHolder outer com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter

.field private 'mContext' Landroid/content/Context;

.field public 'mRafflesListPublic' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;>;"

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter/mRafflesListPublic Ljava/util/List;
aload 0
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter/init()V
return
.limit locals 3
.limit stack 2
.end method

.method private setRankImg(ILandroid/widget/ImageView;)V
iload 1
tableswitch 1
L0
L1
L2
default : L3
L3:
aload 2
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L0:
aload 2
getstatic com/nd/android/u/tasklib/R$drawable/prize_first I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
L1:
aload 2
getstatic com/nd/android/u/tasklib/R$drawable/prize_second I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
L2:
aload 2
getstatic com/nd/android/u/tasklib/R$drawable/prize_third I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter/mRafflesListPublic Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter/mRafflesListPublic Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter/getItem(I)Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;
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
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/tasklib/R$layout/lottert_public_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter$ViewHolder
dup
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter$ViewHolder/<init>()V
astore 3
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/btn_more I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter$ViewHolder/btn_more Landroid/widget/Button;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/img_prize_level I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter$ViewHolder/img_prize_level Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/tv_prize_level I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter$ViewHolder/tv_prize_level Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/tv_winners_num I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter$ViewHolder/tv_winners_num Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
iload 1
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter/getItem(I)Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;
astore 5
aload 5
invokevirtual com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/getRank()I
istore 1
aload 5
invokevirtual com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/getTotal()I
istore 4
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter$ViewHolder/tv_prize_level Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u7b49\u5956"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter$ViewHolder/tv_winners_num Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u4eba)"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
iload 1
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter$ViewHolder/img_prize_level Landroid/widget/ImageView;
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter/setRankImg(ILandroid/widget/ImageView;)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
pop
aload 5
invokevirtual com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/getLotUserData()Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L2
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter$ViewHolder/btn_more Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
L2:
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/tast/lottery/adapter/RafflesListPublicAdapter$ViewHolder
astore 3
goto L1
.limit locals 6
.limit stack 3
.end method

.method public init()V
return
.limit locals 1
.limit stack 0
.end method
