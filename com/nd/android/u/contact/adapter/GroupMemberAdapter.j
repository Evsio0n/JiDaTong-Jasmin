.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/GroupMemberAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/adapter/RefreshBaseAdapter

.field private 'group' Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;

.field private 'listener' Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;

.field private 'mContext' Landroid/content/Context;

.field private 'mGroupkeypre' Ljava/lang/String;

.field private 'mIsScrollIng' Z

.field private 'mIsShowFlag' Z

.field private 'mMemberList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field private 'mMyGrade' I

.method public <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mIsShowFlag Z
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mIsScrollIng Z
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mGroupkeypre Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mContext Landroid/content/Context;
aload 0
aload 3
putfield com/nd/android/u/contact/adapter/GroupMemberAdapter/listener Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;
aload 0
aload 4
putfield com/nd/android/u/contact/adapter/GroupMemberAdapter/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 0
aload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/adapter/GroupMemberAdapter/getGrade(J)I
putfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mMyGrade I
return
.limit locals 5
.limit stack 4
.end method

.method private getGrade(J)I
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
lload 1
invokevirtual com/nd/android/u/contact/business/OapGroupPro/isManager(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;J)Z
ifeq L0
lload 1
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
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
.limit locals 3
.limit stack 4
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mMemberList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mMemberList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mMemberList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mMemberList Ljava/util/List;
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
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mMemberList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/contact/view/GroupMemberView
dup
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mGroupkeypre Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/listener Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;
invokespecial com/nd/android/u/contact/view/GroupMemberView/<init>(Landroid/content/Context;Ljava/lang/String;Lcom/nd/android/u/contact/listener/GroupMemberDeleteOnClickListeren$IDeleteGroupMemberListener;)V
astore 3
L0:
aload 3
checkcast com/nd/android/u/contact/view/GroupMemberView
astore 2
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mMemberList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
astore 4
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mIsShowFlag Z
ifeq L1
aload 0
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokespecial com/nd/android/u/contact/adapter/GroupMemberAdapter/getGrade(J)I
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mMyGrade I
if_icmplt L1
aload 2
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 4
iconst_0
iload 1
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mIsScrollIng Z
invokevirtual com/nd/android/u/contact/view/GroupMemberView/initComponentValue(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;Lcom/product/android/commonInterface/contact/OapUser;ZIZ)V
aload 3
areturn
L1:
aload 2
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/group Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
aload 4
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mIsShowFlag Z
iload 1
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mIsScrollIng Z
invokevirtual com/nd/android/u/contact/view/GroupMemberView/initComponentValue(Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;Lcom/product/android/commonInterface/contact/OapUser;ZIZ)V
aload 3
areturn
.limit locals 5
.limit stack 6
.end method

.method public final hasStableIds()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isScrollIng()Z
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mIsScrollIng Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isShowFlag()Z
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mIsShowFlag Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final refresh()V
aload 0
invokevirtual com/nd/android/u/contact/adapter/GroupMemberAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public final setMemberList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)V"
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mMemberList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mMemberList Ljava/util/List;
L1:
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mMemberList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
L0:
aload 0
getfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mMemberList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
goto L1
.limit locals 2
.limit stack 3
.end method

.method public final setScrollIng(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mIsScrollIng Z
return
.limit locals 2
.limit stack 2
.end method

.method public final setShowFlag(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/GroupMemberAdapter/mIsShowFlag Z
return
.limit locals 2
.limit stack 2
.end method
