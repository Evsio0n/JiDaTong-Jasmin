.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$1
.inner class static final ViewHolder inner com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$ViewHolder outer com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter

.field private 'IsNull' Z

.field 'lotUsersDataList' Ljava/util/List; signature "Ljava/util/List<Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUsersData;>;>;"

.field private 'mContext' Landroid/content/Context;

.field private 'mLotDatasMap' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;>;"

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/lotUsersDataList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/IsNull Z
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/mLotDatasMap Ljava/util/Map;
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/mContext Landroid/content/Context;
aload 0
aload 2
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/init(Ljava/util/List;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/lotUsersDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/getItem(I)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItem(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUsersData;>;"
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/lotUsersDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/util/List
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
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/tasklib/R$layout/lottert_public_list_winners_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
new com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$ViewHolder
dup
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$ViewHolder/<init>()V
astore 3
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/tv_prize_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$ViewHolder/tv_prize_name Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/ly_nowinners I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$ViewHolder/ly_nowinners Landroid/widget/RelativeLayout;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/img_gift I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$ViewHolder/img_gift Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/tasklib/R$id/btn_try I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$ViewHolder/btn_try Landroid/widget/Button;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/IsNull Z
ifeq L2
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$ViewHolder/ly_nowinners Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$ViewHolder/btn_try Landroid/widget/Button;
new com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$1
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$1/<init>(Lcom/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$ViewHolder
astore 3
goto L1
L2:
aload 0
iload 1
invokevirtual com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/getItem(I)Ljava/util/List;
astore 4
aload 4
ifnull L3
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$ViewHolder/tv_prize_name Landroid/widget/TextView;
aload 4
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/lottery/dataStructure/LotUsersData
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_name()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "lottery/img?pid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/lottery/dataStructure/LotUsersData
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_id()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 128
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokestatic com/nd/android/u/tast/com/TaskComFactory/appendSid2Url(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 4
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$ViewHolder/img_gift Landroid/widget/ImageView;
getstatic com/nd/android/u/tast/buss/TaskModelManager/INSTANCE Lcom/nd/android/u/tast/buss/TaskModelManager;
getfield com/nd/android/u/tast/buss/TaskModelManager/taskImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
L3:
aload 3
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter$ViewHolder/ly_nowinners Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 2
areturn
.limit locals 6
.limit stack 4
.end method

.method public init(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifne L1
L0:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/lotUsersDataList Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
iconst_1
putfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/IsNull Z
L2:
return
L1:
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/tast/lottery/dataStructure/LotUserData
astore 3
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/mLotDatasMap Ljava/util/Map;
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_id()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L5
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/mLotDatasMap Ljava/util/Map;
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_id()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/List
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L3
L5:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 4
aload 4
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/mLotDatasMap Ljava/util/Map;
aload 3
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_id()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 4
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L3
L4:
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/mLotDatasMap Ljava/util/Map;
invokeinterface java/util/Map/keySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 4
L6:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
astore 1
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/mLotDatasMap Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/List
astore 5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aconst_null
astore 1
iconst_0
istore 2
L7:
iload 2
aload 5
invokeinterface java/util/List/size()I 0
if_icmpge L8
iload 2
iconst_2
irem
ifne L9
new com/nd/android/u/tast/lottery/dataStructure/LotUsersData
dup
invokespecial com/nd/android/u/tast/lottery/dataStructure/LotUsersData/<init>()V
astore 3
aload 3
aload 5
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/lottery/dataStructure/LotUserData
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/setLotUser1(Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)V
aload 3
astore 1
iload 2
aload 5
invokeinterface java/util/List/size()I 0
iconst_1
isub
if_icmpne L10
aload 6
aload 3
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 3
astore 1
L10:
iload 2
iconst_1
iadd
istore 2
goto L7
L9:
aload 1
ifnonnull L11
L8:
aload 0
getfield com/nd/android/u/tast/lottery/adapter/RafflesListPublicWinnerAdapter/lotUsersDataList Ljava/util/List;
aload 6
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L6
L11:
aload 1
aload 5
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/lottery/dataStructure/LotUserData
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/setLotUser2(Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)V
aload 6
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L10
.limit locals 7
.limit stack 3
.end method
