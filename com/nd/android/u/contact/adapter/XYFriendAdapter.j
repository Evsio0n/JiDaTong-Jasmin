.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/XYFriendAdapter
.super android/widget/BaseAdapter
.inner class ViewHolder inner com/nd/android/u/contact/adapter/XYFriendAdapter$ViewHolder outer com/nd/android/u/contact/adapter/XYFriendAdapter

.field private 'friends' Ljava/util/List; signature "Ljava/util/List<Ljava/lang/Object;>;"

.field private 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYFriendAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendAdapter/friends Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFriends()Ljava/util/List;
.signature "()Ljava/util/List<Ljava/lang/Object;>;"
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendAdapter/friends Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendAdapter/friends Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
astore 4
aload 4
instanceof com/nd/android/u/contact/dataStructure/OapFriendGroup
ifeq L0
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/xy_friend_group_item_layout I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 2
getstatic com/nd/android/u/contact/R$id/friend_group_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 3
aload 2
getstatic com/nd/android/u/contact/R$id/friend_group_member_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 5
aload 4
checkcast com/nd/android/u/contact/dataStructure/OapFriendGroup
astore 4
aload 3
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
areturn
L0:
aload 4
instanceof com/product/android/commonInterface/contact/OapUser
ifeq L1
aload 2
ifnonnull L2
new com/nd/android/u/contact/adapter/XYFriendAdapter$ViewHolder
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/XYFriendAdapter$ViewHolder/<init>(Lcom/nd/android/u/contact/adapter/XYFriendAdapter;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/XYFriendAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/xy_friend_item_layout I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/user_item_tx_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/XYFriendAdapter$ViewHolder/mUsername Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/user_item_tx_description I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/XYFriendAdapter$ViewHolder/mDescription Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/user_item_img_face I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/XYFriendAdapter$ViewHolder/mUserFace Landroid/widget/ImageView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L3:
aload 4
checkcast com/product/android/commonInterface/contact/OapUser
astore 4
aload 3
getfield com/nd/android/u/contact/adapter/XYFriendAdapter$ViewHolder/mDescription Landroid/widget/TextView;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/contact/adapter/XYFriendAdapter$ViewHolder/mUsername Landroid/widget/TextView;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
iconst_3
aload 3
getfield com/nd/android/u/contact/adapter/XYFriendAdapter$ViewHolder/mUserFace Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 2
areturn
L2:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/XYFriendAdapter$ViewHolder
astore 3
goto L3
L1:
aconst_null
areturn
.limit locals 6
.limit stack 5
.end method

.method public setFriends(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/lang/Object;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYFriendAdapter/friends Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
