.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/TransferGroupMemberView
.super android/widget/LinearLayout

.field private static final 'TAG' Ljava/lang/String; = "RecentContactView"

.field private 'callback' Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;

.field private 'faceImg' Landroid/widget/ImageView;

.field private 'fid' J

.field private 'mcontext' Landroid/content/Context;

.field 'statusId' I

.field private 'transferImg' Landroid/widget/ImageView;

.field private 'userInfnOnClickListerer' Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;

.field private 'usernameText' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/TransferGroupMemberView/mcontext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/view/TransferGroupMemberView/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
aload 0
invokevirtual com/nd/android/u/contact/view/TransferGroupMemberView/getView()V
return
.limit locals 3
.limit stack 2
.end method

.method private final setUserName(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 1
ifnonnull L0
return
L0:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
ifnull L1
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/usernameText Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/usernameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getWorkid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 3
.end method

.method public final getView()V
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/mcontext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/transfer_group_member_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/transfer_group_member_item_tx_name I
invokevirtual com/nd/android/u/contact/view/TransferGroupMemberView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/TransferGroupMemberView/usernameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/transfer_group_member_item_img_face I
invokevirtual com/nd/android/u/contact/view/TransferGroupMemberView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/TransferGroupMemberView/faceImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/transfer_group_member_item_img_press I
invokevirtual com/nd/android/u/contact/view/TransferGroupMemberView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/TransferGroupMemberView/transferImg Landroid/widget/ImageView;
aload 0
new com/nd/android/u/contact/listener/UserInfoOnClickListeren
dup
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/mcontext Landroid/content/Context;
invokespecial com/nd/android/u/contact/listener/UserInfoOnClickListeren/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/view/TransferGroupMemberView/userInfnOnClickListerer Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/faceImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/userInfnOnClickListerer Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public final initComponentValue(Lcom/product/android/commonInterface/contact/OapUser;J)V
aload 0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
putfield com/nd/android/u/contact/view/TransferGroupMemberView/fid J
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/userInfnOnClickListerer Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/fid J
invokevirtual com/nd/android/u/contact/listener/UserInfoOnClickListeren/setFid(J)V
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/fid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L0
aload 0
aload 1
invokespecial com/nd/android/u/contact/view/TransferGroupMemberView/setUserName(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/fid J
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/fid J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/fid J
lload 2
lcmp
ifne L1
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/transferImg Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/contact/view/TransferGroupMemberView/transferImg Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 4
.limit stack 4
.end method
