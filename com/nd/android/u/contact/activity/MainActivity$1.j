.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/MainActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/MainActivity
.inner class inner com/nd/android/u/contact/activity/MainActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/MainActivity;

.method <init>(Lcom/nd/android/u/contact/activity/MainActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
aload 1
getfield android/os/Message/what I
invokestatic com/nd/android/u/contact/activity/MainActivity/access$002(Lcom/nd/android/u/contact/activity/MainActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$100(Lcom/nd/android/u/contact/activity/MainActivity;)Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$000(Lcom/nd/android/u/contact/activity/MainActivity;)I
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/setmCurrentTabId(I)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$000(Lcom/nd/android/u/contact/activity/MainActivity;)I
tableswitch 0
L0
L1
L2
L3
default : L4
L4:
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$200(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$300(Lcom/nd/android/u/contact/activity/MainActivity;)Z
ifeq L5
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$400(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L6:
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$500(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L5:
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$400(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L6
L1:
invokestatic java/lang/System/currentTimeMillis()J
putstatic com/product/android/business/LogData/IM7 J
getstatic com/product/android/business/LogData/IM7 J
putstatic com/product/android/business/LogData/IM8 J
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$200(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$300(Lcom/nd/android/u/contact/activity/MainActivity;)Z
ifeq L7
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$400(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
L8:
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$500(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L7:
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$400(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
goto L8
L2:
ldc "TIMECOST"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "IM \u573a\u666f9\uff1a\u767b\u5f55\u540e\uff0c\u5207\u6362\u5230\u7fa4\u7ec4\u9875\u9762\uff08\u7fa4\u7ec4\u4e2a\u6570\u4e0eqq\u76f8\u5f53\u91cf\u7ea7\uff09-Time:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$400(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$200(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$500(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$200(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/bt_add_bg I
invokevirtual android/widget/ImageView/setImageResource(I)V
return
L3:
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$200(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$400(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/contact/activity/MainActivity$1/this$0 Lcom/nd/android/u/contact/activity/MainActivity;
invokestatic com/nd/android/u/contact/activity/MainActivity/access$500(Lcom/nd/android/u/contact/activity/MainActivity;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
return
.limit locals 2
.limit stack 4
.end method
