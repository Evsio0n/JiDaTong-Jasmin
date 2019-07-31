.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/MainFrameActivty$2
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/cloud/activity/MainFrameActivty
.inner class inner com/nd/android/u/cloud/activity/MainFrameActivty$2

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/MainFrameActivty;

.method <init>(Lcom/nd/android/u/cloud/activity/MainFrameActivty;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/MainFrameActivty$2/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
lookupswitch
2131625928 : L0
2131625931 : L1
2131625934 : L2
2131625937 : L3
2131625940 : L4
default : L5
L5:
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$2/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
getfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
ifeq L5
ldc "TIMECOST"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "IM \u573a\u666f6\uff1a\u767b\u5f55\u540e\uff0c\u5207\u6362\u5230\u901a\u8baf\u5f55\u597d\u53cb\u9875\u9762-Time:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$2/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
iconst_0
iconst_0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/switchActivity(IZ)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$2/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getWindow()Landroid/view/Window;
bipush 16
invokevirtual android/view/Window/setSoftInputMode(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$2/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
iconst_2
iconst_0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/switchActivity(IZ)V
return
L3:
ldc "TIMECOST"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "IM \u573a\u666f5: \u767b\u5f55\u540e\uff0c\u804a\u5929\u9875\u9762\u52a0\u8f7d\uff08xx\u6761\u804a\u5929\u6d88\u606f\uff0c\u4e0eqq\u76f8\u5f53\u7684\u91cf\u7ea7\uff09-Time:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$2/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/getWindow()Landroid/view/Window;
bipush 32
invokevirtual android/view/Window/setSoftInputMode(I)V
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$2/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
iconst_3
iconst_0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/switchActivity(IZ)V
return
L4:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$2/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
getfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
iconst_4
if_icmpne L6
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$2/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
iconst_1
invokestatic com/nd/android/u/cloud/activity/MainFrameActivty/access$302(Lcom/nd/android/u/cloud/activity/MainFrameActivty;Z)Z
pop
L6:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$2/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
iconst_4
iconst_0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/switchActivity(IZ)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$2/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
getfield com/nd/android/u/cloud/activity/MainFrameActivty/currentTab I
iconst_1
if_icmpne L7
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$2/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
iconst_1
invokestatic com/nd/android/u/cloud/activity/MainFrameActivty/access$402(Lcom/nd/android/u/cloud/activity/MainFrameActivty;Z)Z
pop
L7:
aload 0
getfield com/nd/android/u/cloud/activity/MainFrameActivty$2/this$0 Lcom/nd/android/u/cloud/activity/MainFrameActivty;
iconst_1
iconst_0
invokevirtual com/nd/android/u/cloud/activity/MainFrameActivty/switchActivity(IZ)V
return
.limit locals 2
.limit stack 4
.end method
