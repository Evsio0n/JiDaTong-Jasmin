.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter
.super com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter

.field private 'mListCircle' Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;

.method public <init>(Landroid/content/Context;Landroid/widget/ListView;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter/<init>(Landroid/content/Context;Landroid/widget/ListView;)V
return
.limit locals 3
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/mListCircle Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/mListCircle Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/RecommendInfoList/size()I
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUserIndex(J)I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/mListCircle Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
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
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/mListCircle Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/RecommendInfoList/size()I
istore 5
L2:
iload 3
iload 5
if_icmpge L3
iload 3
istore 4
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/mListCircle Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
iload 3
invokevirtual com/android/u/weibo/weibo/business/bean/RecommendInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/RecommendInfo
getfield com/android/u/weibo/weibo/business/bean/RecommendInfo/userInfo Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
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
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/mListCircle Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
ifnonnull L0
ldc ""
areturn
L0:
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/mListCircle Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/RecommendInfoList/iterator()Ljava/util/Iterator;
astore 3
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/android/u/weibo/weibo/business/bean/RecommendInfo
astore 4
aload 4
getfield com/android/u/weibo/weibo/business/bean/RecommendInfo/userInfo Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lload 1
lcmp
ifne L1
aload 4
getfield com/android/u/weibo/weibo/business/bean/RecommendInfo/userInfo Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
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
invokevirtual com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/createView()Landroid/view/View;
astore 3
L0:
aload 3
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder
astore 2
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/mListCircle Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
iload 1
invokevirtual com/android/u/weibo/weibo/business/bean/RecommendInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/RecommendInfo
astore 4
aload 2
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/tvName Landroid/widget/TextView;
aload 4
getfield com/android/u/weibo/weibo/business/bean/RecommendInfo/userInfo Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/tvRelation Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/mContext Landroid/content/Context;
ldc_w 2131493641
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 4
getfield com/android/u/weibo/weibo/business/bean/RecommendInfo/commonFriend I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/ivAddFollow Landroid/widget/ImageView;
aload 4
getfield com/android/u/weibo/weibo/business/bean/RecommendInfo/userInfo Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 2
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/ivAvatar Landroid/widget/ImageView;
aload 4
getfield com/android/u/weibo/weibo/business/bean/RecommendInfo/userInfo Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 4
getfield com/android/u/weibo/weibo/business/bean/RecommendInfo/userInfo Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 4
getfield com/android/u/weibo/weibo/business/bean/RecommendInfo/userInfo Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 2
getfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/FriendBaseAdapter$FrHolder/ivAvatar Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 3
areturn
.limit locals 5
.limit stack 6
.end method

.method public setCircleList(Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/friendRcmmnd/PersonCircleAdapter/mListCircle Lcom/android/u/weibo/weibo/business/bean/RecommendInfoList;
return
.limit locals 2
.limit stack 2
.end method
