.bytecode 50.0
.class synchronized com/nd/android/u/tast/experience/activity/DateWidgetActivity$6
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/tast/experience/activity/DateWidgetActivity/startSigninAnimation()V
.inner class inner com/nd/android/u/tast/experience/activity/DateWidgetActivity$6

.field final synthetic 'this$0' Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity;

.method <init>(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$6/this$0 Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$6/this$0 Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity;
invokestatic com/nd/android/u/tast/experience/activity/DateWidgetActivity/access$1400(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity;)Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/graphics/drawable/AnimationDrawable/stop()V
aload 0
getfield com/nd/android/u/tast/experience/activity/DateWidgetActivity$6/this$0 Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity;
invokestatic com/nd/android/u/tast/experience/activity/DateWidgetActivity/access$1500(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
