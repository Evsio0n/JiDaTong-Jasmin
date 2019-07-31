.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/base/GroupHeaderActivity2
.super com/product/android/ui/activity/HeaderActivity

.field protected static final 'TAG' Ljava/lang/String; = "GroupHeaderActivity2"

.field protected 'classGid' J

.field protected 'clubGid' J

.field protected 'depgid' J

.field protected 'gid' J

.field protected 'group' Lcom/product/android/commonInterface/contact/OapGroup;

.field protected 'groupNameText' Landroid/widget/TextView;

.field protected 'showType' I

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/showType I
return
.limit locals 1
.limit stack 2
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L0
aload 0
invokevirtual com/nd/android/u/contact/activity/base/GroupHeaderActivity2/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ldc "gid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
ldc "gid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/gid J
aload 0
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/gid J
invokevirtual com/nd/android/u/contact/business/GroupVariable/findGroupByGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/gid J
iconst_0
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/searchGroupRelations(JI)Ljava/util/List; 3
checkcast java/util/ArrayList
invokevirtual com/product/android/commonInterface/contact/OapGroup/setGMemberList(Ljava/util/ArrayList;)V
L2:
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
ifnonnull L3
aload 0
invokevirtual com/nd/android/u/contact/activity/base/GroupHeaderActivity2/finish()V
iconst_0
ireturn
L1:
aload 1
ldc "deptid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L4
aload 0
aload 1
ldc "deptid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/depgid J
aload 0
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/depgid J
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/classGid J
aload 0
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/depgid J
invokevirtual com/nd/android/u/contact/business/GroupVariable/findGroupByDeptid(J)Lcom/product/android/commonInterface/contact/OapGroup;
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
goto L2
L4:
aload 1
ldc "classgid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L5
aload 0
aload 1
ldc "classgid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/classGid J
aload 0
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/classGid J
invokevirtual com/nd/android/u/contact/business/GroupVariable/findGroupByClassGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
goto L2
L5:
aload 1
ldc "group"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L6
aload 0
aload 1
ldc "group"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/product/android/commonInterface/contact/OapGroup
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
aload 0
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/gid J
aload 0
iconst_1
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/showType I
goto L2
L6:
aload 1
ldc "clubgid"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L2
aload 0
aload 1
ldc "clubgid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/clubGid J
aload 0
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/clubGid J
invokevirtual com/nd/android/u/contact/business/GroupVariable/findAllGroupByGid(J)Lcom/product/android/commonInterface/contact/OapGroup;
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
goto L2
L3:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 5
.end method

.method public initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/group_header_text_name I
invokevirtual com/nd/android/u/contact/activity/base/GroupHeaderActivity2/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/groupNameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
L0:
return
.limit locals 1
.limit stack 3
.end method

.method public initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
ifnonnull L0
aload 0
invokevirtual com/nd/android/u/contact/activity/base/GroupHeaderActivity2/finish()V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/groupNameText Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/showType I
iconst_1
if_icmpne L1
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/rightBtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/titleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/group_info I
invokevirtual android/widget/TextView/setText(I)V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/group Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
ifne L2
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/rightBtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
L2:
aload 0
getfield com/nd/android/u/contact/activity/base/GroupHeaderActivity2/titleText Landroid/widget/TextView;
getstatic com/nd/android/u/contact/R$string/group_setting I
invokevirtual android/widget/TextView/setText(I)V
return
.limit locals 1
.limit stack 2
.end method
