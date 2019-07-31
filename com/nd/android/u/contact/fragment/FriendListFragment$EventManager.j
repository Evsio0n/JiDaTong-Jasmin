.bytecode 50.0
.class synchronized com/nd/android/u/contact/fragment/FriendListFragment$EventManager
.super com/product/android/business/manager/MotionEventManager
.inner class private EventManager inner com/nd/android/u/contact/fragment/FriendListFragment$EventManager outer com/nd/android/u/contact/fragment/FriendListFragment

.field private 'mPosition' I

.field 'mScale' F

.field final synthetic 'this$0' Lcom/nd/android/u/contact/fragment/FriendListFragment;

.method public <init>(Lcom/nd/android/u/contact/fragment/FriendListFragment;Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
aload 0
aload 2
invokespecial com/product/android/business/manager/MotionEventManager/<init>(Landroid/view/View;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected onClick()Z
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$1600(Lcom/nd/android/u/contact/fragment/FriendListFragment;)I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/mPosition I
iconst_m1
if_icmpeq L0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/mPosition I
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$500(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmpge L0
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$500(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/mPosition I
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 1
aload 1
ifnonnull L1
iconst_1
ireturn
L1:
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifeq L2
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
bipush -99
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
L0:
aload 0
invokespecial com/product/android/business/manager/MotionEventManager/onClick()Z
ireturn
L2:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokevirtual com/nd/android/u/contact/fragment/FriendListFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toTweetProfileActivity(Landroid/content/Context;J)V
goto L0
.limit locals 2
.limit stack 4
.end method

.method protected onUp(FF)Z
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$1400(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/mScale F
fconst_1
fcmpg
ifge L1
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$1500(Lcom/nd/android/u/contact/fragment/FriendListFragment;)V
L1:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
iconst_0
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$1402(Lcom/nd/android/u/contact/fragment/FriendListFragment;Z)Z
pop
L2:
aload 0
fload 1
fload 2
invokespecial com/product/android/business/manager/MotionEventManager/onUp(FF)Z
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$1600(Lcom/nd/android/u/contact/fragment/FriendListFragment;)I
iconst_1
if_icmpne L3
aload 0
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$1700(Lcom/nd/android/u/contact/fragment/FriendListFragment;)Landroid/widget/GridView;
fload 1
f2i
fload 2
f2i
invokevirtual android/widget/GridView/pointToPosition(II)I
putfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/mPosition I
goto L2
L3:
aload 0
iconst_m1
putfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/mPosition I
goto L2
.limit locals 3
.limit stack 4
.end method

.method protected onZoom(FF)Z
aload 0
fload 1
putfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/mScale F
aload 0
getfield com/nd/android/u/contact/fragment/FriendListFragment$EventManager/this$0 Lcom/nd/android/u/contact/fragment/FriendListFragment;
iconst_1
invokestatic com/nd/android/u/contact/fragment/FriendListFragment/access$1402(Lcom/nd/android/u/contact/fragment/FriendListFragment;Z)Z
pop
aload 0
fload 1
fload 2
invokespecial com/product/android/business/manager/MotionEventManager/onZoom(FF)Z
ireturn
.limit locals 3
.limit stack 3
.end method
