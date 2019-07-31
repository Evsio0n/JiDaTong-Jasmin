.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/XYGroupMemberAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/adapter/RefreshBaseAdapter
.inner class inner com/nd/android/u/contact/adapter/XYGroupMemberAdapter$1
.inner class inner com/nd/android/u/contact/adapter/XYGroupMemberAdapter$2
.inner class public static abstract interface DeletMemberLisener inner com/nd/android/u/contact/adapter/XYGroupMemberAdapter$DeletMemberLisener outer com/nd/android/u/contact/adapter/XYGroupMemberAdapter

.field private 'deletList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field private 'group' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;

.field private 'lisener' Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter$DeletMemberLisener;

.field private 'mContext' Landroid/content/Context;

.field private 'mIsShowFlag' Z

.field private 'mMemberList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mIsShowFlag Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/deletList Ljava/util/List;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mMemberList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/deletList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;)Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter$DeletMemberLisener;
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/lisener Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter$DeletMemberLisener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public cleanDeletList()V
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/deletList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/deletList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mMemberList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mMemberList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getDeletMembers()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/deletList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mMemberList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mMemberList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final getMemberList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mMemberList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mMemberList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
astore 5
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 2
aload 2
ifnonnull L0
aconst_null
astore 2
L1:
aload 2
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/xy_groupmember_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
aload 3
getstatic com/nd/android/u/contact/R$id/user_item_img_face I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 7
aload 3
getstatic com/nd/android/u/contact/R$id/user_item_tx_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 8
aload 3
getstatic com/nd/android/u/contact/R$id/btn_delet_right I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
astore 6
aload 6
new com/nd/android/u/contact/adapter/XYGroupMemberAdapter$1
dup
aload 0
aload 5
invokespecial com/nd/android/u/contact/adapter/XYGroupMemberAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 7
new com/nd/android/u/contact/adapter/XYGroupMemberAdapter$2
dup
aload 0
aload 5
invokespecial com/nd/android/u/contact/adapter/XYGroupMemberAdapter$2/<init>(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter;Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/isManager(J)Z
istore 4
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
lcmp
ifne L2
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/group_leader I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ") "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L3:
aload 0
invokevirtual com/nd/android/u/contact/adapter/XYGroupMemberAdapter/isShowFlag()Z
ifeq L4
iload 4
ifeq L5
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L6
aload 6
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
L7:
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
iconst_3
aload 7
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 3
astore 2
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getCreatorID()J
lcmp
ifne L1
aload 3
astore 2
aload 6
invokevirtual android/widget/Button/getVisibility()I
ifne L1
aload 6
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
invokevirtual com/nd/android/u/contact/adapter/XYGroupMemberAdapter/refresh()V
aload 3
areturn
L2:
iload 4
ifeq L8
aload 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/club_manager I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ") "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L3
L8:
aload 8
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L3
L6:
aload 6
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
goto L7
L5:
aload 6
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
goto L7
L4:
aload 6
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L7
.limit locals 9
.limit stack 5
.end method

.method public final hasStableIds()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public initDeletList()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/deletList Ljava/util/List;
return
.limit locals 1
.limit stack 3
.end method

.method public final isShowFlag()Z
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mIsShowFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final refresh()V
aload 0
invokevirtual com/nd/android/u/contact/adapter/XYGroupMemberAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public setDeletMemerLisener(Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter$DeletMemberLisener;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/lisener Lcom/nd/android/u/contact/adapter/XYGroupMemberAdapter$DeletMemberLisener;
return
.limit locals 2
.limit stack 2
.end method

.method public final setMemberList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)V"
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mMemberList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mMemberList Ljava/util/List;
L1:
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mMemberList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
L0:
aload 0
getfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mMemberList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
goto L1
.limit locals 2
.limit stack 3
.end method

.method public final setShowFlag(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/XYGroupMemberAdapter/mIsShowFlag Z
return
.limit locals 2
.limit stack 2
.end method
