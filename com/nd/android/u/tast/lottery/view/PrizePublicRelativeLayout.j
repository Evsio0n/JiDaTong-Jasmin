.bytecode 50.0
.class public synchronized com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout
.super android/widget/LinearLayout
.inner class inner com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout$1

.field 'btn_more' Landroid/widget/Button;

.field 'img_prize_level' Landroid/widget/ImageView;

.field 'llPriseTypeAdd' Landroid/widget/LinearLayout;

.field 'mContext' Landroid/content/Context;

.field 'mPrizePublicRelativeLayout' Lcom/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout;

.field 'tv_prize_level' Landroid/widget/TextView;

.field 'tv_winners_num' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/mContext Landroid/content/Context;
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/tasklib/R$layout/lottert_public_list_item I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
aload 0
putfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/mPrizePublicRelativeLayout Lcom/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout;
aload 0
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/findView()V
aload 0
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/setClick()V
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
aload 1
putfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/mContext Landroid/content/Context;
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
getstatic com/nd/android/u/tasklib/R$layout/lottert_public_list_item I
aload 0
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
pop
aload 0
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/findView()V
aload 0
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/setClick()V
return
.limit locals 3
.limit stack 3
.end method

.method private findView()V
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/btn_more I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/btn_more Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/img_prize_level I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/img_prize_level Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_prize_level I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/tv_prize_level Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/tv_winners_num I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/tv_winners_num Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/tasklib/R$id/llPriseTypeAdd I
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/llPriseTypeAdd Landroid/widget/LinearLayout;
return
.limit locals 1
.limit stack 3
.end method

.method private intRankTostringRank(I)Ljava/lang/String;
iconst_0
istore 2
iload 1
tableswitch 1
L0
L1
L2
L3
L4
L5
L6
L7
L8
L9
default : L10
L10:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
iload 2
istore 1
L11:
iload 1
ifne L12
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/img_prize_level Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
L12:
aload 3
areturn
L0:
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/img_prize_level Landroid/widget/ImageView;
getstatic com/nd/android/u/tasklib/R$drawable/prize_first I
invokevirtual android/widget/ImageView/setImageResource(I)V
ldc "\u4e00"
astore 3
iconst_1
istore 1
goto L11
L1:
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/img_prize_level Landroid/widget/ImageView;
getstatic com/nd/android/u/tasklib/R$drawable/prize_second I
invokevirtual android/widget/ImageView/setImageResource(I)V
ldc "\u4e8c"
astore 3
iconst_1
istore 1
goto L11
L2:
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/img_prize_level Landroid/widget/ImageView;
getstatic com/nd/android/u/tasklib/R$drawable/prize_third I
invokevirtual android/widget/ImageView/setImageResource(I)V
ldc "\u4e09"
astore 3
iconst_1
istore 1
goto L11
L3:
ldc "\u56db"
astore 3
iload 2
istore 1
goto L11
L4:
ldc "\u4e94"
astore 3
iload 2
istore 1
goto L11
L5:
ldc "\u516d"
astore 3
iload 2
istore 1
goto L11
L6:
ldc "\u4e03"
astore 3
iload 2
istore 1
goto L11
L7:
ldc "\u516b"
astore 3
iload 2
istore 1
goto L11
L8:
ldc "\u4e5d"
astore 3
iload 2
istore 1
goto L11
L9:
ldc "\u5341"
astore 3
iload 2
istore 1
goto L11
.limit locals 4
.limit stack 2
.end method

.method private setClick()V
return
.limit locals 1
.limit stack 0
.end method

.method public init(Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;Ljava/util/ArrayList;)V
.signature "(Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;Ljava/util/ArrayList<Lcom/nd/android/u/tast/lottery/dataStructure/LotPrise;>;)V"
aload 1
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/btn_more Landroid/widget/Button;
new com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout$1/<init>(Lcom/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout;Lcom/nd/android/u/tast/lottery/dataStructure/RafflesListPublic;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/getRank()I
istore 3
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/getAllTotal()I
istore 4
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/tv_prize_level Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
iload 3
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/intRankTostringRank(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\u7b49\u5956"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
iload 4
ifne L2
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/tv_winners_num Landroid/widget/TextView;
ldc "(\u6682\u65e0)"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 1
invokevirtual com/nd/android/u/tast/lottery/dataStructure/RafflesListPublic/getLotUserData()Ljava/util/List;
astore 1
aload 1
invokeinterface java/util/List/size()I 0
ifne L4
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/btn_more Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
L4:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 2
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L5:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/tast/lottery/dataStructure/LotPrise
astore 6
aload 5
invokevirtual java/util/ArrayList/clear()V
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L6:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L7
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/tast/lottery/dataStructure/LotUserData
astore 8
aload 8
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotUserData/getPrize_id()J
aload 6
invokevirtual com/nd/android/u/tast/lottery/dataStructure/LotPrise/getPrize_id()J
lcmp
ifne L6
aload 5
aload 8
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L6
L2:
iload 4
bipush 99
if_icmple L8
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/tv_winners_num Landroid/widget/TextView;
ldc "(99+\u4eba)"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L3
L8:
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/tv_winners_num Landroid/widget/TextView;
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
goto L3
L7:
aload 5
invokevirtual java/util/ArrayList/size()I
ifeq L9
new com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout
dup
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/mContext Landroid/content/Context;
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/<init>(Landroid/content/Context;)V
astore 7
aload 7
aload 5
aload 6
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/init(Ljava/util/List;Lcom/nd/android/u/tast/lottery/dataStructure/LotPrise;)V
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/llPriseTypeAdd Landroid/widget/LinearLayout;
aload 7
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
goto L5
L9:
new com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout
dup
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/mContext Landroid/content/Context;
invokespecial com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/<init>(Landroid/content/Context;)V
astore 7
aload 7
aconst_null
aload 6
invokevirtual com/nd/android/u/tast/lottery/view/PrizePublicWinnerRelativeLayout/init(Ljava/util/List;Lcom/nd/android/u/tast/lottery/dataStructure/LotPrise;)V
aload 0
getfield com/nd/android/u/tast/lottery/view/PrizePublicRelativeLayout/llPriseTypeAdd Landroid/widget/LinearLayout;
aload 7
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
goto L5
.limit locals 9
.limit stack 5
.end method
