.bytecode 50.0
.class synchronized com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/android/u/weibo/flower/ui/widget/FlowerMsgSetView
.inner class inner com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1

.field final synthetic 'this$0' Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;

.method <init>(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)V
aload 0
aload 1
putfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
return
.limit locals 2
.limit stack 0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokestatic com/android/u/weibo/weibo/utils/WeiboUtil/getMsgContentCount(Ljava/lang/String;)I
istore 3
iload 3
ifeq L0
iload 3
bipush 40
if_icmple L1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
bipush 40
iload 3
isub
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$500(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setEnabled(Z)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$500(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$600(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$700(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/TextView;
ldc_w -65536
invokevirtual android/widget/TextView/setTextColor(I)V
L2:
iload 4
ifeq L3
invokestatic com/common/android/utils/smiley/Smileyhelper/getInstance()Lcom/common/android/utils/smiley/Smileyhelper;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$1000(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/EditText;
iload 2
iload 4
iconst_1
invokevirtual com/common/android/utils/smiley/Smileyhelper/setImageSpannable(Landroid/widget/EditText;III)V
L3:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$700(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/TextView;
aload 1
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$1100(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$500(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$700(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
return
L1:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$800(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/content/Context;
getstatic com/android/u/weibo/R$string/wbflower_message_num I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
dup
iconst_1
bipush 40
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$500(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/Button;
iconst_1
invokevirtual android/widget/Button/setEnabled(Z)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$500(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$900(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$700(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/TextView;
ldc_w -16777216
invokevirtual android/widget/TextView/setTextColor(I)V
goto L2
L0:
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$1100(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$500(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/flower/ui/widget/FlowerMsgSetView$1/this$0 Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;
invokestatic com/android/u/weibo/flower/ui/widget/FlowerMsgSetView/access$700(Lcom/android/u/weibo/flower/ui/widget/FlowerMsgSetView;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 5
.limit stack 5
.end method
