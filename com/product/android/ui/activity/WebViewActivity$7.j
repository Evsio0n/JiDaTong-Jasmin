.bytecode 50.0
.class synchronized com/product/android/ui/activity/WebViewActivity$7
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/product/android/ui/activity/WebViewActivity
.inner class inner com/product/android/ui/activity/WebViewActivity$7

.field final synthetic 'this$0' Lcom/product/android/ui/activity/WebViewActivity;

.method <init>(Lcom/product/android/ui/activity/WebViewActivity;)V
aload 0
aload 1
putfield com/product/android/ui/activity/WebViewActivity$7/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/allcommon/R$id/home_page_layout I
if_icmpne L0
iconst_m1
istore 2
L1:
aload 0
getfield com/product/android/ui/activity/WebViewActivity$7/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$400(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/webkit/WebView;
iload 2
invokevirtual android/webkit/WebView/canGoBackOrForward(I)Z
ifeq L2
iload 2
iconst_1
isub
istore 2
goto L1
L2:
aload 0
getfield com/product/android/ui/activity/WebViewActivity$7/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$400(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/webkit/WebView;
iload 2
iconst_1
iadd
invokevirtual android/webkit/WebView/goBackOrForward(I)V
L3:
return
L0:
iload 2
getstatic com/nd/android/u/allcommon/R$id/back_page_layout I
if_icmpne L4
aload 0
getfield com/product/android/ui/activity/WebViewActivity$7/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$400(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoBack()Z
ifeq L3
aload 0
getfield com/product/android/ui/activity/WebViewActivity$7/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$400(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/goBack()V
return
L4:
iload 2
getstatic com/nd/android/u/allcommon/R$id/forward_page_layout I
if_icmpne L5
aload 0
getfield com/product/android/ui/activity/WebViewActivity$7/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$400(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoForward()Z
ifeq L3
aload 0
getfield com/product/android/ui/activity/WebViewActivity$7/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$400(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/goForward()V
return
L5:
iload 2
getstatic com/nd/android/u/allcommon/R$id/app_header_btn_left I
if_icmpne L6
aload 0
getfield com/product/android/ui/activity/WebViewActivity$7/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokevirtual com/product/android/ui/activity/WebViewActivity/finish()V
return
L6:
iload 2
getstatic com/nd/android/u/allcommon/R$id/refresh_page I
if_icmpeq L7
iload 2
getstatic com/nd/android/u/allcommon/R$id/reload_page_layout I
if_icmpne L3
L7:
aload 0
getfield com/product/android/ui/activity/WebViewActivity$7/this$0 Lcom/product/android/ui/activity/WebViewActivity;
aload 0
getfield com/product/android/ui/activity/WebViewActivity$7/this$0 Lcom/product/android/ui/activity/WebViewActivity;
invokestatic com/product/android/ui/activity/WebViewActivity/access$400(Lcom/product/android/ui/activity/WebViewActivity;)Landroid/webkit/WebView;
invokevirtual com/product/android/ui/activity/WebViewActivity/reloadurl(Landroid/webkit/WebView;)V
return
.limit locals 3
.limit stack 3
.end method
