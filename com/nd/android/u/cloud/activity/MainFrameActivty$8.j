.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainFrameActivty$8
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/MainFrameActivty/AddNewFunctionGuide()V
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$8

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainFrameActivty;

.field final synthetic 'val$frameLayout' Landroid/widget/FrameLayout;

.field final synthetic 'val$guideViewTwo' Landroid/view/View;

.method <init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;Landroid/widget/FrameLayout;Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty$8/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/MainFrameActivty$8/val$frameLayout Landroid/widget/FrameLayout;
aload 0
aload 3
putfield com/nd/android/u/cloud/activity/MainFrameActivty$8/val$guideViewTwo Landroid/view/View;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$8/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$8/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getName()Ljava/lang/String;
invokestatic com/nd/android/u/cloud/helper/Utils/setActivityIsGuided(Landroid/content/Context;Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$8/val$frameLayout Landroid/widget/FrameLayout;
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$8/val$guideViewTwo Landroid/view/View;
invokevirtual android/widget/FrameLayout/removeView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 2
.end method
