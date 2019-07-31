.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainFrameActivty$9
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/MainFrameActivty/AddNewFunctionGuide()V
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$9

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainFrameActivty;

.field final synthetic 'val$frameLayout' Landroid/widget/FrameLayout;

.field final synthetic 'val$guideViewOne' Landroid/view/View;

.field final synthetic 'val$guideViewTwo' Landroid/view/View;

.method <init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty$9/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
aload 0
aload 2
putfield com/nd/android/u/cloud/activity/MainFrameActivty$9/val$frameLayout Landroid/widget/FrameLayout;
aload 0
aload 3
putfield com/nd/android/u/cloud/activity/MainFrameActivty$9/val$guideViewOne Landroid/view/View;
aload 0
aload 4
putfield com/nd/android/u/cloud/activity/MainFrameActivty$9/val$guideViewTwo Landroid/view/View;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 5
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
getstatic com/nd/android/util/BroadcastContact/GOTO_CONTACT_ACTION Ljava/lang/String;
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$9/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
aload 1
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/sendBroadcast(Landroid/content/Intent;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$9/val$frameLayout Landroid/widget/FrameLayout;
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$9/val$guideViewOne Landroid/view/View;
invokevirtual android/widget/FrameLayout/removeView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$9/val$frameLayout Landroid/widget/FrameLayout;
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$9/val$guideViewTwo Landroid/view/View;
invokevirtual android/widget/FrameLayout/addView(Landroid/view/View;)V
return
.limit locals 2
.limit stack 3
.end method
