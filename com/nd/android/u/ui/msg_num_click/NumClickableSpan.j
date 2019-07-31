.bytecode 50.0
.class public synchronized com/nd/android/u/ui/msg_num_click/NumClickableSpan
.super android/text/style/ClickableSpan

.field private 'iMsgNumClick' Lcom/nd/android/u/ui/msg_num_click/IMsgNumClick;

.method public <init>(Lcom/nd/android/u/ui/msg_num_click/IMsgNumClick;)V
aload 0
invokespecial android/text/style/ClickableSpan/<init>()V
aload 0
aload 1
putfield com/nd/android/u/ui/msg_num_click/NumClickableSpan/iMsgNumClick Lcom/nd/android/u/ui/msg_num_click/IMsgNumClick;
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
ifnull L0
aload 1
aconst_null
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
return
L0:
aload 0
getfield com/nd/android/u/ui/msg_num_click/NumClickableSpan/iMsgNumClick Lcom/nd/android/u/ui/msg_num_click/IMsgNumClick;
invokeinterface com/nd/android/u/ui/msg_num_click/IMsgNumClick/doNumClick()V 0
return
.limit locals 2
.limit stack 2
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
aload 0
aload 1
invokespecial android/text/style/ClickableSpan/updateDrawState(Landroid/text/TextPaint;)V
aload 0
getfield com/nd/android/u/ui/msg_num_click/NumClickableSpan/iMsgNumClick Lcom/nd/android/u/ui/msg_num_click/IMsgNumClick;
aload 1
invokeinterface com/nd/android/u/ui/msg_num_click/IMsgNumClick/setTextStyle(Landroid/text/TextPaint;)V 1
return
.limit locals 2
.limit stack 2
.end method
