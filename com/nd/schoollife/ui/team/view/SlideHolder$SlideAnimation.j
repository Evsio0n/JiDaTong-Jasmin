.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation
.super android/view/animation/Animation
.inner class private SlideAnimation inner com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation outer com/nd/schoollife/ui/team/view/SlideHolder

.field private static final 'SPEED' F = 1.2F


.field private 'mEnd' F

.field private 'mStart' F

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/view/SlideHolder;

.method public <init>(Lcom/nd/schoollife/ui/team/view/SlideHolder;FF)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/this$0 Lcom/nd/schoollife/ui/team/view/SlideHolder;
aload 0
invokespecial android/view/animation/Animation/<init>()V
aload 0
fload 2
putfield com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/mStart F
aload 0
fload 3
putfield com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/mEnd F
aload 0
new android/view/animation/DecelerateInterpolator
dup
invokespecial android/view/animation/DecelerateInterpolator/<init>()V
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/setInterpolator(Landroid/view/animation/Interpolator;)V
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/mEnd F
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/mStart F
fsub
invokestatic java/lang/Math/abs(F)F
ldc_w 1.2F
fdiv
f2l
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/setDuration(J)V
return
.limit locals 4
.limit stack 3
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
aload 0
fload 1
aload 2
invokespecial android/view/animation/Animation/applyTransformation(FLandroid/view/animation/Transformation;)V
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/mEnd F
fstore 3
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/mStart F
fstore 4
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/mStart F
fstore 5
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/this$0 Lcom/nd/schoollife/ui/team/view/SlideHolder;
fload 3
fload 4
fsub
fload 1
fmul
fload 5
fadd
f2i
invokestatic com/nd/schoollife/ui/team/view/SlideHolder/access$402(Lcom/nd/schoollife/ui/team/view/SlideHolder;I)I
pop
aload 0
getfield com/nd/schoollife/ui/team/view/SlideHolder$SlideAnimation/this$0 Lcom/nd/schoollife/ui/team/view/SlideHolder;
invokevirtual com/nd/schoollife/ui/team/view/SlideHolder/postInvalidate()V
return
.limit locals 6
.limit stack 3
.end method
