.bytecode 50.0
.class public synchronized com/bumptech/glide/request/animation/ViewPropertyAnimation
.super java/lang/Object
.implements com/bumptech/glide/request/animation/GlideAnimation
.signature "<R:Ljava/lang/Object;>Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
.inner class public static abstract interface Animator inner com/bumptech/glide/request/animation/ViewPropertyAnimation$Animator outer com/bumptech/glide/request/animation/ViewPropertyAnimation

.field private final 'animator' Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;

.method public <init>(Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/bumptech/glide/request/animation/ViewPropertyAnimation/animator Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
return
.limit locals 2
.limit stack 2
.end method

.method public animate(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z
.signature "(TR;Lcom/bumptech/glide/request/animation/GlideAnimation$ViewAdapter;)Z"
aload 2
invokeinterface com/bumptech/glide/request/animation/GlideAnimation$ViewAdapter/getView()Landroid/view/View; 0
ifnull L0
aload 0
getfield com/bumptech/glide/request/animation/ViewPropertyAnimation/animator Lcom/bumptech/glide/request/animation/ViewPropertyAnimation$Animator;
aload 2
invokeinterface com/bumptech/glide/request/animation/GlideAnimation$ViewAdapter/getView()Landroid/view/View; 0
invokeinterface com/bumptech/glide/request/animation/ViewPropertyAnimation$Animator/animate(Landroid/view/View;)V 1
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
