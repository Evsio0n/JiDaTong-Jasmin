.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/fragment/BackpackMainFragment$1
.super java/lang/Object
.implements android/support/v4/view/ViewPager$OnPageChangeListener
.enclosing method com/nd/android/backpacksystem/fragment/BackpackMainFragment/initPageChangeListener()V
.inner class inner com/nd/android/backpacksystem/fragment/BackpackMainFragment$1

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;

.method <init>(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPageScrollStateChanged(I)V
return
.limit locals 2
.limit stack 0
.end method

.method public onPageScrolled(IFI)V
return
.limit locals 4
.limit stack 0
.end method

.method public onPageSelected(I)V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
invokestatic com/nd/android/backpacksystem/fragment/BackpackMainFragment/access$000(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;)Lcom/nd/android/backpacksystem/widget/SwitchLayout;
ifnull L0
iload 1
ifne L1
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
invokestatic com/nd/android/backpacksystem/fragment/BackpackMainFragment/access$000(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;)Lcom/nd/android/backpacksystem/widget/SwitchLayout;
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/tabToLeft(Z)V
invokestatic com/common/android/utils/audio/AudioPlayer/getInstance()Lcom/common/android/utils/audio/AudioPlayer;
invokevirtual com/common/android/utils/audio/AudioPlayer/stopPlay()V
L0:
return
L1:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
invokestatic com/nd/android/backpacksystem/fragment/BackpackMainFragment/access$000(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;)Lcom/nd/android/backpacksystem/widget/SwitchLayout;
iconst_0
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/tabToRight(Z)V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackMainFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;
invokestatic com/nd/android/backpacksystem/fragment/BackpackMainFragment/access$100(Lcom/nd/android/backpacksystem/fragment/BackpackMainFragment;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
invokestatic com/nd/android/backpacksystem/fragment/GiftBoxFragment/clearUnreadGiftMsg()V
return
.limit locals 2
.limit stack 2
.end method
