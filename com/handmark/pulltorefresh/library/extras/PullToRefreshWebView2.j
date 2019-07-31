.bytecode 50.0
.class public synchronized com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2
.super com/handmark/pulltorefresh/library/PullToRefreshWebView
.inner class final JsValueCallback inner com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback outer com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2

.field static final 'DEF_JS_READY_PULL_DOWN_CALL' Ljava/lang/String; = "javascript:isReadyForPullDown();"

.field static final 'DEF_JS_READY_PULL_UP_CALL' Ljava/lang/String; = "javascript:isReadyForPullUp();"

.field static final 'JS_INTERFACE_PKG' Ljava/lang/String; = "ptr"

.field private final 'mIsReadyForPullDown' Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final 'mIsReadyForPullUp' Ljava/util/concurrent/atomic/AtomicBoolean;

.field private 'mJsCallback' Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/handmark/pulltorefresh/library/PullToRefreshWebView/<init>(Landroid/content/Context;)V
aload 0
new java/util/concurrent/atomic/AtomicBoolean
dup
iconst_0
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>(Z)V
putfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/mIsReadyForPullDown Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
new java/util/concurrent/atomic/AtomicBoolean
dup
iconst_0
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>(Z)V
putfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/mIsReadyForPullUp Ljava/util/concurrent/atomic/AtomicBoolean;
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshWebView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
new java/util/concurrent/atomic/AtomicBoolean
dup
iconst_0
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>(Z)V
putfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/mIsReadyForPullDown Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
new java/util/concurrent/atomic/AtomicBoolean
dup
iconst_0
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>(Z)V
putfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/mIsReadyForPullUp Ljava/util/concurrent/atomic/AtomicBoolean;
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshWebView/<init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
aload 0
new java/util/concurrent/atomic/AtomicBoolean
dup
iconst_0
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>(Z)V
putfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/mIsReadyForPullDown Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
new java/util/concurrent/atomic/AtomicBoolean
dup
iconst_0
invokespecial java/util/concurrent/atomic/AtomicBoolean/<init>(Z)V
putfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/mIsReadyForPullUp Ljava/util/concurrent/atomic/AtomicBoolean;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$0(Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
getfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/mIsReadyForPullUp Ljava/util/concurrent/atomic/AtomicBoolean;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;
aload 0
getfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/mIsReadyForPullDown Ljava/util/concurrent/atomic/AtomicBoolean;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
aload 0
aload 1
aload 2
invokespecial com/handmark/pulltorefresh/library/PullToRefreshWebView/createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
astore 1
aload 0
new com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback
dup
aload 0
invokespecial com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback/<init>(Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;)V
putfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/mJsCallback Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback;
aload 1
aload 0
getfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/mJsCallback Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback;
ldc "ptr"
invokevirtual android/webkit/WebView/addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method protected isReadyForPullEnd()Z
aload 0
invokevirtual com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/getRefreshableView()Landroid/view/View;
checkcast android/webkit/WebView
ldc "javascript:isReadyForPullUp();"
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
aload 0
getfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/mIsReadyForPullUp Ljava/util/concurrent/atomic/AtomicBoolean;
invokevirtual java/util/concurrent/atomic/AtomicBoolean/get()Z
ireturn
.limit locals 1
.limit stack 2
.end method

.method protected isReadyForPullStart()Z
aload 0
invokevirtual com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/getRefreshableView()Landroid/view/View;
checkcast android/webkit/WebView
ldc "javascript:isReadyForPullDown();"
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
aload 0
getfield com/handmark/pulltorefresh/library/extras/PullToRefreshWebView2/mIsReadyForPullDown Ljava/util/concurrent/atomic/AtomicBoolean;
invokevirtual java/util/concurrent/atomic/AtomicBoolean/get()Z
ireturn
.limit locals 1
.limit stack 2
.end method
