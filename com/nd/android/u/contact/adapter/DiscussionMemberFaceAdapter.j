.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter
.super android/widget/BaseAdapter
.inner class Holder inner com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder outer com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter

.field private 'deleteModule' Z

.field private 'mContext' Landroid/content/Context;

.field private 'mOnClickListener' Landroid/view/View$OnClickListener;

.field private 'mOnlyAdd' Z

.field public 'mUsers' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.method public <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/deleteModule Z
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mOnlyAdd Z
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mOnClickListener Landroid/view/View$OnClickListener;
return
.limit locals 3
.limit stack 2
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/deleteModule Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
ifnonnull L1
L2:
iconst_1
ireturn
L1:
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
ifnull L2
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
invokeinterface java/util/List/size()I 0
iconst_1
iadd
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final getGroupMenber()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public final getItemId(I)J
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
ifnonnull L0
L1:
lconst_0
lreturn
L0:
iload 1
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final getSmileyList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/<init>(Lcom/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/face_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/face I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/faceImg Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/delete I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/deleteImg Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/tv_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/tvName Landroid/widget/TextView;
aload 3
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/faceImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mOnClickListener Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/deleteModule Z
ifeq L2
aload 2
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
astore 4
aload 4
ifnull L3
aload 3
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/faceImg Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$id/face I
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ImageView/setTag(ILjava/lang/Object;)V
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 3
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
L3:
aload 3
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/deleteImg Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder
astore 3
goto L1
L2:
iload 1
aload 0
invokevirtual com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/getCount()I
iconst_1
isub
if_icmpne L4
aload 3
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/faceImg Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/bt_member_add_bg I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 3
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/faceImg Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$id/face I
ldc2_w -2L
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ImageView/setTag(ILjava/lang/Object;)V
aload 3
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/tvName Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 2
iconst_0
invokevirtual android/view/View/setVisibility(I)V
L5:
aload 3
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/deleteImg Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 2
areturn
L4:
aload 2
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
astore 4
aload 4
ifnull L5
aload 3
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/faceImg Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$id/face I
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ImageView/setTag(ILjava/lang/Object;)V
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 5
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
aload 3
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 3
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter$Holder/tvName Landroid/widget/TextView;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L5
.limit locals 6
.limit stack 4
.end method

.method public final isDeleteModule()Z
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/deleteModule Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isOnlyAdd()Z
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mOnlyAdd Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final setDeleteModule(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/deleteModule Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setGroupMember(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getMember()Ljava/util/Iterator;
astore 1
aload 1
ifnull L0
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 0
getfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mUsers Ljava/util/List;
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public final setOnlyAdd(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/mOnlyAdd Z
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/DiscussionMemberFaceAdapter/deleteModule Z
return
.limit locals 2
.limit stack 2
.end method
