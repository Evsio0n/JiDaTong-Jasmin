.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/fragment/BackpackMainFragment$2
.super java/lang/Object
.implements com/nd/android/backpacksystem/widget/SwitchLayout$TabSelectCallBack
.enclosing method com/nd/android/backpacksystem/fragment/BackpackMainFragment
.inner class inner com/nd/android/backpacksystem/fragment/BackpackMainFragment$2

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;

.method <init>(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$2/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public selectLeftTab()V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$2/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mVpContent Landroid/support/v4/view/ViewPager;
iconst_0
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public selectRightTab()V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$2/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment/mVpContent Landroid/support/v4/view/ViewPager;
iconst_1
invokevirtual android/support/v4/view/ViewPager/setCurrentItem(I)V
return
.limit locals 1
.limit stack 2
.end method
