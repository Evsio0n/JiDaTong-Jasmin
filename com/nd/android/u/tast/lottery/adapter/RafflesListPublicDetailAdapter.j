.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter
.super android/widget/BaseAdapter
.inner class static final ViewHolder inner com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter$ViewHolder outer com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter

.field private 'mContext' Landroid/content/Context;

.field 'mprize' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;"

.field private 'selectedPosition' I

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/mprize Ljava/util/List;
aload 0
iconst_m1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/selectedPosition I
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/mprize Ljava/util/List;
aload 0
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/init()V
return
.limit locals 3
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/mprize Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/mprize Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/lottery/dataStructure/LotUserData
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/getItem(I)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
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
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/tasklib/R$layout/lottert_public_detail_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter$ViewHolder
dup
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter$ViewHolder/<init>()V
astore 3
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/lot_user_head I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter$ViewHolder/lot_user_head Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/lot_user_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter$ViewHolder/lot_user_name Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/lot_user_time I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter$ViewHolder/lot_user_time Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
iload 1
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/getItem(I)Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
astore 4
aload 4
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUid()J
aload 4
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUid()J
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/toContactGetSysAvatarID(J)I
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter$ViewHolder/lot_user_head Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter$ViewHolder/lot_user_name Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUser_name()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter$ViewHolder/lot_user_time Landroid/widget/TextView;
aload 4
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getCreate_dt()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter$ViewHolder
astore 3
goto L1
.limit locals 5
.limit stack 4
.end method

.method public init()V
return
.limit locals 1
.limit stack 0
.end method

.method public setLotUserData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;)V"
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/mprize Ljava/util/List;
aload 0
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public setSelectedPosition(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailAdapter/selectedPosition I
return
.limit locals 2
.limit stack 2
.end method
