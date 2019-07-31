.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter
.super android/support/v4/view/PagerAdapter
.inner class private ViewPagerAdapter inner com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter outer com/nd/android/u/contact/view/RankingListRelativeLayout
.inner class inner com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1

.field private 'mContext' Landroid/content/Context;

.field private 'mDataList' Ljava/util/List; signature "Ljava/util/List<Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;>;"

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/RankingListRelativeLayout;

.method public <init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/this$0 Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
aload 0
invokespecial android/support/v4/view/PagerAdapter/<init>()V
aload 0
aload 2
putfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/mContext Landroid/content/Context;
aload 0
aload 3
putfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/mDataList Ljava/util/List;
aload 1
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
invokestatic com/nd/android/u/contact/view/RankingListRelativeLayout/access$502(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
pop
return
.limit locals 4
.limit stack 2
.end method

.method static synthetic access$700(Lcom/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
aload 1
aload 3
checkcast android/view/View
invokevirtual android/view/ViewGroup/removeView(Landroid/view/View;)V
return
.limit locals 4
.limit stack 2
.end method

.method public getCount()I
invokestatic com/nd/android/u/contact/view/RankingListRelativeLayout/access$600()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
bipush -2
ireturn
.limit locals 2
.limit stack 1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "InlinedApi" 
.end annotation
iload 2
iconst_3
irem
istore 4
new android/widget/LinearLayout
dup
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/mContext Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 5
new android/widget/LinearLayout$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
pop
aload 5
iconst_0
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 1
aload 5
invokevirtual android/view/ViewGroup/addView(Landroid/view/View;)V
aconst_null
astore 1
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/mDataList Ljava/util/List;
ifnull L0
iload 4
iconst_1
iadd
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmple L1
L0:
iconst_4
istore 2
L2:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
iconst_0
istore 3
L3:
iload 3
iload 2
if_icmpge L4
new android/widget/LinearLayout$LayoutParams
dup
iconst_0
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 7
aload 7
fconst_1
putfield android/widget/LinearLayout$LayoutParams/weight F
aload 7
bipush 13
iconst_0
bipush 13
iconst_0
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
new com/nd/android/u/contact/view/RoundCornerImageView
dup
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/mContext Landroid/content/Context;
invokespecial com/nd/android/u/contact/view/RoundCornerImageView/<init>(Landroid/content/Context;)V
astore 8
aload 8
aload 7
invokevirtual com/nd/android/u/contact/view/RoundCornerImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 8
getstatic com/nd/android/u/contact/R$drawable/viewpager_item_img_default I
invokevirtual com/nd/android/u/contact/view/RoundCornerImageView/setImageResource(I)V
aload 8
iconst_0
iconst_2
iconst_0
iconst_2
invokevirtual com/nd/android/u/contact/view/RoundCornerImageView/setPadding(IIII)V
aload 6
aload 8
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 5
aload 8
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
iload 3
iconst_1
iadd
istore 3
goto L3
L1:
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/mDataList Ljava/util/List;
iload 4
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast java/util/List
astore 1
aload 1
ifnonnull L5
iconst_4
istore 2
goto L2
L5:
aload 1
invokeinterface java/util/List/size()I 0
istore 2
goto L2
L4:
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/mDataList Ljava/util/List;
ifnull L6
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iload 4
if_icmple L6
iconst_0
istore 3
L7:
iload 3
iload 2
if_icmpge L6
aload 1
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 1
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
aload 6
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/widget/ImageView
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
iload 3
iconst_1
iadd
istore 3
goto L7
L6:
aload 5
iconst_1
invokevirtual android/widget/LinearLayout/setClickable(Z)V
aload 5
new com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1
dup
aload 0
iload 4
invokespecial com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter$1/<init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter;I)V
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 5
areturn
.limit locals 9
.limit stack 5
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
aload 1
aload 2
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public setDataList(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;>;)V"
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/mDataList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/mDataList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method
