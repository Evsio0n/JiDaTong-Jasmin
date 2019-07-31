.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback
.super com/nd/android/backpacksystem/helper/ViewDragHelper$Callback
.inner class private DragHelperCallback inner com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback outer com/nd/android/backpacksystem/widget/SwitchLayout

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/widget/SwitchLayout;

.method private <init>(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
aload 0
invokespecial com/nd/android/backpacksystem/helper/ViewDragHelper$Callback/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/backpacksystem/widget/SwitchLayout;Lcom/nd/android/backpacksystem/widget/SwitchLayout$1;)V
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/<init>(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)V
return
.limit locals 3
.limit stack 2
.end method

.method public clampViewPositionHorizontal(Landroid/view/View;II)I
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/getPaddingLeft()I
istore 3
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/getWidth()I
istore 4
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/access$100(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getWidth()I
istore 5
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/access$100(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getPaddingRight()I
istore 6
iload 2
iload 3
invokestatic java/lang/Math/max(II)I
iload 4
iload 5
isub
iload 6
isub
invokestatic java/lang/Math/min(II)I
ireturn
.limit locals 7
.limit stack 3
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/access$400(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)I
ireturn
.limit locals 2
.limit stack 1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
iload 2
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/access$202(Lcom/nd/android/backpacksystem/widget/SwitchLayout;I)I
pop
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
iload 2
i2f
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/access$400(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)I
i2f
fdiv
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/access$302(Lcom/nd/android/backpacksystem/widget/SwitchLayout;F)F
pop
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/access$200(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)I
aload 1
invokevirtual android/view/View/getLeft()I
iadd
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/getWidth()I
iconst_2
idiv
if_icmpge L0
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/access$500(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)V
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/requestLayout()V
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/access$600(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)V
goto L1
.limit locals 6
.limit stack 3
.end method

.method public onViewReleased(Landroid/view/View;FF)V
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/getPaddingLeft()I
istore 5
fload 2
fconst_0
fcmpl
ifgt L0
iload 5
istore 4
fload 2
fconst_0
fcmpl
ifne L1
iload 5
istore 4
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/access$300(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)F
ldc_w 0.5F
fcmpl
ifle L1
L0:
iload 5
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/access$400(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)I
iadd
istore 4
L1:
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/access$700(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)Lcom/nd/android/backpacksystem/helper/ViewDragHelper;
iload 4
aload 1
invokevirtual android/view/View/getTop()I
invokevirtual com/nd/android/backpacksystem/helper/ViewDragHelper/settleCapturedViewAt(II)Z
pop
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokevirtual com/nd/android/backpacksystem/widget/SwitchLayout/invalidate()V
return
.limit locals 6
.limit stack 3
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
aload 1
aload 0
getfield com/nd/android/backpacksystem/widget/SwitchLayout$DragHelperCallback/this$0 Lcom/nd/android/backpacksystem/widget/SwitchLayout;
invokestatic com/nd/android/backpacksystem/widget/SwitchLayout/access$100(Lcom/nd/android/backpacksystem/widget/SwitchLayout;)Landroid/widget/TextView;
if_acmpne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method
