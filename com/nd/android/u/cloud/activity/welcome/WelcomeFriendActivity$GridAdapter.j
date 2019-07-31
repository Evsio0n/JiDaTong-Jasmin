.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter
.super android/widget/BaseAdapter
.inner class GridAdapter inner com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter outer com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity
.inner class inner com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1

.field private 'mContext' Landroid/content/Context;

.field private 'mDataList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/activity/welcome/FriendInfo;>;"

.field private 'mInflater' Landroid/view/LayoutInflater;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;

.method public <init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/nd/android/u/cloud/activity/welcome/FriendInfo;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mContext Landroid/content/Context;
aload 0
aload 2
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mInflater Landroid/view/LayoutInflater;
aload 3
ifnull L0
aload 0
aload 3
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mDataList Ljava/util/List;
return
L0:
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mDataList Ljava/util/List;
return
.limit locals 4
.limit stack 3
.end method

.method private setData(ILjava/util/List;)V
.signature "(ILjava/util/List<Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder;>;)V"
iload 1
iconst_4
imul
istore 1
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder
astore 4
iload 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L2
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/activity/welcome/FriendInfo
astore 5
aload 5
invokevirtual com/nd/android/u/cloud/activity/welcome/FriendInfo/getRelationship()I
tableswitch 1
L3
L4
default : L5
L5:
ldc ""
astore 2
L6:
aload 4
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder/mTextView Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual com/nd/android/u/cloud/activity/welcome/FriendInfo/getName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 5
invokevirtual com/nd/android/u/cloud/activity/welcome/FriendInfo/getUid()J
ldc_w 2130838605
aload 4
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder/mImageView Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 5
invokevirtual com/nd/android/u/cloud/activity/welcome/FriendInfo/isSelect()Z
ifeq L7
aload 4
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder/mImageViewMask Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L8:
aload 4
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder/mRelativeLayout Landroid/widget/RelativeLayout;
new com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1
dup
aload 0
aload 5
aload 4
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter$1/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter;Lcom/nd/android/u/cloud/activity/welcome/FriendInfo;Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder;)V
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
L9:
iload 1
iconst_1
iadd
istore 1
goto L0
L3:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493842
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 2
goto L6
L4:
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;
invokevirtual com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493850
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 2
goto L6
L7:
aload 4
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder/mImageViewMask Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L8
L2:
aload 4
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder/mRelativeLayout Landroid/widget/RelativeLayout;
iconst_4
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
goto L9
L1:
return
.limit locals 6
.limit stack 6
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
i2d
ldc2_w 4.0D
ddiv
invokestatic java/lang/Math/ceil(D)D
d2i
ireturn
.limit locals 1
.limit stack 4
.end method

.method public getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getSelectedPerson()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/lang/Long;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mDataList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifeq L0
iconst_0
istore 1
L1:
iload 1
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L0
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/activity/welcome/FriendInfo
astore 3
aload 3
invokevirtual com/nd/android/u/cloud/activity/welcome/FriendInfo/isSelect()Z
ifeq L2
aload 2
aload 3
invokevirtual com/nd/android/u/cloud/activity/welcome/FriendInfo/getUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L2:
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
new android/widget/LinearLayout
dup
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mContext Landroid/content/Context;
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
astore 7
aload 7
astore 2
aload 7
iconst_0
invokevirtual android/widget/LinearLayout/setOrientation(I)V
aload 7
new android/widget/AbsListView$LayoutParams
dup
iconst_m1
iconst_m1
invokespecial android/widget/AbsListView$LayoutParams/<init>(II)V
invokevirtual android/widget/LinearLayout/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iconst_0
istore 4
L1:
aload 6
astore 5
aload 2
astore 3
iload 4
iconst_4
if_icmpge L2
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mInflater Landroid/view/LayoutInflater;
ldc_w 2130903424
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
iconst_m1
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 5
aload 5
fconst_1
putfield android/widget/LinearLayout$LayoutParams/weight F
aload 5
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/mContext Landroid/content/Context;
invokestatic com/product/android/utils/ScreenUtil/getScreenWidth(Landroid/content/Context;)I
iconst_4
idiv
putfield android/widget/LinearLayout$LayoutParams/height I
aload 3
aload 5
invokevirtual android/view/View/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
aload 7
aload 3
invokevirtual android/widget/LinearLayout/addView(Landroid/view/View;)V
new com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder
dup
aload 0
getfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/this$0 Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder/<init>(Lcom/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity;)V
astore 5
aload 5
aload 3
ldc_w 2131625662
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder/mImageView Landroid/widget/ImageView;
aload 5
aload 3
ldc_w 2131625663
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder/mImageViewMask Landroid/widget/ImageView;
aload 5
aload 3
ldc_w 2131625664
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder/mTextView Landroid/widget/TextView;
aload 5
aload 3
ldc_w 2131625661
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$ViewHolder/mRelativeLayout Landroid/widget/RelativeLayout;
aload 6
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
iload 4
iconst_1
iadd
istore 4
goto L1
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast java/util/List
astore 5
aload 2
astore 3
L2:
aload 0
iload 1
aload 5
invokespecial com/nd/android/u/cloud/activity/welcome/WelcomeFriendActivity$GridAdapter/setData(ILjava/util/List;)V
aload 3
aload 5
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
aload 3
areturn
.limit locals 8
.limit stack 5
.end method
