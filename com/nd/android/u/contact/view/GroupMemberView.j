.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/GroupMemberView
.super android/widget/LinearLayout

.field private static final 'TAG' Ljava/lang/String; = "RecentContactView"

.field private 'deleteIcon' Landroid/widget/Button;

.field private 'deleteOnClickListeren' Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren;

.field private 'deletelayout' Landroid/widget/LinearLayout;

.field private 'faceImg' Landroid/widget/ImageView;

.field private 'fid' J

.field private 'identityText' Landroid/widget/TextView;

.field private 'mGroupkeypre' Ljava/lang/String;

.field private 'mcontext' Landroid/content/Context;

.field private 'namelayout' Landroid/widget/LinearLayout;

.field 'statusId' I

.field private 'statusView' Landroid/widget/ImageView;

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

.method public <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/GroupMemberView/mcontext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/view/GroupMemberView/mGroupkeypre Ljava/lang/String;
aload 0
invokevirtual com/nd/android/u/contact/view/GroupMemberView/getView()V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/deleteOnClickListeren Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren;
aload 3
invokevirtual com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/setDeleteGroupMemberListener(Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;)V
return
.limit locals 4
.limit stack 2
.end method

.method private getGrade(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;J)I
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 1
lload 2
invokevirtual com/nd/android/u/contact/business/OapGroupPro/isManager(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;J)Z
ifeq L0
lload 2
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
lcmp
ifne L1
iconst_3
ireturn
L1:
iconst_2
ireturn
L0:
iconst_1
ireturn
.limit locals 4
.limit stack 4
.end method

.method public final getView()V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/mcontext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/group_member_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_item_tx_name I
invokevirtual com/nd/android/u/contact/view/GroupMemberView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/GroupMemberView/usernameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_item_img_status I
invokevirtual com/nd/android/u/contact/view/GroupMemberView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/GroupMemberView/statusView Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_item_img_face I
invokevirtual com/nd/android/u/contact/view/GroupMemberView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/GroupMemberView/faceImg Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_item_tx_identity I
invokevirtual com/nd/android/u/contact/view/GroupMemberView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/GroupMemberView/identityText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/btn_delete_layout I
invokevirtual com/nd/android/u/contact/view/GroupMemberView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/view/GroupMemberView/deletelayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_member_item_identity_layout I
invokevirtual com/nd/android/u/contact/view/GroupMemberView/findViewById(I)Landroid/view/View;
checkcast android/widget/LinearLayout
putfield com/nd/android/u/contact/view/GroupMemberView/namelayout Landroid/widget/LinearLayout;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/friendgroup_item_btn_delete I
invokevirtual com/nd/android/u/contact/view/GroupMemberView/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/view/GroupMemberView/deleteIcon Landroid/widget/Button;
aload 0
new com/nd/android/u/contact/listener/UserInfoOnClickListeren
dup
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/mcontext Landroid/content/Context;
invokespecial com/nd/android/u/contact/listener/UserInfoOnClickListeren/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/view/GroupMemberView/userInfnOnClickListerer Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;
aload 0
new com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren
dup
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/mcontext Landroid/content/Context;
invokespecial com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/contact/view/GroupMemberView/deleteOnClickListeren Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren;
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/deletelayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/deleteOnClickListeren Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/deleteIcon Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/deleteOnClickListeren Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/namelayout Landroid/widget/LinearLayout;
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/userInfnOnClickListerer Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;
invokevirtual android/widget/LinearLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/faceImg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/userInfnOnClickListerer Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 4
.end method

.method public final initComponentValue(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
putfield com/nd/android/u/contact/view/GroupMemberView/fid J
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/userInfnOnClickListerer Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
invokevirtual com/nd/android/u/contact/listener/UserInfoOnClickListeren/setFid(J)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L0
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 3
aload 0
aload 2
aload 3
invokevirtual com/nd/android/u/contact/view/GroupMemberView/setUserName(Lcom/product/android/commonInterface/contact/OapUser;Lcom/product/android/commonInterface/contact/OapUser;)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
L1:
aload 0
aload 1
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokespecial com/nd/android/u/contact/view/GroupMemberView/getGrade(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;J)I
tableswitch 2
L2
L3
default : L4
L4:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/identityText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/identityText Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getType()I
iconst_3
if_icmpne L5
invokestatic com/nd/android/u/contact/cache/ClassRelationCache/getInstance()Lcom/nd/android/u/contact/cache/ClassRelationCache;
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getClassid()I
invokevirtual com/nd/android/u/contact/cache/ClassRelationCache/get(JI)Ljava/lang/String;
astore 3
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getClassid()I
ifeq L6
aload 3
ifnull L6
ldc ""
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L6
ldc "null"
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L6
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/usernameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L7:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getSysavatar()I
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
goto L1
L6:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/usernameText Landroid/widget/TextView;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L7
L5:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/usernameText Landroid/widget/TextView;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L7
L2:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/identityText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/identityText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/club_manager I
invokevirtual android/widget/TextView/setText(I)V
return
L3:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/identityText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/identityText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/group_leader I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 4
.limit stack 4
.end method

.method public final initComponentValue(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;Lcom/product/android/commonInterface/contact/OapUser;ZIZ)V
aload 0
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
putfield com/nd/android/u/contact/view/GroupMemberView/fid J
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/userInfnOnClickListerer Lcom/nd/android/u/contact/listener/UserInfoOnClickListeren;
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
invokevirtual com/nd/android/u/contact/listener/UserInfoOnClickListeren/setFid(J)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/deleteOnClickListeren Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren;
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
aload 1
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/mGroupkeypre Ljava/lang/String;
invokevirtual com/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren/setFid(JJLjava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L0
aload 0
aload 2
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/nd/android/u/contact/view/GroupMemberView/setUserName(Lcom/product/android/commonInterface/contact/OapUser;Lcom/product/android/commonInterface/contact/OapUser;)V
L1:
iload 5
ifne L2
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/faceImg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
L3:
aload 0
aload 1
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokespecial com/nd/android/u/contact/view/GroupMemberView/getGrade(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;J)I
tableswitch 2
L4
L5
default : L6
L6:
iload 3
ifeq L7
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/deletelayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L8:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/identityText Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/identityText Landroid/widget/TextView;
ldc ""
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getType()I
iconst_3
if_icmpne L9
invokestatic com/nd/android/u/contact/cache/ClassRelationCache/getInstance()Lcom/nd/android/u/contact/cache/ClassRelationCache;
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getClassid()I
invokevirtual com/nd/android/u/contact/cache/ClassRelationCache/get(JI)Ljava/lang/String;
astore 6
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getClassid()I
ifeq L10
aload 6
ifnull L10
ldc ""
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L10
ldc "null"
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L10
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/usernameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L10:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/usernameText Landroid/widget/TextView;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L9:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/usernameText Landroid/widget/TextView;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L1
L2:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/faceImg Landroid/widget/ImageView;
aload 0
invokevirtual com/nd/android/u/contact/view/GroupMemberView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$drawable/face_default I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
goto L3
L4:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/identityText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/identityText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/club_manager I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L11
iload 3
ifeq L11
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/deletelayout Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L11:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/deletelayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L5:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/identityText Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/identityText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/group_leader I
invokevirtual android/widget/TextView/setText(I)V
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/deletelayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
L7:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/deletelayout Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L8
.limit locals 7
.limit stack 6
.end method

.method public final setUserName(Lcom/product/android/commonInterface/contact/OapUser;Lcom/product/android/commonInterface/contact/OapUser;)V
aload 2
ifnull L0
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getType()I
iconst_3
if_icmpne L1
invokestatic com/nd/android/u/contact/cache/ClassRelationCache/getInstance()Lcom/nd/android/u/contact/cache/ClassRelationCache;
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/fid J
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getClassid()I
invokevirtual com/nd/android/u/contact/cache/ClassRelationCache/get(JI)Ljava/lang/String;
astore 3
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getClassid()I
ifeq L2
aload 3
ifnull L2
ldc ""
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
ldc "null"
aload 3
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L2
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/usernameText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L2:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/usernameText Landroid/widget/TextView;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/usernameText Landroid/widget/TextView;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/view/GroupMemberView/usernameText Landroid/widget/TextView;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getNickname()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 4
.limit stack 4
.end method
