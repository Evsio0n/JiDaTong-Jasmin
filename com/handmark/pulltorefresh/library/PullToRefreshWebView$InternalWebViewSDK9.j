.bytecode 50.0
.class final synchronized com/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9
.super android/webkit/WebView
.annotation invisible Landroid/annotation/TargetApi;
value I = 9
.end annotation
.inner class final InternalWebViewSDK9 inner com/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9 outer com/handmark/pulltorefresh/library/PullToRefreshWebView

.field static final 'OVERSCROLL_FUZZY_THRESHOLD' I = 2


.field static final 'OVERSCROLL_SCALE_FACTOR' F = 1.5F


.field final synthetic 'this$0' Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

.method public <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
putfield com/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
aload 0
aload 2
aload 3
invokespecial android/webkit/WebView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return
.limit locals 4
.limit stack 3
.end method

.method private getScrollRange()I
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/mRefreshableView Landroid/view/View;
checkcast android/webkit/WebView
invokevirtual android/webkit/WebView/getContentHeight()I
i2f
fstore 1
fconst_0
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView/mRefreshableView Landroid/view/View;
checkcast android/webkit/WebView
invokevirtual android/webkit/WebView/getScale()F
fload 1
fmul
invokestatic android/util/FloatMath/floor(F)F
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9/getHeight()I
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9/getPaddingBottom()I
isub
aload 0
invokevirtual com/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9/getPaddingTop()I
isub
i2f
fsub
invokestatic java/lang/Math/max(FF)F
f2i
ireturn
.limit locals 2
.limit stack 4
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
aload 0
iload 1
iload 2
iload 3
iload 4
iload 5
iload 6
iload 7
iload 8
iload 9
invokespecial android/webkit/WebView/overScrollBy(IIIIIIIIZ)Z
istore 10
aload 0
getfield com/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9/this$0 Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
iload 1
iload 3
iload 2
iload 4
aload 0
invokespecial com/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9/getScrollRange()I
iconst_2
ldc_w 1.5F
iload 9
invokestatic com/handmark/pulltorefresh/library/OverscrollHelper/overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIIFZ)V
iload 10
ireturn
.limit locals 11
.limit stack 10
.end method
