.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter
.super com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter
.inner class static synthetic inner com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$1
.inner class private ViewHolder inner com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder outer com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter

.field private 'mContext' Landroid/content/Context;

.field private 'mDataList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult;>;"

.field 'mInflater' Landroid/view/LayoutInflater;

.method public <init>(Landroid/content/Context;Landroid/widget/ListView;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/<init>(Landroid/content/Context;Landroid/widget/ListView;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mContext Landroid/content/Context;
aload 0
aload 1
ldc "layout_inflater"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mInflater Landroid/view/LayoutInflater;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
return
.limit locals 3
.limit stack 3
.end method

.method private createViewHolder(Landroid/view/View;)Lcom/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder;
new com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder
dup
aload 0
aconst_null
invokespecial com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/<init>(Lcom/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter;Lcom/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$1;)V
astore 2
aload 2
aload 1
ldc_w 2131625262
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/ivAvatar Landroid/widget/ImageView;
aload 2
aload 1
ldc_w 2131624227
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/tvName Landroid/widget/TextView;
aload 2
aload 1
ldc_w 2131625265
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/tvClassInfo Landroid/widget/TextView;
aload 2
aload 1
ldc_w 2131625266
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/tvComeFrom Landroid/widget/TextView;
aload 2
aload 1
ldc_w 2131625263
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/ivGender Landroid/widget/ImageView;
aload 2
aload 1
ldc_w 2131625264
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/btnAddFollow Landroid/widget/Button;
aload 2
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/btnAddFollow Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public addData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult;>;)V"
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public clearData()V
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L0:
aconst_null
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

.method public getUserIndex(J)I
iconst_0
istore 3
L0:
iload 3
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/uid J
lload 1
lcmp
ifne L2
iload 3
ireturn
L2:
iload 3
iconst_1
iadd
istore 3
goto L0
L1:
iconst_m1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public getUserName(J)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult
astore 4
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/uid J
lload 1
lcmp
ifne L0
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/userName Ljava/lang/String;
areturn
L1:
ldc ""
areturn
.limit locals 5
.limit stack 4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mInflater Landroid/view/LayoutInflater;
ldc_w 2130903311
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 0
aload 2
invokespecial com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/createViewHolder(Landroid/view/View;)Lcom/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder;
astore 3
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult
astore 4
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/uid J
iconst_3
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/ivAvatar Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/tvClassInfo Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/className Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131493640
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/homeTown Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 5
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/tvComeFrom Landroid/widget/TextView;
aload 5
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/tvName Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/userName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/gender I
iconst_2
if_icmpne L2
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/ivGender Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/ivGender Landroid/widget/ImageView;
ldc_w 2130838788
invokevirtual android/widget/ImageView/setImageResource(I)V
L3:
iconst_1
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/isFollow I
if_icmpne L4
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/btnAddFollow Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mContext Landroid/content/Context;
ldc_w 2131492978
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/btnAddFollow Landroid/widget/Button;
ldc_w 2130837804
invokevirtual android/widget/Button/setBackgroundResource(I)V
L5:
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/btnAddFollow Landroid/widget/Button;
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/btnAddFollow Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder
astore 3
goto L1
L2:
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/gender I
iconst_1
if_icmpne L6
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/ivGender Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/ivGender Landroid/widget/ImageView;
ldc_w 2130838789
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L3
L6:
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/ivGender Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L3
L4:
iconst_m1
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult/isFollow I
if_icmpne L5
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/btnAddFollow Landroid/widget/Button;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mContext Landroid/content/Context;
ldc_w 2131493340
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter$ViewHolder/btnAddFollow Landroid/widget/Button;
ldc_w 2130837849
invokevirtual android/widget/Button/setBackgroundResource(I)V
goto L5
.limit locals 6
.limit stack 5
.end method

.method public setData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/findfriends/FindFriendsFriendAdapter/mDataList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
