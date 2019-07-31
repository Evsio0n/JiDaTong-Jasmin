.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/utils/NoLineClickSpan
.super android/text/style/ClickableSpan

.field 'text' Ljava/lang/String;

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial android/text/style/ClickableSpan/<init>()V
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/NoLineClickSpan/text Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
return
.limit locals 2
.limit stack 0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
aload 1
ldc_w -9528906
invokevirtual android/text/TextPaint/setColor(I)V
aload 1
iconst_0
invokevirtual android/text/TextPaint/setUnderlineText(Z)V
return
.limit locals 2
.limit stack 2
.end method
