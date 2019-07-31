.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter
.super com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter

.field private 'mListReco' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend;>;"

.method public <init>(Landroid/content/Context;Landroid/widget/ListView;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/<init>(Landroid/content/Context;Landroid/widget/ListView;)V
return
.limit locals 3
.limit stack 3
.end method

.method public addRecommendList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend;>;)V"
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/mListReco Ljava/util/List;
ifnonnull L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/mListReco Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/mListReco Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/mListReco Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUserIndex(J)I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/mListReco Ljava/util/List;
ifnonnull L0
iconst_m1
istore 4
L1:
iload 4
ireturn
L0:
iconst_0
istore 3
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/mListReco Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 5
L2:
iload 3
iload 5
if_icmpge L3
iload 3
istore 4
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/mListReco Ljava/util/List;
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/uid J
lload 1
lcmp
ifeq L1
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
iconst_m1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public getUserName(J)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/mListReco Ljava/util/List;
ifnonnull L0
ldc ""
areturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/mListReco Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend
astore 4
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/uid J
lload 1
lcmp
ifne L1
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/userName Ljava/lang/String;
areturn
L2:
ldc ""
areturn
.limit locals 5
.limit stack 4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/createView()Landroid/view/View;
astore 3
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder
astore 2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/mListReco Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend
astore 4
aload 2
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/tvName Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/userName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/tvRelation Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/relationShip Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/ivAddFollow Landroid/widget/ImageView;
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/ivAvatar Landroid/widget/ImageView;
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/uid J
aload 4
getfield com/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend/sysAvatarId I
aload 2
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/ivAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method public setRecommendList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendRecommend;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendRecommendAdapter/mListReco Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
