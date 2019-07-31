.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/FriendGroupView
.super android/widget/LinearLayout

.field private 'groupCountText' Landroid/widget/TextView;

.field private 'groupFlag' Landroid/widget/ImageView;

.field private 'groupNameText' Landroid/widget/TextView;

.field private 'mcontext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/FriendGroupView/mcontext Landroid/content/Context;
aload 0
invokevirtual com/nd/android/u/contact/view/FriendGroupView/getView()V
return
.limit locals 2
.limit stack 2
.end method

.method public final getView()V
aload 0
getfield com/nd/android/u/contact/view/FriendGroupView/mcontext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/friendlist_group_item I
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/friendlist_group_name I
invokevirtual com/nd/android/u/contact/view/FriendGroupView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/FriendGroupView/groupNameText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/friendlist_group_count I
invokevirtual com/nd/android/u/contact/view/FriendGroupView/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/view/FriendGroupView/groupCountText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/iv_friendlist_flag I
invokevirtual com/nd/android/u/contact/view/FriendGroupView/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/view/FriendGroupView/groupFlag Landroid/widget/ImageView;
return
.limit locals 1
.limit stack 4
.end method

.method public final initComponentValue(Lcom/nd/android/u/contact/dataStructure/OapFriendGroup;Z)V
iload 2
ifeq L0
aload 0
getfield com/nd/android/u/contact/view/FriendGroupView/groupFlag Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_expand I
invokevirtual android/widget/ImageView/setImageResource(I)V
L1:
aload 0
getfield com/nd/android/u/contact/view/FriendGroupView/groupNameText Landroid/widget/TextView;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
iconst_m1
if_icmpeq L2
aload 0
invokevirtual com/nd/android/u/contact/view/FriendGroupView/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/friendgroup_title_online I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
L2:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L4
aload 0
getfield com/nd/android/u/contact/view/FriendGroupView/groupCountText Landroid/widget/TextView;
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
L0:
aload 0
getfield com/nd/android/u/contact/view/FriendGroupView/groupFlag Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/xy_normal I
invokevirtual android/widget/ImageView/setImageResource(I)V
goto L1
L4:
aload 0
getfield com/nd/android/u/contact/view/FriendGroupView/groupCountText Landroid/widget/TextView;
ldc "[0/0]"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L3:
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
ifnull L5
aload 0
getfield com/nd/android/u/contact/view/FriendGroupView/groupCountText Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFidList()Ljava/util/List;
invokeinterface java/util/List/size()I 0
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L5:
aload 0
getfield com/nd/android/u/contact/view/FriendGroupView/groupCountText Landroid/widget/TextView;
ldc "[0]"
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 3
.limit stack 3
.end method
