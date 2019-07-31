.bytecode 50.0
.class synchronized com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity$2
.super java/lang/Object
.implements android/view/animation/Animation$AnimationListener
.enclosing method com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/showHeader()V
.inner class inner com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity$2

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity;

.method <init>(Lcom/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity$2/this$0 Lcom/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
aload 0
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity$2/this$0 Lcom/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity;
getfield com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity/headerLayout Landroid/widget/RelativeLayout;
invokevirtual android/widget/RelativeLayout/clearAnimation()V
return
.limit locals 2
.limit stack 1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
return
.limit locals 2
.limit stack 0
.end method
