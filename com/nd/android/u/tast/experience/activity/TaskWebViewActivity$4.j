.bytecode 50.0
.class synchronized com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/tast/experience/activity/TaskWebViewActivity
.inner class inner com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4

.field final synthetic 'this$0' Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;

.method <init>(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
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
getstatic com/nd/android/u/tasklib/R$id/home_page_layout I
if_icmpne L0
iconst_m1
istore 2
L1:
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokestatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/access$700(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/webkit/WebView;
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
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokestatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/access$700(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/webkit/WebView;
iload 2
iconst_1
iadd
invokevirtual android/webkit/WebView/goBackOrForward(I)V
L3:
return
L0:
iload 2
getstatic com/nd/android/u/tasklib/R$id/back_page_layout I
if_icmpne L4
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokestatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/access$700(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoBack()Z
ifeq L3
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokestatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/access$700(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/goBack()V
return
L4:
iload 2
getstatic com/nd/android/u/tasklib/R$id/forward_page_layout I
if_icmpne L5
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokestatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/access$700(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/canGoForward()Z
ifeq L3
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokestatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/access$700(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/webkit/WebView;
invokevirtual android/webkit/WebView/goForward()V
return
L5:
iload 2
getstatic com/nd/android/u/tasklib/R$id/app_header_btn_left I
if_icmpne L6
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/finish()V
return
L6:
iload 2
getstatic com/nd/android/u/tasklib/R$id/refresh_page I
if_icmpeq L7
iload 2
getstatic com/nd/android/u/tasklib/R$id/reload_page_layout I
if_icmpne L3
L7:
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
aload 0
getfield com/nd/android/u/tast/experience/activity/TaskWebViewActivity$4/this$0 Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;
invokestatic com/nd/android/u/tast/experience/activity/TaskWebViewActivity/access$700(Lcom/nd/android/u/tast/experience/activity/TaskWebViewActivity;)Landroid/webkit/WebView;
invokevirtual com/nd/android/u/tast/experience/activity/TaskWebViewActivity/reloadurl(Landroid/webkit/WebView;)V
return
.limit locals 3
.limit stack 3
.end method
