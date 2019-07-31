.bytecode 50.0
.class public synchronized com/handmark/pulltorefresh/library/PullToRefreshWebView
.super com/handmark/pulltorefresh/library/PullToRefreshBase
.signature "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/webkit/WebView;>;"
.inner class inner com/handmark/pulltorefresh/library/PullToRefreshWebView$1
.inner class inner com/handmark/pulltorefresh/library/PullToRefreshWebView$2
.inner class final InternalWebViewSDK9 inner com/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9 outer com/handmark/pulltorefresh/library/PullToRefreshWebView

.field private static final 'defaultOnRefreshListener' Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener; signature "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener<Landroid/webkit/WebView;>;"

.field private final 'defaultWebChromeClient' Landroid/webkit/WebChromeClient;

.method static <clinit>()V
new com/handmark/pulltorefresh/library/PullToRefreshWebView$1
dup
invokespecial com/handmark/pulltorefresh/library/PullToRefreshWebView$1/<init>()V
putstatic com/handmark/pulltorefresh/library/PullToRefreshWebView/defaultOnRefreshListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/<init>(Landroid/content/Context;)V
aload 0
new com/handmark/pulltorefresh/library/PullToRefreshWebView$2
dup
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshWebView$2/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V
putfield com/handmark/pulltorefresh/library/PullToRefreshWebView/defaultWebChromeClient Landroid/webkit/WebChromeClient;
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshWebView/defaultOnRefreshListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshWebView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/mRefreshableView Landroid/view/View;
checkcast android/webkit/WebView
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/defaultWebChromeClient Landroid/webkit/WebChromeClient;
invokevirtual android/webkit/WebView/setWebChromeClient(Landroid/webkit/WebChromeClient;)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new com/handmark/pulltorefresh/library/PullToRefreshWebView$2
dup
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshWebView$2/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V
putfield com/handmark/pulltorefresh/library/PullToRefreshWebView/defaultWebChromeClient Landroid/webkit/WebChromeClient;
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshWebView/defaultOnRefreshListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshWebView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/mRefreshableView Landroid/view/View;
checkcast android/webkit/WebView
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/defaultWebChromeClient Landroid/webkit/WebChromeClient;
invokevirtual android/webkit/WebView/setWebChromeClient(Landroid/webkit/WebChromeClient;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
new com/handmark/pulltorefresh/library/PullToRefreshWebView$2
dup
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshWebView$2/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V
putfield com/handmark/pulltorefresh/library/PullToRefreshWebView/defaultWebChromeClient Landroid/webkit/WebChromeClient;
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshWebView/defaultOnRefreshListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshWebView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/mRefreshableView Landroid/view/View;
checkcast android/webkit/WebView
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/defaultWebChromeClient Landroid/webkit/WebChromeClient;
invokevirtual android/webkit/WebView/setWebChromeClient(Landroid/webkit/WebChromeClient;)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
aload 0
aload 1
aload 2
aload 3
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
aload 0
new com/handmark/pulltorefresh/library/PullToRefreshWebView$2
dup
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshWebView$2/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V
putfield com/handmark/pulltorefresh/library/PullToRefreshWebView/defaultWebChromeClient Landroid/webkit/WebChromeClient;
aload 0
getstatic com/handmark/pulltorefresh/library/PullToRefreshWebView/defaultOnRefreshListener Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshWebView/setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/mRefreshableView Landroid/view/View;
checkcast android/webkit/WebView
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/defaultWebChromeClient Landroid/webkit/WebChromeClient;
invokevirtual android/webkit/WebView/setWebChromeClient(Landroid/webkit/WebChromeClient;)V
return
.limit locals 4
.limit stack 4
.end method

.method protected volatile synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
aload 0
aload 1
aload 2
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshWebView/createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
areturn
.limit locals 3
.limit stack 3
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
getstatic android/os/Build$VERSION/SDK_INT I
bipush 9
if_icmplt L0
new com/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9
dup
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9/<init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V
astore 1
L1:
aload 1
getstatic com/handmark/pulltorefresh/library/R$id/webview I
invokevirtual android/webkit/WebView/setId(I)V
aload 1
areturn
L0:
new android/webkit/WebView
dup
aload 1
aload 2
invokespecial android/webkit/WebView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
astore 1
goto L1
.limit locals 3
.limit stack 5
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
getstatic com/handmark/pulltorefresh/library/PullToRefreshBase$Orientation/VERTICAL Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected isReadyForPullEnd()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/mRefreshableView Landroid/view/View;
checkcast android/webkit/WebView
invokevirtual android/webkit/WebView/getContentHeight()I
i2f
fstore 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/mRefreshableView Landroid/view/View;
checkcast android/webkit/WebView
invokevirtual android/webkit/WebView/getScale()F
fload 1
fmul
invokestatic android/util/FloatMath/floor(F)F
fstore 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/mRefreshableView Landroid/view/View;
checkcast android/webkit/WebView
invokevirtual android/webkit/WebView/getScrollY()I
i2f
fload 1
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/mRefreshableView Landroid/view/View;
checkcast android/webkit/WebView
invokevirtual android/webkit/WebView/getHeight()I
i2f
fsub
fcmpl
iflt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method protected isReadyForPullStart()Z
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/mRefreshableView Landroid/view/View;
checkcast android/webkit/WebView
invokevirtual android/webkit/WebView/getScrollY()I
ifne L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/onPtrRestoreInstanceState(Landroid/os/Bundle;)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/mRefreshableView Landroid/view/View;
checkcast android/webkit/WebView
aload 1
invokevirtual android/webkit/WebView/restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
pop
return
.limit locals 2
.limit stack 2
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshBase/onPtrSaveInstanceState(Landroid/os/Bundle;)V
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/mRefreshableView Landroid/view/View;
checkcast android/webkit/WebView
aload 1
invokevirtual android/webkit/WebView/saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
pop
return
.limit locals 2
.limit stack 2
.end method
