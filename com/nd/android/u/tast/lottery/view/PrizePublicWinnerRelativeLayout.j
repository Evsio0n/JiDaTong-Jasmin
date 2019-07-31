.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout$1

.field 'btn_try' Landroid/widget/Button;

.field 'img_gift' Landroid/widget/ImageView;

.field 'layout1' Landroid/widget/LinearLayout;

.field 'lotUsersDataList' Ljava/util/List; signature "Ljava/util/List<Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUsersData;>;>;"

.field 'ly_nowinners' Landroid/widget/RelativeLayout;

.field 'mContext' Landroid/content/Context;

.field 'tv_prize_name' Landroid/widget/TextView;

.field private 'unitid' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/lotUsersDataList Ljava/util/List;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUnitId()I 0
putfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/unitid I
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/mContext Landroid/content/Context;
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/tasklib/R$layout/lottert_public_list_winners_item I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findView()V
aload 0
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/setClick()V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/lotUsersDataList Ljava/util/List;
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUnitId()I 0
putfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/unitid I
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/mContext Landroid/content/Context;
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/tasklib/R$layout/lottert_public_list_winners_item I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findView()V
aload 0
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/setClick()V
return
.limit locals 3
.limit stack 3
.end method

.method private findView()V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_prize_name I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/tv_prize_name Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/ly_nowinners I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/ly_nowinners Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/layout1 I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/layout1 Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/img_gift I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/img_gift Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/btn_try I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/btn_try Landroid/widget/Button;
return
.limit locals 1
.limit stack 3
.end method

.method private getPrizeName(Lcom/nd/android/u/tast/lottery/dataStructure/LotPrise;)Ljava/lang/String;
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotPrise/getShort_name()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotPrise/getShort_name()Ljava/lang/String;
areturn
L0:
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotPrise/getPrize_name()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 1
.end method

.method private setClick()V
return
.limit locals 1
.limit stack 0
.end method

.method private setUser1(Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getRank()I
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/getLotRankString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_name()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user1_head I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 3
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUid()J
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUid()J
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/toContactGetSysAvatarID(J)I
aload 3
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user1_name I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUser_name()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user1_prise I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user1_time I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getCreate_dt()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user1 I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 4
.limit stack 4
.end method

.method private setUser2(Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getRank()I
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/getLotRankString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_name()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user2_head I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 3
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUid()J
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUid()J
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/toContactGetSysAvatarID(J)I
aload 3
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user2_name I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUser_name()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user2_prise I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 2
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user2_time I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getCreate_dt()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user2 I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
return
.limit locals 4
.limit stack 4
.end method

.method public init(Ljava/util/List;Lcom/nd/android/u/tast/lottery/dataStructure/LotPrise;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;>;Lcom/nd/android/u/tast/lottery/dataStructure/LotPrise;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/layout1 Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/ly_nowinners Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 2
ifnull L2
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/tv_prize_name Landroid/widget/TextView;
aload 0
aload 2
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/getPrizeName(Lcom/nd/android/u/tast/lottery/dataStructure/LotPrise;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "prize/img?pid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotPrise/getPrize_id()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/unitid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 128
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokestatic com/nd/android/u/tast/com/TaskComFactory/appendSid2Url(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 1
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/img_gift Landroid/widget/ImageView;
getstatic com/nd/android/u/tast/buss/TaskModelManager/INSTANCE Lcom/nd/android/u/tast/buss/TaskModelManager;
getfield com/nd/android/u/tast/buss/TaskModelManager/taskImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/btn_try Landroid/widget/Button;
new com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout$1
dup
aload 0
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout$1/<init>(Lcom/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L2:
return
L1:
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/tv_prize_name Landroid/widget/TextView;
aload 0
aload 2
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/getPrizeName(Lcom/nd/android/u/tast/lottery/dataStructure/LotPrise;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/u/tast/com/OapLotteryCom/LOT_NEW_SERVER_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "prize/img?pid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotPrise/getPrize_id()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "&unitid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/unitid I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sipush 128
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getSid()Ljava/lang/String; 0
invokestatic com/nd/android/u/tast/com/TaskComFactory/appendSid2Url(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
pop
invokestatic com/nostra13/universalimageloader/core/ImageLoader/getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
aload 2
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/img_gift Landroid/widget/ImageView;
getstatic com/nd/android/u/tast/buss/TaskModelManager/INSTANCE Lcom/nd/android/u/tast/buss/TaskModelManager;
getfield com/nd/android/u/tast/buss/TaskModelManager/taskImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokevirtual com/nostra13/universalimageloader/core/ImageLoader/displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 1
invokeinterface java/util/List/size()I 0
iconst_1
if_icmpne L3
aload 0
aload 1
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/lottery/dataStructure/LotUserData
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/setUser1(Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)V
return
L3:
aload 0
aload 1
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/lottery/dataStructure/LotUserData
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/setUser1(Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)V
aload 0
aload 1
iconst_1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/tast/lottery/dataStructure/LotUserData
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/setUser2(Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;)V
return
.limit locals 4
.limit stack 4
.end method
