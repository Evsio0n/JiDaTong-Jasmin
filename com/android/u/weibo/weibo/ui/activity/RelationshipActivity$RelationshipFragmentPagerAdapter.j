.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/RelationshipActivity$RelationshipFragmentPagerAdapter
.super android/support/v4/app/FragmentPagerAdapter
.implements com/common/android/ui/viewPagerIndicator/TitleProvider
.inner class private RelationshipFragmentPagerAdapter inner com/android/u/weibo/weibo/ui/activity/RelationshipActivity$RelationshipFragmentPagerAdapter outer com/android/u/weibo/weibo/ui/activity/RelationshipActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/RelationshipActivity;

.method public <init>(Lcom/android/u/weibo/weibo/ui/activity/RelationshipActivity;Landroid/support/v4/app/FragmentManager;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/RelationshipActivity$RelationshipFragmentPagerAdapter/this$0 Lcom/android/u/weibo/weibo/ui/activity/RelationshipActivity;
aload 0
aload 2
invokespecial android/support/v4/app/FragmentPagerAdapter/<init>(Landroid/support/v4/app/FragmentManager;)V
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
iconst_2
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/RelationshipActivity$RelationshipFragmentPagerAdapter/this$0 Lcom/android/u/weibo/weibo/ui/activity/RelationshipActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/RelationshipActivity/access$000(Lcom/android/u/weibo/weibo/ui/activity/RelationshipActivity;)J
iload 1
iconst_1
iadd
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/newInstance(JI)Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
areturn
.limit locals 2
.limit stack 4
.end method

.method public getTitle(I)Ljava/lang/String;
iload 1
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/RelationshipActivity$RelationshipFragmentPagerAdapter/this$0 Lcom/android/u/weibo/weibo/ui/activity/RelationshipActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/following I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/RelationshipActivity$RelationshipFragmentPagerAdapter/this$0 Lcom/android/u/weibo/weibo/ui/activity/RelationshipActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity/RelationshipActivity/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/follower I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method
