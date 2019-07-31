.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/XYFriendGroupView
.super android/widget/LinearLayout

.field private 'groupCountText' Landroid/widget/TextView;

.field private 'groupNameText' Landroid/widget/TextView;

.field private 'mArrow' Landroid/widget/ImageView;

.field private 'mcontext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/XYFriendGroupView/mcontext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/contact/view/XYFriendGroupView/getView()V
return
.limit locals 2
.limit stack 2
.end method

.method public final getView()V
aload 0
getfield com/nd/android/u/contact/view/XYFriendGroupView/mcontext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/xy_friend_group_item_layout I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/friend_group_name I
invokevirtual com/nd/android/u/contact/view/XYFriendGroupView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/XYFriendGroupView/groupNameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/friend_group_member_count I
invokevirtual com/nd/android/u/contact/view/XYFriendGroupView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/XYFriendGroupView/groupCountText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/friend_group_arrow I
invokevirtual com/nd/android/u/contact/view/XYFriendGroupView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/XYFriendGroupView/mArrow Landroid/widget/ImageView;
return
.limit locals 1
.limit stack 4
.end method

.method public final initComponentValue(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;)V
aload 0
getfield com/nd/android/u/contact/view/XYFriendGroupView/groupNameText Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
iconst_m1
if_icmpeq L0
aload 0
invokevirtual com/nd/android/u/contact/view/XYFriendGroupView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/friendgroup_title_online I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L2
aload 0
getfield com/nd/android/u/contact/view/XYFriendGroupView/groupCountText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getChildSize()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/getCountFriend()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L2:
aload 0
getfield com/nd/android/u/contact/view/XYFriendGroupView/groupCountText Landroid/widget/TextView;
ldc "[0/0]"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
ifnull L3
aload 0
getfield com/nd/android/u/contact/view/XYFriendGroupView/groupCountText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L3:
aload 0
getfield com/nd/android/u/contact/view/XYFriendGroupView/groupCountText Landroid/widget/TextView;
ldc "0"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 3
.end method

.method public final setArrowBackground(Ljava/lang/Boolean;)V
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/view/XYFriendGroupView/mArrow Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_expand I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
L0:
aload 0
getfield com/nd/android/u/contact/view/XYFriendGroupView/mArrow Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_normal I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method
