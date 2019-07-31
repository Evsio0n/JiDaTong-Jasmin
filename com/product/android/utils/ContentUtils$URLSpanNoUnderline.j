.bytecode 50.0
.class public synchronized com/product/android/utils/ContentUtils$URLSpanNoUnderline
.super android/text/style/URLSpan
.inner class public static URLSpanNoUnderline inner com/product/android/utils/ContentUtils$URLSpanNoUnderline outer com/product/android/utils/ContentUtils
.inner class public static final enum SpanType inner com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType outer com/product/android/utils/ContentUtils$URLSpanNoUnderline

.field protected 'mObj' Ljava/lang/Object;

.field protected 'mSpanType' Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;

.method public <init>(Ljava/lang/String;)V
aload 0
aload 1
getstatic com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/UNKNOW Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
invokespecial com/product/android/utils/ContentUtils$URLSpanNoUnderline/<init>(Ljava/lang/String;Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;)V
aload 0
aload 1
invokespecial android/text/style/URLSpan/<init>(Ljava/lang/String;)V
aload 0
aload 2
putfield com/product/android/utils/ContentUtils$URLSpanNoUnderline/mSpanType Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
return
.limit locals 3
.limit stack 2
.end method

.method public <init>(Ljava/lang/String;Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;Ljava/lang/Object;)V
aload 0
aload 1
aload 2
invokespecial com/product/android/utils/ContentUtils$URLSpanNoUnderline/<init>(Ljava/lang/String;Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;)V
aload 0
aload 3
putfield com/product/android/utils/ContentUtils$URLSpanNoUnderline/mObj Ljava/lang/Object;
return
.limit locals 4
.limit stack 3
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/product/android/utils/ContentUtils$URLSpanNoUnderline
ifeq L0
aload 1
checkcast com/product/android/utils/ContentUtils$URLSpanNoUnderline
astore 1
aload 1
getfield com/product/android/utils/ContentUtils$URLSpanNoUnderline/mSpanType Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
aload 0
getfield com/product/android/utils/ContentUtils$URLSpanNoUnderline/mSpanType Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
invokevirtual com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/equals(Ljava/lang/Object;)Z
ifeq L0
aload 1
invokevirtual com/product/android/utils/ContentUtils$URLSpanNoUnderline/getURL()Ljava/lang/String;
aload 0
invokevirtual com/product/android/utils/ContentUtils$URLSpanNoUnderline/getURL()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getSpanType()Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
aload 0
getfield com/product/android/utils/ContentUtils$URLSpanNoUnderline/mSpanType Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
areturn
.limit locals 1
.limit stack 1
.end method

.method public hashCode()I
aload 0
invokespecial java/lang/Object/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getContext()Landroid/content/Context;
astore 5
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 6
aload 0
invokevirtual com/product/android/utils/ContentUtils$URLSpanNoUnderline/getURL()Ljava/lang/String;
astore 4
aload 4
astore 1
aload 4
ldc "@"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L0
aload 4
iconst_0
aload 4
ldc "@"
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
L0:
aload 1
astore 4
aload 1
ldc "......"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L1
aload 1
iconst_0
aload 1
ldc "......"
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 4
L1:
getstatic com/product/android/utils/ContentUtils$1/$SwitchMap$com$product$android$utils$ContentUtils$URLSpanNoUnderline$SpanType [I
aload 0
getfield com/product/android/utils/ContentUtils$URLSpanNoUnderline/mSpanType Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
invokevirtual com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/ordinal()I
iaload
tableswitch 1
L2
L3
L4
L5
default : L5
L5:
return
L3:
aload 6
aload 5
ldc com/product/android/ui/activity/WebViewActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 6
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_RETURN Ljava/lang/String;
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 6
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_URL Ljava/lang/String;
aload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 6
getstatic com/product/android/ui/activity/WebViewActivity/EXTARS_WEBVIEW_NEED_TITLE Ljava/lang/String;
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 5
aload 6
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L4:
aload 0
getfield com/product/android/utils/ContentUtils$URLSpanNoUnderline/mObj Ljava/lang/Object;
instanceof java/lang/Long
ifeq L5
aload 0
getfield com/product/android/utils/ContentUtils$URLSpanNoUnderline/mObj Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
aload 5
checkcast android/app/Activity
lload 2
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$WeiboModel/gotoTweetProfileActivity(Landroid/app/Activity;J)V
return
L2:
aload 4
invokevirtual java/lang/String/length()I
iconst_1
if_icmple L5
aload 4
iconst_1
aload 4
invokevirtual java/lang/String/length()I
iconst_1
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
aload 5
checkcast android/app/Activity
aload 1
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$WeiboModel/gotoHashTagsListActivity(Landroid/app/Activity;Ljava/lang/String;)V
return
.limit locals 7
.limit stack 4
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
aload 0
aload 1
invokespecial android/text/style/URLSpan/updateDrawState(Landroid/text/TextPaint;)V
aload 1
iconst_0
invokevirtual android/text/TextPaint/setUnderlineText(Z)V
getstatic com/product/android/utils/ContentUtils$1/$SwitchMap$com$product$android$utils$ContentUtils$URLSpanNoUnderline$SpanType [I
aload 0
getfield com/product/android/utils/ContentUtils$URLSpanNoUnderline/mSpanType Lcom/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType;
invokevirtual com/product/android/utils/ContentUtils$URLSpanNoUnderline$SpanType/ordinal()I
iaload
tableswitch 1
L0
default : L1
L1:
aload 1
ldc_w -12946557
invokevirtual android/text/TextPaint/setColor(I)V
return
L0:
aload 1
ldc_w -1611758
invokevirtual android/text/TextPaint/setColor(I)V
return
.limit locals 2
.limit stack 2
.end method
