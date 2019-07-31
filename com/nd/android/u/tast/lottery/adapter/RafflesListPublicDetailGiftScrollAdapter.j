.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter
.super android/widget/BaseAdapter
.inner class static final ViewHolder inner com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter$ViewHolder outer com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter

.field private 'UrlString' Ljava/lang/String;

.field private 'imageSize' I

.field private 'mContext' Landroid/content/Context;

.field public 'mPrize' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/Prize;>;"

.field private 'selectedPosition' I

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/Prize;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/selectedPosition I
aload 0
sipush 128
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/imageSize I
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "prize/img?pid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/UrlString Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/mPrize Ljava/util/List;
aload 0
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/init()V
return
.limit locals 3
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/mPrize Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/nd/android/u/tast/lottery/dataStructure/Prize;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/mPrize Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/lottery/dataStructure/Prize
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/getItem(I)Lcom/nd/android/u/tast/lottery/dataStructure/Prize;
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
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/tasklib/R$layout/lottert_public_detail_giftscroll_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter$ViewHolder
dup
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter$ViewHolder/<init>()V
astore 3
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/img_gift I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter$ViewHolder/img_gift Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/tv_giftname I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter$ViewHolder/tv_giftname Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/tv_winnersnum I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter$ViewHolder/tv_winnersnum Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
iload 1
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/getItem(I)Lcom/nd/android/u/tast/lottery/dataStructure/Prize;
astore 5
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter$ViewHolder/tv_giftname Landroid/widget/TextView;
aload 5
getfield com/nd/android/u/tast/lottery/dataStructure/Prize/prize_name Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter$ViewHolder/tv_winnersnum Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
getfield com/nd/android/u/tast/lottery/dataStructure/Prize/prize_num I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "\u4eba)"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUnitId()I 0
istore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/UrlString Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
getfield com/nd/android/u/tast/lottery/dataStructure/Prize/prize_id I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/imageSize I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokestatic com/nd/android/u/tast/com/TaskComFactory/appendSid2Url(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 5
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter$ViewHolder/img_gift Landroid/widget/ImageView;
getstatic com/nd/android/u/tast/buss/TaskModelManager/INSTANCE Lcom/nd/android/u/tast/buss/TaskModelManager;
getfield com/nd/android/u/tast/buss/TaskModelManager/taskImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/selectedPosition I
iload 1
if_icmpne L2
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter$ViewHolder/img_gift Landroid/widget/ImageView;
getstatic com/nd/android/u/tasklib/R$drawable/bg_prize_check_select I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter$ViewHolder
astore 3
goto L1
L2:
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter$ViewHolder/img_gift Landroid/widget/ImageView;
getstatic com/nd/android/u/tasklib/R$drawable/bg_prize_check I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 2
areturn
.limit locals 6
.limit stack 4
.end method

.method public init()V
return
.limit locals 1
.limit stack 0
.end method

.method public setSelectedPosition(I)V
aload 0
iload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/selectedPosition I
aload 0
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicDetailGiftScrollAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method
