.bytecode 50.0
.class synchronized com/nd/android/u/tast/birthday/view/FlowBirthdayView$2
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/tast/birthday/view/FlowBirthdayView
.inner class inner com/nd/android/u/tast/birthday/view/FlowBirthdayView$2
.inner class inner com/nd/android/u/tast/birthday/view/FlowBirthdayView$2$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;

.method <init>(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$2/this$0 Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aconst_null
astore 2
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
instanceof org/json/JSONObject
ifeq L1
aload 1
getfield com/common/android/utils/task/genericTask/GenericTask/paraData Ljava/lang/Object;
checkcast org/json/JSONObject
astore 2
L1:
aload 2
ifnull L2
aload 2
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 3
iload 3
sipush 200
if_icmpne L3
aload 2
ldc "exp"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 5
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$2/this$0 Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;
invokestatic com/nd/android/u/tast/birthday/view/FlowBirthdayView/access$400(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)Landroid/graphics/drawable/AnimationDrawable;
ifnull L4
iconst_0
istore 4
iconst_0
istore 3
L5:
iload 3
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$2/this$0 Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;
invokestatic com/nd/android/u/tast/birthday/view/FlowBirthdayView/access$400(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)Landroid/graphics/drawable/AnimationDrawable;
invokevirtual android/graphics/drawable/AnimationDrawable/getNumberOfFrames()I
if_icmpge L6
iload 4
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$2/this$0 Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;
invokestatic com/nd/android/u/tast/birthday/view/FlowBirthdayView/access$400(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;)Landroid/graphics/drawable/AnimationDrawable;
iload 3
invokevirtual android/graphics/drawable/AnimationDrawable/getDuration(I)I
iadd
istore 4
iload 3
iconst_1
iadd
istore 3
goto L5
L6:
new android/os/Handler
dup
invokespecial android/os/Handler/<init>()V
new com/nd/android/u/tast/birthday/view/FlowBirthdayView$2$1
dup
aload 0
iload 5
invokespecial com/nd/android/u/tast/birthday/view/FlowBirthdayView$2$1/<init>(Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView$2;I)V
iload 4
i2l
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
L4:
return
L3:
iload 3
sipush 201
if_icmpne L7
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$2/this$0 Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;
iconst_1
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/blessFail(I)V
return
L7:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$2/this$0 Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;
iconst_2
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/blessFail(I)V
return
L2:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$2/this$0 Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;
iconst_2
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/blessFail(I)V
return
L0:
aload 0
getfield com/nd/android/u/tast/birthday/view/FlowBirthdayView$2/this$0 Lcom/nd/android/u/tast/birthday/view/FlowBirthdayView;
iconst_2
invokevirtual com/nd/android/u/tast/birthday/view/FlowBirthdayView/blessFail(I)V
return
.limit locals 6
.limit stack 5
.end method
