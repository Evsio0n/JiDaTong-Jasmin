.bytecode 50.0
.class public synchronized com/nd/android/u/contact/view/PullToPreshExpandListView
.super android/widget/ExpandableListView
.implements android/widget/AbsListView$OnScrollListener
.inner class public static abstract interface OnListscrollListener inner com/nd/android/u/contact/view/PullToPreshExpandListView$OnListscrollListener outer com/nd/android/u/contact/view/PullToPreshExpandListView
.inner class public static abstract interface OnRefreshListener inner com/nd/android/u/contact/view/PullToPreshExpandListView$OnRefreshListener outer com/nd/android/u/contact/view/PullToPreshExpandListView

.field private final 'DOWN_PULL' I

.field private final 'REFRESHING' I

.field private final 'RELEASE_REFRESH' I

.field private 'TAG' Ljava/lang/String;

.field private 'currentState' I

.field private 'downY' I

.field private 'firstVisibleItemPosition' I

.field private 'headerView' Landroid/view/View;

.field private 'headerViewHeight' I

.field private 'isPullToScroll' Z

.field 'listener' Lcom/nd/android/u/contact/view/PullToPreshExpandListView$OnListscrollListener;

.field private 'mContext' Landroid/content/Context;

.field private 'mOnRefreshListener' Lcom/nd/android/u/contact/view/PullToPreshExpandListView$OnRefreshListener;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/ExpandableListView/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/DOWN_PULL I
aload 0
iconst_1
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/RELEASE_REFRESH I
aload 0
iconst_2
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/REFRESHING I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
aload 0
ldc "PullToPreshExpandListView"
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/TAG Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/isPullToScroll Z
aload 0
aload 1
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/contact/view/PullToPreshExpandListView/initHeaderView()V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/view/PullToPreshExpandListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/ExpandableListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/DOWN_PULL I
aload 0
iconst_1
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/RELEASE_REFRESH I
aload 0
iconst_2
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/REFRESHING I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
aload 0
ldc "PullToPreshExpandListView"
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/TAG Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/isPullToScroll Z
aload 0
aload 1
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/contact/view/PullToPreshExpandListView/initHeaderView()V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/view/PullToPreshExpandListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/ExpandableListView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/DOWN_PULL I
aload 0
iconst_1
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/RELEASE_REFRESH I
aload 0
iconst_2
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/REFRESHING I
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
aload 0
ldc "PullToPreshExpandListView"
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/TAG Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/isPullToScroll Z
aload 0
aload 1
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/contact/view/PullToPreshExpandListView/initHeaderView()V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/view/PullToPreshExpandListView/setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
return
.limit locals 4
.limit stack 4
.end method

.method private initHeaderView()V
aload 0
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/pull_to_refresh_header I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerView Landroid/view/View;
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerView Landroid/view/View;
iconst_0
iconst_0
invokevirtual android/view/View/measure(II)V
aload 0
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerView Landroid/view/View;
invokevirtual android/view/View/getMeasuredHeight()I
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerViewHeight I
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/TAG Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "\u5934\u5e03\u5c40\u7684\u9ad8\u5ea6: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerViewHeight I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerView Landroid/view/View;
invokevirtual com/nd/android/u/contact/view/PullToPreshExpandListView/addHeaderView(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerView Landroid/view/View;
iconst_0
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerViewHeight I
ineg
iconst_0
iconst_0
invokevirtual android/view/View/setPadding(IIII)V
return
.limit locals 1
.limit stack 5
.end method

.method private refreshHeaderView()V
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
ifne L0
L1:
return
L0:
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
iconst_1
if_icmpeq L1
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
iconst_2
if_icmpne L1
return
.limit locals 1
.limit stack 2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
default : L1
L1:
aload 0
aload 1
invokespecial android/widget/ExpandableListView/dispatchTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L0:
aload 0
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/downY I
goto L1
.limit locals 2
.limit stack 2
.end method

.method public hideHeaderView()V
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerView Landroid/view/View;
iconst_0
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerViewHeight I
ineg
iconst_0
iconst_0
invokevirtual android/view/View/setPadding(IIII)V
return
.limit locals 1
.limit stack 5
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
aload 0
iload 2
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/firstVisibleItemPosition I
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/listener Lcom/nd/android/u/contact/view/PullToPreshExpandListView$OnListscrollListener;
ifnull L0
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/listener Lcom/nd/android/u/contact/view/PullToPreshExpandListView$OnListscrollListener;
invokeinterface com/nd/android/u/contact/view/PullToPreshExpandListView$OnListscrollListener/onListScroll()V 0
L0:
return
.limit locals 5
.limit stack 2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
iload 2
iconst_1
if_icmpne L0
aload 0
iconst_1
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/isPullToScroll Z
return
L0:
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/isPullToScroll Z
return
.limit locals 3
.limit stack 2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
aload 1
invokevirtual android/view/MotionEvent/getAction()I
tableswitch 0
L0
L1
L2
default : L0
L0:
aload 0
aload 1
invokespecial android/widget/ExpandableListView/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L2:
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
iconst_2
if_icmpne L3
aload 0
aload 1
invokespecial android/widget/ExpandableListView/onTouchEvent(Landroid/view/MotionEvent;)Z
ireturn
L3:
aload 1
invokevirtual android/view/MotionEvent/getY()F
f2i
istore 2
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerViewHeight I
ineg
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/downY I
iload 2
isub
iconst_2
idiv
isub
istore 2
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/firstVisibleItemPosition I
ifne L0
iload 2
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerViewHeight I
ineg
if_icmple L0
iload 2
ifle L4
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
ifne L4
aload 0
iconst_1
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
aload 0
invokespecial com/nd/android/u/contact/view/PullToPreshExpandListView/refreshHeaderView()V
L5:
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerView Landroid/view/View;
iconst_0
iload 2
iconst_0
iconst_0
invokevirtual android/view/View/setPadding(IIII)V
iconst_1
ireturn
L4:
iload 2
ifge L5
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
iconst_1
if_icmpne L5
aload 0
iconst_0
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
aload 0
invokespecial com/nd/android/u/contact/view/PullToPreshExpandListView/refreshHeaderView()V
goto L5
L1:
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
ifne L6
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerView Landroid/view/View;
iconst_0
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerViewHeight I
ineg
iconst_0
iconst_0
invokevirtual android/view/View/setPadding(IIII)V
goto L0
L6:
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
iconst_1
if_icmpne L0
aload 0
iconst_2
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/currentState I
aload 0
invokespecial com/nd/android/u/contact/view/PullToPreshExpandListView/refreshHeaderView()V
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/headerView Landroid/view/View;
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/view/View/setPadding(IIII)V
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/mOnRefreshListener Lcom/nd/android/u/contact/view/PullToPreshExpandListView$OnRefreshListener;
ifnull L0
aload 0
getfield com/nd/android/u/contact/view/PullToPreshExpandListView/mOnRefreshListener Lcom/nd/android/u/contact/view/PullToPreshExpandListView$OnRefreshListener;
invokeinterface com/nd/android/u/contact/view/PullToPreshExpandListView$OnRefreshListener/onDownPullRefresh()V 0
goto L0
.limit locals 3
.limit stack 5
.end method

.method public setListScrollListener(Lcom/nd/android/u/contact/view/PullToPreshExpandListView$OnListscrollListener;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/listener Lcom/nd/android/u/contact/view/PullToPreshExpandListView$OnListscrollListener;
return
.limit locals 2
.limit stack 2
.end method

.method public setOnRefreshListener(Lcom/nd/android/u/contact/view/PullToPreshExpandListView$OnRefreshListener;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/PullToPreshExpandListView/mOnRefreshListener Lcom/nd/android/u/contact/view/PullToPreshExpandListView$OnRefreshListener;
return
.limit locals 2
.limit stack 2
.end method
