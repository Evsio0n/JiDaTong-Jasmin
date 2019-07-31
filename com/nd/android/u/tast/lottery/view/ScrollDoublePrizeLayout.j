.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout
.super android/widget/LinearLayout

.field static 'mdata12' Ljava/util/List; signature "Ljava/util/List<[Ljava/lang/String;>;"

.field static 'mdata34' Ljava/util/List; signature "Ljava/util/List<[Ljava/lang/String;>;"

.field 'layout13' Landroid/widget/LinearLayout;

.field 'layout24' Landroid/widget/LinearLayout;

.field 'lot_user1' Landroid/widget/RelativeLayout;

.field 'lot_user1_head' Landroid/widget/ImageView;

.field 'lot_user1_name' Landroid/widget/TextView;

.field 'lot_user1_prise' Landroid/widget/TextView;

.field 'lot_user1_time' Landroid/widget/TextView;

.field 'lot_user2' Landroid/widget/RelativeLayout;

.field 'lot_user2_head' Landroid/widget/ImageView;

.field 'lot_user2_name' Landroid/widget/TextView;

.field 'lot_user2_prise' Landroid/widget/TextView;

.field 'lot_user2_time' Landroid/widget/TextView;

.field 'lot_user3' Landroid/widget/RelativeLayout;

.field 'lot_user3_head' Landroid/widget/ImageView;

.field 'lot_user3_name' Landroid/widget/TextView;

.field 'lot_user3_prise' Landroid/widget/TextView;

.field 'lot_user3_time' Landroid/widget/TextView;

.field 'lot_user4' Landroid/widget/RelativeLayout;

.field 'lot_user4_head' Landroid/widget/ImageView;

.field 'lot_user4_name' Landroid/widget/TextView;

.field 'lot_user4_prise' Landroid/widget/TextView;

.field 'lot_user4_time' Landroid/widget/TextView;

.field 'mContext' Landroid/content/Context;

.method static <clinit>()V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata12 Ljava/util/List;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata34 Ljava/util/List;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/tasklib/R$layout/lot_user_prize_doublelayout_item I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/layout1 I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/layout13 Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/layout2 I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/layout24 Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user1 I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user1 Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user1_head I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user1_head Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user1_name I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user1_name Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user1_prise I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user1_prise Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user1_time I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user1_time Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user2 I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user2 Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user2_head I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user2_head Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user2_name I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user2_name Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user2_prise I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user2_prise Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user2_time I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user2_time Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user3 I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user3 Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user3_head I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user3_head Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user3_name I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user3_name Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user3_prise I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user3_prise Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user3_time I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user3_time Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user4 I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user4 Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user4_head I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user4_head Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user4_name I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user4_name Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user4_prise I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user4_prise Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/lot_user4_time I
invokevirtual com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user4_time Landroid/widget/TextView;
return
.limit locals 3
.limit stack 3
.end method

.method private beforeUpdate()V
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata12 Ljava/util/List;
invokeinterface java/util/List/clear()V 0
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata34 Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method private init()V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata12 Ljava/util/List;
ifnull L6
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata12 Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L6
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata12 Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast [Ljava/lang/String;
iconst_0
aaload
astore 8
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata12 Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast [Ljava/lang/String;
iconst_1
aaload
astore 5
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata12 Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast [Ljava/lang/String;
iconst_2
aaload
astore 6
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata12 Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast [Ljava/lang/String;
iconst_3
aaload
astore 7
lconst_0
lstore 1
L0:
aload 8
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 3
L1:
lload 3
lstore 1
L7:
lload 1
lload 1
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/toContactGetSysAvatarID(J)I
aload 0
getfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user1_head Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user1_name Landroid/widget/TextView;
aload 5
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user1_prise Landroid/widget/TextView;
aload 6
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user1_time Landroid/widget/TextView;
aload 7
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user1 Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user2 Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L6:
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata34 Ljava/util/List;
ifnull L8
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata34 Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L8
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata34 Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast [Ljava/lang/String;
iconst_0
aaload
astore 8
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata34 Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast [Ljava/lang/String;
iconst_1
aaload
astore 5
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata34 Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast [Ljava/lang/String;
iconst_2
aaload
astore 6
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata34 Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast [Ljava/lang/String;
iconst_3
aaload
astore 7
lconst_0
lstore 1
L3:
aload 8
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 3
L4:
lload 3
lstore 1
L9:
lload 1
lload 1
invokestatic com/nd/android/u/tast/taskInterfaceImpl/TaskCallOtherModel/toContactGetSysAvatarID(J)I
aload 0
getfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user3_head Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user3_name Landroid/widget/TextView;
aload 5
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user3_prise Landroid/widget/TextView;
aload 6
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user3_time Landroid/widget/TextView;
aload 7
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user3 Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/lot_user4 Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
L8:
return
L2:
astore 8
aload 8
invokevirtual java/lang/Exception/printStackTrace()V
goto L7
L5:
astore 8
aload 8
invokevirtual java/lang/Exception/printStackTrace()V
goto L9
.limit locals 9
.limit stack 4
.end method

.method public update(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/tast/lottery/dataStructure/LotUsersData;>;)V"
aload 1
ifnonnull L0
return
L0:
aload 0
invokespecial com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/beforeUpdate()V
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/tast/lottery/dataStructure/LotUsersData
astore 2
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
ifnull L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUser_name()Ljava/lang/String;
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getRank()I
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/getLotRankString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_name()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser1()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getCreate_dt()Ljava/lang/String;
astore 6
aload 3
ifnull L3
aload 4
ifnull L3
aload 5
ifnull L3
aload 6
ifnull L3
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata12 Ljava/util/List;
iconst_4
anewarray java/lang/String
dup
iconst_0
aload 3
aastore
dup
iconst_1
aload 4
aastore
dup
iconst_2
aload 5
aastore
dup
iconst_3
aload 6
aastore
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L3:
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
ifnull L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUid()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getUser_name()Ljava/lang/String;
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getRank()I
invokestatic com/nd/android/u/tast/buss/TaskPubFunction/getLotRankString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_name()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 2
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUsersData/getLotUser2()Lcom/nd/android/u/tast/lottery/dataStructure/LotUserData;
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getCreate_dt()Ljava/lang/String;
astore 2
aload 3
ifnull L1
aload 4
ifnull L1
aload 5
ifnull L1
aload 2
ifnull L1
getstatic com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/mdata34 Ljava/util/List;
iconst_4
anewarray java/lang/String
dup
iconst_0
aload 3
aastore
dup
iconst_1
aload 4
aastore
dup
iconst_2
aload 5
aastore
dup
iconst_3
aload 2
aastore
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
aload 0
invokespecial com/nd/android/u/tast/lottery/view/ScrollDoublePrizeLayout/init()V
return
.limit locals 7
.limit stack 5
.end method
