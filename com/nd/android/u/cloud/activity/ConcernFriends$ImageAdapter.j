.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter
.super android/widget/BaseAdapter
.inner class ImageAdapter inner com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter outer com/nd/android/u/cloud/activity/ConcernFriends
.inner class Holder inner com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder outer com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter

.field 'list' Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/ConcernFriends;

.method <init>(Lcom/nd/android/u/cloud/activity/ConcernFriends;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$000(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$000(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
ifnull L0
iload 1
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/size()I
if_icmpge L0
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
iload 1
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/get(I)Ljava/lang/Object;
areturn
L0:
aconst_null
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
ifnull L0
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder
astore 6
aload 2
astore 3
aload 6
astore 2
L1:
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
ifnull L2
iload 1
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/size()I
if_icmpge L2
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
iload 1
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/WbUserInfo
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lstore 4
lload 4
lload 4
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 2
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mFaceImageView Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 2
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mtvName Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
iload 1
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/WbUserInfo
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 3
areturn
L0:
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903408
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
new com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/<init>(Lcom/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter;)V
astore 2
aload 2
aload 3
ldc_w 2131625615
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mFaceImageView Landroid/widget/ImageView;
aload 2
aload 3
ldc_w 2131625619
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mivClicked Landroid/widget/ImageView;
aload 2
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mivClicked Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mFaceImageView Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
checkcast android/widget/RelativeLayout$LayoutParams
astore 6
aload 6
ifnull L3
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
getfield com/nd/android/u/cloud/activity/ConcernFriends/mWidth I
ifeq L3
aload 6
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
getfield com/nd/android/u/cloud/activity/ConcernFriends/mWidth I
iconst_4
idiv
bipush 10
isub
putfield android/widget/RelativeLayout$LayoutParams/width I
aload 6
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
getfield com/nd/android/u/cloud/activity/ConcernFriends/mWidth I
iconst_4
idiv
bipush 10
isub
putfield android/widget/RelativeLayout$LayoutParams/height I
aload 2
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mFaceImageView Landroid/widget/ImageView;
aload 6
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
L4:
aload 2
aload 3
ldc_w 2131625617
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mtvName Landroid/widget/TextView;
aload 3
aload 2
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
goto L1
L3:
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
getfield com/nd/android/u/cloud/activity/ConcernFriends/mWidth I
ifeq L4
new android/widget/RelativeLayout$LayoutParams
dup
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
getfield com/nd/android/u/cloud/activity/ConcernFriends/mWidth I
iconst_4
idiv
bipush 10
isub
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
getfield com/nd/android/u/cloud/activity/ConcernFriends/mWidth I
iconst_4
idiv
bipush 10
isub
invokespecial android/widget/RelativeLayout$LayoutParams/<init>(II)V
astore 6
aload 2
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mFaceImageView Landroid/widget/ImageView;
aload 6
invokevirtual android/widget/ImageView/setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
goto L4
.limit locals 7
.limit stack 5
.end method

.method public getViewIsSelected(Landroid/view/View;)Z
aload 1
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mivClicked Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getVisibility()I
ifne L1
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public setList(Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
return
.limit locals 2
.limit stack 2
.end method

.method public setSelect(Landroid/view/View;I)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder
astore 1
aload 1
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mivClicked Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getVisibility()I
ifne L2
aload 1
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mivClicked Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
ifnull L1
iload 2
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/size()I
if_icmpge L1
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
iload 2
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/WbUserInfo
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lstore 3
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$200(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Ljava/util/ArrayList;
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
return
L2:
bipush 8
aload 1
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mivClicked Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getVisibility()I
if_icmpne L1
aload 1
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter$Holder/mivClicked Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
ifnull L1
iload 2
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/size()I
if_icmpge L1
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/list Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
iload 2
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/WbUserInfo
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
lstore 3
aload 0
getfield com/nd/android/u/cloud/activity/ConcernFriends$ImageAdapter/this$0 Lcom/nd/android/u/cloud/activity/ConcernFriends;
invokestatic com/nd/android/u/cloud/activity/ConcernFriends/access$200(Lcom/nd/android/u/cloud/activity/ConcernFriends;)Ljava/util/ArrayList;
lload 3
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 5
.limit stack 3
.end method
